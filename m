Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FABE9D71
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 15:27:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78E216E9D3;
	Wed, 30 Oct 2019 14:27:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 913DB6EA06
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2019 14:27:04 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Oct 2019 15:26:47 +0100
Message-Id: <20191030142657.22405-2-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191030142657.22405-1-maarten.lankhorst@linux.intel.com>
References: <20191030142657.22405-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 02/12] drm/i915: Add aliases for uapi and hw to
 crtc_state
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

UHJlcGFyZSB0byBzcGxpdCB1cCBodyBhbmQgdWFwaSBtYWNoaW5hbGx5LCBieSBhZGRpbmcgYSB1
YXBpIGFuZApodyBhbGlhcy4gV2Ugd2lsbCByZW1vdmUgdGhlIGJhc2UgaW4gYSBiaXQuIFRoaXMg
aXMgYSBzcGxpdCBmcm9tIHRoZQpvcmlnaW5hbCB1YXBpL2h3IHBhdGNoLCB3aGljaCBkaWQgaXQg
YWxsIGluIG9uZSBnby4KClNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVu
Lmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9hdG9taWMuYyAgIHwgIDggKysrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAgMiArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmggIHwgIDYgKystLS0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8IDI3ICsrKysrKysrKysrKysrKysrKy0KIDQgZmlsZXMg
Y2hhbmdlZCwgMzcgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYwppbmRleCA5Y2Q2ZDIzNDhhMWUuLjQ4MjZh
YTRlZThlNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9h
dG9taWMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5j
CkBAIC0xODYsOSArMTg2LDEwIEBAIGludGVsX2RpZ2l0YWxfY29ubmVjdG9yX2R1cGxpY2F0ZV9z
dGF0ZShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQogc3RydWN0IGRybV9jcnRjX3N0
YXRlICoKIGludGVsX2NydGNfZHVwbGljYXRlX3N0YXRlKHN0cnVjdCBkcm1fY3J0YyAqY3J0YykK
IHsKKwljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUgPSB0b19p
bnRlbF9jcnRjX3N0YXRlKGNydGMtPnN0YXRlKTsKIAlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZTsKIAotCWNydGNfc3RhdGUgPSBrbWVtZHVwKGNydGMtPnN0YXRlLCBzaXplb2Yo
KmNydGNfc3RhdGUpLCBHRlBfS0VSTkVMKTsKKwljcnRjX3N0YXRlID0ga21lbWR1cChvbGRfY3J0
Y19zdGF0ZSwgc2l6ZW9mKCpjcnRjX3N0YXRlKSwgR0ZQX0tFUk5FTCk7CiAJaWYgKCFjcnRjX3N0
YXRlKQogCQlyZXR1cm4gTlVMTDsKIApAQCAtMjE5LDcgKzIyMCwxMCBAQCB2b2lkCiBpbnRlbF9j
cnRjX2Rlc3Ryb3lfc3RhdGUoc3RydWN0IGRybV9jcnRjICpjcnRjLAogCQkJIHN0cnVjdCBkcm1f
Y3J0Y19zdGF0ZSAqc3RhdGUpCiB7Ci0JZHJtX2F0b21pY19oZWxwZXJfY3J0Y19kZXN0cm95X3N0
YXRlKGNydGMsIHN0YXRlKTsKKwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9
IHRvX2ludGVsX2NydGNfc3RhdGUoc3RhdGUpOworCisJX19kcm1fYXRvbWljX2hlbHBlcl9jcnRj
X2Rlc3Ryb3lfc3RhdGUoJmNydGNfc3RhdGUtPmJhc2UpOworCWtmcmVlKGNydGNfc3RhdGUpOwog
fQogCiBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNfc2V0dXBfc2NhbGVyKHN0cnVjdCBpbnRlbF9j
cnRjX3NjYWxlcl9zdGF0ZSAqc2NhbGVyX3N0YXRlLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCBhN2QxNTE1ZGUwNDguLjViZjQ2MGNhZjhhMyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTEy
NTk1LDYgKzEyNTk1LDggQEAgY2xlYXJfaW50ZWxfY3J0Y19zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAogCS8qIEtlZXAgYmFzZSBkcm1fY3J0Y19zdGF0ZSBpbnRh
Y3QsIG9ubHkgY2xlYXIgb3VyIGV4dGVuZGVkIHN0cnVjdCAqLwogCUJVSUxEX0JVR19PTihvZmZz
ZXRvZihzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSwgYmFzZSkpOworCUJVSUxEX0JVR19PTihvZmZz
ZXRvZihzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSwgdWFwaSkpOworCUJVSUxEX0JVR19PTihvZmZz
ZXRvZihzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSwgaHcpKTsKIAltZW1jcHkoJmNydGNfc3RhdGUt
PmJhc2UgKyAxLCAmc2F2ZWRfc3RhdGUtPmJhc2UgKyAxLAogCSAgICAgICBzaXplb2YoKmNydGNf
c3RhdGUpIC0gc2l6ZW9mKGNydGNfc3RhdGUtPmJhc2UpKTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaAppbmRleCBjYTdjYTI4MDRkOGIuLmNhM2ViNmEx
YzEyNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgK
QEAgLTQ0NywxMCArNDQ3LDEwIEBAIGVudW0gcGh5X2ZpYSB7CiAjZGVmaW5lIGludGVsX2F0b21p
Y19jcnRjX3N0YXRlX2Zvcl9lYWNoX3BsYW5lX3N0YXRlKCBcCiAJCSAgcGxhbmUsIHBsYW5lX3N0
YXRlLCBcCiAJCSAgY3J0Y19zdGF0ZSkgXAotCWZvcl9lYWNoX2ludGVsX3BsYW5lX21hc2soKChj
cnRjX3N0YXRlKS0+YmFzZS5zdGF0ZS0+ZGV2KSwgKHBsYW5lKSwgXAotCQkJCSgoY3J0Y19zdGF0
ZSktPmJhc2UucGxhbmVfbWFzaykpIFwKKwlmb3JfZWFjaF9pbnRlbF9wbGFuZV9tYXNrKCgoY3J0
Y19zdGF0ZSktPnVhcGkuc3RhdGUtPmRldiksIChwbGFuZSksIFwKKwkJCQkoKGNydGNfc3RhdGUp
LT51YXBpLnBsYW5lX21hc2spKSBcCiAJCWZvcl9lYWNoX2lmICgocGxhbmVfc3RhdGUgPSBcCi0J
CQkgICAgICB0b19pbnRlbF9wbGFuZV9zdGF0ZShfX2RybV9hdG9taWNfZ2V0X2N1cnJlbnRfcGxh
bmVfc3RhdGUoKGNydGNfc3RhdGUpLT5iYXNlLnN0YXRlLCAmcGxhbmUtPmJhc2UpKSkpCisJCQkg
ICAgICB0b19pbnRlbF9wbGFuZV9zdGF0ZShfX2RybV9hdG9taWNfZ2V0X2N1cnJlbnRfcGxhbmVf
c3RhdGUoKGNydGNfc3RhdGUpLT51YXBpLnN0YXRlLCAmcGxhbmUtPmJhc2UpKSkpCiAKIHZvaWQg
aW50ZWxfbGlua19jb21wdXRlX21fbih1MTYgYnBwLCBpbnQgbmxhbmVzLAogCQkJICAgIGludCBw
aXhlbF9jbG9jaywgaW50IGxpbmtfY2xvY2ssCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCmluZGV4IDQwMTg0ZTgyM2M4NC4uZTg0MzQz
ZDNiZjhkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfdHlwZXMuaApAQCAtNzU3LDcgKzc1NywzMiBAQCBlbnVtIGludGVsX291dHB1dF9mb3Jt
YXQgewogfTsKIAogc3RydWN0IGludGVsX2NydGNfc3RhdGUgeworCXVuaW9uIHsKIAlzdHJ1Y3Qg
ZHJtX2NydGNfc3RhdGUgYmFzZTsKKwkvKgorCSAqIHVhcGkgKGRybSkgc3RhdGUuIFRoaXMgaXMg
dGhlIHNvZnR3YXJlIHN0YXRlIHNob3duIHRvIHVzZXJzcGFjZS4KKwkgKiBJbiBwYXJ0aWN1bGFy
LCB0aGUgZm9sbG93aW5nIG1lbWJlcnMgYXJlIHVzZWQgZm9yIGJvb2trZWVwaW5nOgorCSAqIC0g
Y3J0YworCSAqIC0gc3RhdGUKKwkgKiAtICpfY2hhbmdlZAorCSAqIC0gZXZlbnQKKwkgKiAtIGNv
bW1pdAorCSAqIC0gbW9kZV9ibG9iCisJICovCisJc3RydWN0IGRybV9jcnRjX3N0YXRlIHVhcGk7
CisKKwkvKgorCSAqIGFjdHVhbCBoYXJkd2FyZSBzdGF0ZSwgdGhlIHN0YXRlIHdlIHByb2dyYW0g
dG8gdGhlIGhhcmR3YXJlLgorCSAqIFRoZSBmb2xsb3dpbmcgbWVtYmVycyBhcmUgdXNlZCB0byB2
ZXJpZnkgdGhlIGhhcmR3YXJlIHN0YXRlOgorCSAqIC0gZW5hYmxlCisJICogLSBhY3RpdmUKKwkg
KiAtIG1vZGUgLyBhZGp1c3RlZF9tb2RlCisJICogLSBjb2xvciBwcm9wZXJ0eSBibG9icy4KKwkg
KgorCSAqIER1cmluZyBpbml0aWFsIGh3IHJlYWRvdXQsIHRoZXkgbmVlZCB0byBiZSBjb3BpZWQg
dG8gdWFwaS4KKwkgKi8KKwlzdHJ1Y3QgZHJtX2NydGNfc3RhdGUgaHc7CisJfTsKIAogCS8qKgog
CSAqIHF1aXJrcyAtIGJpdGZpZWxkIHdpdGggaHcgc3RhdGUgcmVhZG91dCBxdWlya3MKQEAgLTEx
MTIsNyArMTEzNyw3IEBAIHN0cnVjdCBjeHNyX2xhdGVuY3kgewogCiAjZGVmaW5lIHRvX2ludGVs
X2F0b21pY19zdGF0ZSh4KSBjb250YWluZXJfb2YoeCwgc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZSwgYmFzZSkKICNkZWZpbmUgdG9faW50ZWxfY3J0Yyh4KSBjb250YWluZXJfb2YoeCwgc3RydWN0
IGludGVsX2NydGMsIGJhc2UpCi0jZGVmaW5lIHRvX2ludGVsX2NydGNfc3RhdGUoeCkgY29udGFp
bmVyX29mKHgsIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlLCBiYXNlKQorI2RlZmluZSB0b19pbnRl
bF9jcnRjX3N0YXRlKHgpIGNvbnRhaW5lcl9vZih4LCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSwg
dWFwaSkKICNkZWZpbmUgdG9faW50ZWxfY29ubmVjdG9yKHgpIGNvbnRhaW5lcl9vZih4LCBzdHJ1
Y3QgaW50ZWxfY29ubmVjdG9yLCBiYXNlKQogI2RlZmluZSB0b19pbnRlbF9lbmNvZGVyKHgpIGNv
bnRhaW5lcl9vZih4LCBzdHJ1Y3QgaW50ZWxfZW5jb2RlciwgYmFzZSkKICNkZWZpbmUgdG9faW50
ZWxfZnJhbWVidWZmZXIoeCkgY29udGFpbmVyX29mKHgsIHN0cnVjdCBpbnRlbF9mcmFtZWJ1ZmZl
ciwgYmFzZSkKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
