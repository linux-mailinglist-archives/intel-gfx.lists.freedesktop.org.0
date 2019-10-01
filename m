Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B1AC36F6
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 16:21:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A11898932E;
	Tue,  1 Oct 2019 14:21:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9AAD8932E
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 14:21:30 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 07:21:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="181704685"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 01 Oct 2019 07:21:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Oct 2019 17:21:25 +0300
Date: Tue, 1 Oct 2019 17:21:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191001142125.GL1208@intel.com>
References: <20191001063128.10566-1-swati2.sharma@intel.com>
 <87pnjgdhab.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87pnjgdhab.fsf@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/color: fix broken display in icl+
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
Cc: intel-gfx@lists.freedesktop.org, ankit.k.nautiyal@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBPY3QgMDEsIDIwMTkgYXQgMTE6MDM6MDhBTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gT24gVHVlLCAwMSBPY3QgMjAxOSwgU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGlu
dGVsLmNvbT4gd3JvdGU6Cj4gPiBQcmVtYXR1cmUgZ2FtbWEgbHV0IHByZXByYXRpb24gYW5kIGxv
YWRpbmcgd2hpY2ggd2FzIGdldHRpbmcKPiA+IHJlZmxlY3RlZCBpbiBmaXJzdCBtb2Rlc2V0IGNh
dXNpbmcgZGlmZmVyZW50IGNvbG9ycyBvbgo+ID4gc2NyZWVuIGR1cmluZyBib290Lgo+ID4KPiA+
IElzc3VlOiBJbiBCSU9TLCBnYW1tYSBpcyBkaXNhYmxlZCBieSBkZWZhdWx0LiBIb3dldmVyLAo+
ID4gbGVnYWN5X3JlYWRfbHV0cygpIHdhcyBnZXR0aW5nIGNhbGxlZCBldmVuIGJlZm9yZSB0aGUg
bGVnYWN5X2xvYWRfbHV0cygpCj4gPiB3aGljaCB3YXMgc2V0dGluZyBjcnRjX3N0YXRlLT5iYXNl
LmdhbW1hX2x1dCBhbmQgZ2FtbWFfbHV0IHdhcwo+ID4gcHJvZ3JhbW1lZCB3aXRoIGp1bmsgdmFs
dWVzIHdoaWNoIGxlZCB0byB2aXN1YWwgYXJ0aWZhY3RzIChkaWZmZXJlbnQKPiA+IGNvbG9yZWQg
c2NyZWVucyBpbnN0ZWFkIG9mIHVzdWFsIGJsYWNrIGR1cmluZyBib290KS4KPiA+Cj4gPiBGaXg6
IENhbGxpbmcgcmVhZF9sdXRzKCkgb25seSB3aGVuIGdhbW1hIGlzIGVuYWJsZWQgd2hpY2ggd2ls
bCBoYXBwZW4KPiA+IGFmdGVyIGZpcnN0IG1vZGVzZXQuCj4gPgo+ID4gQnVnemlsbGE6IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTgwOQo+IAo+IEknbSBj
b25mdXNlZC4gSXMgdGhlcmUgYSBjdXJyZW50IHByb2JsZW0gdXBzdHJlYW0gYWZ0ZXIgdGhlIHJl
dmVydAo+IDFiODU4ODc0MWZkYyAoIlJldmVydCAiZHJtL2k5MTUvY29sb3I6IEV4dHJhY3QgaWNs
X3JlYWRfbHV0cygpIiIpPwo+IAo+IE9yIGRvZXMgdGhpcyBmaXggYSBwcm9ibGVtIHRoYXQgb25s
eSBvY2N1cnMgaW4gY29uanVuY3Rpb24gd2l0aCB0aGUKPiByZXZlcnRlZCBjb21taXQ/IFRoZW4g
c2F5IHNvLgo+IAo+IE5vdGUgaW5saW5lLgo+IAo+ID4gU2lnbmVkLW9mZi1ieTogU3dhdGkgU2hh
cm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNCArKystCj4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gPiBpbmRleCBmMTMyOGMwOGY0YWQu
LmY4OWFhNGJiOWY0MiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwo+ID4gQEAgLTEwNTI4LDcgKzEwNTI4LDkgQEAgc3RhdGljIGJvb2wg
aGFzd2VsbF9nZXRfcGlwZV9jb25maWcoc3RydWN0IGludGVsX2NydGMgKmNydGMsCj4gPiAgCQlp
OXh4X2dldF9waXBlX2NvbG9yX2NvbmZpZyhwaXBlX2NvbmZpZyk7Cj4gPiAgCX0KPiA+ICAKPiA+
IC0JaW50ZWxfY29sb3JfZ2V0X2NvbmZpZyhwaXBlX2NvbmZpZyk7Cj4gPiArCWlmICgoSU5URUxf
R0VOKGRldl9wcml2KSA+PSAxMSAmJiAocGlwZV9jb25maWctPmdhbW1hX21vZGUgJiBQT1NUX0NT
Q19HQU1NQV9FTkFCTEUpKSB8fAo+ID4gKwkgICAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA5ICYm
IChwaXBlX2NvbmZpZy0+Z2FtbWFfZW5hYmxlKSkpCj4gPiArCQkJaW50ZWxfY29sb3JfZ2V0X2Nv
bmZpZyhwaXBlX2NvbmZpZyk7Cj4gCj4gUHV0IGFsbCBvZiB0aGUgY29uZGl0aW9ucyBpbnNpZGUg
aW50ZWxfY29sb3JfZ2V0X2NvbmZpZygpLgoKSW4gZmFjdCBpbnNpZGUgdGhlIC5yZWFkX2x1dHMo
KSBzaW5jZSB0aGVzZSBjaGVja3MgYXJlIHBsYXRmb3JtCnNwZWNpZmljLgoKQWxzbyB0aGlzIGNo
ZWNrIGlzIHdyb25nIGZvciBDSFYgc2luY2UgaXQgaGFzIGEgc2VwYXJhdGUKZW5hYmxlIGtub2Ig
Zm9yIHRoZSBDR00gTFVUIChnYW1tYV9lbmFibGUgb25seSBkZWFscyB3aXRoIHRoZQpsZWdhY3kg
TFVUKS4KCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
