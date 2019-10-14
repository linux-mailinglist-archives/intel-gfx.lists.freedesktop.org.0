Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCACFD5D29
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 10:11:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E517789DED;
	Mon, 14 Oct 2019 08:11:12 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CEF389DED
 for <Intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 08:11:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 01:11:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,295,1566889200"; d="scan'208";a="207922570"
Received: from vkuppusa-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.39.77])
 by fmsmga001.fm.intel.com with ESMTP; 14 Oct 2019 01:11:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Sean Paul <sean@poorly.run>
In-Reply-To: <20191011193023.GV85762@art_vandelay>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <6669486b-fd2d-276a-645f-ae374bf2578a@redhat.com>
 <878spshgeb.fsf@intel.com> <20191011193023.GV85762@art_vandelay>
Date: Mon, 14 Oct 2019 11:12:04 +0300
Message-ID: <87d0ezd9uz.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] Does the i915 VBT tell us if a panel is an OLED
 panel?
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
Cc: Christian Kellner <ckellner@redhat.com>, Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxMSBPY3QgMjAxOSwgU2VhbiBQYXVsIDxzZWFuQHBvb3JseS5ydW4+IHdyb3RlOgo+
IE9uIFRodSwgT2N0IDEwLCAyMDE5IGF0IDA0OjM1OjU2UE0gKzAzMDAsIEphbmkgTmlrdWxhIHdy
b3RlOgo+PiBPbiBUaHUsIDEwIE9jdCAyMDE5LCBIYW5zIGRlIEdvZWRlIDxoZGVnb2VkZUByZWRo
YXQuY29tPiB3cm90ZToKPj4gPiBIaSBKYW5pLAo+PiA+Cj4+ID4gRHVyaW5nIHBsdW1iZXJzIEkg
aGFkIHNvbWUgZGlzY3Vzc2lvbnMgd2l0aCBEYW5pZWwgYWJvdXQgc3VwcG9ydGluZwo+PiA+IE9M
RUQgc2NyZWVucy4gVXNlcnNwYWNlIG1heSBuZWVkIHRvIGtub3cgdGhhdCBhIHBhbmVsIGlzIE9M
RUQgZm9yIDIKPj4gPiByZWFzb25zOgo+PiA+Cj4+ID4gMSkgVG8gYXZvaWQgc2NyZWVuIGJ1cm4t
aW4KPj4gPiAyKSBPTEVEIHNjcmVlbnMgZG8gbm90IGhhdmUgYSBjbGFzc2ljIGJhY2tsaWdodCwg
c28gaW4gc29tZSBjYXNlcwo+PiA+IHNvbWUgc29ydCBvZiBicmlnaHRuZXNzL2NvbnRyYXN0IGVt
dWxhdGlvbiB0aHJvdWdoIGdhbW1hIHRhYmxlcyBtYXkKPj4gPiBiZSBuZWNlc3NhcnkgdG8gc3Rp
bGwgYWxsb3cgdGhlIHVzZXIgdG8gY29udHJvbCB0aGUgYnJpZ2h0bmVzcy4KPj4gCj4+IEknZCB0
aGluayBtb3N0IE9MRUQgZGlzcGxheXMgaGF2ZSBhIG5hdGl2ZSB3YXkgdG8gY29udHJvbAo+PiBi
cmlnaHRuZXNzLiBTb21lIGVEUCBwYW5lbHMgY2FuIHVzZSB0aGUgZURQIFBXTSBwaW4gdG8gY29u
dHJvbAo+PiBicmlnaHRuZXNzLCBhbHRob3VnaCBpdCBkb2VzIG5vdCBkaXJlY3RseSBkcml2ZSBh
biBhY3R1YWwgYmFja2xpZ2h0LCBhbmQKPj4gc29tZSBvdGhlcnMgdXNlIHRoZSBlRFAgc3RhbmRh
cmQgRFBDRCBicmlnaHRuZXNzIGNvbnRyb2wKPj4gbWV0aG9kcy4gU2ltaWxhcmx5LCBPTEVEIERT
SSBkaXNwbGF5cyBoYXZlIERDUyBjb21tYW5kcyBmb3IgdGhpcy4KPj4gCj4+IE9mdGVuIEkndmUg
c2VlbiB2YXJpb3VzIGNvbnRlbnQgYWRhcHRpdmUgYnJpZ2h0bmVzcyBzZXR0aW5ncyBjb21iaW5l
ZAo+PiB3aXRoIHRoZSBPTEVEIGJyaWdodG5lc3MgY29udHJvbCwgc28gaXQgY2FuIGJlIG1vcmUg
cG93ZXIgZWZmaWNpZW50IHRoYW4KPj4gdXNpbmcgZ2FtbWEuCj4+IAo+PiA+IFRoZSBpZGVhIHdl
J3ZlIGRpc2N1c3NlZCBpcyB0byBhZGQgYSBwcm9wZXJ0eSBvbiB0aGUgZHJtX2Nvbm5lY3Rvcgo+
PiA+IChkZXRhaWxzIHRvIGJlIGZpbGxlZCBpbikgd2hpY2ggaW5kaWNhdGVzIHRoYXQgdGhlIHBh
bmVsIGlzIGFuIE9MRUQKPj4gPiBwYW5lbC4KPj4gPgo+PiA+IFRoaXMgaGFzIGxlYWQgdG8gdGhl
IHF1ZXN0aW9uOiAiaG93IGRvIHdlIGtub3cgdGhlIHBhbmVsIGlzIE9MRUQiPwo+PiA+Cj4+ID4g
RG8geW91IGtub3cgaWYgdGhpcyBpbmZvIGlzIGNvZGVkIGludG8gdGhlIFZCVCBzb21ld2hlcmU/
Cj4+IAo+PiBOb3QgQUZBSUNULiBCdXQgdGhlcmUgaXMgdGhlIGluZGljYXRpb24gb2YgdGhlIGJy
aWdodG5lc3MgY29udHJvbAo+PiBtZXRob2QsIGFuZCBvbmUgb3B0aW9uIGlzIHRoZSBlRFAgQVVY
IGludGVyZmFjZS4gSSBmYXRob20gaXQncyBlbnRpcmVseQo+PiBwb3NzaWJsZSBmb3IgcGFuZWxz
IHRvIHVzZSB0aGUgZURQIEFVWCBpbnRlcmZhY2UgZm9yIGNvbnRyb2xsaW5nIGFuIExDRAo+PiBi
YWNrbGlnaHQsIHNvIHRoaXMgZG9lcyBub3QgZGlyZWN0bHkgdHJhbnNsYXRlIHRvIE9MRUQuCj4+
IAo+PiBIb3dldmVyLCB0aGUgRGlzcGxheUlEIHNwZWMgaGFzIERpc3BsYXkgRGV2aWNlIERhdGEg
YmxvY2sgKDB4MGMpIHRoYXQKPj4gY29udGFpbnMgRGlzcGxheSBEZXZpY2UgVGVjaG5vbG9neSBi
eXRlLCBpbmNsdWRpbmcgYSB2YWx1ZSBmb3IgT3JnYW5pYwo+PiBMRUQvT0VMLiBJIGhhdmVuJ3Qg
YWN0dWFsbHkgY2hlY2tlZCBhbnkgT0xFRCBkaXNwbGF5cyBpZiB0aGV5IGhhdmUgdGhpcwo+PiBv
ciBub3QsIGFuZCB3ZSBkb24ndCBjdXJyZW50bHkgcGFyc2UgaXQgaW4gZHJtLCBidXQgdGhpcyBz
ZWVtcyBsaWtlIGEKPj4gYmV0dGVyIG9wdGlvbiB0aGFuIFZCVC4gTW9yZW92ZXIsIHRoaXMgaXMg
dXNhYmxlIGFsc28gZm9yIHJlZ3VsYXIgRFAsCj4+IHdoaWNoIHNob3VsZCBiZSBhcyBpbXBvcnRh
bnQgYXMgZURQIGZvciB0aGUgYnVybi1pbiBhdm9pZGFuY2UuCj4KPiBPbmUgZGF0YXBvaW50OiBJ
IGhhdmUgYW4gZURQIE9MRUQgcGFuZWwgYW5kIGl0IGRvZXMgbm90IHNlZW0gdG8gaGF2ZQo+IERp
c3BsYXlJRCBleHRlbnNpb25zLgoKRG9lcyB0aGUgRFBDRCBzYXkgaXQgc3VwcG9ydHMgYmFja2xp
Z2h0IGNvbnRyb2wgdGhyb3VnaCBEUCBBVVg/CgpCUiwKSmFuaS4KCgo+Cj4gU2Vhbgo+Cj4+IAo+
PiBCUiwKPj4gSmFuaS4KPj4gCj4+IAo+PiAtLSAKPj4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4g
U291cmNlIEdyYXBoaWNzIENlbnRlcgoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJj
ZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
