Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A00B147A
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 20:33:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF17B6EDF5;
	Thu, 12 Sep 2019 18:33:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A59C6EDF5
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 18:33:29 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 11:33:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="176047783"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga007.jf.intel.com with ESMTP; 12 Sep 2019 11:33:29 -0700
Date: Thu, 12 Sep 2019 11:35:00 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20190912183500.GA3257@intel.com>
References: <20190909034325.20006-1-manasi.d.navare@intel.com>
 <87pnk81ouo.fsf@intel.com> <20190910180729.GB31258@intel.com>
 <20190910211907.GA32065@intel.com> <87r24nurnz.fsf@intel.com>
 <20190911162756.GA5131@intel.com> <87y2yut3r0.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87y2yut3r0.fsf@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 0/6] Remaining patches to enable Transcoder
 Port Sync for tiled displays
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

T24gVGh1LCBTZXAgMTIsIDIwMTkgYXQgMDk6NDI6MTFBTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gT24gV2VkLCAxMSBTZXAgMjAxOSwgTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJl
QGludGVsLmNvbT4gd3JvdGU6Cj4gPiBPbiBXZWQsIFNlcCAxMSwgMjAxOSBhdCAxMjowODowMFBN
ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiA+PiBPbiBUdWUsIDEwIFNlcCAyMDE5LCBNYW5h
c2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPiB3cm90ZToKPiA+PiA+IE9uIFR1
ZSwgU2VwIDEwLCAyMDE5IGF0IDExOjA3OjMwQU0gLTA3MDAsIE1hbmFzaSBOYXZhcmUgd3JvdGU6
Cj4gPj4gPj4gT24gVHVlLCBTZXAgMTAsIDIwMTkgYXQgMTI6Mjk6MTlQTSArMDMwMCwgSmFuaSBO
aWt1bGEgd3JvdGU6Cj4gPj4gPj4gPiBPbiBTdW4sIDA4IFNlcCAyMDE5LCBNYW5hc2kgTmF2YXJl
IDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPiB3cm90ZToKPiA+PiA+PiA+ID4gVGhpcyBwYXRj
aCBzZXJpZXMgYWRkcmVzc2VzIGFsbCByZXZpZXcgY29tbWVudHMgYW5kIG5vdyB0aGUgZW5hYmxl
IGFuZAo+ID4+ID4+ID4gPiBkaXNhYmxlIHBhdGhzIGZvbGxvdyB0aGUgbWV0aG9kIG9mIG9idGFp
bmluZyBzbGF2ZSBzdGF0ZXMgZnJvbSBtYXN0ZXIKPiA+PiA+PiA+ID4gYW5kIHVwZGF0aW5nIG1h
c3Rlci1zbGF2ZXMgaW4gY29ycmVjdCBvcmRlciBkdXJpbmcgbWFzdGVyIG1vZGVzZXQuCj4gPj4g
Pj4gPiAKPiA+PiA+PiA+IE1haW4gaGlnaCBsZXZlbCBxdWVzdGlvbjogd2hhdCBkb2VzIGl0IHRh
a2UgdG8gZW5hYmxlIHRoaXMgb24gZ2VuOSs/Cj4gPj4gPj4gCj4gPj4gPj4gQXMgcGVyIHRoZSBC
c3BlYyBwcm9qZWN0IHBsYXRmb3JtcywgdGhlIGZpcnN0IHBsYXRmb3JtIHRoYXQgc3VwcG9ydHMg
dGhpcyBpcwo+ID4+ID4+IElDTAo+ID4+ID4KPiA+PiA+IEhpIEphbmksCj4gPj4gPgo+ID4+ID4g
QXBwYXJlbnRseSB0aGUgQnNwZWMgY2F1c2VkIHNvbWUgY29uZnVzaW9uLCBhZnRlciBkb3VibGUg
Y2hlY2tpbmcgd2l0aCB0aGUKPiA+PiA+IEhXIHRlYW1zIGhlcmUsIHRoaXMgZmVhdHVyZSBpcyBl
bmFibGVkIHN0YXJ0aW5nIEJEVyBmb3IgdGhlIFNTVCBjb25uZWN0b3JzCj4gPj4gPiBhbmQgb25s
eSB0aGUgTVNUIHN1cHBvcnQgaXMgbmV3IHRvIEdlbiAxMSsuCj4gPj4gPgo+ID4+ID4gU28gaSBn
dWVzcyBJIGNhbiBjaGFuZ2UgdGhlIHBhdGNoZXMgdG8gYWRkIHN1cHBvcnQgc3RhcnRpbmcgQkRX
IGFuZAo+ID4+ID4gdGhpcyBzaG91bGQgYWxzbyBmaXggdGhlIDVLIHRpbGVkIGRpc3BsYXkgaXNz
dWUgdGhhdCBBbmtpdCBoYXMgYmVlbgo+ID4+ID4gd29ya2luZyBvbgo+ID4+IAo+ID4+IFRoYW5r
cyEgSSBkb24ndCBtaW5kIGdldHRpbmcgdGhlIHBhdGNoZXMgbWVyZ2VkIGZvciBJQ0wrIGF0IGZp
cnN0LCBhbmQKPiA+PiB1cGRhdGluZyB0byBjb3ZlciBvbGRlciBnZW5zIGluIGZvbGxvdy11cC4K
PiA+Cj4gPiBTbyB5b3UgYXJlIHN1Z2dlc3RpbmcgdGhhdCBpIGtlZXAgdGhlIHBhdGNoZXMgYXMg
aXMgYW5kIGhhdmUgdGhlbSBnZXQKPiA+IG1lcmdlZCBmaXJzdCBhbmQgdGhlbiBpIGNvdWxkIGNo
YW5nZSB0aGUgR0VOIGNoZWNrcyB0byBhZGQgc3VwcG9ydCBmb3IKPiA+IEJEVys/Cj4gCj4gSSdt
IHNheWluZyBpdCdzIHVwIHRvIHlvdS4gV2hhdGV2ZXIgbWFrZXMgbW9zdCBzZW5zZSB0byB5b3Uu
IElmIHlvdSdyZQo+IGF0IHRoZSBicmluayBvZiBnZXR0aW5nIHRoZSBJQ0wgcGF0Y2hlcyBtZXJn
ZWQsIHRoZXJlJ3Mgbm90IG11Y2ggcG9pbnQKPiBpbiByZWhhc2hpbmcgYW5kIGRlbGF5aW5nIHRo
YXQsIGlzIHRoZXJlPwoKWWVzIEkgYWdyZWUsIHRoYW5rcyBhIGxvdCBKYW5pIGZvciB5b3VyIGlu
cHV0cy9zdWdnZXN0aW9ucy4gSSB3aWxsIHB1c2ggZm9yIHRoZQpyZXZpZXdzIG9uIHRoZXNlIGZv
ciBJQ0wrIGFuZCBnZXQgdGhlc2UgbWVyZ2VkIGZpcnN0LgoKTWFuYXNpCgo+IAo+IEJSLAo+IEph
bmkuCj4gCj4gCj4gPgo+ID4gUmVnYXJkcwo+ID4gTWFuYXNpCj4gPgo+ID4+IAo+ID4+IEJSLAo+
ID4+IEphbmkuCj4gPj4gCj4gPj4gCj4gPj4gPgo+ID4+ID4gTWFuYXNpCj4gPj4gPgo+ID4+ID4+
IAo+ID4+ID4+IFJlZ2FyZHMKPiA+PiA+PiBNYW5hc2kKPiA+PiA+PiAKPiA+PiA+PiA+IAo+ID4+
ID4+ID4gQlIsCj4gPj4gPj4gPiBKYW5pLgo+ID4+ID4+ID4gCj4gPj4gPj4gPiAKPiA+PiA+PiA+
IC0tIAo+ID4+ID4+ID4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENl
bnRlcgo+ID4+ID4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gPj4gPj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+ID4+ID4+IEludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKPiA+PiA+PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo+ID4+IAo+ID4+IC0tIAo+ID4+IEphbmkgTmlrdWxh
LCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKPiAKPiAtLSAKPiBKYW5pIE5pa3Vs
YSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
