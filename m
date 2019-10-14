Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3479D679E
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 18:46:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D744D89D73;
	Mon, 14 Oct 2019 16:46:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9429B89D73
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 16:46:32 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 09:46:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,296,1566889200"; d="scan'208";a="199452671"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 14 Oct 2019 09:46:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Oct 2019 19:46:28 +0300
Date: Mon, 14 Oct 2019 19:46:28 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: James Ausmus <james.ausmus@intel.com>
Message-ID: <20191014164628.GW1208@intel.com>
References: <20190925121737.29670-1-stanislav.lisovskiy@intel.com>
 <20191011234953.GC19531@jausmus-gentoo-dev6.jf.intel.com>
 <dd75af7e26d67fa4fb160cf58ab6d71ae53cfa10.camel@intel.com>
 <20191014145018.GV1208@intel.com>
 <20191014163332.GE19531@jausmus-gentoo-dev6.jf.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014163332.GE19531@jausmus-gentoo-dev6.jf.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Restrict qgv points which
 don't have enough bandwidth.
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@intel.com>, "Peres,
 Martin" <martin.peres@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBPY3QgMTQsIDIwMTkgYXQgMDk6MzM6MzJBTSAtMDcwMCwgSmFtZXMgQXVzbXVzIHdy
b3RlOgo+IE9uIE1vbiwgT2N0IDE0LCAyMDE5IGF0IDA1OjUwOjE4UE0gKzAzMDAsIFZpbGxlIFN5
cmrDpGzDpCB3cm90ZToKPiA+IE9uIE1vbiwgT2N0IDE0LCAyMDE5IGF0IDAyOjEzOjMxUE0gKzAz
MDAsIExpc292c2tpeSwgU3RhbmlzbGF2IHdyb3RlOgo+ID4gPiBPbiBGcmksIDIwMTktMTAtMTEg
YXQgMTY6NDkgLTA3MDAsIEphbWVzIEF1c211cyB3cm90ZToKPiA+ID4gPiA+ICsJCQkJbmV3X3Fn
dl9wb2ludHNfbWFzayB8PSBuZXdfbWFza19iaXQ7Cj4gPiA+ID4gPiArCX0KPiA+ID4gPiA+ICsK
PiA+ID4gPiA+ICsJcmV0ID0gaWNsX3Bjb2RlX3Jlc3RyaWN0X3Fndl9wb2ludHMoZGV2X3ByaXYs
Cj4gPiA+ID4gPiBuZXdfcWd2X3BvaW50c19tYXNrKTsKPiA+ID4gPiA+ICsJaWYgKHJldCA8IDAp
Cj4gPiA+ID4gPiArCQlEUk1fREVCVUdfS01TKCJDb3VsZCBub3QgcmVzdHJpY3QgcmVxdWlyZWQg
Z3F2Cj4gPiA+ID4gPiBwb2ludHMoJWQpXG4iLCByZXQpOwo+ID4gPiA+IAo+ID4gPiA+IHMvZ3F2
L3Fndi8KPiA+ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBBbHNvLCBpZiB3ZSBmYWlsIG1hc2tpbmcg
b2ZmIHRoZSBxZ3YgcG9pbnRzIHRoYXQgY2FuJ3Qgc3VwcG9ydCBvdXIgQlcKPiA+ID4gPiByZXEs
IHNob3VsZG4ndCB3ZSBoYW5kbGUgdGhhdCBmYWlsdXJlIHNvbWVob3cgLSBtYXliZSBqdXN0IGRp
c2FibGUKPiA+ID4gPiBTQUdWCj4gPiA+ID4gZW50aXJlbHk/ICBCZXR0ZXIgd2UgbG9zZSBwb3dl
ciB0aGFuIGhhdmUgZmxpY2tlcmluZyBzY3JlZW5zLi4uCj4gPiAKPiA+IFNvdW5kcyBsaWtlIGRl
YWQgY29kZSB0byBtZS4gTXkgYXBwcm9hY2ggaXM6IGRvbid0IGRlYWwgd2l0aCBody9maXJtd2Fy
ZQo+ID4gZmFpbHVyZXMgdW50aWwgdGhleSBhcmUgcHJvdmVuIHRvIGV4aXN0Lgo+ID4gCj4gPiBU
aGUgZGVidWcgbXNnIHNob3VsZCBiZSBhbiBlcnJvciBzbyB0aGF0IHdlIGdldCBhIGJ1ZyByZXBv
cnQgaWYgdGhpcwo+ID4gZXZlciBoYXBwZW5zLgo+IAo+IFRoYXQgd29ya3MgLSBob3dldmVyLCBJ
IHRoaW5rIHdlIHNob3VsZCByZXR1cm4gdGhlIGVycm9yIHJhdGhlciB0aGFuCj4gY29udGludWlu
Zy4KCk5vLiBXZSdyZSB3YXkgcGFzdCB0aGUgcG9pbnQgb2Ygbm8gcmV0dXJuLgoKLS0gClZpbGxl
IFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
