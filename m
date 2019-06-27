Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4FF15834C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 15:19:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 303A86E321;
	Thu, 27 Jun 2019 13:19:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 245EB6E321;
 Thu, 27 Jun 2019 13:19:21 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 06:19:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="153036143"
Received: from irsmsx151.ger.corp.intel.com ([163.33.192.59])
 by orsmga007.jf.intel.com with ESMTP; 27 Jun 2019 06:19:19 -0700
Received: from ahiler-desk1.fi.intel.com (10.237.68.151) by
 IRSMSX151.ger.corp.intel.com (163.33.192.59) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 27 Jun 2019 14:19:18 +0100
Date: Thu, 27 Jun 2019 16:19:16 +0300
From: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
To: "Ser, Simon" <simon.ser@intel.com>
Message-ID: <20190627131916.fpakdc3wzybfpwew@ahiler-desk1.fi.intel.com>
References: <20190618124221.62715-1-guillaume.tucker@collabora.com>
 <e166f58e-f7e2-f6a5-d78d-40cf1b6692db@collabora.com>
 <b59592bb3795f5aa6e48bdd6477b8ea0c0db6beb.camel@intel.com>
 <58f2692b-416e-fbdb-646e-b9f0e4fceaf4@collabora.com>
 <b2b545f267d8f9d99909f055b9979908100aff6c.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b2b545f267d8f9d99909f055b9979908100aff6c.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Patchwork-Hint: comment
User-Agent: NeoMutt/20180716
X-Originating-IP: [10.237.68.151]
Subject: Re: [Intel-gfx] [PATCH i-g-t v3 1/1] gitlab-ci: add build and tests
 for MIPS
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdW4gMjcsIDIwMTkgYXQgMDQ6MTQ6NTNQTSArMDMwMCwgU2VyLCBTaW1vbiB3cm90
ZToKPiBPbiBUaHUsIDIwMTktMDYtMjcgYXQgMTE6MDIgKzAxMDAsIEd1aWxsYXVtZSBUdWNrZXIg
d3JvdGU6Cj4gPiBPbiAyNy8wNi8yMDE5IDA4OjAyLCBTZXIsIFNpbW9uIHdyb3RlOgo+ID4gPiBP
biBUdWUsIDIwMTktMDYtMjUgYXQgMTQ6MDggKzAxMDAsIEd1aWxsYXVtZSBUdWNrZXIgd3JvdGU6
Cj4gPiA+ID4gT24gMTgvMDYvMjAxOSAxMzo0MiwgR3VpbGxhdW1lIFR1Y2tlciB3cm90ZToKPiA+
ID4gPiA+IEFkZCBEb2NrZXIgaW1hZ2UgYW5kIEdpdGxhYiBDSSBzdGVwcyB0byBydW4gYnVpbGRz
IGFuZCB0ZXN0cyBmb3IKPiA+ID4gPiA+IHRoZQo+ID4gPiA+ID4gTUlQUyBhcmNoaXRlY3R1cmUg
dXNpbmcgRGViaWFuIFN0cmV0Y2ggd2l0aCBiYWNrcG9ydHMuCj4gPiA+ID4gPiAKPiA+ID4gPiA+
IFNpZ25lZC1vZmYtYnk6IEd1aWxsYXVtZSBUdWNrZXIgPGd1aWxsYXVtZS50dWNrZXJAY29sbGFi
b3JhLmNvbT4KPiA+ID4gPiA+IC0tLQo+ID4gPiA+ID4gCj4gPiA+ID4gPiBOb3RlczoKPiA+ID4g
PiA+ICAgICB2MjogdXNlIHN0cmV0Y2gtYmFja3BvcnRzIGFuZCByZXF1aXJlIGxpYmF0b21pYzEK
PiA+ID4gPiA+ICAgICB2MzogYWRkIG1pcHMgY2kgdGVzdHMgYW5kIHJlcXVpcmUgRGViaWFuIGxp
YmF0b21pYzEgZm9yIG1pcHMKPiA+ID4gPiAKPiA+ID4gPiBUaGUgc2VyaWVzIHRvIHVzZSBwb3J0
YWJsZSBhdG9taWNzIGZ1bmN0aW9ucyB3YXMgbWVyZ2VkIHRvZGF5LCBzbwo+ID4gPiA+IEkgdGhp
bmsgdGhpcyBvbmUgc2hvdWxkIG5vdyBiZSBnb29kIHRvIGdvIGFzIHdlbGwuICBJdCBhcHBsaWVz
Cj4gPiA+ID4gY2xlYW5seSBvbiB0b3Agb2YgdGhlIGN1cnJlbnQgbWFzdGVyIGJyYW5jaCBhbmQg
dGhlIEdpdGxhYiBDSQo+ID4gPiA+IHBpcGVsaW5lIHBhc3NlZDoKPiA+ID4gPiAKPiA+ID4gPiAg
IAo+ID4gPiA+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9ndHVja2VyL2lndC1ncHUt
dG9vbHMvcGlwZWxpbmVzLzQ0NzA0Cj4gPiA+ID4gCj4gPiA+ID4gUGxlYXNlIGxldCBtZSBrbm93
IGlmIHlvdSB3YW50IG1lIHRvIHJlc3VibWl0IGl0IHRvIGdldCBhbm90aGVyCj4gPiA+ID4gUGF0
Y2h3b3JrIENJIHJ1biBvciBpZiBhbnl0aGluZyBlbHNlIG5lZWRzIHRvIGJlIGRvbmUuCj4gPiA+
IAo+ID4gPiBMR1RNIQo+ID4gPiAKPiA+ID4gUmV2aWV3ZWQtYnk6IFNpbW9uIFNlciA8c2ltb24u
c2VyQGludGVsLmNvbT4KPiA+ID4gCj4gPiA+IEFuZCBwdXNoZWQ6Cj4gPiA+IAo+ID4gPiBUbyBn
aXRsYWIuZnJlZWRlc2t0b3Aub3JnOmRybS9pZ3QtZ3B1LXRvb2xzLmdpdAo+ID4gPiAgICAxNWFk
NjY0NTM0NDEuLjQzOWE5ZjVkNjE1ZiAgbWFzdGVyIC0+IG1hc3Rlcgo+ID4gCj4gPiBUaGFua3Mh
Cj4gPiAKPiA+IEVyciwgaG93ZXZlciBpdCBsb29rcyBsaWtlIHlvdSBwdXNoZWQgdGhlIHYyIHdo
aWNoIGhhZCBvbmx5Cj4gPiBidWlsZHMgcmF0aGVyIHRoYW4gdGhpcyB2MyB3aGljaCBkb2VzIGJ1
aWxkcyBhbmQgdGVzdHM6Cj4gPiAKPiA+ICAgNDM5YTlmNWQ2MTVmIGdpdGxhYi1jaTogYWRkIGJ1
aWxkIGZvciBNSVBTCj4gPiAKPiA+IEkndmUgbWFkZSBhbm90aGVyIHBhdGNoIHdpdGggdGhlIGRp
ZmZlcmVuY2UgYmV0d2VlbiB2MiBhbmQgdjMgYW5kCj4gPiBwdXNoZWQgaXQgdG8gbXkgYnJhbmNo
Ogo+ID4gCj4gPiAgIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9ndHVja2VyL2lndC1n
cHUtdG9vbHMvY29tbWl0Lzk2OTNlMjg4NzFmMjdlZmI3MzQwYWQyOWQ1NGRlNGJlN2I1NDYxYTkK
PiA+IAo+ID4gSSdsbCB3YWl0IGZvciB0aGUgR2l0bGFiIENJIHBpcGVsaW5lIHRvIGNvbXBsZXRl
IGFuZCB0aGVuIEkgZ3Vlc3MKPiA+IEkgc2hvdWxkIHNlbmQgdGhhdCB0byB0aGUgbWFpbGluZyBs
aXN0Lgo+IAo+IEJsZWgsIEknbSBzb3JyeSBhYm91dCB0aGlzISBJdCBzZWVtcyBsaWtlIHBhdGNo
d29yayBnb3QgY29uZnVzZWQuCj4gCj4gSSdsbCBnbGFkbHkgcmV2aWV3IGFuZCBtZXJnZSBhIGZp
eCwgZmVlbCBmcmVlIHRvIENjIG1lIDopCgpUaGUgdGl0bGUgb2YgdGhlIGZpcnN0IHBhdGNoIGhh
cyBjaGFuZ2VkLCBzbyBwYXRjaHdvcmsgdHJlYXRzIGl0IGFzIGEKc2VwYXJhdGUgc2VyaWVzIGlu
c3RlYWQgb2YgYSByZXZpc2lvbiB0byBleGlzdGluZyBvbmUuCgpJdCdzIHNhZmVyIHRvIHRha2Ug
dGhlIHBhdGNod29yayBsaW5rcyAoYm90aCB0byBzZXJpZXMgYW5kIHRoZSBtYm94KQpmcm9tIHRo
ZSBDSSByZXN1bHRzIGluc3RlYWQgb2YgdHJ5aW5nIHRvIGJyb3dzZSBmb3IgdGhlbSB5b3Vyc2Vs
Zi4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
