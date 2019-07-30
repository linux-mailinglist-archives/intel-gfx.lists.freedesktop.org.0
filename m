Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F3E7AD83
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 18:27:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EEFB89388;
	Tue, 30 Jul 2019 16:27:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9717689388
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 16:27:11 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 029C4206A2;
 Tue, 30 Jul 2019 16:27:10 +0000 (UTC)
Date: Tue, 30 Jul 2019 18:27:09 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20190730162709.GA28503@kroah.com>
References: <20190719004526.B0CC521850@mail.kernel.org>
 <20190722231325.16615-1-dhinakaran.pandiyan@intel.com>
 <20190724120657.GG3244@kroah.com>
 <05339e812e35a4cf1811f26a06bd5a4d1d652407.camel@intel.com>
 <20190724174029.GC30776@intel.com>
 <20190730151908.GA21970@intel.com>
 <20190730152724.GB31590@kroah.com>
 <20190730162207.GA18653@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730162207.GA18653@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1564504031;
 bh=fFuSpQUWjc0Ef0LsV3a7IbKLp9X/xqjY4c3lzx/G50I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=P/RwUJ+bvAGIAlot3M9xCYthro/5VCVHX2EBBJVWqbGasZvXFpD8B2rJWa7K18RFo
 rLvxYcd+/so0UNlWbB+kiXCEZlmUz2CIxcJeW5tAhVyrnjwacQAe98QIptXXm8RWWu
 gpIaIPMCsgTrZ5Pm8U9bWhQ40T8WrRXJ0T9/UjHI=
Subject: Re: [Intel-gfx] [PATCH stable v5.2] drm/i915/vbt: Fix VBT parsing
 for the PSR section
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
Cc: "sashal@kernel.org" <sashal@kernel.org>,
 Jani Nikula <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>, "Pandiyan,
 Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgMDk6MjI6MDdBTSAtMDcwMCwgUm9kcmlnbyBWaXZpIHdy
b3RlOgo+IE9uIFR1ZSwgSnVsIDMwLCAyMDE5IGF0IDA1OjI3OjI0UE0gKzAyMDAsIEdyZWcgS0gg
d3JvdGU6Cj4gPiBPbiBUdWUsIEp1bCAzMCwgMjAxOSBhdCAwODoxOTowOEFNIC0wNzAwLCBSb2Ry
aWdvIFZpdmkgd3JvdGU6Cj4gPiA+IEhpIEdyZWcsCj4gPiA+IAo+ID4gPiBPbiBXZWQsIEp1bCAy
NCwgMjAxOSBhdCAxMDo0MDoyOUFNIC0wNzAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6Cj4gPiA+ID4g
T24gV2VkLCBKdWwgMjQsIDIwMTkgYXQgMDU6Mjc6NDJQTSArMDAwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gPiA+ID4gPiBPbiBXZWQsIDIwMTktMDctMjQgYXQgMTQ6MDYgKzAyMDAsIEdyZWcgS0gg
d3JvdGU6Cj4gPiA+ID4gPiA+IE9uIE1vbiwgSnVsIDIyLCAyMDE5IGF0IDA0OjEzOjI1UE0gLTA3
MDAsIERoaW5ha2FyYW4gUGFuZGl5YW4gd3JvdGU6Cj4gPiA+ID4gPiA+ID4gQSBzaW5nbGUgMzIt
Yml0IFBTUjIgdHJhaW5pbmcgcGF0dGVybiBmaWVsZCBmb2xsb3dzIHRoZSBzaXh0ZWVuCj4gPiA+
ID4gPiA+ID4gZWxlbWVudAo+ID4gPiA+ID4gPiA+IGFycmF5IG9mIFBTUiB0YWJsZSBlbnRyaWVz
IGluIHRoZSBWQlQgc3BlYy4gQnV0LCB3ZSBpbmNvcnJlY3RseQo+ID4gPiA+ID4gPiA+IGRlZmlu
ZQo+ID4gPiA+ID4gPiA+IHRoaXMgUFNSMiBmaWVsZCBmb3IgZWFjaCBvZiB0aGUgUFNSIHRhYmxl
IGVudHJpZXMuIEFzIGEgcmVzdWx0LCB0aGUKPiA+ID4gPiA+ID4gPiBQU1IxCj4gPiA+ID4gPiA+
ID4gdHJhaW5pbmcgcGF0dGVybiBkdXJhdGlvbiBmb3IgYW55IHBhbmVsX3R5cGUgIT0gMCB3aWxs
IGJlIHBhcnNlZAo+ID4gPiA+ID4gPiA+IGluY29ycmVjdGx5LiBTZWNvbmRseSwgUFNSMiB0cmFp
bmluZyBwYXR0ZXJuIGR1cmF0aW9ucyBmb3IgVkJUcwo+ID4gPiA+ID4gPiA+IHdpdGggYmRiCj4g
PiA+ID4gPiA+ID4gdmVyc2lvbiA+PSAyMjYgd2lsbCBhbHNvIGJlIHdyb25nLgo+ID4gPiA+ID4g
PiA+IAo+ID4gPiA+ID4gPiA+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5j
b20+Cj4gPiA+ID4gPiA+ID4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFA
aW50ZWwuY29tPgo+ID4gPiA+ID4gPiA+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4gPiA+
ID4gPiA+ID4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcgI3Y1LjIKPiA+ID4gPiA+ID4gPiBG
aXhlczogODhhMGQ5NjA2YWZmICgiZHJtL2k5MTUvdmJ0OiBQYXJzZSBhbmQgdXNlIHRoZSBuZXcg
ZmllbGQKPiA+ID4gPiA+ID4gPiB3aXRoIFBTUjIgVFAyLzMgd2FrZXVwIHRpbWUiKQo+ID4gPiA+
ID4gPiA+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMTEwODgKPiA+ID4gPiA+ID4gPiBCdWd6aWxsYTogaHR0cHM6Ly9idWd6aWxsYS5rZXJu
ZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0yMDQxODMKPiA+ID4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5
OiBEaGluYWthcmFuIFBhbmRpeWFuIDxkaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4KPiA+
ID4gPiA+ID4gPiBSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KPiA+ID4gPiA+ID4gPiBSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gPiA+ID4gPiA+ID4gQWNrZWQtYnk6IFJv
ZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiA+ID4gPiA+ID4gPiBUZXN0ZWQt
Ynk6IEZyYW7Dp29pcyBHdWVycmF6IDxrdWJyaWNrQGZndjYubmV0Pgo+ID4gPiA+ID4gPiA+IFNp
Z25lZC1vZmYtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiA+ID4g
PiA+ID4gPiBMaW5rOiAKPiA+ID4gPiA+ID4gPiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3Rv
cC5vcmcvcGF0Y2gvbXNnaWQvMjAxOTA3MTcyMjM0NTEuMjU5NS0xLWRoaW5ha2FyYW4ucGFuZGl5
YW5AaW50ZWwuY29tCj4gPiA+ID4gPiA+ID4gKGNoZXJyeSBwaWNrZWQgZnJvbSBjb21taXQKPiA+
ID4gPiA+ID4gPiBiNWVhOWM5MzM3MDA3ZDZlNzAwMjgwYzhhNjBiNGUxMGQwNzBmYjUzKQo+ID4g
PiA+ID4gPiAKPiA+ID4gPiA+ID4gVGhlcmUgaXMgbm8gc3VjaCBjb21taXQgaW4gTGludXMncyBr
ZXJuZWwgdHJlZSA6KAo+ID4gPiA+IAo+ID4gPiA+IG5vdCB5ZXQuLi4gSXQgaXMgcXVldWVkIGZv
ciA1LjMgb24gZHJtLWludGVsLW5leHQtcXVldWVkLgo+ID4gPiA+IAo+ID4gPiA+IFRoaXMgbGlu
ZSBpcyBhdXRvbWF0aWNhbGx5IGFkZGVkIGJ5ICJkaW0iIHRvb2wgd2hlbgo+ID4gPiA+IGNoZXJy
eS1waWNraW5nIHF1ZXVlZCBzdHVmZiBmb3Igb3VyIGRybS1pbnRlbCBmaXhlcyBicmFuY2hlcy4K
PiA+ID4gCj4gPiA+IFdoYXQgZG8geW91IG5lZWQgaGVyIGZyb20gdXMgdG8gYWNjZXB0IHRoaXMg
cGF0Y2g/Cj4gPiAKPiA+IFVtLCB5b3UgaGF2ZSByZWFkIHRoZSBzdGFibGUga2VybmVsIHJ1bGVz
LCByaWdodD8KPiA+ICAgICBodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL2xhdGVzdC9w
cm9jZXNzL3N0YWJsZS1rZXJuZWwtcnVsZXMuaHRtbAo+ID4KPiA+IFRoYXQncyB3aGF0IEkgbmVl
ZCBmb3IgaXQgdG8gZ28gaW50byBhIHN0YWJsZSBrZXJuZWwgcmVsZWFzZS4KPiAKPiBZZXMsIEkg
aGF2ZSByZWFkIGl0LiBNYXliZSB3aGF0IEkgZG9uJ3QgdW5kZXJzdGFuZCBpcyBqdXN0IHRoZSBm
YWN0IHRoYXQgd2Ugd2lsbAo+IGxldCBjdXN0b21lcnMgZmFjaW5nIGlzc3VlcyBmb3IgNiB3ZWVr
cyBvciBtb3JlIHdoaWxlIHRoZSBvcmlnaW5hbCBwYXRjaAo+IGRvZXNuJ3QgbGFuZCBvbiBMaW51
cyB0cmVlLiA6KAoKVGhlbiBnZXQgdGhlIHBhdGNoIGludG8gTGludXMncyB0cmVlIQpOb3RoaW5n
IEkgY2FuIGRvIHVudGlsIHRoYXQgaGFwcGVucywgeW91IGtub3cgdGhpcy4uLgoKZ3JlZyBrLWgK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
