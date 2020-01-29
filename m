Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B79DB14D38D
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 00:23:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 573E26E461;
	Wed, 29 Jan 2020 23:23:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2D1D6E461
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 23:23:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 15:23:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,379,1574150400"; d="scan'208";a="229772310"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.13.17])
 by orsmga003.jf.intel.com with ESMTP; 29 Jan 2020 15:23:51 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jan 2020 15:23:45 -0800
Message-Id: <20200129232345.84512-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix preallocated barrier list append
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

T25seSB0aGUgZmlyc3QgYW5kIHRoZSBsYXN0IG5vZGVzIHdlcmUgYmVpbmcgYWRkZWQgdG8KcmVm
LT5wcmVhbGxvY2F0ZWRfYmFycmllcnMuCgpJJ20gbm90IGZhbWlsaWFyIHdpdGggdGhpcyBwYXJ0
IG9mIHRoZSBjb2RlIGJ1dCBpZiB0aGF0IGlzIHRoZQpleHBlY3RlZCBiZWhhdmlvciBpdCBpcyBs
ZWFraW5nIHRoZSBub2RlcyBpbiBiZXR3ZWVuLgoKUmVuYW1pbmcgdmFyaWFibGVzIHRvIG1ha2Ug
aXQgbW9yZSBlYXN5IHRvIHJlYWQuCgpGaXhlczogODQxMzUwMjIzODE2ICgiZHJtL2k5MTUvZ3Q6
IERyb3AgbXV0ZXggc2VyaWFsaXNhdGlvbiBiZXR3ZWVuIGNvbnRleHQgcGluL3VucGluIikKQ2M6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWFhcnRlbiBMYW5r
aG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
Sm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYyB8IDE5ICsrKysrKysrKystLS0tLS0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2FjdGl2ZS5jCmluZGV4IDlkNjgzMDg4NWQyZS4uM2QyZTdjZjU1ZTUyIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMKQEAgLTYwNyw3ICs2MDcsNyBAQCBpbnQgaTkxNV9h
Y3RpdmVfYWNxdWlyZV9wcmVhbGxvY2F0ZV9iYXJyaWVyKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVm
LAogCQkJCQkgICAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogewogCWludGVsX2Vu
Z2luZV9tYXNrX3QgdG1wLCBtYXNrID0gZW5naW5lLT5tYXNrOwotCXN0cnVjdCBsbGlzdF9ub2Rl
ICpwb3MgPSBOVUxMLCAqbmV4dDsKKwlzdHJ1Y3QgbGxpc3Rfbm9kZSAqZmlyc3QgPSBOVUxMLCAq
bGFzdCA9IE5VTEw7CiAJc3RydWN0IGludGVsX2d0ICpndCA9IGVuZ2luZS0+Z3Q7CiAJaW50IGVy
cjsKIApAQCAtNjI2LDYgKzYyNiw3IEBAIGludCBpOTE1X2FjdGl2ZV9hY3F1aXJlX3ByZWFsbG9j
YXRlX2JhcnJpZXIoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYsCiAJR0VNX0JVR19PTighbWFzayk7
CiAJZm9yX2VhY2hfZW5naW5lX21hc2tlZChlbmdpbmUsIGd0LCBtYXNrLCB0bXApIHsKIAkJdTY0
IGlkeCA9IGVuZ2luZS0+a2VybmVsX2NvbnRleHQtPnRpbWVsaW5lLT5mZW5jZV9jb250ZXh0Owor
CQlzdHJ1Y3QgbGxpc3Rfbm9kZSAqcHJldiA9IGZpcnN0OwogCQlzdHJ1Y3QgYWN0aXZlX25vZGUg
Km5vZGU7CiAKIAkJbm9kZSA9IHJldXNlX2lkbGVfYmFycmllcihyZWYsIGlkeCk7CkBAIC02NTks
MjMgKzY2MCwyMyBAQCBpbnQgaTkxNV9hY3RpdmVfYWNxdWlyZV9wcmVhbGxvY2F0ZV9iYXJyaWVy
KHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmLAogCQlHRU1fQlVHX09OKHJjdV9hY2Nlc3NfcG9pbnRl
cihub2RlLT5iYXNlLmZlbmNlKSAhPSBFUlJfUFRSKC1FQUdBSU4pKTsKIAogCQlHRU1fQlVHX09O
KGJhcnJpZXJfdG9fZW5naW5lKG5vZGUpICE9IGVuZ2luZSk7Ci0JCW5leHQgPSBiYXJyaWVyX3Rv
X2xsKG5vZGUpOwotCQluZXh0LT5uZXh0ID0gcG9zOwotCQlpZiAoIXBvcykKLQkJCXBvcyA9IG5l
eHQ7CisJCWZpcnN0ID0gYmFycmllcl90b19sbChub2RlKTsKKwkJZmlyc3QtPm5leHQgPSBwcmV2
OworCQlpZiAoIWxhc3QpCisJCQlsYXN0ID0gZmlyc3Q7CiAJCWludGVsX2VuZ2luZV9wbV9nZXQo
ZW5naW5lKTsKIAl9CiAKIAlHRU1fQlVHX09OKCFsbGlzdF9lbXB0eSgmcmVmLT5wcmVhbGxvY2F0
ZWRfYmFycmllcnMpKTsKLQlsbGlzdF9hZGRfYmF0Y2gobmV4dCwgcG9zLCAmcmVmLT5wcmVhbGxv
Y2F0ZWRfYmFycmllcnMpOworCWxsaXN0X2FkZF9iYXRjaChmaXJzdCwgbGFzdCwgJnJlZi0+cHJl
YWxsb2NhdGVkX2JhcnJpZXJzKTsKIAogCXJldHVybiAwOwogCiB1bndpbmQ6Ci0Jd2hpbGUgKHBv
cykgewotCQlzdHJ1Y3QgYWN0aXZlX25vZGUgKm5vZGUgPSBiYXJyaWVyX2Zyb21fbGwocG9zKTsK
Kwl3aGlsZSAoZmlyc3QpIHsKKwkJc3RydWN0IGFjdGl2ZV9ub2RlICpub2RlID0gYmFycmllcl9m
cm9tX2xsKGZpcnN0KTsKIAotCQlwb3MgPSBwb3MtPm5leHQ7CisJCWZpcnN0ID0gZmlyc3QtPm5l
eHQ7CiAKIAkJYXRvbWljX2RlYygmcmVmLT5jb3VudCk7CiAJCWludGVsX2VuZ2luZV9wbV9wdXQo
YmFycmllcl90b19lbmdpbmUobm9kZSkpOwotLSAKMi4yNS4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
