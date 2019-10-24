Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A3EE4066
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 01:48:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C1E66E867;
	Thu, 24 Oct 2019 23:48:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 868546E865
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 23:48:44 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 16:48:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,226,1569308400"; d="scan'208";a="210550865"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.135])
 by orsmga002.jf.intel.com with ESMTP; 24 Oct 2019 16:48:42 -0700
Date: Thu, 24 Oct 2019 16:49:27 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20191024234927.GF18842@mdroper-desk1.amr.corp.intel.com>
References: <20191008211716.8391-1-matthew.d.roper@intel.com>
 <b4d36b9dfc4dc883f7ddee0f924e66ab6cbd9073.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b4d36b9dfc4dc883f7ddee0f924e66ab6cbd9073.camel@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Catch GTT fault errors for gen11+
 planes
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBPY3QgMjQsIDIwMTkgYXQgMDI6MTc6MzRQTSAtMDcwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gT24gVHVlLCAyMDE5LTEwLTA4IGF0IDE0OjE3IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3Rl
Ogo+ID4gR2VuMTErIGhhcyBtb3JlIGhhcmR3YXJlIHBsYW5lcyB0aGFuIGdlbjkgc28gd2UgbmVl
ZCB0byB0ZXN0Cj4gPiBhZGRpdGlvbmFsCj4gPiBwaXBlIGludGVycnVwdCByZWdpc3RlciBiaXRz
IHRvIHJlY29nbml6ZSBhbnkgR1RUIGZhdWx0cyB0aGF0IGhhcHBlbgo+ID4gb24KPiA+IHRoZXNl
IGV4dHJhIHBsYW5lcy4KPiAKPiBSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+CgpBcHBsaWVkIHRvIGRpbnEsIHRoYW5rcyBmb3IgdGhlIHJl
dmlldy4KCgpNYXR0Cgo+IAo+ID4gCj4gPiBCc3BlYzogNTAzMzUKPiA+IFNpZ25lZC1vZmYtYnk6
IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIHwgNCArKystCj4gPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaCB8IDggKysrKysrKysKPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDExIGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9p
cnEuYwo+ID4gaW5kZXggZjIzNzFiNjA4M2M2Li41NDk5NDUwYzE1MjQgMTAwNjQ0Cj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2lycS5jCj4gPiBAQCAtMjU4OSw3ICsyNTg5LDkgQEAgc3RhdGljIHUzMiBn
ZW44X2RlX3BvcnRfYXV4X21hc2soc3RydWN0Cj4gPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKPiA+ICAKPiA+ICBzdGF0aWMgdTMyIGdlbjhfZGVfcGlwZV9mYXVsdF9tYXNrKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlCj4gPiAqZGV2X3ByaXYpCj4gPiAgewo+ID4gLQlpZiAoSU5URUxfR0VO
KGRldl9wcml2KSA+PSA5KQo+ID4gKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKPiA+
ICsJCXJldHVybiBHRU4xMV9ERV9QSVBFX0lSUV9GQVVMVF9FUlJPUlM7Cj4gPiArCWVsc2UgaWYg
KElOVEVMX0dFTihkZXZfcHJpdikgPj0gOSkKPiA+ICAJCXJldHVybiBHRU45X0RFX1BJUEVfSVJR
X0ZBVUxUX0VSUk9SUzsKPiA+ICAJZWxzZQo+ID4gIAkJcmV0dXJuIEdFTjhfREVfUElQRV9JUlFf
RkFVTFRfRVJST1JTOwo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmgKPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ID4gaW5kZXggNmQ2
N2JkMjM4Y2ZlLi4yNDMxMWZlZTcwMDkgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
Cj4gPiBAQCAtNzM3Myw2ICs3MzczLDkgQEAgZW51bSB7Cj4gPiAgI2RlZmluZSAgR0VOOF9QSVBF
X1ZTWU5DCQkoMSA8PCAxKQo+ID4gICNkZWZpbmUgIEdFTjhfUElQRV9WQkxBTksJCSgxIDw8IDAp
Cj4gPiAgI2RlZmluZSAgR0VOOV9QSVBFX0NVUlNPUl9GQVVMVAkJKDEgPDwgMTEpCj4gPiArI2Rl
ZmluZSAgR0VOMTFfUElQRV9QTEFORTdfRkFVTFQJKDEgPDwgMjIpCj4gPiArI2RlZmluZSAgR0VO
MTFfUElQRV9QTEFORTZfRkFVTFQJKDEgPDwgMjEpCj4gPiArI2RlZmluZSAgR0VOMTFfUElQRV9Q
TEFORTVfRkFVTFQJKDEgPDwgMjApCj4gPiAgI2RlZmluZSAgR0VOOV9QSVBFX1BMQU5FNF9GQVVM
VAkJKDEgPDwgMTApCj4gPiAgI2RlZmluZSAgR0VOOV9QSVBFX1BMQU5FM19GQVVMVAkJKDEgPDwg
OSkKPiA+ICAjZGVmaW5lICBHRU45X1BJUEVfUExBTkUyX0ZBVUxUCQkoMSA8PCA4KQo+ID4gQEAg
LTczOTIsNiArNzM5NSwxMSBAQCBlbnVtIHsKPiA+ICAJIEdFTjlfUElQRV9QTEFORTNfRkFVTFQg
fCBcCj4gPiAgCSBHRU45X1BJUEVfUExBTkUyX0ZBVUxUIHwgXAo+ID4gIAkgR0VOOV9QSVBFX1BM
QU5FMV9GQVVMVCkKPiA+ICsjZGVmaW5lIEdFTjExX0RFX1BJUEVfSVJRX0ZBVUxUX0VSUk9SUyBc
Cj4gPiArCShHRU45X0RFX1BJUEVfSVJRX0ZBVUxUX0VSUk9SUyB8IFwKPiA+ICsJIEdFTjExX1BJ
UEVfUExBTkU3X0ZBVUxUIHwgXAo+ID4gKwkgR0VOMTFfUElQRV9QTEFORTZfRkFVTFQgfCBcCj4g
PiArCSBHRU4xMV9QSVBFX1BMQU5FNV9GQVVMVCkKPiA+ICAKPiA+ICAjZGVmaW5lIEdFTjhfREVf
UE9SVF9JU1IgX01NSU8oMHg0NDQ0MCkKPiA+ICAjZGVmaW5lIEdFTjhfREVfUE9SVF9JTVIgX01N
SU8oMHg0NDQ0NCkKCi0tIApNYXR0IFJvcGVyCkdyYXBoaWNzIFNvZnR3YXJlIEVuZ2luZWVyClZU
VC1PU0dDIFBsYXRmb3JtIEVuYWJsZW1lbnQKSW50ZWwgQ29ycG9yYXRpb24KKDkxNikgMzU2LTI3
OTUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
