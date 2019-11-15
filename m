Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC45FDEFB
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 14:32:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C738C898A3;
	Fri, 15 Nov 2019 13:32:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 863D189862
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 13:32:30 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 05:32:28 -0800
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="199201055"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 05:32:27 -0800
Date: Fri, 15 Nov 2019 15:30:37 +0200
From: Imre Deak <imre.deak@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191115133037.GE22793@ideak-desk.fi.intel.com>
References: <20191115122343.821331-1-chris@chris-wilson.co.uk>
 <20191115131143.GC22793@ideak-desk.fi.intel.com>
 <20191115131530.GD22793@ideak-desk.fi.intel.com>
 <157382412443.11997.4083022821574405859@skylake-alporthouse-com>
 <157382452276.11997.129957794077128939@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157382452276.11997.129957794077128939@skylake-alporthouse-com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Mention which device failed
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

T24gRnJpLCBOb3YgMTUsIDIwMTkgYXQgMDE6Mjg6NDJQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgQ2hyaXMgV2lsc29uICgyMDE5LTExLTE1IDEzOjIyOjA0KQo+ID4gUXVv
dGluZyBJbXJlIERlYWsgKDIwMTktMTEtMTUgMTM6MTU6MzApCj4gPiA+IE9uIEZyaSwgTm92IDE1
LCAyMDE5IGF0IDAzOjExOjQzUE0gKzAyMDAsIEltcmUgRGVhayB3cm90ZToKPiA+ID4gPiBPbiBG
cmksIE5vdiAxNSwgMjAxOSBhdCAxMjoyMzo0M1BNICswMDAwLCBDaHJpcyBXaWxzb24gd3JvdGU6
Cj4gPiA+ID4gPiBXaGVuIHRlbGxpbmcgdGhlIHVzZXIgdGhhdCBkZXZpY2UgcG93ZXIgbWFuYWdl
bWVudCBpcyBkaXNhYmxlZCwgaXQgaXMKPiA+ID4gPiA+IGhlbHBmdWwgdG8gc2F5IHdoaWNoIGRl
dmljZSB0aGF0IHdhcy4gQXQgdGhlIHNhbWUgdGltZSwgd2hpbGUgaXQgaXMgYQo+ID4gPiA+ID4g
bWVyZSBpbmNvbnZlbmllbmNlIHRvIHRoZSB1c2VyLCBpdCBpcyBkZXZhc3RhdGluZyB0byBDSSBh
cyB0aGlzIGFuZAo+ID4gPiA+ID4gZnV0dXJlIHRlc3RzIG1heSBmYWlsIG91dCBvZiB0aGUgYmx1
ZS4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiA+ID4gPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29u
YXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+ID4gPiA+ID4gQ2M6IEltcmUgRGVhayA8aW1y
ZS5kZWFrQGludGVsLmNvbT4KPiA+ID4gPiAKPiA+ID4gPiBSZXZpZXdlZC1ieTogSW1yZSBEZWFr
IDxpbXJlLmRlYWtAaW50ZWwuY29tPgo+ID4gPiAKPiA+ID4gQWx0aG91Z2ggd2Ugd291bGQgbmVl
ZCBhIHdheSB0byB0ZXN0IHJlY292ZXJ5IC0gd2hpY2ggd2UgYSBoYXZlIGEKPiA+ID4gdGVzdGNh
c2UgZm9yIC0gc28gdGFpbnRpbmcgZm9yIHRoYXQgY2FzZSBpcyBub3Qgb2suCj4gPiAKPiA+IFlv
dSBwdXQgdGhhdCB0ZXN0IGF0IHRoZSBlbmQgb2YgdGhlIHF1ZXVlLiBGd2l3LCB3ZSBkb24ndCBz
ZWVtIHRvIHNlZQo+ID4gdGhlIGNvcnJ1cHQgc3RhdGUgYWNyb3NzIGEgbW9kdWxlIHJlbG9hZDsg
ZWl0aGVyIHRoYXQgb3IgSSBhbSBibGluZC4KCkhtLCB0aGF0J3MgYSBwcm9ibGVtIHRoZW4uIEZy
b20gaW50ZWxfcmM2X2luaXQoKSB3ZSBzaG91bGQgY2hlY2sgZm9yIHRoZQpjb3JydXB0aW9uLCB3
aGljaCBwZXJzaXN0IHVudGlsIHJlYm9vdCBvciBTMyBzdXNwZW5kL3Jlc3VtZS4KCj4gCj4gSSBn
dWVzcyB5b3Ugd291bGQgcHJlZmVyIGEgZGVidWdmcy4uLgoKWWVzLCB3b3VsZCBiZSBjbGVhcmVy
LgoKPiAtQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
