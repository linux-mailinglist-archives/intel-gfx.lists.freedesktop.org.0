Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1874C1EEA77
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 20:45:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 343366E550;
	Thu,  4 Jun 2020 18:45:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C1A06E0C6;
 Thu,  4 Jun 2020 18:45:04 +0000 (UTC)
IronPort-SDR: ShJhbG2OozSpWYMg8XsheKiGeDulvGx32U8a4xa/tA3JgKgI8njp1g3LNqjmxU6amde1nhuzaH
 0gr/oVNXrBBA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 11:45:03 -0700
IronPort-SDR: aIMlnYdpl7G6DtTGmDrg3oCMDv9DO5/LQq/q5/F5YG73yQrg08nSw2Ta8AWPvBJ9PA59qX/n11
 BVwMATNpKlow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,472,1583222400"; d="scan'208";a="269504232"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 04 Jun 2020 11:45:01 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu,  4 Jun 2020 21:44:59 +0300
Message-Id: <20200604184500.23730-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
In-Reply-To: <20200603211040.8190-1-imre.deak@intel.com>
References: <20200603211040.8190-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/3] drm/i915/dp_mst: Fix disabling MST on a
 port
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

Q3VycmVudGx5IE1TVCBvbiBhIHBvcnQgY2FuIGdldCBlbmFibGVkL2Rpc2FibGVkIGZyb20gdGhl
IGhvdHBsdWcgd29yawphbmQgZ2V0IGRpc2FibGVkIGZyb20gdGhlIHNob3J0IHB1bHNlIHdvcmsg
aW4gYSByYWN5IHdheS4gRml4IHRoaXMgYnkKcmVseWluZyBvbiB0aGUgTVNUIHN0YXRlIGNoZWNr
aW5nIGluIHRoZSBob3RwbHVnIHdvcmsgYW5kIGp1c3Qgc2NoZWR1bGUKYSBob3RwbHVnIHdvcmsg
ZnJvbSB0aGUgc2hvcnQgcHVsc2UgaGFuZGxlciBpZiBzb21lIHByb2JsZW0gaGFwcGVuZWQKZHVy
aW5nIHRoZSBNU1QgaW50ZXJydXB0IGhhbmRsaW5nLgoKVGhpcyByZW1vdmVzIHRoZSBleHBsaWNp
dCBNU1QgZGlzYWJsaW5nIGluIGNhc2Ugb2YgYW4gQVVYIGZhaWx1cmUsIGJ1dAppZiBBVVggZmFp
bHMsIHRoZW4gcHJvYmFibHkgdGhlIGRldGVjdGlvbiB3aWxsIGFsc28gZmFpbCBkdXJpbmcgdGhl
CnNjaGVkdWxlZCBob3RwbHVnIHdvcmsgYW5kIGl0J3Mgbm90IGd1YXJhbnRlZWQgdGhhdCB3ZSds
bCBzZWUKaW50ZXJtaXR0ZW50IGVycm9ycyBhbnl3YXkuCgpXaGlsZSBhdCBpdCBhbHNvIHNpbXBs
aWZ5IHRoZSBlcnJvciBjaGVja2luZyBvZiB0aGUgTVNUIGludGVycnVwdApoYW5kbGVyLgoKdjI6
Ci0gQ29udmVydCBpbnRlbF9kcF9jaGVja19tc3Rfc3RhdHVzKCkgdG8gcmV0dXJuIGJvb2wuIChW
aWxsZSkKLSBDaGFuZ2UgdGhlIGludGVsX2RwLT5pc19tc3QgY2hlY2sgdG8gYW4gYXNzZXJ0LCBz
aW5jZSBhZnRlciB0aGlzIHBhdGNoCiAgdGhlIGNvbmRpdGlvbiBjYW4ndCBjaGFuZ2UgYWZ0ZXIg
d2UgY2hlY2tlZCBpdCBwcmV2aW91c2x5LgotIERvY3VtZW50IHRoZSByZXR1cm4gdmFsdWUgZnJv
bSBpbnRlbF9kcF9jaGVja19tc3Rfc3RhdHVzKCkuCgpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6
YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+ICh2MSkKU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJl
LmRlYWtAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYyB8IDY3ICsrKysrKysrKystLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyNyBp
bnNlcnRpb25zKCspLCA0MCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMKaW5kZXggNTVmZGEwNzRjMGFkLi40YjZlN2NmNTc3ZGQgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKQEAgLTU1NTYsMzUgKzU1NTYsNDcgQEAgc3Rh
dGljIHZvaWQgaW50ZWxfZHBfaGFuZGxlX3Rlc3RfcmVxdWVzdChzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwKQogCQkJICAgICJDb3VsZCBub3Qgd3JpdGUgdGVzdCByZXNwb25zZSB0byBzaW5rXG4i
KTsKIH0KIAotc3RhdGljIGludAorLyoqCisgKiBpbnRlbF9kcF9jaGVja19tc3Rfc3RhdHVzIC0g
c2VydmljZSBhbnkgcGVuZGluZyBNU1QgaW50ZXJydXB0cywgY2hlY2sgbGluayBzdGF0dXMKKyAq
IEBpbnRlbF9kcDogSW50ZWwgRFAgc3RydWN0CisgKgorICogUmVhZCBhbnkgcGVuZGluZyBNU1Qg
aW50ZXJydXB0cywgY2FsbCBNU1QgY29yZSB0byBoYW5kbGUgdGhlc2UgYW5kIGFjayB0aGUKKyAq
IGludGVycnVwdHMuIENoZWNrIGlmIHRoZSBtYWluIGFuZCBBVVggbGluayBzdGF0ZSBpcyBvay4K
KyAqCisgKiBSZXR1cm5zOgorICogLSAldHJ1ZSBpZiBwZW5kaW5nIGludGVycnVwdHMgd2VyZSBz
ZXJ2aWNlZCAob3Igbm8gaW50ZXJydXB0cyB3ZXJlCisgKiAgIHBlbmRpbmcpIHcvbyBkZXRlY3Rp
bmcgYW4gZXJyb3IgY29uZGl0aW9uLgorICogLSAlZmFsc2UgaWYgYW4gZXJyb3IgY29uZGl0aW9u
IC0gbGlrZSBBVVggZmFpbHVyZSBvciBhIGxvc3Mgb2YgbGluayAtIGlzCisgKiAgIGRldGVjdGVk
LCB3aGljaCBuZWVkcyBzZXJ2aWNpbmcgZnJvbSB0aGUgaG90cGx1ZyB3b3JrLgorICovCitzdGF0
aWMgYm9vbAogaW50ZWxfZHBfY2hlY2tfbXN0X3N0YXR1cyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZHBfdG9faTkxNShpbnRl
bF9kcCk7Ci0JYm9vbCBuZWVkX3JldHJhaW4gPSBmYWxzZTsKLQotCWlmICghaW50ZWxfZHAtPmlz
X21zdCkKLQkJcmV0dXJuIC1FSU5WQUw7CisJYm9vbCBsaW5rX29rID0gdHJ1ZTsKIAorCWRybV9X
QVJOX09OX09OQ0UoJmk5MTUtPmRybSwgIWludGVsX2RwLT5pc19tc3QpOwogCWRybV9XQVJOX09O
X09OQ0UoJmk5MTUtPmRybSwgaW50ZWxfZHAtPmFjdGl2ZV9tc3RfbGlua3MgPCAwKTsKIAogCWZv
ciAoOzspIHsKIAkJdTggZXNpW0RQX0RQUlhfRVNJX0xFTl0gPSB7fTsKLQkJYm9vbCBicmV0LCBo
YW5kbGVkOworCQlib29sIGhhbmRsZWQ7CiAJCWludCByZXRyeTsKIAotCQlicmV0ID0gaW50ZWxf
ZHBfZ2V0X3NpbmtfaXJxX2VzaShpbnRlbF9kcCwgZXNpKTsKLQkJaWYgKCFicmV0KSB7CisJCWlm
ICghaW50ZWxfZHBfZ2V0X3NpbmtfaXJxX2VzaShpbnRlbF9kcCwgZXNpKSkgewogCQkJZHJtX2Ri
Z19rbXMoJmk5MTUtPmRybSwKIAkJCQkgICAgImZhaWxlZCB0byBnZXQgRVNJIC0gZGV2aWNlIG1h
eSBoYXZlIGZhaWxlZFxuIik7Ci0JCQlyZXR1cm4gLUVJTlZBTDsKKwkJCWxpbmtfb2sgPSBmYWxz
ZTsKKworCQkJYnJlYWs7CiAJCX0KIAogCQkvKiBjaGVjayBsaW5rIHN0YXR1cyAtIGVzaVsxMF0g
PSAweDIwMGMgKi8KLQkJaWYgKGludGVsX2RwLT5hY3RpdmVfbXN0X2xpbmtzID4gMCAmJiAhbmVl
ZF9yZXRyYWluICYmCisJCWlmIChpbnRlbF9kcC0+YWN0aXZlX21zdF9saW5rcyA+IDAgJiYgbGlu
a19vayAmJgogCQkgICAgIWRybV9kcF9jaGFubmVsX2VxX29rKCZlc2lbMTBdLCBpbnRlbF9kcC0+
bGFuZV9jb3VudCkpIHsKIAkJCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sCiAJCQkJICAgICJjaGFu
bmVsIEVRIG5vdCBvaywgcmV0cmFpbmluZ1xuIik7Ci0JCQluZWVkX3JldHJhaW4gPSB0cnVlOwor
CQkJbGlua19vayA9IGZhbHNlOwogCQl9CiAKIAkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgImdv
dCBlc2kgJTNwaFxuIiwgZXNpKTsKQEAgLTU2MDQsNyArNTYxNiw3IEBAIGludGVsX2RwX2NoZWNr
X21zdF9zdGF0dXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAkJfQogCX0KIAotCXJldHVy
biBuZWVkX3JldHJhaW47CisJcmV0dXJuIGxpbmtfb2s7CiB9CiAKIHN0YXRpYyBib29sCkBAIC03
MjU1LDM1ICs3MjY3LDEwIEBAIGludGVsX2RwX2hwZF9wdWxzZShzdHJ1Y3QgaW50ZWxfZGlnaXRh
bF9wb3J0ICppbnRlbF9kaWdfcG9ydCwgYm9vbCBsb25nX2hwZCkKIAl9CiAKIAlpZiAoaW50ZWxf
ZHAtPmlzX21zdCkgewotCQlzd2l0Y2ggKGludGVsX2RwX2NoZWNrX21zdF9zdGF0dXMoaW50ZWxf
ZHApKSB7Ci0JCWNhc2UgLUVJTlZBTDoKLQkJCS8qCi0JCQkgKiBJZiB3ZSB3ZXJlIGluIE1TVCBt
b2RlLCBhbmQgZGV2aWNlIGlzIG5vdAotCQkJICogdGhlcmUsIGdldCBvdXQgb2YgTVNUIG1vZGUK
LQkJCSAqLwotCQkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwKLQkJCQkgICAgIk1TVCBkZXZpY2Ug
bWF5IGhhdmUgZGlzYXBwZWFyZWQgJWQgdnMgJWRcbiIsCi0JCQkJICAgIGludGVsX2RwLT5pc19t
c3QsCi0JCQkJICAgIGludGVsX2RwLT5tc3RfbWdyLm1zdF9zdGF0ZSk7Ci0JCQlpbnRlbF9kcC0+
aXNfbXN0ID0gZmFsc2U7Ci0JCQlkcm1fZHBfbXN0X3RvcG9sb2d5X21ncl9zZXRfbXN0KCZpbnRl
bF9kcC0+bXN0X21nciwKLQkJCQkJCQlpbnRlbF9kcC0+aXNfbXN0KTsKLQotCQkJcmV0dXJuIElS
UV9OT05FOwotCQljYXNlIDE6Ci0JCQlyZXR1cm4gSVJRX05PTkU7Ci0JCWRlZmF1bHQ6Ci0JCQli
cmVhazsKLQkJfQotCX0KLQotCWlmICghaW50ZWxfZHAtPmlzX21zdCkgewotCQlib29sIGhhbmRs
ZWQ7Ci0KLQkJaGFuZGxlZCA9IGludGVsX2RwX3Nob3J0X3B1bHNlKGludGVsX2RwKTsKLQotCQlp
ZiAoIWhhbmRsZWQpCisJCWlmICghaW50ZWxfZHBfY2hlY2tfbXN0X3N0YXR1cyhpbnRlbF9kcCkp
CiAJCQlyZXR1cm4gSVJRX05PTkU7CisJfSBlbHNlIGlmICghaW50ZWxfZHBfc2hvcnRfcHVsc2Uo
aW50ZWxfZHApKSB7CisJCXJldHVybiBJUlFfTk9ORTsKIAl9CiAKIAlyZXR1cm4gSVJRX0hBTkRM
RUQ7Ci0tIAoyLjIzLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
