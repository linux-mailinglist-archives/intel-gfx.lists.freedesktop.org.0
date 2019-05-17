Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B5321BA7
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 18:34:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5247898FA;
	Fri, 17 May 2019 16:34:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64F52898FA
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 16:34:27 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 09:34:26 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 17 May 2019 09:34:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 May 2019 19:34:23 +0300
Date: Fri, 17 May 2019 19:34:23 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20190517163423.GU24299@intel.com>
References: <20190514164653.935-1-stuart.summers@intel.com>
 <155785283553.21839.2059003338244451933@skylake-alporthouse-com>
 <4387e52b0895d400d4e0f5c71e4c8e0a164add7c.camel@intel.com>
 <20190515000604.GC18687@intel.com> <87ftpeaff0.fsf@intel.com>
 <a13bccb377efbfe2f4ee9e414e4053610d315e3b.camel@intel.com>
 <87mujm76ej.fsf@intel.com>
 <66758be0515771b27172bcf0e1e6138ff2932bce.camel@intel.com>
 <20190517161739.GC6984@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517161739.GC6984@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Re-add enable_rc6 modparam
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

T24gRnJpLCBNYXkgMTcsIDIwMTkgYXQgMDk6MTc6MzlBTSAtMDcwMCwgUm9kcmlnbyBWaXZpIHdy
b3RlOgo+IE9uIFRodSwgTWF5IDE2LCAyMDE5IGF0IDAzOjQ5OjE5UE0gKzAwMDAsIFN1bW1lcnMs
IFN0dWFydCB3cm90ZToKPiA+IE9uIFRodSwgMjAxOS0wNS0xNiBhdCAxODo0MiArMDMwMCwgSmFu
aSBOaWt1bGEgd3JvdGU6Cj4gPiA+IE9uIFRodSwgMTYgTWF5IDIwMTksICJTdW1tZXJzLCBTdHVh
cnQiIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+Cj4gPiA+IHdyb3RlOgo+ID4gPiA+IE9uIFRo
dSwgMjAxOS0wNS0xNiBhdCAxMjo1OSArMDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4gPiA+ID4g
PiBPbiBUdWUsIDE0IE1heSAyMDE5LCBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5j
b20+IHdyb3RlOgo+ID4gPiA+ID4gPiBPbmUgcG9zc2liaWxpdHkgdGhhdCBqdXN0IGNhbWUgdG8g
bXkgbWluZCBub3cgaXMsIHdoYXQgaWYgd2UKPiA+ID4gPiA+ID4gbWFrZQo+ID4gPiA+ID4gPiB0
aGlzIG9ubHkgZm9yIHBsYXRmb3JtcyB0aGF0IGFyZSBzdGlsbCBwcm90ZWN0ZWQgYnkKPiA+ID4g
PiA+ID4gaXNfYWxwaGFfc3VwcG9ydD0xCj4gPiA+ID4gPiA+IChzb29uIGJlY29taW5nIHJlcXVp
cmVfZm9yY2VfcHJvYmU9MSkKPiA+ID4gPiA+IAo+ID4gPiA+ID4gUGxlYXNlIGRvbid0IGNvbmZs
YXRlIGFscGhhX3N1cHBvcnQgb3IgZm9yY2VfcHJvYmUgd2l0aAo+ID4gPiA+ID4gKmFueXRoaW5n
Kgo+ID4gPiA+ID4gZWxzZS4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBCdXQgdGhpcyBpcyBqdXN0
IG9uZSBzaWRlIG9mIHRoZSBjb2luLi4uIHdoZW4gcHJvZHVjdCBpcyBvdXQKPiA+ID4gPiA+ID4g
dGhlcmUKPiA+ID4gPiA+ID4gYW5kIHdlIHdhbnQgdGhlIHVzZXIgdG8gZGVidWcgdGhlIGlzc3Vl
IHRvIHNlZSBpZiBpdCBpcyBhIFJDNgo+ID4gPiA+ID4gPiBidWcKPiA+ID4gPiA+ID4gd2UgaGF2
ZSBubyB3YXkgdG8gdmVyaWZ5IHRoYXQuIDovCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFRoZSBwcm9i
bGVtIGlzLCBpZiBpdCB3b3JrcyB3aXRoIHJjNiBkaXNhYmxlZCwgaXQgZG9lc24ndCBwcm92ZQo+
ID4gPiA+ID4gaXQncwo+ID4gPiA+ID4gYW4KPiA+ID4gPiA+IHJjNiBidWcgZWl0aGVyLgo+IAo+
IFdlbGwsIFJDNiBpcyB0aGUgbWFpbiBHVCBwb3dlciBnYXRpbmcuIFRoZSBpc3N1ZSBjb3VsZCBi
ZSBvbiBtYXkgb3RoZXIKPiBpbmRpdmlkdWFsIHBvd2VyIGdhdGluZywgYnV0IGlmIGJ5IGRpc2Fi
bGluZyBSQzYgdGhlIGlzc3VlIGlzIGdvbmUKPiBpdCBpcyBhIHZlcnkgZ29vZCBpbmRpY2F0aW9u
IHRoYXQgaXQgaXMgYSBHVC1QTSBidWcgc29tZXdoZXJlLgoKSSBkaXNhZ3JlZS4gSW4gdGhlIHJl
Y2VudCBwYXN0IGVuYWJsZV9yYzYgd2FzIG9mdGVuIHVzZWQgYnkKcGVvcGxlIHRvIHdvcmthcm91
bmQgZGlzcGxheSB1bmRlcnJ1bnMgYW5kIHdoYXRub3QuCgotLSAKVmlsbGUgU3lyasOkbMOkCklu
dGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
