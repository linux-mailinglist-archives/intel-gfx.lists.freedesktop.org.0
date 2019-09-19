Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB008B7A33
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 15:10:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A3026EBBA;
	Thu, 19 Sep 2019 13:10:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBF9C6EBBA
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 13:10:22 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 06:10:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,523,1559545200"; d="scan'208";a="202281238"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 19 Sep 2019 06:10:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2019 16:10:18 +0300
Date: Thu, 19 Sep 2019 16:10:18 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Sean Paul <sean@poorly.run>
Message-ID: <20190919131018.GT1208@intel.com>
References: <20190905135044.2001-2-ville.syrjala@linux.intel.com>
 <20190918150707.32420-1-ville.syrjala@linux.intel.com>
 <20190918152409.GQ218215@art_vandelay>
 <20190918160218.GO1208@intel.com>
 <20190918202106.GT218215@art_vandelay>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918202106.GT218215@art_vandelay>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915: Don't advertise modes that
 exceed the max plane size
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
Cc: Leho Kraav <leho@kraav.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgMTgsIDIwMTkgYXQgMDQ6MjE6MDZQTSAtMDQwMCwgU2VhbiBQYXVsIHdyb3Rl
Ogo+IE9uIFdlZCwgU2VwIDE4LCAyMDE5IGF0IDA3OjAyOjE4UE0gKzAzMDAsIFZpbGxlIFN5cmrD
pGzDpCB3cm90ZToKPiA+IE9uIFdlZCwgU2VwIDE4LCAyMDE5IGF0IDExOjI0OjA5QU0gLTA0MDAs
IFNlYW4gUGF1bCB3cm90ZToKPiA+ID4gT24gV2VkLCBTZXAgMTgsIDIwMTkgYXQgMDY6MDc6MDdQ
TSArMDMwMCwgVmlsbGUgU3lyamFsYSB3cm90ZToKPiA+ID4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gPiA+IAo+ID4gPiA+IE1vZGVy
biBwbGF0Zm9ybXMgYWxsb3cgdGhlIHRyYW5zY29kZXJzIGhkaXNwbGF5L3ZkaXNwbGF5IHRvIGV4
Y2VlZCB0aGUKPiA+ID4gPiBwbGFuZXMnIG1heCByZXNvbHV0aW9uLiBUaGlzIGhhcyB0aGUgbmFz
dHkgaW1wbGljYXRpb24gdGhhdCBtb2RlcyBvbiB0aGUKPiA+ID4gPiBjb25uZWN0b3JzJyBtb2Rl
IGxpc3QgbWF5IG5vdCBiZSB1c2FibGUgd2hlbiB0aGUgdXNlciBhc2tzIGZvciBhCj4gPiA+ID4g
ZnVsbHNjcmVlbiBwbGFuZS4gU2VlaW5nIGFzIHRoYXQgaXMgdGhlIG1vc3QgY29tbW9uIHVzZSBj
YXNlIGl0IHNlZW1zCj4gPiA+ID4gcHJ1ZGVudCB0byBmaWx0ZXIgb3V0IG1vZGVzIHRoYXQgZG9u
J3QgYWxsb3cgZm9yIGZ1bGxzY3JlZW4gcGxhbmVzIHRvCj4gPiA+ID4gYmUgZW5hYmxlZC4KPiA+
ID4gPiAKPiA+ID4gPiBMZXQncyBkbyB0aGF0IGluIHRoZSBjb25uZXRvciAubW9kZV92YWxpZCgp
IGhvb2sgc28gdGhhdCBub3JtYWxseQo+ID4gPiA+IHN1Y2ggbW9kZXMgYXJlIGtlcHQgaGlkZGVu
IGJ1dCB0aGUgdXNlciBpcyBzdGlsbCBhYmxlIHRvIGZvcmNpYmx5Cj4gPiA+ID4gc3BlY2lmeSBz
dWNoIGEgbW9kZSBpZiB0aGV5IGtub3cgdGhleSBkb24ndCBuZWVkIGZ1bGxzY3JlZW4gcGxhbmVz
Lgo+ID4gPiA+IAo+ID4gPiA+IFRoaXMgaXMgaW4gbGluZSB3aXRoIGVhbGllciBwb2xpY2llcyBy
ZWdhcmRpbmcgY2VydGFpbiBjbG9jayBsaW1pdHMuCj4gPiA+ID4gVGhlIGlkZWEgaXMgdG8gcHJl
dmVudCB0aGUgY2FzdWFsIHVzZXIgZnJvbSBlbmNvdW50ZXJpbmcgYSBtb2RlIHRoYXQKPiA+ID4g
PiB3b3VsZCBmYWlsIHVuZGVyIHR5cGljYWwgY29uZGl0aW9ucywgYnV0IGFsbG93IHRoZSBleHBl
cnQgdXNlciB0bwo+ID4gPiA+IGZvcmNlIHRoaW5ncyBpZiB0aGV5IHNvIHdpc2guCj4gPiA+IAo+
ID4gPiBJc24ndCB0aGlzIGV4YWN0bHkgd2hhdCBhdG9taWNfY2hlY2sgaXMgZm9yPyBXaHkgbm90
IGp1c3QgYWRkIGEgZGVidWcgbWVzc2FnZSBpbgo+ID4gPiBnZXRfbWF4X3BsYW5lX3NpemUgdG8g
bGVhdmUgYSBicmVhZGNydW1iPwo+ID4gCj4gPiBUaGVyZSdzIGFscmVhZHkgYSBkZWJ1ZyBtZXNz
YWdlLiBXb24ndCByZWFsbHkgaGVscCB3aGVuIHRoZSBzY3JlZW4gZmFpbHMKPiA+IHRvIGxpZ2h0
IHVwIGF1dG9tYWdpY2FsbHkgb24gYWNjb3VudCBvZiB0aGUgcHJlZmVycmVkIG1vZGUgYmVpbmcg
dG9vCj4gPiBiaWcuCj4gCj4gVGhhdCdzIG5vdCB0aGUga2VybmVsJ3MgZmF1bHQsIHdoeSBhcmUg
d2Ugd29ya2luZyBhcm91bmQgaXQgYXQgdGhpcyBsZXZlbD8gVGhlcmUKPiBhcmUgbG90cyBvZiBy
ZWFzb25zIGJleW9uZCBtYXggcGxhbmUgc2l6ZSB0aGF0IGNhbiBjYXVzZSBhIG1vZGVzZXQgdG8g
ZmFpbC4gSWYKPiB1c2Vyc3BhY2UgZG9lc24ndCBhbHJlYWR5IGhhdmUgdGhlIHNtYXJ0cyB0byBm
YWxsYmFjayB0byBhIGxvd2VyIHJlc29sdXRpb24gb24KPiBtb2Rlc2V0IGZhaWx1cmUsIHdlIHNo
b3VsZCBmaXggaXQgb3IganVzdCDCr1xfKOODhClfL8KvCgpTdXJlLCB1c2Vyc3BhY2UgKGFuZCBm
Yl9oZWxwZXIpIHNob3VsZCBiZSBzbWFydGVyIGFib3V0IHRoaXMuClVuZm9ydHVuYXRlbHkgSSBk
b24ndCBoYXZlIGEgdGltZSBtYWNoaW5lIHRvIGRlcGxveSBzdWNoIGEgYmFja3BvcnQKc28gdGhp
cyBpcyB0aGUgYmVzdCBJIGNhbiBkbyBmb3IgY3VycmVudCB1c2Vyc3BhY2UuCgotLSAKVmlsbGUg
U3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
