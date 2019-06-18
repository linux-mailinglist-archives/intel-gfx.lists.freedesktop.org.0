Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BCC4A76B
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 18:46:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2409F6E190;
	Tue, 18 Jun 2019 16:46:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A95196E190
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 16:46:23 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 09:46:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,389,1557212400"; d="scan'208";a="186174709"
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by fmsmga002.fm.intel.com with ESMTP; 18 Jun 2019 09:46:21 -0700
Date: Tue, 18 Jun 2019 19:46:21 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20190618164621.GK3733@ideak-desk.fi.intel.com>
References: <20190604145826.16424-1-imre.deak@intel.com>
 <20190604145826.16424-16-imre.deak@intel.com>
 <20190618163909.GS5942@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618163909.GS5942@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 15/23] drm/i915: Sanitize the TypeC FIA lane
 configuration decoding
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdW4gMTgsIDIwMTkgYXQgMDc6Mzk6MDlQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIFR1ZSwgSnVuIDA0LCAyMDE5IGF0IDA1OjU4OjE4UE0gKzAzMDAsIEltcmUg
RGVhayB3cm90ZToKPiA+IFVzZSBoZXggbnVtYmVycywgc2luY2UgdGhhdCBtYWtlcyBtb3JlIHNl
bnNlIHdoZW4gZGVjb2RpbmcgYSBiaXQgcGF0dGVybi4KPiA+IAo+ID4gTm8gZnVuY3Rpb25hbCBj
aGFuZ2UuCj4gPiAKPiA+IFN1Z2dlc3RlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KPiA+IENjOiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5h
QGludGVsLmNvbT4KPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwu
Y29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdGMuYyB8IDE1ICsr
KysrKysrLS0tLS0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDcgZGVs
ZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF90Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdGMuYwo+ID4gaW5kZXggZmMwMzQx
ZGM1MGM1Li40YjJmNTI1YmMyYTYgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF90Yy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF90Yy5jCj4g
PiBAQCAtNzIsMTUgKzcyLDE2IEBAIGludCBpbnRlbF90Y19wb3J0X2ZpYV9tYXhfbGFuZV9jb3Vu
dChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkKPiA+ICAJc3dpdGNoIChsYW5l
X2luZm8pIHsKPiA+ICAJZGVmYXVsdDoKPiA+ICAJCU1JU1NJTkdfQ0FTRShsYW5lX2luZm8pOwo+
ID4gLQljYXNlIDE6Cj4gPiAtCWNhc2UgMjoKPiA+IC0JY2FzZSA0Ogo+ID4gLQljYXNlIDg6Cj4g
PiArCQkvKiBmYWxsLXRocm91Z2ggKi8KPiA+ICsJY2FzZSAweDE6Cj4gPiArCWNhc2UgMHgyOgo+
ID4gKwljYXNlIDB4NDoKPiA+ICsJY2FzZSAweDg6Cj4gPiAgCQlyZXR1cm4gMTsKPiA+IC0JY2Fz
ZSAzOgo+ID4gLQljYXNlIDEyOgo+ID4gKwljYXNlIDB4MzoKPiA+ICsJY2FzZSAweGM6Cj4gPiAg
CQlyZXR1cm4gMjsKPiA+IC0JY2FzZSAxNToKPiA+ICsJY2FzZSAweGY6Cj4gPiAgCQlyZXR1cm4g
NDsKPiA+ICAJfQo+IAo+IFN0aWxsIGxvb2tzIGxpa2UgYSBoYW5kIHJvbGxlZCBod2VpZ2h0KCkg
dG8gbWUgOykKClRob3VnaHQgYWJvdXQgdGhhdCwgYnV0IHRoZW4gd2UnZCBtaXNzIHVuZGVmaW5l
ZCBlbmNvZGluZ3MuCgo+IAo+ID4gIH0KPiA+IC0tIAo+ID4gMi4xNy4xCj4gCj4gLS0gCj4gVmls
bGUgU3lyasOkbMOkCj4gSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
