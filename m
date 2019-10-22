Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C79B0E04BB
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 15:19:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6DED6E79F;
	Tue, 22 Oct 2019 13:18:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 37C2A6E79F;
 Tue, 22 Oct 2019 13:18:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 31308A47E1;
 Tue, 22 Oct 2019 13:18:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sharma, Shashank" <shashank.sharma@intel.com>
Date: Tue, 22 Oct 2019 13:18:59 -0000
Message-ID: <20191022131859.9303.38379@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191022095946.29354-1-shashank.sharma@intel.com>
In-Reply-To: <20191022095946.29354-1-shashank.sharma@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Add_scaling_filters_in_DRM_layer?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogQWRkIHNjYWxpbmcgZmlsdGVycyBpbiBEUk0g
bGF5ZXIKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY4
Mzc4LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3Jp
Z2luL2RybS10aXAKYmQ2ZWJkODVmY2UyIGRybTogSW50cm9kdWNlIHNjYWxpbmcgZmlsdGVyIG1v
ZGUgcHJvcGVydHkKMTM5MDFmNDBlNjZlIGRybS9pOTE1OiBBZGQgc3VwcG9ydCBmb3Igc2NhbGlu
ZyBmaWx0ZXJzCi06OTA6IENIRUNLOlBBUkVOVEhFU0lTX0FMSUdOTUVOVDogQWxpZ25tZW50IHNo
b3VsZCBtYXRjaCBvcGVuIHBhcmVudGhlc2lzCiM5MDogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmM6MTU0OTY6CitzdGF0aWMgdm9pZCBpY2xfY3JlYXRl
X3NjYWxlcl9maWx0ZXJfcHJvcGVydHkoc3RydWN0IGludGVsX2NydGMgKmNydGMsCisJCQkJICAg
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQoKdG90YWw6IDAgZXJyb3JzLCAw
IHdhcm5pbmdzLCAxIGNoZWNrcywgMTAyIGxpbmVzIGNoZWNrZWQKNWZjZWQxNDFkOWU0IGRybS9p
OTE1OiBIYW5kbGUgbmVhcmVzdC1uZWlnaGJvciBzY2FsaW5nIGZpbHRlcgotOjE0MTogQ0hFQ0s6
UEFSRU5USEVTSVNfQUxJR05NRU5UOiBBbGlnbm1lbnQgc2hvdWxkIG1hdGNoIG9wZW4gcGFyZW50
aGVzaXMKIzE0MTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmM6NTcyMzoKKwlpZiAoc3RhdGUtPnNjYWxpbmdfZmlsdGVyID09IERSTV9TQ0FMSU5HX0ZJ
TFRFUl9OTl9JU19PTkxZICYmCisJCSFzY2FsZXJfc3RhdGUtPmludGVnZXJfc2NhbGluZykgewoK
LToyMTc6IENIRUNLOk1BQ1JPX0FSR19SRVVTRTogTWFjcm8gYXJndW1lbnQgcmV1c2UgJ2lkJyAt
IHBvc3NpYmxlIHNpZGUtZWZmZWN0cz8KIzIxNzogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaDo3MjQ5OgorI2RlZmluZSBTS0xfUFNfQ09FRl9EQVRBX1NFVDAocGlwZSwgaWQp
ICBfTU1JT19QSVBFKHBpcGUsICAgICBcCisJCQlfSUQoaWQsIF9QU19DT0VGX1NFVDBfREFUQV8x
QSwgX1BTX0NPRUZfU0VUMF9EQVRBXzJBKSwgXAorCQkJX0lEKGlkLCBfUFNfQ09FRl9TRVQwX0RB
VEFfMUIsIF9QU19DT0VGX1NFVDBfREFUQV8xQikpCgotOjIyMDogQ0hFQ0s6TUFDUk9fQVJHX1JF
VVNFOiBNYWNybyBhcmd1bWVudCByZXVzZSAnaWQnIC0gcG9zc2libGUgc2lkZS1lZmZlY3RzPwoj
MjIwOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oOjcyNTI6CisjZGVmaW5l
IFNLTF9QU19DT0VGX0RBVEFfU0VUMShwaXBlLCBpZCkgIF9NTUlPX1BJUEUocGlwZSwgICAgIFwK
KwkJCV9JRChpZCwgX1BTX0NPRUZfU0VUMV9EQVRBXzFBLCBfUFNfQ09FRl9TRVQxX0RBVEFfMkEp
LCBcCisJCQlfSUQoaWQsIF9QU19DT0VGX1NFVDFfREFUQV8xQiwgX1BTX0NPRUZfU0VUMV9EQVRB
XzFCKSkKCi06MjIzOiBDSEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNl
ICdpZCcgLSBwb3NzaWJsZSBzaWRlLWVmZmVjdHM/CiMyMjM6IEZJTEU6IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmg6NzI1NToKKyNkZWZpbmUgU0tMX1BTX0NPRUZfSU5ERVhfU0VUMChw
aXBlLCBpZCkgIF9NTUlPX1BJUEUocGlwZSwgICAgIFwKKwkJCV9JRChpZCwgX1BTX0NPRUZfU0VU
MF9JTkRFWF8xQSwgX1BTX0NPRUZfU0VUMF9JTkRFWF8yQSksIFwKKwkJCV9JRChpZCwgX1BTX0NP
RUZfU0VUMF9JTkRFWF8xQiwgX1BTX0NPRUZfU0VUMF9JTkRFWF8xQikpCgotOjIyNjogQ0hFQ0s6
TUFDUk9fQVJHX1JFVVNFOiBNYWNybyBhcmd1bWVudCByZXVzZSAnaWQnIC0gcG9zc2libGUgc2lk
ZS1lZmZlY3RzPwojMjI2OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oOjcy
NTg6CisjZGVmaW5lIFNLTF9QU19DT0VGX0lOREVYX1NFVDEocGlwZSwgaWQpICBfTU1JT19QSVBF
KHBpcGUsICAgICBcCisJCQlfSUQoaWQsIF9QU19DT0VGX1NFVDFfSU5ERVhfMUEsIF9QU19DT0VG
X1NFVDFfSU5ERVhfMkEpLCBcCisJCQlfSUQoaWQsIF9QU19DT0VGX1NFVDFfSU5ERVhfMUIsIF9Q
U19DT0VGX1NFVDFfSU5ERVhfMUIpKQoKdG90YWw6IDAgZXJyb3JzLCAwIHdhcm5pbmdzLCA1IGNo
ZWNrcywgMTg0IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
