Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E142AB08F5
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 08:41:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 549076EB55;
	Thu, 12 Sep 2019 06:41:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 520066EB55
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 06:41:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 23:41:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,495,1559545200"; d="scan'208";a="200679988"
Received: from zyu27-mobl.ger.corp.intel.com (HELO localhost) ([10.252.37.40])
 by fmsmga001.fm.intel.com with ESMTP; 11 Sep 2019 23:40:59 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
In-Reply-To: <20190911162756.GA5131@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190909034325.20006-1-manasi.d.navare@intel.com>
 <87pnk81ouo.fsf@intel.com> <20190910180729.GB31258@intel.com>
 <20190910211907.GA32065@intel.com> <87r24nurnz.fsf@intel.com>
 <20190911162756.GA5131@intel.com>
Date: Thu, 12 Sep 2019 09:42:11 +0300
Message-ID: <87y2yut3r0.fsf@intel.com>
MIME-Version: 1.0
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

T24gV2VkLCAxMSBTZXAgMjAxOSwgTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVs
LmNvbT4gd3JvdGU6Cj4gT24gV2VkLCBTZXAgMTEsIDIwMTkgYXQgMTI6MDg6MDBQTSArMDMwMCwg
SmFuaSBOaWt1bGEgd3JvdGU6Cj4+IE9uIFR1ZSwgMTAgU2VwIDIwMTksIE1hbmFzaSBOYXZhcmUg
PG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+IHdyb3RlOgo+PiA+IE9uIFR1ZSwgU2VwIDEwLCAy
MDE5IGF0IDExOjA3OjMwQU0gLTA3MDAsIE1hbmFzaSBOYXZhcmUgd3JvdGU6Cj4+ID4+IE9uIFR1
ZSwgU2VwIDEwLCAyMDE5IGF0IDEyOjI5OjE5UE0gKzAzMDAsIEphbmkgTmlrdWxhIHdyb3RlOgo+
PiA+PiA+IE9uIFN1biwgMDggU2VwIDIwMTksIE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFy
ZUBpbnRlbC5jb20+IHdyb3RlOgo+PiA+PiA+ID4gVGhpcyBwYXRjaCBzZXJpZXMgYWRkcmVzc2Vz
IGFsbCByZXZpZXcgY29tbWVudHMgYW5kIG5vdyB0aGUgZW5hYmxlIGFuZAo+PiA+PiA+ID4gZGlz
YWJsZSBwYXRocyBmb2xsb3cgdGhlIG1ldGhvZCBvZiBvYnRhaW5pbmcgc2xhdmUgc3RhdGVzIGZy
b20gbWFzdGVyCj4+ID4+ID4gPiBhbmQgdXBkYXRpbmcgbWFzdGVyLXNsYXZlcyBpbiBjb3JyZWN0
IG9yZGVyIGR1cmluZyBtYXN0ZXIgbW9kZXNldC4KPj4gPj4gPiAKPj4gPj4gPiBNYWluIGhpZ2gg
bGV2ZWwgcXVlc3Rpb246IHdoYXQgZG9lcyBpdCB0YWtlIHRvIGVuYWJsZSB0aGlzIG9uIGdlbjkr
Pwo+PiA+PiAKPj4gPj4gQXMgcGVyIHRoZSBCc3BlYyBwcm9qZWN0IHBsYXRmb3JtcywgdGhlIGZp
cnN0IHBsYXRmb3JtIHRoYXQgc3VwcG9ydHMgdGhpcyBpcwo+PiA+PiBJQ0wKPj4gPgo+PiA+IEhp
IEphbmksCj4+ID4KPj4gPiBBcHBhcmVudGx5IHRoZSBCc3BlYyBjYXVzZWQgc29tZSBjb25mdXNp
b24sIGFmdGVyIGRvdWJsZSBjaGVja2luZyB3aXRoIHRoZQo+PiA+IEhXIHRlYW1zIGhlcmUsIHRo
aXMgZmVhdHVyZSBpcyBlbmFibGVkIHN0YXJ0aW5nIEJEVyBmb3IgdGhlIFNTVCBjb25uZWN0b3Jz
Cj4+ID4gYW5kIG9ubHkgdGhlIE1TVCBzdXBwb3J0IGlzIG5ldyB0byBHZW4gMTErLgo+PiA+Cj4+
ID4gU28gaSBndWVzcyBJIGNhbiBjaGFuZ2UgdGhlIHBhdGNoZXMgdG8gYWRkIHN1cHBvcnQgc3Rh
cnRpbmcgQkRXIGFuZAo+PiA+IHRoaXMgc2hvdWxkIGFsc28gZml4IHRoZSA1SyB0aWxlZCBkaXNw
bGF5IGlzc3VlIHRoYXQgQW5raXQgaGFzIGJlZW4KPj4gPiB3b3JraW5nIG9uCj4+IAo+PiBUaGFu
a3MhIEkgZG9uJ3QgbWluZCBnZXR0aW5nIHRoZSBwYXRjaGVzIG1lcmdlZCBmb3IgSUNMKyBhdCBm
aXJzdCwgYW5kCj4+IHVwZGF0aW5nIHRvIGNvdmVyIG9sZGVyIGdlbnMgaW4gZm9sbG93LXVwLgo+
Cj4gU28geW91IGFyZSBzdWdnZXN0aW5nIHRoYXQgaSBrZWVwIHRoZSBwYXRjaGVzIGFzIGlzIGFu
ZCBoYXZlIHRoZW0gZ2V0Cj4gbWVyZ2VkIGZpcnN0IGFuZCB0aGVuIGkgY291bGQgY2hhbmdlIHRo
ZSBHRU4gY2hlY2tzIHRvIGFkZCBzdXBwb3J0IGZvcgo+IEJEVys/CgpJJ20gc2F5aW5nIGl0J3Mg
dXAgdG8geW91LiBXaGF0ZXZlciBtYWtlcyBtb3N0IHNlbnNlIHRvIHlvdS4gSWYgeW91J3JlCmF0
IHRoZSBicmluayBvZiBnZXR0aW5nIHRoZSBJQ0wgcGF0Y2hlcyBtZXJnZWQsIHRoZXJlJ3Mgbm90
IG11Y2ggcG9pbnQKaW4gcmVoYXNoaW5nIGFuZCBkZWxheWluZyB0aGF0LCBpcyB0aGVyZT8KCkJS
LApKYW5pLgoKCj4KPiBSZWdhcmRzCj4gTWFuYXNpCj4KPj4gCj4+IEJSLAo+PiBKYW5pLgo+PiAK
Pj4gCj4+ID4KPj4gPiBNYW5hc2kKPj4gPgo+PiA+PiAKPj4gPj4gUmVnYXJkcwo+PiA+PiBNYW5h
c2kKPj4gPj4gCj4+ID4+ID4gCj4+ID4+ID4gQlIsCj4+ID4+ID4gSmFuaS4KPj4gPj4gPiAKPj4g
Pj4gPiAKPj4gPj4gPiAtLSAKPj4gPj4gPiBKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2Ug
R3JhcGhpY3MgQ2VudGVyCj4+ID4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+ID4+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPj4gPj4gSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+PiA+PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo+PiAKPj4gLS0gCj4+IEphbmkgTmlrdWxhLCBJ
bnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwg
T3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
