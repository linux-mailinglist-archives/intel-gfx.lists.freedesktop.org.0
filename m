Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E24F10FA77
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 10:09:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 963CA6E436;
	Tue,  3 Dec 2019 09:08:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D18D6E436
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 09:08:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Dec 2019 01:08:57 -0800
X-IronPort-AV: E=Sophos;i="5.69,272,1571727600"; d="scan'208";a="204905387"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Dec 2019 01:08:55 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20191203023110.488972-1-jose.souza@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191203023110.488972-1-jose.souza@intel.com>
Date: Tue, 03 Dec 2019 11:08:52 +0200
Message-ID: <87a789kc7v.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dp: Define each HBR link rate
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

T24gTW9uLCAwMiBEZWMgMjAxOSwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+IHdyb3RlOgo+IFRoaXMgaXMgYmV0dGVyIHRoYW4ga2VlcCB0aG9zZSB2YWx1ZXMg
aW4gdGhlIGNvZGUgdGhhdCB5b3UgYWx3YXlzCj4gbmVlZCB0byBjaGVjayB0aGUgRFAgc3BlYyB0
byBrbm93IHdoYXQgbGV2ZWwgb2YgSEJSIGl0IGlzLgo+Cj4gU2lnbmVkLW9mZi1ieTogSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCA2ICsrKysrLQo+ICAxIGZpbGUgY2hh
bmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiBpbmRleCBhOTc2NjA2ZDIxYzcuLjkxNGYwY2M0ZDIz
NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+IEBAIC00
OSw2ICs0OSwxMCBAQAo+ICAjaW5jbHVkZSAiaW50ZWxfdGMuaCIKPiAgI2luY2x1ZGUgImludGVs
X3Zkc2MuaCIKPiAgCj4gKyNkZWZpbmUgSEJSX1JBVEUgMjcwMDAwCj4gKyNkZWZpbmUgSEJSMl9S
QVRFIDU0MDAwMAo+ICsjZGVmaW5lIEhCUjNfUkFURSA4MTAwMDAKPiArCj4gIHN0cnVjdCBkZGlf
YnVmX3RyYW5zIHsKPiAgCXUzMiB0cmFuczE7CS8qIGJhbGFuY2UgbGVnIGVuYWJsZSwgZGUtZW1w
aCBsZXZlbCAqLwo+ICAJdTMyIHRyYW5zMjsJLyogdnJlZiBzZWwsIHZzd2luZyAqLwo+IEBAIC04
ODgsNyArODkyLDcgQEAgaWNsX2dldF9jb21ib19idWZfdHJhbnMoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LCBpbnQgdHlwZSwgaW50IHJhdGUsCj4gIAlpZiAodHlwZSA9PSBJTlRF
TF9PVVRQVVRfSERNSSkgewo+ICAJCSpuX2VudHJpZXMgPSBBUlJBWV9TSVpFKGljbF9jb21ib19w
aHlfZGRpX3RyYW5zbGF0aW9uc19oZG1pKTsKPiAgCQlyZXR1cm4gaWNsX2NvbWJvX3BoeV9kZGlf
dHJhbnNsYXRpb25zX2hkbWk7Cj4gLQl9IGVsc2UgaWYgKHJhdGUgPiA1NDAwMDAgJiYgdHlwZSA9
PSBJTlRFTF9PVVRQVVRfRURQKSB7Cj4gKwl9IGVsc2UgaWYgKHJhdGUgPiBIQlIyX1JBVEUgJiYg
dHlwZSA9PSBJTlRFTF9PVVRQVVRfRURQKSB7CgpJIGRvbid0IHdhbnQgYSBwYXRjaCBzd2l0Y2hp
bmcgc29tZSByYW5kb20gcGxhY2UgdG8gdXNpbmcgYQptYWNyby4gRWl0aGVyIHdlIHN0aWNrIHRv
IG51bWJlcnMgb3Igc3dpdGNoIGFsbC4KCkFuZCBpZiBzd2l0Y2ggYWxsLCBhZGQgdGhlIHJhdGVz
IHRvIGRybSBjb3JlLCBub3QgbG9jYWxseSB0bwppbnRlbF9kZGkuYy4gKEFuZCB0aGVuIHdvbmRl
ciB3aGF0IHRvIGRvIHdpdGggdGhlIGludGVybWVkaWF0ZSByYXRlcyBpbgppbnRlbF9kcF9zZXRf
c291cmNlX3JhdGVzKCkuLi4pCgpQZXJzb25hbGx5LCBIQlI8Tj4gaXMgbGVzcyB1c2VmdWwgdG8g
bWUgaW4gY29kZSwgaXQncyB0aGUgYWN0dWFsIHJhdGUKdGhhdCBoZWxwcyBtZS4KCkJ1dCBJJ2xs
IHRydXN0IFZpbGxlJ3MganVkZ2VtZW50IG9uIHRoaXMgb25lLgoKQlIsCkphbmkuCgoKPiAgCQkq
bl9lbnRyaWVzID0gQVJSQVlfU0laRShpY2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZWRw
X2hicjMpOwo+ICAJCXJldHVybiBpY2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZWRwX2hi
cjM7Cj4gIAl9IGVsc2UgaWYgKHR5cGUgPT0gSU5URUxfT1VUUFVUX0VEUCAmJiBkZXZfcHJpdi0+
dmJ0LmVkcC5sb3dfdnN3aW5nKSB7CgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNl
IEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
