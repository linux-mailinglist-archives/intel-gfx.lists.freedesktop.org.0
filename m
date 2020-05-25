Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A3C1E0874
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2020 10:07:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 434E9892C9;
	Mon, 25 May 2020 08:07:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C362F6E061
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2020 08:07:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21284378-1500050 
 for multiple; Mon, 25 May 2020 09:07:29 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 May 2020 09:07:31 +0100
Message-Id: <20200525080731.2244-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Revert CDCLK changes to unbreak
 geminilake
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyByZXZlcnRzCmNhYzkxZTY3MWFkNSAoImRybS9pOTE1OiBGaXggaW5jbHVkZXMgYW5kIGxv
Y2FsIHZhcnMgb3JkZXIiKQo4MmVhMTc0ZGM1NDIgKCJkcm0vaTkxNTogUmVtb3ZlIHVubmVlZGVk
IGhhY2sgbm93IGZvciBDRENMSyIpCmNkMTkxNTQ2MDg2MSAoImRybS9pOTE1OiBBZGp1c3QgQ0RD
TEsgYWNjb3JkaW5nbHkgdG8gb3VyIERCdWYgYncgbmVlZHMiKQoKQ2M6IFN0YW5pc2xhdiBMaXNv
dnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPgpDYzogTWFuYXNpIE5hdmFyZSA8
bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KQ2M6ICJWaWxsZSBTeXJqw6Rsw6QiIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2J3LmMgICAgICB8IDEyNyArLS0tLS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmggICAgICB8ICAxMCAtLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jICAgfCAgNDEgKysrLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8ICAzOSArLS0tLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgIHwgICAxIC0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3BtLmMgICAgICAgICAgICAgIHwgIDMzICstLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9wbS5oICAgICAgICAgICAgICB8ICAgNiArLQogNyBmaWxlcyBjaGFuZ2Vk
LCAyOSBpbnNlcnRpb25zKCspLCAyMjggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9idy5jCmluZGV4IGE3OWJkN2FlYjAzYi4uOThiYmU3MTljZjRmIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jCkBAIC01LDEyICs1LDEyIEBACiAK
ICNpbmNsdWRlIDxkcm0vZHJtX2F0b21pY19zdGF0ZV9oZWxwZXIuaD4KIAotI2luY2x1ZGUgImlu
dGVsX2F0b21pYy5oIgogI2luY2x1ZGUgImludGVsX2J3LmgiCi0jaW5jbHVkZSAiaW50ZWxfY2Rj
bGsuaCIKICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgiCi0jaW5jbHVkZSAiaW50ZWxf
cG0uaCIKICNpbmNsdWRlICJpbnRlbF9zaWRlYmFuZC5oIgorI2luY2x1ZGUgImludGVsX2F0b21p
Yy5oIgorI2luY2x1ZGUgImludGVsX3BtLmgiCisKIAogLyogUGFyYW1ldGVycyBmb3IgUWNsayBH
ZXlzZXJ2aWxsZSAoUUdWKSAqLwogc3RydWN0IGludGVsX3Fndl9wb2ludCB7CkBAIC00MjgsMTI3
ICs0MjgsNiBAQCBpbnRlbF9hdG9taWNfZ2V0X2J3X3N0YXRlKHN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlKQogCXJldHVybiB0b19pbnRlbF9id19zdGF0ZShid19zdGF0ZSk7CiB9CiAK
LWludCBza2xfYndfY2FsY19taW5fY2RjbGsoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUpCi17Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShzdGF0
ZS0+YmFzZS5kZXYpOwotCXN0cnVjdCBpbnRlbF9id19zdGF0ZSAqbmV3X2J3X3N0YXRlID0gTlVM
TDsKLQlzdHJ1Y3QgaW50ZWxfYndfc3RhdGUgKm9sZF9id19zdGF0ZSA9IE5VTEw7Ci0JY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGU7Ci0Jc3RydWN0IGludGVsX2NydGMg
KmNydGM7Ci0JaW50IG1heF9idyA9IDA7Ci0JaW50IHNsaWNlX2lkOwotCWludCBpOwotCi0JZm9y
X2VhY2hfbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIGNydGNfc3RhdGUsIGkp
IHsKLQkJZW51bSBwbGFuZV9pZCBwbGFuZV9pZDsKLQkJc3RydWN0IGludGVsX2RidWZfYncgKmNy
dGNfYnc7Ci0KLQkJbmV3X2J3X3N0YXRlID0gaW50ZWxfYXRvbWljX2dldF9id19zdGF0ZShzdGF0
ZSk7Ci0JCWlmIChJU19FUlIobmV3X2J3X3N0YXRlKSkKLQkJCXJldHVybiBQVFJfRVJSKG5ld19i
d19zdGF0ZSk7Ci0KLQkJY3J0Y19idyA9ICZuZXdfYndfc3RhdGUtPmRidWZfYndbY3J0Yy0+cGlw
ZV07Ci0KLQkJbWVtc2V0KCZjcnRjX2J3LT51c2VkX2J3LCAwLCBzaXplb2YoY3J0Y19idy0+dXNl
ZF9idykpOwotCi0JCWZvcl9lYWNoX3BsYW5lX2lkX29uX2NydGMoY3J0YywgcGxhbmVfaWQpIHsK
LQkJCWNvbnN0IHN0cnVjdCBza2xfZGRiX2VudHJ5ICpwbGFuZV9hbGxvYyA9Ci0JCQkJJmNydGNf
c3RhdGUtPndtLnNrbC5wbGFuZV9kZGJfeVtwbGFuZV9pZF07Ci0JCQljb25zdCBzdHJ1Y3Qgc2ts
X2RkYl9lbnRyeSAqdXZfcGxhbmVfYWxsb2MgPQotCQkJCSZjcnRjX3N0YXRlLT53bS5za2wucGxh
bmVfZGRiX3V2W3BsYW5lX2lkXTsKLQkJCXVuc2lnbmVkIGludCBkYXRhX3JhdGUgPSBjcnRjX3N0
YXRlLT5kYXRhX3JhdGVbcGxhbmVfaWRdOwotCQkJdW5zaWduZWQgaW50IGRidWZfbWFzayA9IDA7
Ci0KLQkJCWRidWZfbWFzayB8PSBza2xfZGRiX2RidWZfc2xpY2VfbWFzayhkZXZfcHJpdiwgcGxh
bmVfYWxsb2MpOwotCQkJZGJ1Zl9tYXNrIHw9IHNrbF9kZGJfZGJ1Zl9zbGljZV9tYXNrKGRldl9w
cml2LCB1dl9wbGFuZV9hbGxvYyk7Ci0KLQkJCS8qCi0JCQkgKiBGSVhNRTogVG8gY2FsY3VsYXRl
IHRoYXQgbW9yZSBwcm9wZXJseSB3ZSBwcm9iYWJseQotCQkJICogbmVlZCB0byB0byBzcGxpdCBw
ZXIgcGxhbmUgZGF0YV9yYXRlIGludG8gZGF0YV9yYXRlX3kKLQkJCSAqIGFuZCBkYXRhX3JhdGVf
dXYgZm9yIG11bHRpcGxhbmFyIGZvcm1hdHMgaW4gb3JkZXIgbm90Ci0JCQkgKiB0byBnZXQgYWNj
b3VudGVkIHRob3NlIHR3aWNlIGlmIHRoZXkgaGFwcGVuIHRvIHJlc2lkZQotCQkJICogb24gZGlm
ZmVyZW50IHNsaWNlcy4KLQkJCSAqIEhvd2V2ZXIgZm9yIHByZS1pY2wgdGhpcyB3b3VsZCB3b3Jr
IGFueXdheSBiZWNhdXNlCi0JCQkgKiB3ZSBoYXZlIG9ubHkgc2luZ2xlIHNsaWNlIGFuZCBmb3Ig
aWNsKyB1diBwbGFuZSBoYXMKLQkJCSAqIG5vbi16ZXJvIGRhdGEgcmF0ZS4KLQkJCSAqIFNvIGlu
IHdvcnN0IGNhc2UgdGhvc2UgY2FsY3VsYXRpb24gYXJlIGEgYml0Ci0JCQkgKiBwZXNzaW1pc3Rp
Yywgd2hpY2ggc2hvdWxkbid0IHBvc2UgYW55IHNpZ25pZmljYW50Ci0JCQkgKiBwcm9ibGVtIGFu
eXdheS4KLQkJCSAqLwotCQkJZm9yX2VhY2hfZGJ1Zl9zbGljZV9pbl9tYXNrKHNsaWNlX2lkLCBk
YnVmX21hc2spCi0JCQkJY3J0Y19idy0+dXNlZF9id1tzbGljZV9pZF0gKz0gZGF0YV9yYXRlOwot
CQl9Ci0KLQkJZm9yX2VhY2hfZGJ1Zl9zbGljZShzbGljZV9pZCkgewotCQkJLyoKLQkJCSAqIEN1
cnJlbnQgZXhwZXJpbWVudGFsIG9ic2VydmF0aW9ucyBzaG93IHRoYXQgY29udHJhcnkKLQkJCSAq
IHRvIEJTcGVjIHdlIGdldCB1bmRlcnJ1bnMgb25jZSB3ZSBleGNlZWQgNjQgKiBDRENMSwotCQkJ
ICogZm9yIHNsaWNlcyBpbiB0b3RhbC4KLQkJCSAqIEFzIGEgdGVtcG9yYXJ5IG1lYXN1cmUgaW4g
b3JkZXIgbm90IHRvIGtlZXAgQ0RDTEsKLQkJCSAqIGJ1bXBlZCB1cCBhbGwgdGhlIHRpbWUgd2Ug
Y2FsY3VsYXRlIENEQ0xLIGFjY29yZGluZwotCQkJICogdG8gdGhpcyBmb3JtdWxhIGZvciAgb3Zl
cmFsbCBidyBjb25zdW1lZCBieSBzbGljZXMuCi0JCQkgKi8KLQkJCW1heF9idyArPSBjcnRjX2J3
LT51c2VkX2J3W3NsaWNlX2lkXTsKLQkJfQotCi0JCW5ld19id19zdGF0ZS0+bWluX2NkY2xrID0g
bWF4X2J3IC8gNjQ7Ci0KLQkJb2xkX2J3X3N0YXRlID0gaW50ZWxfYXRvbWljX2dldF9vbGRfYndf
c3RhdGUoc3RhdGUpOwotCX0KLQotCWlmICghb2xkX2J3X3N0YXRlKQotCQlyZXR1cm4gMDsKLQot
CWlmIChuZXdfYndfc3RhdGUtPm1pbl9jZGNsayAhPSBvbGRfYndfc3RhdGUtPm1pbl9jZGNsaykg
ewotCQlpbnQgcmV0ID0gaW50ZWxfYXRvbWljX2xvY2tfZ2xvYmFsX3N0YXRlKCZuZXdfYndfc3Rh
dGUtPmJhc2UpOwotCi0JCWlmIChyZXQpCi0JCQlyZXR1cm4gcmV0OwotCX0KLQotCXJldHVybiAw
OwotfQotCi1pbnQgaW50ZWxfYndfY2FsY19taW5fY2RjbGsoc3RydWN0IGludGVsX2F0b21pY19z
dGF0ZSAqc3RhdGUpCi17Ci0JaW50IGk7Ci0JY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGU7Ci0Jc3RydWN0IGludGVsX2NydGMgKmNydGM7Ci0JaW50IG1pbl9jZGNsayA9
IDA7Ci0Jc3RydWN0IGludGVsX2J3X3N0YXRlICpuZXdfYndfc3RhdGUgPSBOVUxMOwotCXN0cnVj
dCBpbnRlbF9id19zdGF0ZSAqb2xkX2J3X3N0YXRlID0gTlVMTDsKLQotCWZvcl9lYWNoX25ld19p
bnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLCBjcnRjX3N0YXRlLCBpKSB7Ci0JCXN0cnVj
dCBpbnRlbF9jZGNsa19zdGF0ZSAqY2RjbGtfc3RhdGU7Ci0KLQkJbmV3X2J3X3N0YXRlID0gaW50
ZWxfYXRvbWljX2dldF9id19zdGF0ZShzdGF0ZSk7Ci0JCWlmIChJU19FUlIobmV3X2J3X3N0YXRl
KSkKLQkJCXJldHVybiBQVFJfRVJSKG5ld19id19zdGF0ZSk7Ci0KLQkJY2RjbGtfc3RhdGUgPSBp
bnRlbF9hdG9taWNfZ2V0X2NkY2xrX3N0YXRlKHN0YXRlKTsKLQkJaWYgKElTX0VSUihjZGNsa19z
dGF0ZSkpCi0JCQlyZXR1cm4gUFRSX0VSUihjZGNsa19zdGF0ZSk7Ci0KLQkJbWluX2NkY2xrID0g
bWF4KGNkY2xrX3N0YXRlLT5taW5fY2RjbGtbY3J0Yy0+cGlwZV0sIG1pbl9jZGNsayk7Ci0KLQkJ
bmV3X2J3X3N0YXRlLT5taW5fY2RjbGsgPSBtaW5fY2RjbGs7Ci0KLQkJb2xkX2J3X3N0YXRlID0g
aW50ZWxfYXRvbWljX2dldF9vbGRfYndfc3RhdGUoc3RhdGUpOwotCX0KLQotCWlmICghb2xkX2J3
X3N0YXRlKQotCQlyZXR1cm4gMDsKLQotCWlmIChuZXdfYndfc3RhdGUtPm1pbl9jZGNsayAhPSBv
bGRfYndfc3RhdGUtPm1pbl9jZGNsaykgewotCQlpbnQgcmV0ID0gaW50ZWxfYXRvbWljX2xvY2tf
Z2xvYmFsX3N0YXRlKCZuZXdfYndfc3RhdGUtPmJhc2UpOwotCi0JCWlmIChyZXQpCi0JCQlyZXR1
cm4gcmV0OwotCX0KLQotCXJldHVybiAwOwotfQotCiBpbnQgaW50ZWxfYndfYXRvbWljX2NoZWNr
KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogewogCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KTsKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuaAppbmRleCA0NmM2ZWVjYmQ5MTcuLmJiY2FhYTczZWMx
YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5oCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuaApAQCAtOSwyMCArOSwx
NCBAQAogI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljLmg+CiAKICNpbmNsdWRlICJpbnRlbF9kaXNw
bGF5LmgiCi0jaW5jbHVkZSAiaW50ZWxfZGlzcGxheV9wb3dlci5oIgogI2luY2x1ZGUgImludGVs
X2dsb2JhbF9zdGF0ZS5oIgogCiBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsKIHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGU7CiBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZTsKIAotc3RydWN0IGludGVs
X2RidWZfYncgewotCWludCB1c2VkX2J3W0k5MTVfTUFYX0RCVUZfU0xJQ0VTXTsKLX07Ci0KIHN0
cnVjdCBpbnRlbF9id19zdGF0ZSB7CiAJc3RydWN0IGludGVsX2dsb2JhbF9zdGF0ZSBiYXNlOwot
CXN0cnVjdCBpbnRlbF9kYnVmX2J3IGRidWZfYndbSTkxNV9NQVhfUElQRVNdOwogCiAJLyoKIAkg
KiBDb250YWlucyBhIGJpdCBtYXNrLCB1c2VkIHRvIGRldGVybWluZSwgd2hldGhlciBjb3JyZXNw
b25kZW50CkBAIC00Miw4ICszNiw2IEBAIHN0cnVjdCBpbnRlbF9id19zdGF0ZSB7CiAKIAkvKiBi
aXRtYXNrIG9mIGFjdGl2ZSBwaXBlcyAqLwogCXU4IGFjdGl2ZV9waXBlczsKLQotCWludCBtaW5f
Y2RjbGs7CiB9OwogCiAjZGVmaW5lIHRvX2ludGVsX2J3X3N0YXRlKHgpIGNvbnRhaW5lcl9vZigo
eCksIHN0cnVjdCBpbnRlbF9id19zdGF0ZSwgYmFzZSkKQEAgLTY0LDcgKzU2LDUgQEAgdm9pZCBp
bnRlbF9id19jcnRjX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYndfc3RhdGUgKmJ3X3N0YXRlLAogCQkJ
ICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7CiBpbnQgaWNsX3Bj
b2RlX3Jlc3RyaWN0X3Fndl9wb2ludHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LAogCQkJCSAgdTMyIHBvaW50c19tYXNrKTsKLWludCBpbnRlbF9id19jYWxjX21pbl9jZGNsayhz
dHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSk7Ci1pbnQgc2tsX2J3X2NhbGNfbWluX2Nk
Y2xrKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKTsKIAogI2VuZGlmIC8qIF9fSU5U
RUxfQldfSF9fICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMK
aW5kZXggZjliMGZjNzMxN2RlLi45NDE5YTQ3MjQzNTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKQEAgLTIxLDEwICsyMSw3IEBACiAgKiBERUFMSU5HUyBJ
TiBUSEUgU09GVFdBUkUuCiAgKi8KIAotI2luY2x1ZGUgPGxpbnV4L3RpbWUuaD4KLQogI2luY2x1
ZGUgImludGVsX2F0b21pYy5oIgotI2luY2x1ZGUgImludGVsX2J3LmgiCiAjaW5jbHVkZSAiaW50
ZWxfY2RjbGsuaCIKICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgiCiAjaW5jbHVkZSAi
aW50ZWxfc2lkZWJhbmQuaCIKQEAgLTIwNzEsNiArMjA2OCwxOCBAQCBpbnQgaW50ZWxfY3J0Y19j
b21wdXRlX21pbl9jZGNsayhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSkKIAkvKiBBY2NvdW50IGZvciBhZGRpdGlvbmFsIG5lZWRzIGZyb20gdGhlIHBsYW5lcyAqLwog
CW1pbl9jZGNsayA9IG1heChpbnRlbF9wbGFuZXNfbWluX2NkY2xrKGNydGNfc3RhdGUpLCBtaW5f
Y2RjbGspOwogCisJLyoKKwkgKiBIQUNLLiBDdXJyZW50bHkgZm9yIFRHTCBwbGF0Zm9ybXMgd2Ug
Y2FsY3VsYXRlCisJICogbWluX2NkY2xrIGluaXRpYWxseSBiYXNlZCBvbiBwaXhlbF9yYXRlIGRp
dmlkZWQKKwkgKiBieSAyLCBhY2NvdW50aW5nIGZvciBhbHNvIHBsYW5lIHJlcXVpcmVtZW50cywK
KwkgKiBob3dldmVyIGluIHNvbWUgY2FzZXMgdGhlIGxvd2VzdCBwb3NzaWJsZSBDRENMSworCSAq
IGRvZXNuJ3Qgd29yayBhbmQgY2F1c2luZyB0aGUgdW5kZXJydW5zLgorCSAqIEV4cGxpY2l0bHkg
c3RhdGluZyBoZXJlIHRoYXQgdGhpcyBzZWVtcyB0byBiZSBjdXJyZW50bHkKKwkgKiByYXRoZXIg
YSBIYWNrLCB0aGFuIGZpbmFsIHNvbHV0aW9uLgorCSAqLworCWlmIChJU19USUdFUkxBS0UoZGV2
X3ByaXYpKQorCQltaW5fY2RjbGsgPSBtYXgobWluX2NkY2xrLCAoaW50KWNydGNfc3RhdGUtPnBp
eGVsX3JhdGUpOworCiAJaWYgKG1pbl9jZGNsayA+IGRldl9wcml2LT5tYXhfY2RjbGtfZnJlcSkg
ewogCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwKIAkJCSAgICAicmVxdWlyZWQgY2RjbGsg
KCVkIGtIeikgZXhjZWVkcyBtYXggKCVkIGtIeilcbiIsCkBAIC0yMDg0LDkgKzIwOTMsMTEgQEAg
aW50IGludGVsX2NydGNfY29tcHV0ZV9taW5fY2RjbGsoY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUpCiBzdGF0aWMgaW50IGludGVsX2NvbXB1dGVfbWluX2NkY2xrKHN0
cnVjdCBpbnRlbF9jZGNsa19zdGF0ZSAqY2RjbGtfc3RhdGUpCiB7CiAJc3RydWN0IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUgPSBjZGNsa19zdGF0ZS0+YmFzZS5zdGF0ZTsKKwlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHN0YXRlLT5iYXNlLmRldik7CiAJc3Ry
dWN0IGludGVsX2NydGMgKmNydGM7CiAJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGU7CiAJaW50IG1pbl9jZGNsaywgaTsKKwllbnVtIHBpcGUgcGlwZTsKIAogCWZvcl9lYWNoX25l
d19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLCBjcnRjX3N0YXRlLCBpKSB7CiAJCWlu
dCByZXQ7CkBAIC0yMTA2LDE4ICsyMTE3LDggQEAgc3RhdGljIGludCBpbnRlbF9jb21wdXRlX21p
bl9jZGNsayhzdHJ1Y3QgaW50ZWxfY2RjbGtfc3RhdGUgKmNkY2xrX3N0YXRlKQogCX0KIAogCW1p
bl9jZGNsayA9IGNkY2xrX3N0YXRlLT5mb3JjZV9taW5fY2RjbGs7Ci0KLQlmb3JfZWFjaF9uZXdf
aW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0YywgY3J0Y19zdGF0ZSwgaSkgewotCQlzdHJ1
Y3QgaW50ZWxfYndfc3RhdGUgKmJ3X3N0YXRlOwotCi0JCW1pbl9jZGNsayA9IG1heChjZGNsa19z
dGF0ZS0+bWluX2NkY2xrW2NydGMtPnBpcGVdLCBtaW5fY2RjbGspOwotCi0JCWJ3X3N0YXRlID0g
aW50ZWxfYXRvbWljX2dldF9id19zdGF0ZShzdGF0ZSk7Ci0JCWlmIChJU19FUlIoYndfc3RhdGUp
KQotCQkJcmV0dXJuIFBUUl9FUlIoYndfc3RhdGUpOwotCi0JCW1pbl9jZGNsayA9IG1heChid19z
dGF0ZS0+bWluX2NkY2xrLCBtaW5fY2RjbGspOwotCX0KKwlmb3JfZWFjaF9waXBlKGRldl9wcml2
LCBwaXBlKQorCQltaW5fY2RjbGsgPSBtYXgoY2RjbGtfc3RhdGUtPm1pbl9jZGNsa1twaXBlXSwg
bWluX2NkY2xrKTsKIAogCXJldHVybiBtaW5fY2RjbGs7CiB9CkBAIC0yNzg5LDMwICsyNzkwLDI1
IEBAIHZvaWQgaW50ZWxfaW5pdF9jZGNsa19ob29rcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpCiB7CiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsKIAkJZGV2X3By
aXYtPmRpc3BsYXkuc2V0X2NkY2xrID0gYnh0X3NldF9jZGNsazsKLQkJZGV2X3ByaXYtPmRpc3Bs
YXkuYndfY2FsY19taW5fY2RjbGsgPSBza2xfYndfY2FsY19taW5fY2RjbGs7CiAJCWRldl9wcml2
LT5kaXNwbGF5Lm1vZGVzZXRfY2FsY19jZGNsayA9IGJ4dF9tb2Rlc2V0X2NhbGNfY2RjbGs7CiAJ
CWRldl9wcml2LT5kaXNwbGF5LmNhbGNfdm9sdGFnZV9sZXZlbCA9IHRnbF9jYWxjX3ZvbHRhZ2Vf
bGV2ZWw7CiAJCWRldl9wcml2LT5jZGNsay50YWJsZSA9IGljbF9jZGNsa190YWJsZTsKIAl9IGVs
c2UgaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSkgewogCQlkZXZfcHJpdi0+ZGlzcGxheS5z
ZXRfY2RjbGsgPSBieHRfc2V0X2NkY2xrOwotCQlkZXZfcHJpdi0+ZGlzcGxheS5id19jYWxjX21p
bl9jZGNsayA9IHNrbF9id19jYWxjX21pbl9jZGNsazsKIAkJZGV2X3ByaXYtPmRpc3BsYXkubW9k
ZXNldF9jYWxjX2NkY2xrID0gYnh0X21vZGVzZXRfY2FsY19jZGNsazsKIAkJZGV2X3ByaXYtPmRp
c3BsYXkuY2FsY192b2x0YWdlX2xldmVsID0gZWhsX2NhbGNfdm9sdGFnZV9sZXZlbDsKIAkJZGV2
X3ByaXYtPmNkY2xrLnRhYmxlID0gaWNsX2NkY2xrX3RhYmxlOwogCX0gZWxzZSBpZiAoSU5URUxf
R0VOKGRldl9wcml2KSA+PSAxMSkgewogCQlkZXZfcHJpdi0+ZGlzcGxheS5zZXRfY2RjbGsgPSBi
eHRfc2V0X2NkY2xrOwotCQlkZXZfcHJpdi0+ZGlzcGxheS5id19jYWxjX21pbl9jZGNsayA9IHNr
bF9id19jYWxjX21pbl9jZGNsazsKIAkJZGV2X3ByaXYtPmRpc3BsYXkubW9kZXNldF9jYWxjX2Nk
Y2xrID0gYnh0X21vZGVzZXRfY2FsY19jZGNsazsKIAkJZGV2X3ByaXYtPmRpc3BsYXkuY2FsY192
b2x0YWdlX2xldmVsID0gaWNsX2NhbGNfdm9sdGFnZV9sZXZlbDsKIAkJZGV2X3ByaXYtPmNkY2xr
LnRhYmxlID0gaWNsX2NkY2xrX3RhYmxlOwogCX0gZWxzZSBpZiAoSVNfQ0FOTk9OTEFLRShkZXZf
cHJpdikpIHsKLQkJZGV2X3ByaXYtPmRpc3BsYXkuYndfY2FsY19taW5fY2RjbGsgPSBza2xfYndf
Y2FsY19taW5fY2RjbGs7CiAJCWRldl9wcml2LT5kaXNwbGF5LnNldF9jZGNsayA9IGJ4dF9zZXRf
Y2RjbGs7CiAJCWRldl9wcml2LT5kaXNwbGF5Lm1vZGVzZXRfY2FsY19jZGNsayA9IGJ4dF9tb2Rl
c2V0X2NhbGNfY2RjbGs7CiAJCWRldl9wcml2LT5kaXNwbGF5LmNhbGNfdm9sdGFnZV9sZXZlbCA9
IGNubF9jYWxjX3ZvbHRhZ2VfbGV2ZWw7CiAJCWRldl9wcml2LT5jZGNsay50YWJsZSA9IGNubF9j
ZGNsa190YWJsZTsKIAl9IGVsc2UgaWYgKElTX0dFTjlfTFAoZGV2X3ByaXYpKSB7Ci0JCWRldl9w
cml2LT5kaXNwbGF5LmJ3X2NhbGNfbWluX2NkY2xrID0gc2tsX2J3X2NhbGNfbWluX2NkY2xrOwog
CQlkZXZfcHJpdi0+ZGlzcGxheS5zZXRfY2RjbGsgPSBieHRfc2V0X2NkY2xrOwogCQlkZXZfcHJp
di0+ZGlzcGxheS5tb2Rlc2V0X2NhbGNfY2RjbGsgPSBieHRfbW9kZXNldF9jYWxjX2NkY2xrOwog
CQlkZXZfcHJpdi0+ZGlzcGxheS5jYWxjX3ZvbHRhZ2VfbGV2ZWwgPSBieHRfY2FsY192b2x0YWdl
X2xldmVsOwpAQCAtMjgyMSwyMyArMjgxNywxOCBAQCB2b2lkIGludGVsX2luaXRfY2RjbGtfaG9v
a3Moc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQllbHNlCiAJCQlkZXZfcHJp
di0+Y2RjbGsudGFibGUgPSBieHRfY2RjbGtfdGFibGU7CiAJfSBlbHNlIGlmIChJU19HRU45X0JD
KGRldl9wcml2KSkgewotCQlkZXZfcHJpdi0+ZGlzcGxheS5id19jYWxjX21pbl9jZGNsayA9IHNr
bF9id19jYWxjX21pbl9jZGNsazsKIAkJZGV2X3ByaXYtPmRpc3BsYXkuc2V0X2NkY2xrID0gc2ts
X3NldF9jZGNsazsKIAkJZGV2X3ByaXYtPmRpc3BsYXkubW9kZXNldF9jYWxjX2NkY2xrID0gc2ts
X21vZGVzZXRfY2FsY19jZGNsazsKIAl9IGVsc2UgaWYgKElTX0JST0FEV0VMTChkZXZfcHJpdikp
IHsKLQkJZGV2X3ByaXYtPmRpc3BsYXkuYndfY2FsY19taW5fY2RjbGsgPSBpbnRlbF9id19jYWxj
X21pbl9jZGNsazsKIAkJZGV2X3ByaXYtPmRpc3BsYXkuc2V0X2NkY2xrID0gYmR3X3NldF9jZGNs
azsKIAkJZGV2X3ByaXYtPmRpc3BsYXkubW9kZXNldF9jYWxjX2NkY2xrID0gYmR3X21vZGVzZXRf
Y2FsY19jZGNsazsKIAl9IGVsc2UgaWYgKElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpKSB7Ci0JCWRl
dl9wcml2LT5kaXNwbGF5LmJ3X2NhbGNfbWluX2NkY2xrID0gaW50ZWxfYndfY2FsY19taW5fY2Rj
bGs7CiAJCWRldl9wcml2LT5kaXNwbGF5LnNldF9jZGNsayA9IGNodl9zZXRfY2RjbGs7CiAJCWRl
dl9wcml2LT5kaXNwbGF5Lm1vZGVzZXRfY2FsY19jZGNsayA9IHZsdl9tb2Rlc2V0X2NhbGNfY2Rj
bGs7CiAJfSBlbHNlIGlmIChJU19WQUxMRVlWSUVXKGRldl9wcml2KSkgewotCQlkZXZfcHJpdi0+
ZGlzcGxheS5id19jYWxjX21pbl9jZGNsayA9IGludGVsX2J3X2NhbGNfbWluX2NkY2xrOwogCQlk
ZXZfcHJpdi0+ZGlzcGxheS5zZXRfY2RjbGsgPSB2bHZfc2V0X2NkY2xrOwogCQlkZXZfcHJpdi0+
ZGlzcGxheS5tb2Rlc2V0X2NhbGNfY2RjbGsgPSB2bHZfbW9kZXNldF9jYWxjX2NkY2xrOwogCX0g
ZWxzZSB7Ci0JCWRldl9wcml2LT5kaXNwbGF5LmJ3X2NhbGNfbWluX2NkY2xrID0gaW50ZWxfYndf
Y2FsY19taW5fY2RjbGs7CiAJCWRldl9wcml2LT5kaXNwbGF5Lm1vZGVzZXRfY2FsY19jZGNsayA9
IGZpeGVkX21vZGVzZXRfY2FsY19jZGNsazsKIAl9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggZjQwYjkwOTk1MmNjLi5mZTM3MDZhMGFjYTEg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0x
NDcwNywxNCArMTQ3MDcsMTYgQEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hlY2tfcGxhbmVz
KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogc3RhdGljIGludCBpbnRlbF9hdG9t
aWNfY2hlY2tfY2RjbGsoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJCQkJICAg
IGJvb2wgKm5lZWRfY2RjbGtfY2FsYykKIHsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYgPSB0b19pOTE1KHN0YXRlLT5iYXNlLmRldik7CisJc3RydWN0IGludGVsX2NkY2xrX3N0
YXRlICpuZXdfY2RjbGtfc3RhdGU7CiAJaW50IGk7CiAJc3RydWN0IGludGVsX3BsYW5lX3N0YXRl
ICpwbGFuZV9zdGF0ZTsKIAlzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lOwogCWludCByZXQ7Ci0J
c3RydWN0IGludGVsX2NkY2xrX3N0YXRlICpuZXdfY2RjbGtfc3RhdGU7Ci0Jc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlOwotCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOwor
CisJbmV3X2NkY2xrX3N0YXRlID0gaW50ZWxfYXRvbWljX2dldF9uZXdfY2RjbGtfc3RhdGUoc3Rh
dGUpOworCWlmIChuZXdfY2RjbGtfc3RhdGUgJiYgbmV3X2NkY2xrX3N0YXRlLT5mb3JjZV9taW5f
Y2RjbGtfY2hhbmdlZCkKKwkJKm5lZWRfY2RjbGtfY2FsYyA9IHRydWU7CisKIAkvKgogCSAqIGFj
dGl2ZV9wbGFuZXMgYml0bWFzayBoYXMgYmVlbiB1cGRhdGVkLCBhbmQgcG90ZW50aWFsbHkKIAkg
KiBhZmZlY3RlZCBwbGFuZXMgYXJlIHBhcnQgb2YgdGhlIHN0YXRlLiBXZSBjYW4gbm93CkBAIC0x
NDcyNiwzNSArMTQ3MjgsNiBAQCBzdGF0aWMgaW50IGludGVsX2F0b21pY19jaGVja19jZGNsayhz
dHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAkJCXJldHVybiByZXQ7CiAJfQogCi0J
bmV3X2NkY2xrX3N0YXRlID0gaW50ZWxfYXRvbWljX2dldF9uZXdfY2RjbGtfc3RhdGUoc3RhdGUp
OwotCi0JaWYgKG5ld19jZGNsa19zdGF0ZSAmJiBuZXdfY2RjbGtfc3RhdGUtPmZvcmNlX21pbl9j
ZGNsa19jaGFuZ2VkKQotCQkqbmVlZF9jZGNsa19jYWxjID0gdHJ1ZTsKLQotCXJldCA9IGRldl9w
cml2LT5kaXNwbGF5LmJ3X2NhbGNfbWluX2NkY2xrKHN0YXRlKTsKLQlpZiAocmV0KQotCQlyZXR1
cm4gcmV0OwotCi0JaWYgKCFuZXdfY2RjbGtfc3RhdGUpCi0JCXJldHVybiAwOwotCi0JZm9yX2Vh
Y2hfbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG5ld19jcnRjX3N0YXRlLCBp
KSB7Ci0JCXN0cnVjdCBpbnRlbF9id19zdGF0ZSAqYndfc3RhdGU7Ci0JCWludCBtaW5fY2RjbGsg
PSAwOwotCi0JCW1pbl9jZGNsayA9IG1heChuZXdfY2RjbGtfc3RhdGUtPm1pbl9jZGNsa1tjcnRj
LT5waXBlXSwgbWluX2NkY2xrKTsKLQotCQlid19zdGF0ZSA9IGludGVsX2F0b21pY19nZXRfYndf
c3RhdGUoc3RhdGUpOwotCQlpZiAoSVNfRVJSKGJ3X3N0YXRlKSkKLQkJCXJldHVybiBQVFJfRVJS
KGJ3X3N0YXRlKTsKLQotCQkvKgotCQkgKiBDdXJyZW50bHkgZG8gdGhpcyBjaGFuZ2Ugb25seSBp
ZiB3ZSBuZWVkIHRvIGluY3JlYXNlCi0JCSAqLwotCQlpZiAoYndfc3RhdGUtPm1pbl9jZGNsayA+
IG1pbl9jZGNsaykKLQkJCSpuZWVkX2NkY2xrX2NhbGMgPSB0cnVlOwotCX0KLQogCXJldHVybiAw
OwogfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCA5OGYyYzQ0OGNkOTIuLjEwMzgzZTAx
ZWZkZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC0yNzMsNyArMjczLDYgQEAgc3RydWN0
IGRybV9pOTE1X2Rpc3BsYXlfZnVuY3MgewogCXZvaWQgKCpzZXRfY2RjbGspKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCSAgY29uc3Qgc3RydWN0IGludGVsX2NkY2xrX2Nv
bmZpZyAqY2RjbGtfY29uZmlnLAogCQkJICBlbnVtIHBpcGUgcGlwZSk7Ci0JaW50ICgqYndfY2Fs
Y19taW5fY2RjbGspKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKTsKIAlpbnQgKCpn
ZXRfZmlmb19zaXplKShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCQkgICAg
IGVudW0gaTl4eF9wbGFuZV9pZCBpOXh4X3BsYW5lKTsKIAlpbnQgKCpjb21wdXRlX3BpcGVfd20p
KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
bS5jCmluZGV4IGIxMzRhMWI5ZDczOC4uNGQ4ODVlZjBiYWM1IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3BtLmMKQEAgLTMzLDcgKzMzLDYgQEAKICNpbmNsdWRlIDxkcm0vZHJtX3BsYW5lX2hlbHBlci5o
PgogCiAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9hdG9taWMuaCIKLSNpbmNsdWRlICJkaXNwbGF5
L2ludGVsX2J3LmgiCiAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgiCiAj
aW5jbHVkZSAiZGlzcGxheS9pbnRlbF9mYmMuaCIKICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX3Nw
cml0ZS5oIgpAQCAtNDQsNiArNDMsNyBAQAogI2luY2x1ZGUgImk5MTVfZml4ZWQuaCIKICNpbmNs
dWRlICJpOTE1X2lycS5oIgogI2luY2x1ZGUgImk5MTVfdHJhY2UuaCIKKyNpbmNsdWRlICJkaXNw
bGF5L2ludGVsX2J3LmgiCiAjaW5jbHVkZSAiaW50ZWxfcG0uaCIKICNpbmNsdWRlICJpbnRlbF9z
aWRlYmFuZC5oIgogI2luY2x1ZGUgIi4uLy4uLy4uL3BsYXRmb3JtL3g4Ni9pbnRlbF9pcHMuaCIK
QEAgLTQwMzEsOSArNDAzMSwxMCBAQCBpY2xfZ2V0X2ZpcnN0X2RidWZfc2xpY2Vfb2Zmc2V0KHUz
MiBkYnVmX3NsaWNlX21hc2ssCiAJcmV0dXJuIG9mZnNldDsKIH0KIAotdTE2IGludGVsX2dldF9k
ZGJfc2l6ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCitzdGF0aWMgdTE2IGlu
dGVsX2dldF9kZGJfc2l6ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CiAJ
dTE2IGRkYl9zaXplID0gSU5URUxfSU5GTyhkZXZfcHJpdiktPmRkYl9zaXplOworCiAJZHJtX1dB
Uk5fT04oJmRldl9wcml2LT5kcm0sIGRkYl9zaXplID09IDApOwogCiAJaWYgKElOVEVMX0dFTihk
ZXZfcHJpdikgPCAxMSkKQEAgLTQwNDIsMzQgKzQwNDMsNiBAQCB1MTYgaW50ZWxfZ2V0X2RkYl9z
aXplKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlyZXR1cm4gZGRiX3NpemU7
CiB9CiAKLXUzMiBza2xfZGRiX2RidWZfc2xpY2VfbWFzayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsCi0JCQkgICAgY29uc3Qgc3RydWN0IHNrbF9kZGJfZW50cnkgKmVudHJ5KQot
ewotCXUzMiBzbGljZV9tYXNrID0gMDsKLQl1MTYgZGRiX3NpemUgPSBpbnRlbF9nZXRfZGRiX3Np
emUoZGV2X3ByaXYpOwotCXUxNiBudW1fc3VwcG9ydGVkX3NsaWNlcyA9IElOVEVMX0lORk8oZGV2
X3ByaXYpLT5udW1fc3VwcG9ydGVkX2RidWZfc2xpY2VzOwotCXUxNiBzbGljZV9zaXplID0gZGRi
X3NpemUgLyBudW1fc3VwcG9ydGVkX3NsaWNlczsKLQl1MTYgc3RhcnRfc2xpY2U7Ci0JdTE2IGVu
ZF9zbGljZTsKLQotCWlmICghc2tsX2RkYl9lbnRyeV9zaXplKGVudHJ5KSkKLQkJcmV0dXJuIDA7
Ci0KLQlzdGFydF9zbGljZSA9IGVudHJ5LT5zdGFydCAvIHNsaWNlX3NpemU7Ci0JZW5kX3NsaWNl
ID0gKGVudHJ5LT5lbmQgLSAxKSAvIHNsaWNlX3NpemU7Ci0KLQkvKgotCSAqIFBlciBwbGFuZSBE
REIgZW50cnkgY2FuIGluIGEgcmVhbGx5IHdvcnN0IGNhc2UgYmUgb24gbXVsdGlwbGUgc2xpY2Vz
Ci0JICogYnV0IHNpbmdsZSBlbnRyeSBpcyBhbnl3YXkgY29udGlnaW91cy4KLQkgKi8KLQl3aGls
ZSAoc3RhcnRfc2xpY2UgPD0gZW5kX3NsaWNlKSB7Ci0JCXNsaWNlX21hc2sgfD0gQklUKHN0YXJ0
X3NsaWNlKTsKLQkJc3RhcnRfc2xpY2UrKzsKLQl9Ci0KLQlyZXR1cm4gc2xpY2VfbWFzazsKLX0K
LQogc3RhdGljIHU4IHNrbF9jb21wdXRlX2RidWZfc2xpY2VzKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQkJCSAgdTggYWN0aXZlX3BpcGVzKTsKIApkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3BtLmgKaW5kZXggYTI0NzM1OTRjMmRiLi42NjM2ZDJhMDU3Y2QgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcG0uaApAQCAtOCwxMCArOCwxMCBAQAogCiAjaW5jbHVkZSA8bGludXgvdHlw
ZXMuaD4KIAotI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfYncuaCIKICNpbmNsdWRlICJkaXNwbGF5
L2ludGVsX2dsb2JhbF9zdGF0ZS5oIgogCiAjaW5jbHVkZSAiaTkxNV9yZWcuaCIKKyNpbmNsdWRl
ICJkaXNwbGF5L2ludGVsX2J3LmgiCiAKIHN0cnVjdCBkcm1fZGV2aWNlOwogc3RydWN0IGRybV9p
OTE1X3ByaXZhdGU7CkBAIC0zOSwxMCArMzksNiBAQCB1OCBpbnRlbF9lbmFibGVkX2RidWZfc2xp
Y2VzX21hc2soc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKIHZvaWQgc2tsX3Bp
cGVfZGRiX2dldF9od19zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAkJCSAgICAgICBz
dHJ1Y3Qgc2tsX2RkYl9lbnRyeSAqZGRiX3ksCiAJCQkgICAgICAgc3RydWN0IHNrbF9kZGJfZW50
cnkgKmRkYl91dik7Ci12b2lkIHNrbF9kZGJfZ2V0X2h3X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdik7Ci11MTYgaW50ZWxfZ2V0X2RkYl9zaXplKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdik7Ci11MzIgc2tsX2RkYl9kYnVmX3NsaWNlX21hc2soc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAotCQkJICAgIGNvbnN0IHN0cnVjdCBza2xfZGRi
X2VudHJ5ICplbnRyeSk7CiB2b2lkIHNrbF9waXBlX3dtX2dldF9od19zdGF0ZShzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0YywKIAkJCSAgICAgIHN0cnVjdCBza2xfcGlwZV93bSAqb3V0KTsKIHZvaWQg
ZzR4X3dtX3Nhbml0aXplKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7Ci0tIAoy
LjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
