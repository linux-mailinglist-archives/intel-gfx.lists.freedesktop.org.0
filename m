Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B62B76D371
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 20:05:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D09DE6E44C;
	Thu, 18 Jul 2019 18:05:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F41396E44C
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 18:04:59 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jul 2019 11:04:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,279,1559545200"; d="scan'208";a="169925652"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 18 Jul 2019 11:04:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 18 Jul 2019 21:04:56 +0300
Date: Thu, 18 Jul 2019 21:04:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190718180456.GE5942@intel.com>
References: <20190717114536.22937-1-ville.syrjala@linux.intel.com>
 <156346986821.24728.11327521093920045776@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156346986821.24728.11327521093920045776@skylake-alporthouse-com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Make sure cdclk is high enough
 for DP audio on VLV/CHV
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
Cc: intel-gfx@lists.freedesktop.org, Stefan Gottwald <gottwald@igel.com>,
 stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdWwgMTgsIDIwMTkgYXQgMDY6MTE6MDhQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgVmlsbGUgU3lyamFsYSAoMjAxOS0wNy0xNyAxMjo0NTozNikKPiA+IEZy
b206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiAK
PiA+IE9uIFZMVi9DSFYgdGhlcmUgaXMgc29tZSBraW5kIG9mIGxpbmthZ2UgYmV0d2VlbiB0aGUg
Y2RjbGsgZnJlcXVlbmN5Cj4gPiBhbmQgdGhlIERQIGxpbmsgZnJlcXVlbmN5LiBUaGUgc3BlYyBz
YXlzOgo+ID4gIkZvciBEUCBhdWRpbyBjb25maWd1cmF0aW9uLCBjZGNsayBmcmVxdWVuY3kgc2hh
bGwgYmUgc2V0IHRvCj4gPiAgbWVldCB0aGUgZm9sbG93aW5nIHJlcXVpcmVtZW50czoKPiA+ICBE
UCBMaW5rIEZyZXF1ZW5jeShNSHopIHwgQ2RjbGsgZnJlcXVlbmN5KE1IeikKPiA+ICAyNzAgICAg
ICAgICAgICAgICAgICAgIHwgMzIwIG9yIGhpZ2hlcgo+ID4gIDE2MiAgICAgICAgICAgICAgICAg
ICAgfCAyMDAgb3IgaGlnaGVyIgo+ID4gCj4gPiBJIHN1c3BlY3QgdGhhdCB3b3VsZCBtb3JlIGFj
Y3VyYXRlbHkgYmUgZXhwcmVzc2VkIGFzCj4gPiAiY2RjbGsgPj0gRFAgbGluayBjbG9jayIsIGFu
ZCBpbiBhbnkgY2FzZSB3ZSBjYW4gZXhwcmVzcyBpdCBsaWtlCj4gPiB0aGF0IGluIHRoZSBjb2Rl
IGJlY2F1c2Ugb2YgdGhlIGxpbWl0ZWQgc2V0IG9mIGNkY2xrIGFuZCBsaW5rCj4gPiBmcmVxdWVu
Y2llcyB3ZSBzdXBwb3J0Lgo+ID4gCj4gPiBXaXRob3V0IHRoaXMgd2UgY2FuIGVuZCB1cCBpbiBh
IHNpdHVhdGlvbiB3aGVyZSB0aGUgY2RjbGsKPiA+IGlzIHRvbyBsb3cgYW5kIGVuYWJsaW5nIERQ
IGF1ZGlvIHdpbGwga2lsbCB0aGUgcGlwZS4gSGFwcGVucwo+ID4gZWcuIHdpdGggMjU2MHgxNDQw
IG1vZGVzIHdoZXJlIHRoZSAyNjZNSHogY2RjbGsgaXMgc3VmZmljaWVudAo+ID4gdG8gcHVtcCB0
aGUgcGl4ZWxzICgyNDEuNSBNSHogZG90Y2xvY2spIGJ1dCBpcyB0b28gbG93IGZvcgo+ID4gdGhl
IERQIGF1ZGlvIGR1ZSB0byB0aGUgbGluayBmcmVxdWVuY3kgYmVpbmcgMjcwIE1Iei4KPiA+IAo+
ID4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiA+IFRlc3RlZC1ieTogU3RlZmFuIEdvdHR3
YWxkIDxnb3R0d2FsZEBpZ2VsLmNvbT4KPiA+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTExNDkKPiA+IFNpZ25lZC1vZmYtYnk6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCAxMSArKysrKysrKysr
Kwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKPiA+IGluZGV4IGQwNTgxYTFhYzI0
My4uOTNiMGQxOTBjMTg0IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jZGNsay5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2NkY2xrLmMKPiA+IEBAIC0yMjYyLDYgKzIyNjIsMTcgQEAgaW50IGludGVsX2NydGNf
Y29tcHV0ZV9taW5fY2RjbGsoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUpCj4gPiAgICAgICAgIGlmIChjcnRjX3N0YXRlLT5oYXNfYXVkaW8gJiYgSU5URUxfR0VOKGRl
dl9wcml2KSA+PSA5KQo+ID4gICAgICAgICAgICAgICAgIG1pbl9jZGNsayA9IG1heCgyICogOTYw
MDAsIG1pbl9jZGNsayk7Cj4gPiAgCj4gPiArICAgICAgIC8qCj4gPiArICAgICAgICAqICJGb3Ig
RFAgYXVkaW8gY29uZmlndXJhdGlvbiwgY2RjbGsgZnJlcXVlbmN5IHNoYWxsIGJlIHNldCB0bwo+
ID4gKyAgICAgICAgKiAgbWVldCB0aGUgZm9sbG93aW5nIHJlcXVpcmVtZW50czoKPiA+ICsgICAg
ICAgICogIERQIExpbmsgRnJlcXVlbmN5KE1IeikgfCBDZGNsayBmcmVxdWVuY3koTUh6KQo+ID4g
KyAgICAgICAgKiAgMjcwICAgICAgICAgICAgICAgICAgICB8IDMyMCBvciBoaWdoZXIKPiA+ICsg
ICAgICAgICogIDE2MiAgICAgICAgICAgICAgICAgICAgfCAyMDAgb3IgaGlnaGVyIgo+ID4gKyAg
ICAgICAgKi8KPiA+ICsgICAgICAgaWYgKChJU19WQUxMRVlWSUVXKGRldl9wcml2KSB8fCBJU19D
SEVSUllWSUVXKGRldl9wcml2KSkgJiYKPiA+ICsgICAgICAgICAgIGludGVsX2NydGNfaGFzX2Rw
X2VuY29kZXIoY3J0Y19zdGF0ZSkgJiYgY3J0Y19zdGF0ZS0+aGFzX2F1ZGlvKQo+ID4gKyAgICAg
ICAgICAgICAgIG1pbl9jZGNsayA9IG1heChjcnRjX3N0YXRlLT5wb3J0X2Nsb2NrLCBtaW5fY2Rj
bGspOwo+IAo+IEkgdHJhY2tlZCBwb3J0X2Nsb2NrIGRvd24gdG8gYmVpbmcgdGhlIGRwIGxpbmsg
Y2xvY2sgKDE2MiBvciAyNzApIHNvCj4gdGhhdCBwYXJ0IG9mIHRoZSBzdG9yeSBjaGVja3Mgb3V0
Lgo+IAo+IEp1ZGdpbmcgYnkgdGhlIHJlc3Qgb2YgdGhlIGZ1bmN0aW9uLCBJIGJ1eSB0aGF0IHRo
ZSBjZGNsayBhbmQgbGluayBjbG9jawo+IG1heSBiZSBpbnNjcnV0YWJseSB0aWVkIHRvZ2V0aGVy
LCBhbmQgYWNjZXB0IHRoZSB0ZXN0IHJlc3VsdCB0aGF0IHRoZQo+IGNkY2xrIG11c3QgYmUgYXQg
bGVhc3QgdGhlIGxpbmsgY2xvY2sgd2l0aCBhdWRpbyBlbmFibGVkLgo+IAo+IEl0IG1heSBiZSB0
aGF0IGEgY29ybmVyIGNhc2UgZG9lcyByZXF1aXJlIGEgaGlnaGVyIGZyZXF1ZW5jeSAocmF0aGVy
Cj4gdGhhbiBqdXN0IGJ1bXBpbmcgZnJvbSAyNjYgdG8gMjcwKSwgYnV0IGZvciBoZXJlIGFuZCBu
b3cKClllYWggdGhlcmUgY291bGQgYmUgc29tZSBleHRyYSBoZWFkcm9vbSByZXF1aXJlZC4gQnV0
IG91ciBjZGNsawpjYW4gb25seSBiZSAyMDAsIDI2NiwgMzIwIG9yIDQwMCBNSHogKGFuZCAyMDAg
d29uJ3QgYWN0dWFsbHkgZ2V0IHVzZWQKZHVlIHRvIGluZXhwbGljYWJsZSBkaXNwbGF5IGZhaWx1
cmUgd2hlbiB0cnkgdG8gdXNlIGl0KS4gU28gaW4gcHJhY3RpY2UKd2UgZ29pbmcgdG8gYWN0dWFs
bHkgZ2V0IGJ1bXBlZCAxNjItPjI2NiBhbmQgMjcwLT4zMjAgaGVyZS4gSSBzaG91bGQKaGF2ZSBl
eHByZXNzZWQgdGhhdCBiZXR0ZXIgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLgoKPiBBY2tlZC1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpUaGFua3MuIEkgYW1lbmRl
ZCB0aGUgZXhwbGFuYXRpb24gYSBiaXQgYW5kIHB1c2hlZCB0byBkaW5xLgoKLS0gClZpbGxlIFN5
cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
