Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C8F4A133
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 14:56:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90AE789C1A;
	Tue, 18 Jun 2019 12:55:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C20F89C1A
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 12:55:57 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 05:55:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,389,1557212400"; d="scan'208";a="167928483"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 18 Jun 2019 05:55:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Jun 2019 15:55:53 +0300
Date: Tue, 18 Jun 2019 15:55:53 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20190618125553.GM5942@intel.com>
References: <20190612130801.2085-1-ville.syrjala@linux.intel.com>
 <20190612130801.2085-4-ville.syrjala@linux.intel.com>
 <20190618123446.GD3733@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618123446.GD3733@ideak-desk.fi.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Drop the _INCOMPLETE for
 has_infoframe
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdW4gMTgsIDIwMTkgYXQgMDM6MzQ6NDZQTSArMDMwMCwgSW1yZSBEZWFrIHdyb3Rl
Ogo+IE9uIFdlZCwgSnVuIDEyLCAyMDE5IGF0IDA0OjA4OjAxUE0gKzAzMDAsIFZpbGxlIFN5cmph
bGEgd3JvdGU6Cj4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgo+ID4gCj4gPiBXZSBoYXZlIGZ1bGwgaW5mb2ZyYW1lIHJlYWRvdXQgbm93IHNv
IHdlIGNhbiByZXBsYWNlIHRoZQo+ID4gUElQRV9DT05GX0NIRUNLX0JPT0xfSU5DT01QTEVURSho
YXNfaW5mb2ZyYW1lKSB3aXRoIHRoZSBub3JtYWwKPiA+IFBJUEVfQ09ORl9DSEVDS19CT09MKGhh
c19pbmZvZnJhbWUpLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IAo+IFJldmlld2VkLWJ5OiBJbXJlIERlYWsg
PGltcmUuZGVha0BpbnRlbC5jb20+Cj4gCj4gTG9va3MgbGlrZSBoYXNfYXVkaW8gaGFzIHRoZSBy
ZWFkb3V0IHRvbyBpbiBwbGFjZS4KCkkgc3VwcG9zZSBhdWRpbyBpcyB1c2luZyBJTkNPTVBMRVRF
IGR1ZSB0byBsYWNrIG9mIEVMRCByZWFkb3V0PwoKPiAKPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYyB8IDIgKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2Rpc3BsYXkuYwo+ID4gaW5kZXggZWMzYjdlODI1NjEzLi43MmZiMDQ4NjNhY2QgMTAwNjQ0Cj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMKPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYwo+ID4gQEAgLTEyNTcwLDcgKzEyNTcw
LDcgQEAgaW50ZWxfcGlwZV9jb25maWdfY29tcGFyZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3VycmVudF9jb25maWcsCj4gPiAgCj4gPiAgCVBJUEVfQ09ORl9DSEVDS19CT09MKGhk
bWlfc2NyYW1ibGluZyk7Cj4gPiAgCVBJUEVfQ09ORl9DSEVDS19CT09MKGhkbWlfaGlnaF90bWRz
X2Nsb2NrX3JhdGlvKTsKPiA+IC0JUElQRV9DT05GX0NIRUNLX0JPT0xfSU5DT01QTEVURShoYXNf
aW5mb2ZyYW1lKTsKPiA+ICsJUElQRV9DT05GX0NIRUNLX0JPT0woaGFzX2luZm9mcmFtZSk7Cj4g
PiAgCj4gPiAgCVBJUEVfQ09ORl9DSEVDS19CT09MX0lOQ09NUExFVEUoaGFzX2F1ZGlvKTsKPiA+
ICAKPiA+IC0tIAo+ID4gMi4yMS4wCj4gPiAKPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gPiBJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRl
bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
