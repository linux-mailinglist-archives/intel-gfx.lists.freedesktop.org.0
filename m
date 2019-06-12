Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EA542EAE
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 20:27:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4FDD894D7;
	Wed, 12 Jun 2019 18:27:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 901AE894D7
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 18:27:46 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jun 2019 11:27:45 -0700
X-ExtLoop1: 1
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.126])
 by orsmga003.jf.intel.com with ESMTP; 12 Jun 2019 11:27:45 -0700
Date: Wed, 12 Jun 2019 11:27:45 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20190612182745.GO13184@mdroper-desk.amr.corp.intel.com>
References: <d6411e0c-b530-dce6-dabc-c6d940ff359a@intel.com>
 <20190612181602.18438-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612181602.18438-1-matthew.d.roper@intel.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Add Wa_1409120013:icl,ehl
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

T24gV2VkLCBKdW4gMTIsIDIwMTkgYXQgMTE6MTY6MDJBTSAtMDcwMCwgTWF0dCBSb3BlciB3cm90
ZToKPiBUaGlzIGNoaWNrZW4gYml0IHNob3VsZCBiZSBzZXQgYmVmb3JlIGVuYWJsaW5nIEZCQyB0
byBhdm9pZCBzY3JlZW4KPiBjb3JydXB0aW9uIHdoZW4gdGhlIHBsYW5lIHNpemUgaGFzIG9kZCB2
ZXJ0aWNhbCBhbmQgaG9yaXpvbnRhbAo+IGRpbWVuc2lvbnMuICBJdCBpcyBzYWZlIHRvIGxlYXZl
IHRoZSBiaXQgc2V0IGV2ZW4gd2hlbiBGQkMgaXMgZGlzYWJsZWQuCj4gCj4gdjI6Cj4gIC0gVGhl
IGJzcGVjJ3MgbmFtZSBmb3IgdGhpcyBiaXQgb24gdGhlc2UgcGxhdGZvcm1zICgiU3BhcmUgMTQi
KSBpcwo+ICAgIHByZXR0eSBtZWFuaW5nbGVzcy4gIExldCdzIHJlbmFtZSB0aGUgYml0IGRlZmlu
aXRpb24gdG8gc29tZXRoaW5nCj4gICAgdGhhdCBtb3JlIGFjY3VyYXRlbHkgcmVmbGVjdHMgd2hh
dCB0aGUgYml0IHJlYWxseSBkb2VzLiAgKENsaW50KQoKV29vcHMsIGxvb2tzIGxpa2UgeW91IGFs
c28gaGFkIGEgY29tbWVudCBhYm91dCB0aGUgcmVnaXN0ZXIgYWxyZWFkeQpiZWluZyBkZWZpbmVk
IGZhcnRoZXIgZG93biB0aGF0IEkgZGlkbid0IHNlZSB3aGVuIEkgZmlyc3QgcmVhZCB5b3VyCmVt
YWlsLiAgSSdsbCBzZW5kIGEgdjMgc2hvcnRseS4KCgpNYXR0Cgo+IAo+IENjOiBDbGludG9uIFRh
eWxvciA8Q2xpbnRvbi5BLlRheWxvckBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWF0dCBS
b3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaCAgfCAyICsrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Zi
Yy5jIHwgNCArKysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oCj4gaW5kZXggZWRmOWY5MzkzNGExLi41NDY1NGE1NzhjODQgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBAQCAtMzE1MCw2ICszMTUwLDggQEAgZW51bSBp
OTE1X3Bvd2VyX3dlbGxfaWQgewo+ICAKPiAgLyogRnJhbWVidWZmZXIgY29tcHJlc3Npb24gZm9y
IElyb25sYWtlICovCj4gICNkZWZpbmUgSUxLX0RQRkNfQ0JfQkFTRQlfTU1JTygweDQzMjAwKQo+
ICsjZGVmaW5lIElMS19EUEZDX0NISUNLRU4JX01NSU8oMHg0MzIyNCkKPiArI2RlZmluZSAgIElM
S19EUEZDX0NISUNLRU5fQ09NUF9EVU1NWV9QSVhFTAlSRUdfQklUKDE0KQo+ICAjZGVmaW5lIElM
S19EUEZDX0NPTlRST0wJX01NSU8oMHg0MzIwOCkKPiAgI2RlZmluZSAgIEZCQ19DVExfRkFMU0Vf
Q09MT1IJKDEgPDwgMTApCj4gIC8qIFRoZSBiaXQgMjgtOCBpcyByZXNlcnZlZCAqLwo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2ZiYy5jCj4gaW5kZXggNTY3OWYyZmZmYjdjLi5kMzZjYWRhMmNjN2QgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZmJjLmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9mYmMuYwo+IEBAIC0zNDQsNiArMzQ0LDEwIEBAIHN0YXRp
YyB2b2lkIGdlbjdfZmJjX2FjdGl2YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKPiAgCQkJICAgSFNXX0ZCQ1FfRElTKTsKPiAgCX0KPiAgCj4gKwlpZiAoSVNfR0VOKGRldl9w
cml2LCAxMSkpCj4gKwkJLyogV2FfMTQwOTEyMDAxMzppY2wsZWhsICovCj4gKwkJSTkxNV9XUklU
RShJTEtfRFBGQ19DSElDS0VOLCBJTEtfRFBGQ19DSElDS0VOX0NPTVBfRFVNTVlfUElYRUwpOwo+
ICsKPiAgCUk5MTVfV1JJVEUoSUxLX0RQRkNfQ09OVFJPTCwgZHBmY19jdGwgfCBEUEZDX0NUTF9F
Tik7Cj4gIAo+ICAJaW50ZWxfZmJjX3JlY29tcHJlc3MoZGV2X3ByaXYpOwo+IC0tIAo+IDIuMTQu
NQo+IAoKLS0gCk1hdHQgUm9wZXIKR3JhcGhpY3MgU29mdHdhcmUgRW5naW5lZXIKSW9URyBQbGF0
Zm9ybSBFbmFibGluZyAmIERldmVsb3BtZW50CkludGVsIENvcnBvcmF0aW9uCig5MTYpIDM1Ni0y
Nzk1Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
