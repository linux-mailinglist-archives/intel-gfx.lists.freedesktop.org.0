Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC8D1729BF
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 21:54:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E8286ED3C;
	Thu, 27 Feb 2020 20:54:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7DB86ED3C
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 20:54:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 12:54:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,493,1574150400"; d="scan'208";a="385287763"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.234])
 by orsmga004.jf.intel.com with ESMTP; 27 Feb 2020 12:54:53 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Feb 2020 12:55:40 -0800
Message-Id: <20200227205540.126135-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <877e08shcs.fsf@intel.com>
References: <877e08shcs.fsf@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH backported to v5.6-rc3] drm/i915/psr: Force PSR
 probe only after full initialization
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
Cc: Jani Nikula <jani.nikula@intel.com>, Ross Zwisler <zwisler@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q29tbWl0IDYwYzZhMTRiNDg5YiAoImRybS9pOTE1L2Rpc3BsYXk6IEZvcmNlIHRoZSBzdGF0ZSBj
b21wdXRlIHBoYXNlCm9uY2UgdG8gZW5hYmxlIFBTUiIpIHdhcyBmb3JjaW5nIHRoZSBzdGF0ZSBj
b21wdXRlIHRvbyBlYXJsaWVyCmNhdXNpbmcgZXJyb3JzIGJlY2F1c2Ugbm90IGV2ZXJ5dGhpbmcg
d2FzIGluaXRpYWxpemVkLCBzbyBoZXJlCm1vdmluZyB0byB0aGUgZW5kIG9mIGk5MTVfZHJpdmVy
X21vZGVzZXRfcHJvYmUoKSB3aGVuIHRoZSBkaXNwbGF5IGlzCmFsbCBpbml0aWFsaXplZC4KCkFs
c28gZml4aW5nIHRoZSBwbGFjZSB3aGVyZSBpdCBkaXNhcm0gdGhlIGZvcmNlIHByb2JlIGFzIGR1
cmluZyB0aGUKYXRvbWljIGNoZWNrIHBoYXNlIGVycm9ycyBjb3VsZCBoYXBwZW4gbGlrZSB0aGUg
b25lcyBkdWUgbG9ja2luZyBhbmQKaXQgd291bGQgY2F1c2UgUFNSIHRvIG5ldmVyIGJlIGVuYWJs
ZWQgaWYgdGhhdCBoYXBwZW5zLgpMZWF2aW5nIHRoZSBkaXNhcm0gdG8gdGhlIGF0b21pYyBjb21t
aXQgcGhhc2UsIGludGVsX3Bzcl9lbmFibGUoKSBvcgppbnRlbF9wc3JfdXBkYXRlKCkgd2lsbCBi
ZSBjYWxsZWQgZXZlbiBpZiB0aGUgY3VycmVudCBzdGF0ZSBkbyBub3QKYWxsb3cgUFNSIHRvIGJl
IGVuYWJsZWQuCgp2MjogQ2hlY2sgaWYgaW50ZWxfZHAgaXMgbnVsbCBpbiBpbnRlbF9wc3JfZm9y
Y2VfbW9kZV9jaGFuZ2VkX3NldCgpCnYzOiBDaGVjayBpbnRlbF9kcCBiZWZvcmUgZ2V0IGRldl9w
cml2CnY0OgotIHJlbmFtZWQgaW50ZWxfcHNyX2ZvcmNlX21vZGVfY2hhbmdlZF9zZXQoKSB0bwpp
bnRlbF9wc3Jfc2V0X2ZvcmNlX21vZGVfY2hhbmdlZCgpCi0gcmVtb3ZlZCB0aGUgc2V0IHBhcmFt
ZXRlciBmcm9tIGludGVsX3Bzcl9zZXRfZm9yY2VfbW9kZV9jaGFuZ2VkKCkKLSBub3QgY2FsbGlu
ZyBpbnRlbF9wc3Jfc2V0X2ZvcmNlX21vZGVfY2hhbmdlZCgpIGZyb20KaW50ZWxfcHNyX2VuYWJs
ZS91cGRhdGUoKSwgZGlyZWN0bHkgc2V0dGluZyBpdCBhZnRlciB0aGUgc2FtZSBjaGVja3MKdGhh
dCBpbnRlbF9wc3Jfc2V0X2ZvcmNlX21vZGVfY2hhbmdlZCgpIGRvZXMKLSBtb3ZlZCBpbnRlbF9w
c3Jfc2V0X2ZvcmNlX21vZGVfY2hhbmdlZCgpIGFybSBjYWxsIHRvCmk5MTVfZHJpdmVyX21vZGVz
ZXRfcHJvYmUoKSBhcyBpdCBpcyBhIGJldHRlciBmb3IgYSBQU1IgY2FsbCwgYWxsIHRoZQpmdW5j
dGlvbnMgY2FsbHMgaGFwcGVuaW5nIGJldHdlZW4gdGhlIG9sZCBhbmQgdGhlIG5ldyBmdW5jdGlv
biBjYWxsCndpbGwgY2F1c2UgaXNzdWUKCltiYWNrcG9ydGVkIHRvIHY1LjYtcmMzXQoKRml4ZXM6
IDYwYzZhMTRiNDg5YiAoImRybS9pOTE1L2Rpc3BsYXk6IEZvcmNlIHRoZSBzdGF0ZSBjb21wdXRl
IHBoYXNlIG9uY2UgdG8gZW5hYmxlIFBTUiIpCkNsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRl
c2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMTE1MQpUZXN0ZWQtYnk6IFJvc3MgWndpc2xlciA8
endpc2xlckBnb29nbGUuY29tPgpSZXBvcnRlZC1ieTogUm9zcyBad2lzbGVyIDx6d2lzbGVyQGdv
b2dsZS5jb20+CkNjOiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+
CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpDYzogQW5zaHVtYW4gR3Vw
dGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEd3YW4tZ3llb25nIE11
biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ckxpbms6IGh0dHBzOi8vcGF0Y2h3b3Jr
LmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDIwMDIyMTIxMjYzNS4xMTYxNC0xLWpvc2Uu
c291emFAaW50ZWwuY29tCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYyB8IDI1ICsrKysrKysrKysrKysrKysrKysrLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuaCB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmMgICAgICAgICAgfCAgMyArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAg
ICAgICAgfCAgMiArLQogNCBmaWxlcyBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspLCA1IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCmluZGV4IDg5
YzljZjVmMzhkMi4uODMwMjUwNTJjOTY1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMKQEAgLTg1MiwxMCArODUyLDEyIEBAIHZvaWQgaW50ZWxfcHNyX2VuYWJsZShz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOwogCi0JaWYgKCFjcnRjX3N0YXRlLT5oYXNf
cHNyKQorCWlmICghQ0FOX1BTUihkZXZfcHJpdikgfHwgZGV2X3ByaXYtPnBzci5kcCAhPSBpbnRl
bF9kcCkKIAkJcmV0dXJuOwogCi0JaWYgKFdBUk5fT04oIUNBTl9QU1IoZGV2X3ByaXYpKSkKKwlk
ZXZfcHJpdi0+cHNyLmZvcmNlX21vZGVfY2hhbmdlZCA9IGZhbHNlOworCisJaWYgKCFjcnRjX3N0
YXRlLT5oYXNfcHNyKQogCQlyZXR1cm47CiAKIAlXQVJOX09OKGRldl9wcml2LT5kcnJzLmRwKTsK
QEAgLTEwMDksNiArMTAxMSw4IEBAIHZvaWQgaW50ZWxfcHNyX3VwZGF0ZShzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwLAogCWlmICghQ0FOX1BTUihkZXZfcHJpdikgfHwgUkVBRF9PTkNFKHBzci0+
ZHApICE9IGludGVsX2RwKQogCQlyZXR1cm47CiAKKwlkZXZfcHJpdi0+cHNyLmZvcmNlX21vZGVf
Y2hhbmdlZCA9IGZhbHNlOworCiAJbXV0ZXhfbG9jaygmZGV2X3ByaXYtPnBzci5sb2NrKTsKIAog
CWVuYWJsZSA9IGNydGNfc3RhdGUtPmhhc19wc3IgJiYgcHNyX2dsb2JhbF9lbmFibGVkKHBzci0+
ZGVidWcpOwpAQCAtMTUzNCw3ICsxNTM4LDcgQEAgdm9pZCBpbnRlbF9wc3JfYXRvbWljX2NoZWNr
KHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCiAJc3RydWN0IGRybV9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlOwogCiAJaWYgKCFDQU5fUFNSKGRldl9wcml2KSB8fCAhbmV3X3N0YXRlLT5j
cnRjIHx8Ci0JICAgIGRldl9wcml2LT5wc3IuaW5pdGlhbGx5X3Byb2JlZCkKKwkgICAgIWRldl9w
cml2LT5wc3IuZm9yY2VfbW9kZV9jaGFuZ2VkKQogCQlyZXR1cm47CiAKIAlpbnRlbF9jb25uZWN0
b3IgPSB0b19pbnRlbF9jb25uZWN0b3IoY29ubmVjdG9yKTsKQEAgLTE1NDUsNSArMTU0OSwxOCBA
QCB2b2lkIGludGVsX3Bzcl9hdG9taWNfY2hlY2soc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5l
Y3RvciwKIAljcnRjX3N0YXRlID0gZHJtX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUobmV3X3N0
YXRlLT5zdGF0ZSwKIAkJCQkJCSAgIG5ld19zdGF0ZS0+Y3J0Yyk7CiAJY3J0Y19zdGF0ZS0+bW9k
ZV9jaGFuZ2VkID0gdHJ1ZTsKLQlkZXZfcHJpdi0+cHNyLmluaXRpYWxseV9wcm9iZWQgPSB0cnVl
OworfQorCit2b2lkIGludGVsX3Bzcl9zZXRfZm9yY2VfbW9kZV9jaGFuZ2VkKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHApCit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2Owor
CisJaWYgKCFpbnRlbF9kcCkKKwkJcmV0dXJuOworCisJZGV2X3ByaXYgPSBkcF90b19pOTE1KGlu
dGVsX2RwKTsKKwlpZiAoIUNBTl9QU1IoZGV2X3ByaXYpIHx8IGludGVsX2RwICE9IGRldl9wcml2
LT5wc3IuZHApCisJCXJldHVybjsKKworCWRldl9wcml2LT5wc3IuZm9yY2VfbW9kZV9jaGFuZ2Vk
ID0gdHJ1ZTsKIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oCmluZGV4
IGM1OGExZDQzODgwOC4uMjc0ZmM2YmI2MjIxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmgKQEAgLTQwLDUgKzQwLDYgQEAgYm9vbCBpbnRlbF9wc3JfZW5hYmxlZChz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsKIHZvaWQgaW50ZWxfcHNyX2F0b21pY19jaGVjayhz
dHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAogCQkJICAgIHN0cnVjdCBkcm1fY29ubmVj
dG9yX3N0YXRlICpvbGRfc3RhdGUsCiAJCQkgICAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUg
Km5ld19zdGF0ZSk7Cit2b2lkIGludGVsX3Bzcl9zZXRfZm9yY2VfbW9kZV9jaGFuZ2VkKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApOwogCiAjZW5kaWYgLyogX19JTlRFTF9QU1JfSF9fICovCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuYwppbmRleCBmNzM4NWFiZGQ3NGIuLjg0MTAzMzBjZTRmMCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5jCkBAIC01Niw2ICs1Niw3IEBACiAjaW5jbHVkZSAiZGlzcGxh
eS9pbnRlbF9ob3RwbHVnLmgiCiAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9vdmVybGF5LmgiCiAj
aW5jbHVkZSAiZGlzcGxheS9pbnRlbF9waXBlX2NyYy5oIgorI2luY2x1ZGUgImRpc3BsYXkvaW50
ZWxfcHNyLmgiCiAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9zcHJpdGUuaCIKICNpbmNsdWRlICJk
aXNwbGF5L2ludGVsX3ZnYS5oIgogCkBAIC0zMzAsNiArMzMxLDggQEAgc3RhdGljIGludCBpOTE1
X2RyaXZlcl9tb2Rlc2V0X3Byb2JlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCiAJ
aW50ZWxfaW5pdF9pcGMoaTkxNSk7CiAKKwlpbnRlbF9wc3Jfc2V0X2ZvcmNlX21vZGVfY2hhbmdl
ZChpOTE1LT5wc3IuZHApOworCiAJcmV0dXJuIDA7CiAKIGNsZWFudXBfZ2VtOgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmgKaW5kZXggMDc3YWYyMmI4MzQwLi44MTBlM2NjZDU2ZWMgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaApAQCAtNTA1LDcgKzUwNSw3IEBAIHN0cnVjdCBpOTE1X3BzciB7CiAJYm9v
bCBkYzNjb19lbmFibGVkOwogCXUzMiBkYzNjb19leGl0X2RlbGF5OwogCXN0cnVjdCBkZWxheWVk
X3dvcmsgaWRsZV93b3JrOwotCWJvb2wgaW5pdGlhbGx5X3Byb2JlZDsKKwlib29sIGZvcmNlX21v
ZGVfY2hhbmdlZDsKIH07CiAKICNkZWZpbmUgUVVJUktfTFZEU19TU0NfRElTQUJMRSAoMTw8MSkK
LS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
