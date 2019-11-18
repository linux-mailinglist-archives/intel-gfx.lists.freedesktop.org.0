Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E7D100884
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 16:45:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BD81897DC;
	Mon, 18 Nov 2019 15:45:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 532D1897DC
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 15:45:02 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 07:45:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,320,1569308400"; d="scan'208";a="209116796"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 18 Nov 2019 07:44:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 18 Nov 2019 17:44:58 +0200
Date: Mon, 18 Nov 2019 17:44:58 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Peter Wu <peter@lekensteyn.nl>
Message-ID: <20191118154458.GT1208@intel.com>
References: <20191115153247.372989-1-peter@lekensteyn.nl>
 <20191115181405.GJ1208@intel.com> <20191116161317.GA373905@al>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191116161317.GA373905@al>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH xf86-video-intel v2] SNA: fix PRIME output
 support since xserver 1.20
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

T24gU2F0LCBOb3YgMTYsIDIwMTkgYXQgMDU6MTM6MTdQTSArMDEwMCwgUGV0ZXIgV3Ugd3JvdGU6
Cj4gT24gRnJpLCBOb3YgMTUsIDIwMTkgYXQgMDg6MTQ6MDVQTSArMDIwMCwgVmlsbGUgU3lyasOk
bMOkIHdyb3RlOgo+ID4gT24gRnJpLCBOb3YgMTUsIDIwMTkgYXQgMDQ6MzI6NDdQTSArMDEwMCwg
UGV0ZXIgV3Ugd3JvdGU6Cj4gPiA+IFNpbmNlICJNYWtlIFBpeG1hcERpcnR5VXBkYXRlUmVjOjpz
cmMgYSBEcmF3YWJsZVB0ciIgaW4geHNlcnZlciwgdGhlCj4gPiA+ICJzcmMiIHBvaW50ZXIgbWln
aHQgcG9pbnQgdG8gdGhlIHJvb3Qgd2luZG93IChjcmVhdGVkIGJ5IHRoZSBzZXJ2ZXIpCj4gPiA+
IGluc3RlYWQgb2YgYSBwaXhtYXAgKGFzIGNyZWF0ZWQgYnkgeGY4Ni12aWRlby1pbnRlbCkuIFVz
ZQo+ID4gPiBnZXRfZHJhd2FibGVfcGl4bWFwIHRvIGhhbmRsZSBib3RoIGNhc2VzLgo+ID4gPiAK
PiA+ID4gV2hlbiBidWlsdCB3aXRoIC1mc2FuaXRpemU9YWRkcmVzcywgdGhlIGZvbGxvd2luZyB0
ZXN0IG9uIGEgaHlicmlkCj4gPiA+IGdyYXBoaWNzIGxhcHRvcCB3aWxsIHRyaWdnZXIgYSBoZWFw
LWJ1ZmZlci1vdmVyZmxvdyBlcnJvciBkdWUgdG8KPiA+ID4gdG9fc25hX2Zyb21fcGl4bWFwIHJl
Y2VpdmluZyBhIHdpbmRvdyBpbnN0ZWFkIG9mIGEgcGl4bWFwOgo+ID4gPiAKPiA+ID4gICAgIHhy
YW5kciAtLXNldHByb3ZpZGVyb3V0cHV0c291cmNlIG1vZGVzZXR0aW5nIEludGVsCj4gPiA+ICAg
ICB4cmFuZHIgLS1vdXRwdXQgRFAtMS0xIC0tbW9kZSAyNTYweDE0NDAgICMgc2hvdWxkIG5vdCBj
cmFzaAo+ID4gPiAgICAgZ2x4Z2VhcnMgICMgc2hvdWxkIGRpc3BsYXkgZ2VhcnMgb24gYm90aCBz
Y3JlZW5zCj4gPiA+IAo+ID4gPiBXaXRoIG5vdXZlYXUgaW5zdGVhZCBvZiBtb2Rlc2V0dGluZywg
aXQgZG9lcyBub3QgY3Jhc2ggYnV0IHRoZSBleHRlcm5hbAo+ID4gPiBtb25pdG9yIHJlbWFpbnMg
YmxhbmsgYXNpZGUgZnJvbSBhIG1vdXNlIGN1cnNvci4gVGhpcyBwYXRjaCBmaXhlcyBib3RoLgo+
ID4gPiAKPiA+ID4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19i
dWcuY2dpP2lkPTEwMDA4Ngo+ID4gCj4gPiBBbHNvCj4gPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExOTc2Cj4gCj4gSSBtYXJrZWQgdGhp
cyBidWcgYXMgZHVwbGljYXRlIG9mIHRoZSBmb3JtZXIgc2luY2UgaXQgaXMgdGhlIHNhbWUgaXNz
dWUuCj4gCj4gQWJvdXQgdGhlIENJIGZhaWx1cmUKPiAoaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvYXJjaGl2ZXMvaW50ZWwtZ2Z4LzIwMTktTm92ZW1iZXIvMjIwMTg3Lmh0bWwpLAo+IHNo
b3VsZCBJIGJlIGNvbmNlcm5lZD8gSSBjYW4ndCBzZWUgd2hhdCB0cmVlIGl0IGlzIHRyeWluZyB0
byBhcHBseSB0aGUKPiBwYXRjaCB0by4gSXMgaXQgYWN0dWFsbHkgdHJ5aW5nIHRvIGFwcGx5IGl0
IHRvIHhmODYtdmlkZW8taW50ZWwsIG9yIGlzCj4gaXQgdHJ5aW5nIHRoZSBMaW51eCBrZXJuZWwg
aW5zdGVhZD8KClllYWgsIEkgdGhpbmsgaXQncyB0cnlpbmcgdG8gYXBwbHkgaXQgdG8gdGhlIGtl
cm5lbC4gV2UgaGF2ZSBubyBDSQpmb3IgdGhlIGRkeCB1bmZvcnR1bmF0ZWx5LgoKPiAKPiA+ID4g
U2lnbmVkLW9mZi1ieTogUGV0ZXIgV3UgPHBldGVyQGxla2Vuc3RleW4ubmw+Cj4gPiA+IC0tLQo+
ID4gPiB2MTogaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvYXJjaGl2ZXMvaW50ZWwtZ2Z4
LzIwMTgtQXVndXN0LzE3MzUyMi5odG1sCj4gPiA+IHYyOiByZWJhc2VkIG9uIGN1cnJlbnQgbWFz
dGVyICgyLjk5LjkxNy04OTMtZ2JmZjVlY2E0KSwgcmV3b3JkZWQgY29tbWl0Lgo+ID4gPiAKPiA+
ID4gVGhpcyBwYXRjaCBoYXMgYmVlbiB0ZXN0ZWQgYXQgaHR0cHM6Ly9idWdzLmFyY2hsaW51eC5v
cmcvdGFzay82NDIzOCwgSQo+ID4gPiBoYXZlIGFkZGl0aW9uYWxseSB0ZXN0ZWQgaXQgd2l0aCBi
b3RoIG1vZGVzZXR0aW5nIGFuZCBub3V2ZWF1IHVuZGVyCj4gPiA+IEFTQU4sIHRoZSBtb2Rlc2V0
dGluZyBBU0FOIHRyYWNlIGZvciB1bnBhdGNoZWQgaW50ZWwgY2FuIGJlIGZvdW5kIGF0Ogo+ID4g
PiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDAwODYjYzI0
Cj4gPiA+IAo+ID4gPiBjb21taXQgMi45OS45MTctODkxLWc1ODFkZGM1ZCAoInNuYTogRml4IGNv
bXBpbGVyIHdhcm5pbmdzIGR1ZSB0bwo+ID4gPiBEcmF3YWJsZVB0ciB2cy4gUGl4bWFwUHRyIikg
aW5jb3Jwb3JhdGVkIGFsbCBjb21waWxlciB3YXJuaW5nIGZpeGVzIGZyb20KPiA+ID4gdjEgb2Yg
dGhpcyBwYXRjaCwgYnV0IHVuZm9ydHVuYXRlbHkgbGFja3MgdGhpcyBjcnVjaWFsIGJ1Z2ZpeC4K
PiA+ID4gLS0tCj4gPiA+ICBzcmMvc25hL3NuYV9hY2NlbC5jIHwgNiArKystLS0KPiA+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gPiA+IAo+ID4g
PiBkaWZmIC0tZ2l0IGEvc3JjL3NuYS9zbmFfYWNjZWwuYyBiL3NyYy9zbmEvc25hX2FjY2VsLmMK
PiA+ID4gaW5kZXggZmEzODZmZjYuLmVlODU3YTE0IDEwMDY0NAo+ID4gPiAtLS0gYS9zcmMvc25h
L3NuYV9hY2NlbC5jCj4gPiA+ICsrKyBiL3NyYy9zbmEvc25hX2FjY2VsLmMKPiA+ID4gQEAgLTE3
Njg0LDEwICsxNzY4NCwxMCBAQCBzdGF0aWMgdm9pZCBzbmFfYWNjZWxfcG9zdF9kYW1hZ2Uoc3Ry
dWN0IHNuYSAqc25hKQo+ID4gPiAgCQkJY29udGludWU7Cj4gPiA+ICAKPiA+ID4gICNpZmRlZiBI
QVNfRElSVFlUUkFDS0lOR19EUkFXQUJMRV9TUkMKPiA+ID4gLQkJYXNzZXJ0KGRpcnR5LT5zcmMt
PnR5cGUgPT0gRFJBV0FCTEVfUElYTUFQKTsKPiA+ID4gKwkJc3JjID0gZ2V0X2RyYXdhYmxlX3Bp
eG1hcChkaXJ0eS0+c3JjKTsKPiA+ID4gKyNlbHNlCj4gPiA+ICsJCXNyYyA9IGRpcnR5LT5zcmM7
Cj4gPiA+ICAjZW5kaWYKPiA+ID4gLQo+ID4gPiAtCQlzcmMgPSAoUGl4bWFwUHRyKWRpcnR5LT5z
cmM7Cj4gPiA+ICAJCWRzdCA9IGRpcnR5LT5zbGF2ZV9kc3QtPm1hc3Rlcl9waXhtYXA7Cj4gPiA+
ICAKPiA+ID4gIAkJcmVnaW9uLmV4dGVudHMueDEgPSBkaXJ0eS0+eDsKPiA+ID4gLS0gCj4gPiA+
IDIuMjMuMAo+ID4gCj4gPiAtLSAKPiA+IFZpbGxlIFN5cmrDpGzDpAo+ID4gSW50ZWwKCi0tIApW
aWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
