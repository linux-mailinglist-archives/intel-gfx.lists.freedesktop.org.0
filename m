Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8800D29671B
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 00:25:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7DEC6E409;
	Thu, 22 Oct 2020 22:25:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E58FE6E409
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Oct 2020 22:25:43 +0000 (UTC)
IronPort-SDR: NotAH2a3WeZOUWk285khY5PFkQzud2YzIivEa3IxjRN5NUhxYZhyXlVVm6TIzetAJrL9e4AoVl
 S7qG5k1Ibtxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="155386814"
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="155386814"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 15:25:42 -0700
IronPort-SDR: QpSTxVZhK/X+ygSJNxBX7Kq/5O/q1CJz/l2rl2oE3v85LcJT7+3E9l2+HX297p4ZnJ+08hezvH
 xX/IMp8Nwn7Q==
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="534153947"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 22 Oct 2020 15:25:42 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Oct 2020 15:27:00 -0700
Message-Id: <20201022222709.29386-3-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201022222709.29386-1-manasi.d.navare@intel.com>
References: <20201022222709.29386-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/11] drm/i915/display/vrr: Create VRR file and
 add VRR capability check
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

V2UgY3JlYXRlIGEgbmV3IGZpbGUgZm9yIGFsbCBWUlIgcmVsYXRlZCBoZWxwZXJzLgpBbHNvIGFk
ZCBhIGZ1bmN0aW9uIHRvIGNoZWNrIHZyciBjYXBhYmlsaXR5IGJhc2VkIG9uCnBsYXRmb3JtIHN1
cHBvcnQsIERQQ0QgYml0cyBhbmQgRURJRCBtb25pdG9yIHJhbmdlLgoKQ2M6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hbmFz
aSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvTWFrZWZpbGUgICAgICAgICAgICB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfdnJyLmMgfCAyOCArKysrKysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmggfCAxOSArKysrKysrKysrKysrKysrCiAz
IGZpbGVzIGNoYW5nZWQsIDQ4IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jCiBjcmVhdGUgbW9kZSAxMDA2NDQg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuaAoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZp
bGUKaW5kZXggZTU1NzRlNTA2YTVjLi4zYmVlYWY1MTcxOTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L01ha2VmaWxlCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxl
CkBAIC0yNDksNiArMjQ5LDcgQEAgaTkxNS15ICs9IFwKIAlkaXNwbGF5L2ludGVsX3Nkdm8ubyBc
CiAJZGlzcGxheS9pbnRlbF90di5vIFwKIAlkaXNwbGF5L2ludGVsX3Zkc2MubyBcCisJZGlzcGxh
eS9pbnRlbF92cnIubyBcCiAJZGlzcGxheS92bHZfZHNpLm8gXAogCWRpc3BsYXkvdmx2X2RzaV9w
bGwubwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zy
ci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYwpuZXcgZmlsZSBt
b2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjBjOGE5MWZhYmI2NAotLS0gL2Rldi9udWxs
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMKQEAgLTAsMCAr
MSwyOCBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLworLyoKKyAqIENvcHly
aWdodCDCqSAyMDIwIEludGVsIENvcnBvcmF0aW9uCisgKgorICogQXV0aG9yOiBNYW5hc2kgTmF2
YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgorICovCisKKyNpbmNsdWRlICJpOTE1X2Ry
di5oIgorI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfdHlwZXMuaCIKKyNpbmNsdWRlICJpbnRlbF92
cnIuaCIKKworYm9vbCBpbnRlbF9pc192cnJfY2FwYWJsZShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAq
Y29ubmVjdG9yKQoreworCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBpbnRlbF9hdHRhY2hl
ZF9kcCh0b19pbnRlbF9jb25uZWN0b3IoY29ubmVjdG9yKSk7CisJY29uc3Qgc3RydWN0IGRybV9k
aXNwbGF5X2luZm8gKmluZm8gPSAmY29ubmVjdG9yLT5kaXNwbGF5X2luZm87CisJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjb25uZWN0b3ItPmRldik7CisKKwkv
KgorCSAqIERQIFNpbmsgaXMgY2FwYWJsZSBvZiBWYXJpYWJsZSByZWZyZXNoIHZpZGVvIHRpbWlu
Z3MgaWYKKwkgKiBJZ25vcmUgTVNBIGJpdCBpcyBzZXQgaW4gRFBDRC4KKwkgKiBFRElEIG1vbml0
b3IgcmFuZ2UgYWxzbyBzaG91bGQgYmUgYXRsZWFzdCAxMCBmb3IgcmVhc29uYWJsZQorCSAqIEFk
YXB0aXZlIHN5bmMvIFZSUiBlbmQgdXNlciBleHBlcmllbmNlLgorCSAqLworCXJldHVybiBJTlRF
TF9HRU4oZGV2X3ByaXYpID49IDEyICYmCisJCWRybV9kcF9zaW5rX2Nhbl9kb192aWRlb193aXRo
b3V0X3RpbWluZ19tc2EoaW50ZWxfZHAtPmRwY2QpICYmCisJCWluZm8tPm1vbml0b3JfcmFuZ2Uu
bWF4X3ZmcmVxIC0gaW5mby0+bW9uaXRvcl9yYW5nZS5taW5fdmZyZXEgPiAxMDsKK30KKwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQK
aW5kZXggMDAwMDAwMDAwMDAwLi43NTU3NDZjNzUyNWMKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5oCkBAIC0wLDAgKzEsMTkgQEAKKy8q
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQgKi8KKy8qCisgKiBDb3B5cmlnaHQgwqkgMjAx
OSBJbnRlbCBDb3Jwb3JhdGlvbgorKi8KKworI2lmbmRlZiBfX0lOVEVMX1ZSUl9IX18KKyNkZWZp
bmUgX19JTlRFTF9WUlJfSF9fCisKKyNpbmNsdWRlIDxsaW51eC90eXBlcy5oPgorCitzdHJ1Y3Qg
ZHJtX2Nvbm5lY3RvcjsKK3N0cnVjdCBkcm1faTkxNV9wcml2YXRlOworc3RydWN0IGludGVsX2Ny
dGNfc3RhdGU7CitzdHJ1Y3QgaW50ZWxfZW5jb2RlcjsKK3N0cnVjdCBpbnRlbF9kcDsKKworYm9v
bCBpbnRlbF9pc192cnJfY2FwYWJsZShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKTsK
KworI2VuZGlmIC8qIF9fSU5URUxfVlJSX0hfXyAqLwotLSAKMi4xOS4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
