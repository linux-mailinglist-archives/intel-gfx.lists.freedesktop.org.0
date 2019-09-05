Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA1BA9DDE
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 11:10:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E309B89D1D;
	Thu,  5 Sep 2019 09:10:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE05689CFA
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2019 09:09:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 02:09:59 -0700
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="173878654"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 02:09:55 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Date: Thu,  5 Sep 2019 11:09:49 +0200
Message-Id: <20190905090949.30424-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Don't unwedge if reset is disabled
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hlbiB0cnlpbmcgdG8gcmVzZXQgYSBkZXZpY2Ugd2l0aCByZXNldCBjYXBhYmlsaXR5IGRpc2Fi
bGVkIG9yIG5vdApzdXBwb3J0ZWQgd2hpbGUgcmluZ3MgYXJlIGZ1bGwgb2YgcmVxdWVzdHMsIGl0
IGhhcyBiZWVuIG9ic2VydmVkIHdoZW4KcnVubmluZyBpbiBleGVjbGlzdHMgc3VibWlzc2lvbiBt
b2RlIHRoYXQgY29tbWFuZCBzdHJlYW0gYnVmZmVyIHRhaWwKdGVuZHMgdG8gYmUgaW5jcmVtZW50
ZWQgYnkgYXBwYXJlbnRseSBzdGlsbCBydW5uaW5nIEdQVSByZWdhcmRsZXNzIG9mCmFsbCByZXF1
ZXN0cyBiZWluZyBhbHJlYWR5IGNhbmNlbGxlZCBhbmQgY29tbWFuZCBzdHJlYW0gYnVmZmVyIHBv
aW50ZXJzCnJlc2V0LiAgQXMgYSByZXN1bHQsIGtlcm5lbCBwYW5pYyBvbiBOVUxMIHBvaW50ZXIg
ZGVyZWZlcmVuY2Ugb2NjdXJzCndoZW4gYSB0cmFjZV9wb3J0cygpIGhlbHBlciBpcyBjYWxsZWQg
d2l0aCBjb21tYW5kIHN0cmVhbSBidWZmZXIgdGFpbAppbmNyZW1lbnRlZCBidXQgcmVxdWVzdCBw
b2ludGVycyBiZWluZyBOVUxMIGR1cmluZyBmaW5hbApfX2ludGVsX2d0X3NldF93ZWRnZWQoKSBv
cGVyYXRpb24gY2FsbGVkIGZyb20gaW50ZWxfZ3RfcmVzZXQoKS4KClNraXAgYWN0dWFsIHJlc2V0
IHByb2NlZHVyZSBpZiByZXNldCBpcyBkaXNhYmxlZCBvciBub3Qgc3VwcG9ydGVkLgoKU3VnZ2Vz
dGVkLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50
ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0
b2Zpa0BsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
cmVzZXQuYyB8IDI2ICsrKysrKysrKysrKysrKysrKy0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwg
MTggaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfcmVzZXQuYwppbmRleCBiOWQ4NGQ1MmU5ODYuLmQ3NWRhMTI0ZTI4MCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCkBAIC05MzIsMjUgKzkzMiwzNSBAQCB2b2lkIGludGVs
X2d0X3Jlc2V0KHN0cnVjdCBpbnRlbF9ndCAqZ3QsCiAJR0VNX0JVR19PTighdGVzdF9iaXQoSTkx
NV9SRVNFVF9CQUNLT0ZGLCAmZ3QtPnJlc2V0LmZsYWdzKSk7CiAJbXV0ZXhfbG9jaygmZ3QtPnJl
c2V0Lm11dGV4KTsKIAotCS8qIENsZWFyIGFueSBwcmV2aW91cyBmYWlsZWQgYXR0ZW1wdHMgYXQg
cmVjb3ZlcnkuIFRpbWUgdG8gdHJ5IGFnYWluLiAqLwotCWlmICghX19pbnRlbF9ndF91bnNldF93
ZWRnZWQoZ3QpKQotCQlnb3RvIHVubG9jazsKLQogCWlmIChyZWFzb24pCiAJCWRldl9ub3RpY2Uo
Z3QtPmk5MTUtPmRybS5kZXYsCiAJCQkgICAiUmVzZXR0aW5nIGNoaXAgZm9yICVzXG4iLCByZWFz
b24pOwotCWF0b21pY19pbmMoJmd0LT5pOTE1LT5ncHVfZXJyb3IucmVzZXRfY291bnQpOwotCi0J
YXdha2UgPSByZXNldF9wcmVwYXJlKGd0KTsKIAogCWlmICghaW50ZWxfaGFzX2dwdV9yZXNldChn
dC0+aTkxNSkpIHsKIAkJaWYgKGk5MTVfbW9kcGFyYW1zLnJlc2V0KQogCQkJZGV2X2VycihndC0+
aTkxNS0+ZHJtLmRldiwgIkdQVSByZXNldCBub3Qgc3VwcG9ydGVkXG4iKTsKIAkJZWxzZQogCQkJ
RFJNX0RFQlVHX0RSSVZFUigiR1BVIHJlc2V0IGRpc2FibGVkXG4iKTsKLQkJZ290byBlcnJvcjsK
KworCQkvKgorCQkgKiBEb24ndCB1bndlZGdlIGlmIHJlc2V0IGlzIGRpc2FibGVkIG9yIG5vdCBz
dXBwb3J0ZWQKKwkJICogYmVjYXVzZSB3ZSBjYW4ndCBndWFyYW50ZWUgd2hhdCB0aGUgaGFyZHdh
cmUgc3RhdHVzIGlzLgorCQkgKi8KKwkJaWYgKGludGVsX2d0X2lzX3dlZGdlZChndCkpCisJCQln
b3RvIHVubG9jazsKIAl9CiAKKwkvKiBDbGVhciBhbnkgcHJldmlvdXMgZmFpbGVkIGF0dGVtcHRz
IGF0IHJlY292ZXJ5LiBUaW1lIHRvIHRyeSBhZ2Fpbi4gKi8KKwlpZiAoIV9faW50ZWxfZ3RfdW5z
ZXRfd2VkZ2VkKGd0KSkKKwkJZ290byB1bmxvY2s7CisKKwlhdG9taWNfaW5jKCZndC0+aTkxNS0+
Z3B1X2Vycm9yLnJlc2V0X2NvdW50KTsKKworCWF3YWtlID0gcmVzZXRfcHJlcGFyZShndCk7CisK
KwlpZiAoIWludGVsX2hhc19ncHVfcmVzZXQoZ3QtPmk5MTUpKQorCQlnb3RvIGVycm9yOworCiAJ
aWYgKElOVEVMX0lORk8oZ3QtPmk5MTUpLT5ncHVfcmVzZXRfY2xvYmJlcnNfZGlzcGxheSkKIAkJ
aW50ZWxfcnVudGltZV9wbV9kaXNhYmxlX2ludGVycnVwdHMoZ3QtPmk5MTUpOwogCi0tIAoyLjIx
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
