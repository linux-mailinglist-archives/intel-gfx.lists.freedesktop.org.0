Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B98007DF83
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 17:54:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 024D76E708;
	Thu,  1 Aug 2019 15:54:45 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF89B6E708
 for <Intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 15:54:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 08:54:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,334,1559545200"; d="scan'208";a="177864331"
Received: from gadevlin-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.95.57])
 by orsmga006.jf.intel.com with ESMTP; 01 Aug 2019 08:54:41 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu,  1 Aug 2019 16:54:38 +0100
Message-Id: <20190801155438.23986-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190801141732.31335-5-tvrtko.ursulin@linux.intel.com>
References: <20190801141732.31335-5-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 5/5] drm/i915/pmu: Support multiple GPUs
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCldpdGggZGlz
Y3JldGUgZ3JhcGhpY3Mgc3lzdGVtIGNhbiBoYXZlIGJvdGggaW50ZWdyYXRlZCBhbmQgZGlzY3Jl
dGUgR1BVCmhhbmRsZWQgYnkgaTkxNS4KCkN1cnJlbnRseSB3ZSB1c2UgYSBmaXhlZCBuYW1lICgi
aTkxNSIpIHdoZW4gcmVnaXN0ZXJpbmcgYXMgdGhlIHVuY29yZSBQTVUKcHJvdmlkZXIgd2hpY2gg
c3RvcHMgd29ya2luZyBpbiB0aGlzIGNhc2UuCgpUbyBmaXggdGhpcyB3ZSBhZGQgdGhlIFBDSSBk
ZXZpY2UgbmFtZSBzdHJpbmcgdG8gbm9uLWludGVncmF0ZWQgZGV2aWNlcwpoYW5kbGVkIGJ5IHVz
LiBJbnRlZ3JhdGVkIGRldmljZXMga2VlcCB0aGUgbGVnYWN5IG5hbWUgcHJlc2VydmluZwpiYWNr
d2FyZCBjb21wYXRpYmlsaXR5LgoKdjI6CiAqIERldGVjdCBJR1AgYW5kIGtlZXAgbGVnYWN5IG5h
bWUuIChNaWNoYWwpCiAqIFVzZSBQQ0kgZGV2aWNlIG5hbWUgYXMgc3VmZml4LiAoTWljaGFsLCBD
aHJpcykKCnYzOgogKiBDb25zdGlmeSB0aGUgbmFtZS4gKENocmlzKQogKiBVc2UgcGNpX2RvbWFp
bl9uci4gKENocmlzKQoKdjQ6CiAqIEZpeCBrZnJlZV9jb25zdCB1c2FnZS4gKENocmlzKQoKU2ln
bmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KQ2M6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWljaGFsIFdhamRl
Y3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BtdS5jIHwgMjUgKysrKysrKysrKysrKysrKysrKysrKystLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wbXUuaCB8ICA0ICsrKysKIDIgZmlsZXMgY2hhbmdlZCwgMjcgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BtdS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYwppbmRleCBlMGUwMTgw
YmNhN2MuLmUwZmVhMjI3MDc3ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wbXUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jCkBAIC0xMDUzLDYg
KzEwNTMsMTUgQEAgc3RhdGljIHZvaWQgaTkxNV9wbXVfdW5yZWdpc3Rlcl9jcHVocF9zdGF0ZShz
dHJ1Y3QgaTkxNV9wbXUgKnBtdSkKIAljcHVocF9yZW1vdmVfbXVsdGlfc3RhdGUoY3B1aHBfc2xv
dCk7CiB9CiAKK3N0YXRpYyBib29sIGlzX2lncChzdHJ1Y3QgcGNpX2RldiAqcGRldikKK3sKKwkv
KiBJR1AgaXMgMDAwMDowMDowMi4wICovCisJcmV0dXJuIHBjaV9kb21haW5fbnIocGRldi0+YnVz
KSA9PSAwICYmCisJICAgICAgIHBkZXYtPmJ1cy0+bnVtYmVyID09IDAgJiYKKwkgICAgICAgUENJ
X1NMT1QocGRldi0+ZGV2Zm4pID09IDIgJiYKKwkgICAgICAgUENJX0ZVTkMocGRldi0+ZGV2Zm4p
ID09IDA7Cit9CisKIHZvaWQgaTkxNV9wbXVfcmVnaXN0ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpCiB7CiAJc3RydWN0IGk5MTVfcG11ICpwbXUgPSAmaTkxNS0+cG11OwpAQCAtMTA4
MywxMCArMTA5MiwxOSBAQCB2b2lkIGk5MTVfcG11X3JlZ2lzdGVyKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1KQogCWhydGltZXJfaW5pdCgmcG11LT50aW1lciwgQ0xPQ0tfTU9OT1RPTklD
LCBIUlRJTUVSX01PREVfUkVMKTsKIAlwbXUtPnRpbWVyLmZ1bmN0aW9uID0gaTkxNV9zYW1wbGU7
CiAKLQlyZXQgPSBwZXJmX3BtdV9yZWdpc3RlcigmcG11LT5iYXNlLCAiaTkxNSIsIC0xKTsKLQlp
ZiAocmV0KQorCWlmICghaXNfaWdwKGk5MTUtPmRybS5wZGV2KSkKKwkJcG11LT5uYW1lID0ga2Fz
cHJpbnRmKEdGUF9LRVJORUwsCisJCQkJICAgICAgImk5MTUtJXMiLAorCQkJCSAgICAgIGRldl9u
YW1lKGk5MTUtPmRybS5kZXYpKTsKKwllbHNlCisJCXBtdS0+bmFtZSA9ICJpOTE1IjsKKwlpZiAo
IXBtdS0+bmFtZSkKIAkJZ290byBlcnI7CiAKKwlyZXQgPSBwZXJmX3BtdV9yZWdpc3RlcigmcG11
LT5iYXNlLCBwbXUtPm5hbWUsIC0xKTsKKwlpZiAocmV0KQorCQlnb3RvIGVycl9uYW1lOworCiAJ
cmV0ID0gaTkxNV9wbXVfcmVnaXN0ZXJfY3B1aHBfc3RhdGUocG11KTsKIAlpZiAocmV0KQogCQln
b3RvIGVycl91bnJlZzsKQEAgLTEwOTUsNiArMTExMyw4IEBAIHZvaWQgaTkxNV9wbXVfcmVnaXN0
ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAKIGVycl91bnJlZzoKIAlwZXJmX3Bt
dV91bnJlZ2lzdGVyKCZwbXUtPmJhc2UpOworZXJyX25hbWU6CisJa2ZyZWVfY29uc3QocG11LT5u
YW1lKTsKIGVycjoKIAlwbXUtPmJhc2UuZXZlbnRfaW5pdCA9IE5VTEw7CiAJZnJlZV9ldmVudF9h
dHRyaWJ1dGVzKHBtdSk7CkBAIC0xMTE2LDUgKzExMzYsNiBAQCB2b2lkIGk5MTVfcG11X3VucmVn
aXN0ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAKIAlwZXJmX3BtdV91bnJlZ2lz
dGVyKCZwbXUtPmJhc2UpOwogCXBtdS0+YmFzZS5ldmVudF9pbml0ID0gTlVMTDsKKwlrZnJlZV9j
b25zdChwbXUtPm5hbWUpOwogCWZyZWVfZXZlbnRfYXR0cmlidXRlcyhwbXUpOwogfQpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcG11LmgKaW5kZXggNGZjNGYyNDc4MzAxLi5mZjI0ZjNiYjAxMDIgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wbXUuaApAQCAtNDYsNiArNDYsMTAgQEAgc3RydWN0IGk5MTVfcG11IHsKIAkg
KiBAYmFzZTogUE1VIGJhc2UuCiAJICovCiAJc3RydWN0IHBtdSBiYXNlOworCS8qKgorCSAqIEBu
YW1lOiBOYW1lIGFzIHJlZ2lzdGVyZWQgd2l0aCBwZXJmIGNvcmUuCisJICovCisJY29uc3QgY2hh
ciAqbmFtZTsKIAkvKioKIAkgKiBAbG9jazogTG9jayBwcm90ZWN0aW5nIGVuYWJsZSBtYXNrIGFu
ZCByZWYgY291bnQgaGFuZGxpbmcuCiAJICovCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
