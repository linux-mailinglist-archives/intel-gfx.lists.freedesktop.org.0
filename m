Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B7C27DB6
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 15:09:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC43C89CF9;
	Thu, 23 May 2019 13:09:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C97589CF9
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 13:09:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 06:09:09 -0700
X-ExtLoop1: 1
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 23 May 2019 06:09:08 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 May 2019 16:08:36 +0300
Message-Id: <20190523130836.6488-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: Tune down link train error messages
 due to IO failure
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW4gSU8gZmFpbHVyZSBoYXBwZW5zIGlmIHRoZSBzaW5rIGlzIHVucGx1Z2dlZC4gVGhpcyBzY2Vu
YXJpbyBzaG91bGRuJ3QKYmUgbG9nZ2VkIHdpdGggZXJyb3IgbGV2ZWwsIHNpbmNlIGl0IGlzIG5v
dCBhIHVzZXIgdmlzaWJsZSBwcm9ibGVtLgpDb252ZXJ0aW5nIHRoZSBjb3JyZXNwb25kaW5nIGVy
cm9yIG1lc3NhZ2VzIHRvIGJlIGRlYnVnIG1lc3NhZ2VzIGFsc28KZW5zdXJlcyB0aGF0IHdlIGRv
bid0IGZhaWwgc29tZSBDSSB0ZXN0IGluY29ycmVjdGx5IHRoYXQgdGVzdHMgdGhlCnVucGx1Z2dp
bmcgd2hpbGUgYSBtb2RlIGlzIHN0aWxsIGFjdGl2ZSBvbiB0aGUgZ2l2ZW4gY29ubmVjdG9yIChs
aWtlIHRoZQprbXNfY2hhbWVsaXVtIHRlc3RzIGltaXRpdGF0aW5nIHN1Y2ggYW4gdW5wbHVnIGR1
cmluZyBiZWluZyBzdXNwZW5kZWQpLgoKTGVhdmUgdGhvc2UgbGluayB0cmFpbmluZyBlcnJvciBt
ZXNzYWdlcyB0aGF0IGFyZSBkdWUgdG8gYW4gYWN0dWFsCnRyYW5zZmVyIHJhdGUgZXJyb3IgKGFu
ZCBub3QgYW4gSU8gZXJyb3IpIGFzLWlzLCBhcyB0aGF0IGtpbmQgb2YgcHJvYmxlbQppcyByZWxh
dGVkIHRvIHRoZSB1c2VyJ3MgY29uZmlndXJhdGlvbiAoY2FibGUsIG1vZGUsIG1vbml0b3IpIGFu
ZCBzbyBpdAppcyByZWFsbHkgdXNlciB2aXNpYmxlLgoKQnVnemlsbGE6IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDM5MApTaWduZWQtb2ZmLWJ5OiBJbXJl
IERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZHBfbGlua190cmFpbmluZy5jIHwgMTIgKysrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwg
NiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYwppbmRleCA5YjFmY2NlYTk2NmIuLjM5MmViZWI4OWNl
OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHBfbGlua190cmFpbmlu
Zy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYwpA
QCAtMTY5LDcgKzE2OSw3IEBAIGludGVsX2RwX2xpbmtfdHJhaW5pbmdfY2xvY2tfcmVjb3Zlcnko
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAlpZiAoIWludGVsX2RwX3Jlc2V0X2xpbmtfdHJh
aW4oaW50ZWxfZHAsCiAJCQkJICAgICAgIERQX1RSQUlOSU5HX1BBVFRFUk5fMSB8CiAJCQkJICAg
ICAgIERQX0xJTktfU0NSQU1CTElOR19ESVNBQkxFKSkgewotCQlEUk1fRVJST1IoImZhaWxlZCB0
byBlbmFibGUgbGluayB0cmFpbmluZ1xuIik7CisJCURSTV9ERUJVR19LTVMoImZhaWxlZCB0byBl
bmFibGUgbGluayB0cmFpbmluZ1xuIik7CiAJCXJldHVybiBmYWxzZTsKIAl9CiAKQEAgLTE5Myw3
ICsxOTMsNyBAQCBpbnRlbF9kcF9saW5rX3RyYWluaW5nX2Nsb2NrX3JlY292ZXJ5KHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHApCiAJCWRybV9kcF9saW5rX3RyYWluX2Nsb2NrX3JlY292ZXJ5X2Rl
bGF5KGludGVsX2RwLT5kcGNkKTsKIAogCQlpZiAoIWludGVsX2RwX2dldF9saW5rX3N0YXR1cyhp
bnRlbF9kcCwgbGlua19zdGF0dXMpKSB7Ci0JCQlEUk1fRVJST1IoImZhaWxlZCB0byBnZXQgbGlu
ayBzdGF0dXNcbiIpOworCQkJRFJNX0RFQlVHX0tNUygiZmFpbGVkIHRvIGdldCBsaW5rIHN0YXR1
c1xuIik7CiAJCQlyZXR1cm4gZmFsc2U7CiAJCX0KIApAQCAtMjE3LDcgKzIxNyw3IEBAIGludGVs
X2RwX2xpbmtfdHJhaW5pbmdfY2xvY2tfcmVjb3Zlcnkoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCkKIAkJLyogVXBkYXRlIHRyYWluaW5nIHNldCBhcyByZXF1ZXN0ZWQgYnkgdGFyZ2V0ICovCiAJ
CWludGVsX2dldF9hZGp1c3RfdHJhaW4oaW50ZWxfZHAsIGxpbmtfc3RhdHVzKTsKIAkJaWYgKCFp
bnRlbF9kcF91cGRhdGVfbGlua190cmFpbihpbnRlbF9kcCkpIHsKLQkJCURSTV9FUlJPUigiZmFp
bGVkIHRvIHVwZGF0ZSBsaW5rIHRyYWluaW5nXG4iKTsKKwkJCURSTV9ERUJVR19LTVMoImZhaWxl
ZCB0byB1cGRhdGUgbGluayB0cmFpbmluZ1xuIik7CiAJCQlyZXR1cm4gZmFsc2U7CiAJCX0KIApA
QCAtMjk1LDcgKzI5NSw3IEBAIGludGVsX2RwX2xpbmtfdHJhaW5pbmdfY2hhbm5lbF9lcXVhbGl6
YXRpb24oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAkvKiBjaGFubmVsIGVxdWFsaXphdGlv
biAqLwogCWlmICghaW50ZWxfZHBfc2V0X2xpbmtfdHJhaW4oaW50ZWxfZHAsCiAJCQkJICAgICB0
cmFpbmluZ19wYXR0ZXJuKSkgewotCQlEUk1fRVJST1IoImZhaWxlZCB0byBzdGFydCBjaGFubmVs
IGVxdWFsaXphdGlvblxuIik7CisJCURSTV9ERUJVR19LTVMoImZhaWxlZCB0byBzdGFydCBjaGFu
bmVsIGVxdWFsaXphdGlvblxuIik7CiAJCXJldHVybiBmYWxzZTsKIAl9CiAKQEAgLTMwMyw3ICsz
MDMsNyBAQCBpbnRlbF9kcF9saW5rX3RyYWluaW5nX2NoYW5uZWxfZXF1YWxpemF0aW9uKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApCiAKIAkJZHJtX2RwX2xpbmtfdHJhaW5fY2hhbm5lbF9lcV9k
ZWxheShpbnRlbF9kcC0+ZHBjZCk7CiAJCWlmICghaW50ZWxfZHBfZ2V0X2xpbmtfc3RhdHVzKGlu
dGVsX2RwLCBsaW5rX3N0YXR1cykpIHsKLQkJCURSTV9FUlJPUigiZmFpbGVkIHRvIGdldCBsaW5r
IHN0YXR1c1xuIik7CisJCQlEUk1fREVCVUdfS01TKCJmYWlsZWQgdG8gZ2V0IGxpbmsgc3RhdHVz
XG4iKTsKIAkJCWJyZWFrOwogCQl9CiAKQEAgLTMyNyw3ICszMjcsNyBAQCBpbnRlbF9kcF9saW5r
X3RyYWluaW5nX2NoYW5uZWxfZXF1YWxpemF0aW9uKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAp
CiAJCS8qIFVwZGF0ZSB0cmFpbmluZyBzZXQgYXMgcmVxdWVzdGVkIGJ5IHRhcmdldCAqLwogCQlp
bnRlbF9nZXRfYWRqdXN0X3RyYWluKGludGVsX2RwLCBsaW5rX3N0YXR1cyk7CiAJCWlmICghaW50
ZWxfZHBfdXBkYXRlX2xpbmtfdHJhaW4oaW50ZWxfZHApKSB7Ci0JCQlEUk1fRVJST1IoImZhaWxl
ZCB0byB1cGRhdGUgbGluayB0cmFpbmluZ1xuIik7CisJCQlEUk1fREVCVUdfS01TKCJmYWlsZWQg
dG8gdXBkYXRlIGxpbmsgdHJhaW5pbmdcbiIpOwogCQkJYnJlYWs7CiAJCX0KIAl9Ci0tIAoyLjE3
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
