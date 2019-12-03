Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29AE810F95D
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 09:00:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02B996E1A8;
	Tue,  3 Dec 2019 08:00:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 119216E1A8
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 08:00:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Dec 2019 23:59:59 -0800
X-IronPort-AV: E=Sophos;i="5.69,272,1571727600"; d="scan'208";a="204880056"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Dec 2019 23:59:56 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anshuamn Gupta <anshuman.gupta@intel.com>
In-Reply-To: <20191203061315.GA8432@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191118163339.16825-1-anshuman.gupta@intel.com>
 <875zj4m700.fsf@intel.com> <20191203061315.GA8432@intel.com>
Date: Tue, 03 Dec 2019 09:59:54 +0200
Message-ID: <87pnh5kfet.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] i915: Expose panel power cycle delay to
 i915_panel_timings
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

T24gVHVlLCAwMyBEZWMgMjAxOSwgQW5zaHVhbW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVs
LmNvbT4gd3JvdGU6Cj4gT24gMjAxOS0xMS0yOCBhdCAxNjowNTowMyArMDIwMCwgSmFuaSBOaWt1
bGEgd3JvdGU6Cj4+IE9uIE1vbiwgMTggTm92IDIwMTksIEFuc2h1bWFuIEd1cHRhIDxhbnNodW1h
bi5ndXB0YUBpbnRlbC5jb20+IHdyb3RlOgo+PiA+IFB1dHRpbmcgZG93biB0aGUgQVVYIHBvd2Vy
IGRvbWFpbiByZWZlcmVuY2UgY291bnQgaW4KPj4gPiBlZHAgdmRkIG9mZiBhc3luYyBzZXF1ZW5j
ZSB0YWtlcyB0b28gbXVjaCBvZiB0aW1lCj4+ID4gKHJlbGF0aXZlIHRvIHBhbmVsIHBvd2VyIGN5
Y2xlIGRlbGF5KSB0aGVyZWZvcmUgaXQgbWFrZSBzZW5zZQo+PiA+IHRvIGV4cG9zZSB0aGUgcGFu
ZWwgcG93ZXIgY3ljbGUgZGVsYXkgdG8gaTkxNV9wYW5lbF90aW1pbmdzCj4+ID4gYWxvbmcgd2l0
aCBvdGhlciBkZWxheXMuCj4+ID4gSXQgY2FuIGJlIHVzZSBieSBEQyBzdGF0ZSBJR1QgdG8gd2Fp
dCBmb3Igc3RyaWN0IHBvd2VyIGN5Y2xlIGRlbGF5Cj4+ID4gaW4gb3JkZXIgdG8gY2hlY2sgZm9y
IHZhcmlvdXMgREMgc3RhdGUgY291bnRlcnMuCj4+IAo+PiBDYXRjaGluZyB1cCBvbiByZXZpZXcs
IGFyZSB5b3Ugc3VnZ2VzdGluZyB0byBsb29rIGF0IHRoaXMga2luZCBvZgo+PiBkZWJ1Z2ZzIGZp
bGVzIGZvciB0ZXN0cz8gUGxlYXNlIGZpbmQgYW5vdGhlciB3YXkuCj4gQWN0dWFsbHkgb24gZmV3
IHBhbmVscyBwb3dlciBjeWNsZSBkZWxheSBpcyB0b28gbXVjaCB0aGF0IGl0IGlzIHJlcXVpcmVk
IAo+IHRvIHdhaXQgZm9yIDYgc2Vjb25kcyBpbiBpZ3QgZm9yIGFuIHRpbWVvdXQsIGJ1dCB0aGlz
IGNvdWxkIHJlYWxseSBhZmZlY3QKPiBDSSBleGVjdXRpb24gdGltZSBvbiBwYW5lbCB3aXRoIGxl
c3NlciBwb3dlciBjeWNsZSBkZWxheS4KPiAoaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3Nlcmllcy82ODQ3OC8pCj4gRm9yIHRoaXMgc3BlY2lmaWMgcmVhc29uIGkgdGhvdWdodCBp
dCBtYXkgYmUgZ29vZCB0byBleHBvc2UKPiBwYW5lbCBwb3dlciBjeWNsZSBkZWxheSB3aXRoIG90
aGVyIHBhbmVsIGRlbGF5IGFuZCB1c2UgdGhhdAo+IGluIGlndC4KCkZpeCB0aGUga2VybmVsIGRy
aXZlciB0byBEVFJUIGluc3RlYWQgb2YgZXhwb3NpbmcgdGhlIGd1dHMgYW5kIGhhdmluZwppZ3Qg
d29yayBhcm91bmQgaXQuCgpCUiwKSmFuaS4KCgo+IFRoYW5rcyAsCj4gQW5zaHVtYW4uCj4+IAo+
PiBJIGRvbid0IG1pbmQgaGF2aW5nIHRoZSBkZWJ1Z2ZzIGluZm8gcGVyIHNlLgo+PiAKPj4gQlIs
Cj4+IEphbmkuCj4+IAo+PiA+Cj4+ID4gQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNv
bT4KPj4gPiBTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50
ZWwuY29tPgo+PiA+IC0tLQo+PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMu
YyB8IDIgKysKPj4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+PiA+Cj4+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPj4gPiBpbmRleCBjYWI2MzI3OTFmNzMuLmMw
NzVjYzJiN2JiNSAxMDA2NDQKPj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rl
YnVnZnMuYwo+PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCj4+
ID4gQEAgLTQ0MzYsNiArNDQzNiw4IEBAIHN0YXRpYyBpbnQgaTkxNV9wYW5lbF9zaG93KHN0cnVj
dCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkKPj4gPiAgCQkgICBpbnRlbF9kcC0+cGFuZWxfcG93
ZXJfdXBfZGVsYXkpOwo+PiA+ICAJc2VxX3ByaW50ZihtLCAiUGFuZWwgcG93ZXIgZG93biBkZWxh
eTogJWRcbiIsCj4+ID4gIAkJICAgaW50ZWxfZHAtPnBhbmVsX3Bvd2VyX2Rvd25fZGVsYXkpOwo+
PiA+ICsJc2VxX3ByaW50ZihtLCAiUGFuZWwgcG93ZXIgY3ljbGUgZGVsYXk6ICVkXG4iLAo+PiA+
ICsJCSAgIGludGVsX2RwLT5wYW5lbF9wb3dlcl9jeWNsZV9kZWxheSk7Cj4+ID4gIAlzZXFfcHJp
bnRmKG0sICJCYWNrbGlnaHQgb24gZGVsYXk6ICVkXG4iLAo+PiA+ICAJCSAgIGludGVsX2RwLT5i
YWNrbGlnaHRfb25fZGVsYXkpOwo+PiA+ICAJc2VxX3ByaW50ZihtLCAiQmFja2xpZ2h0IG9mZiBk
ZWxheTogJWRcbiIsCj4+IAo+PiAtLSAKPj4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNl
IEdyYXBoaWNzIENlbnRlcgoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFw
aGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
