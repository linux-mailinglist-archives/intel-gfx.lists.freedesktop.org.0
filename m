Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1B549FF6
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 13:59:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 695276E13D;
	Tue, 18 Jun 2019 11:59:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23C806E13D
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 11:59:42 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 04:59:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,389,1557212400"; d="scan'208";a="161719656"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 18 Jun 2019 04:59:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Jun 2019 14:59:38 +0300
Date: Tue, 18 Jun 2019 14:59:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20190618115938.GL5942@intel.com>
References: <20190614103941.15399-1-maarten.lankhorst@linux.intel.com>
 <20190617123402.GH5942@intel.com>
 <9aa7d57c-8f9b-eeb9-16a9-718b4c6eae45@linux.intel.com>
 <20190618114400.GK5942@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618114400.GK5942@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Check visibility in
 icl_build_plane_wm
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

T24gVHVlLCBKdW4gMTgsIDIwMTkgYXQgMDI6NDQ6MDBQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIFR1ZSwgSnVuIDE4LCAyMDE5IGF0IDExOjE2OjQxQU0gKzAyMDAsIE1hYXJ0
ZW4gTGFua2hvcnN0IHdyb3RlOgo+ID4gT3AgMTctMDYtMjAxOSBvbSAxNDozNCBzY2hyZWVmIFZp
bGxlIFN5cmrDpGzDpDoKPiA+ID4gT24gRnJpLCBKdW4gMTQsIDIwMTkgYXQgMTI6Mzk6NDFQTSAr
MDIwMCwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4gPiA+PiBXaGVuIGEgcGxhbmFyIFlVViBw
bGFuZSBpcyBjb25maWd1cmVkLCBidXQgdGhlIGNydGMgaXMKPiA+ID4+IG1hcmtlZCBpbmFjdGl2
ZSwgd2UgY2FuIGVuZCB1cCB3aXRoIGEgbGlua2VkIHBsYW5lIHdpdGhvdXQKPiA+ID4+IHZpc2li
aWxpdHkuCj4gPiA+IEhvdyBpcyB0aGF0IHBvc3NpYmxlPyBJIGRvbid0IHRoaW5rIHdlIHNob3Vs
ZCBiZSBhZGRpbmcgdGhlIHNsYXZlIHBsYW5lCj4gPiA+IGlmIHRoZSBtYXN0ZXIgaXMgbm90IHZp
c2libGUuCj4gPiAKPiA+IAo+ID4gRFBNUyBvZmYsIHdlIGNhbGN1bGF0ZSB0aGUgdmFyaW91cyBm
aWVsZHMgYXMgaWYgdGhlIENSVEMgaXMgb24sIHRoZW4gZGlzYWJsZSB2aXNpYmlsaXR5Lgo+ID4g
Cj4gPiBjcnRjX3N0YXRlLT5udjEyX3BsYW5lcyBldGMgc3RpbGwgZ2V0IHNldCwgc28gaXQgd29y
a3MgYXMgaWYgdGhlIGNydGMgaXMgb24uCj4gPiAKPiA+IEl0J3MgYSB3YXkgb2Ygbm90IGFsbG93
aW5nIGFuIGludmFsaWQgcmVzdWx0IHdoZW4gZHBtcyBpcyBvZmYsIHRoZW4gYnJlYWtpbmcgb24g
Y3J0YyBlbmFibGUuCj4gCj4gSG1tLiBJIHdvbmRlciB3aGVuIHdlIHN0YXJ0ZWQgdG8gZG8gdGhh
dC4gSWYgd2UncmUgYWxyZWFkeSBkb2luZyB0aGlzCj4gbXVjaCB0aGVuIEkgd29uZGVyIGhvdyBm
YXIgd2UgYXJlIGZyb20ganVzdCBkZWFsaW5nIHdpdGggdGhlIEZJWE1FIGluCj4gaW50ZWxfd21f
cGxhbmVfdmlzaWJsZSgpIGluc3RlYWQ/CgpTdGlsbCBmYXIgSSBndWVzcy4gV291bGQgcG90ZW50
aWFsbHkgbmVlZCB0byBkbyBzb21lIHN1cmdlcnkgb24KdGhlIHBpcGUgZGRiIGFsbG9jYXRpb24g
YXMgd2VsbC4KClRoaXMgd2hvbGUgdGhpbmcgaXMgYSBiaXQgYm9ya2VkLiBXZSBjbGVhciBhY3Rp
dmVfcGxhbmVzIGJ1dCBzdGlsbAp1c2UgaXQgd2hlbiBhbGxvY2F0aW5nIHRoZSBZIHBsYW5lLiBI
ZW5jZSBkcG1zIG9uIGNvdWxkIGp1c3QgZmFpbAphbnl3YXkgZHVlIHRvIG5vdCBoYXZpbmcgYSBm
cmVlIFkgcGxhbmUgKGFzIHdlbGwgYXMgZHVlIHRvCmluc3VmZmljaWVudCB3YXRlcm1hcmtzKS4K
ClNvIGlmIHdlIHdhbnQgdG8gbWFrZSB0aGUgWSBwbGFuZSBhbGxvY2F0aW9uIHJvYnVzdCBJIGd1
ZXNzIHdlIHdvdWxkCmFsc28gbmVlZCB0byBtb3ZlIGNsZWFyaW5nIHRoZSBwbGFuZSB2aXNpYmls
aXR5IHRvIGhhcHBlbiBhZnRlciB0aGUgCmNydGMgLmF0b21pY19jaGVjaygpLgoKLS0gClZpbGxl
IFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
