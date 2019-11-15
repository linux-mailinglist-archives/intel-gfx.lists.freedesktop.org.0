Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89632FE228
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 17:00:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAE626E094;
	Fri, 15 Nov 2019 16:00:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E8126E907
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 16:00:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 08:00:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="195427387"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 15 Nov 2019 08:00:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Nov 2019 18:00:36 +0200
Date: Fri, 15 Nov 2019 18:00:36 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Peter Wu <peter@lekensteyn.nl>
Message-ID: <20191115160036.GG1208@intel.com>
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
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDAwODYKPiBTaWduZWQt
b2ZmLWJ5OiBQZXRlciBXdSA8cGV0ZXJAbGVrZW5zdGV5bi5ubD4KPiAtLS0KPiB2MTogaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvYXJjaGl2ZXMvaW50ZWwtZ2Z4LzIwMTgtQXVndXN0LzE3
MzUyMi5odG1sCj4gdjI6IHJlYmFzZWQgb24gY3VycmVudCBtYXN0ZXIgKDIuOTkuOTE3LTg5My1n
YmZmNWVjYTQpLCByZXdvcmRlZCBjb21taXQuCj4gCj4gVGhpcyBwYXRjaCBoYXMgYmVlbiB0ZXN0
ZWQgYXQgaHR0cHM6Ly9idWdzLmFyY2hsaW51eC5vcmcvdGFzay82NDIzOCwgSQo+IGhhdmUgYWRk
aXRpb25hbGx5IHRlc3RlZCBpdCB3aXRoIGJvdGggbW9kZXNldHRpbmcgYW5kIG5vdXZlYXUgdW5k
ZXIKPiBBU0FOLCB0aGUgbW9kZXNldHRpbmcgQVNBTiB0cmFjZSBmb3IgdW5wYXRjaGVkIGludGVs
IGNhbiBiZSBmb3VuZCBhdDoKPiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMDAwODYjYzI0Cj4gCj4gY29tbWl0IDIuOTkuOTE3LTg5MS1nNTgxZGRjNWQgKCJz
bmE6IEZpeCBjb21waWxlciB3YXJuaW5ncyBkdWUgdG8KPiBEcmF3YWJsZVB0ciB2cy4gUGl4bWFw
UHRyIikgaW5jb3Jwb3JhdGVkIGFsbCBjb21waWxlciB3YXJuaW5nIGZpeGVzIGZyb20KPiB2MSBv
ZiB0aGlzIHBhdGNoLCBidXQgdW5mb3J0dW5hdGVseSBsYWNrcyB0aGlzIGNydWNpYWwgYnVnZml4
Lgo+IC0tLQo+ICBzcmMvc25hL3NuYV9hY2NlbC5jIHwgNiArKystLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc3Jj
L3NuYS9zbmFfYWNjZWwuYyBiL3NyYy9zbmEvc25hX2FjY2VsLmMKPiBpbmRleCBmYTM4NmZmNi4u
ZWU4NTdhMTQgMTAwNjQ0Cj4gLS0tIGEvc3JjL3NuYS9zbmFfYWNjZWwuYwo+ICsrKyBiL3NyYy9z
bmEvc25hX2FjY2VsLmMKPiBAQCAtMTc2ODQsMTAgKzE3Njg0LDEwIEBAIHN0YXRpYyB2b2lkIHNu
YV9hY2NlbF9wb3N0X2RhbWFnZShzdHJ1Y3Qgc25hICpzbmEpCj4gIAkJCWNvbnRpbnVlOwo+ICAK
PiAgI2lmZGVmIEhBU19ESVJUWVRSQUNLSU5HX0RSQVdBQkxFX1NSQwo+IC0JCWFzc2VydChkaXJ0
eS0+c3JjLT50eXBlID09IERSQVdBQkxFX1BJWE1BUCk7Cj4gKwkJc3JjID0gZ2V0X2RyYXdhYmxl
X3BpeG1hcChkaXJ0eS0+c3JjKTsKPiArI2Vsc2UKPiArCQlzcmMgPSBkaXJ0eS0+c3JjOwoKTG9v
a3Mgc2Vuc2libGUgZW5vdWdoIHRvIG1lOgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gICNlbmRpZgo+IC0KPiAtCQlzcmMgPSAo
UGl4bWFwUHRyKWRpcnR5LT5zcmM7Cj4gIAkJZHN0ID0gZGlydHktPnNsYXZlX2RzdC0+bWFzdGVy
X3BpeG1hcDsKPiAgCj4gIAkJcmVnaW9uLmV4dGVudHMueDEgPSBkaXJ0eS0+eDsKPiAtLSAKPiAy
LjIzLjAKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
