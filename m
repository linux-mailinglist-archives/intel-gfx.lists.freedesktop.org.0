Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B03FE4B0
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 19:14:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F17A6EA27;
	Fri, 15 Nov 2019 18:14:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 100F46EA27
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 18:14:10 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 10:14:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,309,1569308400"; d="scan'208";a="257827550"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 15 Nov 2019 10:14:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Nov 2019 20:14:05 +0200
Date: Fri, 15 Nov 2019 20:14:05 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Peter Wu <peter@lekensteyn.nl>
Message-ID: <20191115181405.GJ1208@intel.com>
References: <20191115153247.372989-1-peter@lekensteyn.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115153247.372989-1-peter@lekensteyn.nl>
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

T24gRnJpLCBOb3YgMTUsIDIwMTkgYXQgMDQ6MzI6NDdQTSArMDEwMCwgUGV0ZXIgV3Ugd3JvdGU6
Cj4gU2luY2UgIk1ha2UgUGl4bWFwRGlydHlVcGRhdGVSZWM6OnNyYyBhIERyYXdhYmxlUHRyIiBp
biB4c2VydmVyLCB0aGUKPiAic3JjIiBwb2ludGVyIG1pZ2h0IHBvaW50IHRvIHRoZSByb290IHdp
bmRvdyAoY3JlYXRlZCBieSB0aGUgc2VydmVyKQo+IGluc3RlYWQgb2YgYSBwaXhtYXAgKGFzIGNy
ZWF0ZWQgYnkgeGY4Ni12aWRlby1pbnRlbCkuIFVzZQo+IGdldF9kcmF3YWJsZV9waXhtYXAgdG8g
aGFuZGxlIGJvdGggY2FzZXMuCj4gCj4gV2hlbiBidWlsdCB3aXRoIC1mc2FuaXRpemU9YWRkcmVz
cywgdGhlIGZvbGxvd2luZyB0ZXN0IG9uIGEgaHlicmlkCj4gZ3JhcGhpY3MgbGFwdG9wIHdpbGwg
dHJpZ2dlciBhIGhlYXAtYnVmZmVyLW92ZXJmbG93IGVycm9yIGR1ZSB0bwo+IHRvX3NuYV9mcm9t
X3BpeG1hcCByZWNlaXZpbmcgYSB3aW5kb3cgaW5zdGVhZCBvZiBhIHBpeG1hcDoKPiAKPiAgICAg
eHJhbmRyIC0tc2V0cHJvdmlkZXJvdXRwdXRzb3VyY2UgbW9kZXNldHRpbmcgSW50ZWwKPiAgICAg
eHJhbmRyIC0tb3V0cHV0IERQLTEtMSAtLW1vZGUgMjU2MHgxNDQwICAjIHNob3VsZCBub3QgY3Jh
c2gKPiAgICAgZ2x4Z2VhcnMgICMgc2hvdWxkIGRpc3BsYXkgZ2VhcnMgb24gYm90aCBzY3JlZW5z
Cj4gCj4gV2l0aCBub3V2ZWF1IGluc3RlYWQgb2YgbW9kZXNldHRpbmcsIGl0IGRvZXMgbm90IGNy
YXNoIGJ1dCB0aGUgZXh0ZXJuYWwKPiBtb25pdG9yIHJlbWFpbnMgYmxhbmsgYXNpZGUgZnJvbSBh
IG1vdXNlIGN1cnNvci4gVGhpcyBwYXRjaCBmaXhlcyBib3RoLgo+IAo+IEJ1Z3ppbGxhOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDAwODYKCkFsc28KQnVn
emlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTk3
NgoKPiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBXdSA8cGV0ZXJAbGVrZW5zdGV5bi5ubD4KPiAtLS0K
PiB2MTogaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvYXJjaGl2ZXMvaW50ZWwtZ2Z4LzIw
MTgtQXVndXN0LzE3MzUyMi5odG1sCj4gdjI6IHJlYmFzZWQgb24gY3VycmVudCBtYXN0ZXIgKDIu
OTkuOTE3LTg5My1nYmZmNWVjYTQpLCByZXdvcmRlZCBjb21taXQuCj4gCj4gVGhpcyBwYXRjaCBo
YXMgYmVlbiB0ZXN0ZWQgYXQgaHR0cHM6Ly9idWdzLmFyY2hsaW51eC5vcmcvdGFzay82NDIzOCwg
SQo+IGhhdmUgYWRkaXRpb25hbGx5IHRlc3RlZCBpdCB3aXRoIGJvdGggbW9kZXNldHRpbmcgYW5k
IG5vdXZlYXUgdW5kZXIKPiBBU0FOLCB0aGUgbW9kZXNldHRpbmcgQVNBTiB0cmFjZSBmb3IgdW5w
YXRjaGVkIGludGVsIGNhbiBiZSBmb3VuZCBhdDoKPiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMDAwODYjYzI0Cj4gCj4gY29tbWl0IDIuOTkuOTE3LTg5MS1n
NTgxZGRjNWQgKCJzbmE6IEZpeCBjb21waWxlciB3YXJuaW5ncyBkdWUgdG8KPiBEcmF3YWJsZVB0
ciB2cy4gUGl4bWFwUHRyIikgaW5jb3Jwb3JhdGVkIGFsbCBjb21waWxlciB3YXJuaW5nIGZpeGVz
IGZyb20KPiB2MSBvZiB0aGlzIHBhdGNoLCBidXQgdW5mb3J0dW5hdGVseSBsYWNrcyB0aGlzIGNy
dWNpYWwgYnVnZml4Lgo+IC0tLQo+ICBzcmMvc25hL3NuYV9hY2NlbC5jIHwgNiArKystLS0KPiAg
MSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvc3JjL3NuYS9zbmFfYWNjZWwuYyBiL3NyYy9zbmEvc25hX2FjY2VsLmMKPiBpbmRl
eCBmYTM4NmZmNi4uZWU4NTdhMTQgMTAwNjQ0Cj4gLS0tIGEvc3JjL3NuYS9zbmFfYWNjZWwuYwo+
ICsrKyBiL3NyYy9zbmEvc25hX2FjY2VsLmMKPiBAQCAtMTc2ODQsMTAgKzE3Njg0LDEwIEBAIHN0
YXRpYyB2b2lkIHNuYV9hY2NlbF9wb3N0X2RhbWFnZShzdHJ1Y3Qgc25hICpzbmEpCj4gIAkJCWNv
bnRpbnVlOwo+ICAKPiAgI2lmZGVmIEhBU19ESVJUWVRSQUNLSU5HX0RSQVdBQkxFX1NSQwo+IC0J
CWFzc2VydChkaXJ0eS0+c3JjLT50eXBlID09IERSQVdBQkxFX1BJWE1BUCk7Cj4gKwkJc3JjID0g
Z2V0X2RyYXdhYmxlX3BpeG1hcChkaXJ0eS0+c3JjKTsKPiArI2Vsc2UKPiArCQlzcmMgPSBkaXJ0
eS0+c3JjOwo+ICAjZW5kaWYKPiAtCj4gLQkJc3JjID0gKFBpeG1hcFB0cilkaXJ0eS0+c3JjOwo+
ICAJCWRzdCA9IGRpcnR5LT5zbGF2ZV9kc3QtPm1hc3Rlcl9waXhtYXA7Cj4gIAo+ICAJCXJlZ2lv
bi5leHRlbnRzLngxID0gZGlydHktPng7Cj4gLS0gCj4gMi4yMy4wCgotLSAKVmlsbGUgU3lyasOk
bMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
