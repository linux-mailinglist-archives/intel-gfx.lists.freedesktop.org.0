Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D70D97AC58
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 17:27:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AE406E598;
	Tue, 30 Jul 2019 15:27:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3A7D6E598
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 15:27:28 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1BABE206E0;
 Tue, 30 Jul 2019 15:27:27 +0000 (UTC)
Date: Tue, 30 Jul 2019 17:27:24 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20190730152724.GB31590@kroah.com>
References: <20190719004526.B0CC521850@mail.kernel.org>
 <20190722231325.16615-1-dhinakaran.pandiyan@intel.com>
 <20190724120657.GG3244@kroah.com>
 <05339e812e35a4cf1811f26a06bd5a4d1d652407.camel@intel.com>
 <20190724174029.GC30776@intel.com>
 <20190730151908.GA21970@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730151908.GA21970@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1564500448;
 bh=ARWovAtvDYFgdCMxhR0wGmJLh08PeKXgvSRjCyUtfi0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=l0Zz+PVUY6FoxzZtz+A4dN6q0ZKkFHQ/TA7SaDehdEnhVWL0iSitVi3VKLP9tMFOv
 EBwzsZhYQJHqGYcDwETj4QzXpUXUy53PyYhSXeo1fFpFCN0HHc7Qj+iKK4nYJpbjTv
 VO2EdX9oTlziH1vKYCBInWp8fpwM362GwV8E5Eb8=
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

T24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgMDg6MTk6MDhBTSAtMDcwMCwgUm9kcmlnbyBWaXZpIHdy
b3RlOgo+IEhpIEdyZWcsCj4gCj4gT24gV2VkLCBKdWwgMjQsIDIwMTkgYXQgMTA6NDA6MjlBTSAt
MDcwMCwgUm9kcmlnbyBWaXZpIHdyb3RlOgo+ID4gT24gV2VkLCBKdWwgMjQsIDIwMTkgYXQgMDU6
Mjc6NDJQTSArMDAwMCwgU291emEsIEpvc2Ugd3JvdGU6Cj4gPiA+IE9uIFdlZCwgMjAxOS0wNy0y
NCBhdCAxNDowNiArMDIwMCwgR3JlZyBLSCB3cm90ZToKPiA+ID4gPiBPbiBNb24sIEp1bCAyMiwg
MjAxOSBhdCAwNDoxMzoyNVBNIC0wNzAwLCBEaGluYWthcmFuIFBhbmRpeWFuIHdyb3RlOgo+ID4g
PiA+ID4gQSBzaW5nbGUgMzItYml0IFBTUjIgdHJhaW5pbmcgcGF0dGVybiBmaWVsZCBmb2xsb3dz
IHRoZSBzaXh0ZWVuCj4gPiA+ID4gPiBlbGVtZW50Cj4gPiA+ID4gPiBhcnJheSBvZiBQU1IgdGFi
bGUgZW50cmllcyBpbiB0aGUgVkJUIHNwZWMuIEJ1dCwgd2UgaW5jb3JyZWN0bHkKPiA+ID4gPiA+
IGRlZmluZQo+ID4gPiA+ID4gdGhpcyBQU1IyIGZpZWxkIGZvciBlYWNoIG9mIHRoZSBQU1IgdGFi
bGUgZW50cmllcy4gQXMgYSByZXN1bHQsIHRoZQo+ID4gPiA+ID4gUFNSMQo+ID4gPiA+ID4gdHJh
aW5pbmcgcGF0dGVybiBkdXJhdGlvbiBmb3IgYW55IHBhbmVsX3R5cGUgIT0gMCB3aWxsIGJlIHBh
cnNlZAo+ID4gPiA+ID4gaW5jb3JyZWN0bHkuIFNlY29uZGx5LCBQU1IyIHRyYWluaW5nIHBhdHRl
cm4gZHVyYXRpb25zIGZvciBWQlRzCj4gPiA+ID4gPiB3aXRoIGJkYgo+ID4gPiA+ID4gdmVyc2lv
biA+PSAyMjYgd2lsbCBhbHNvIGJlIHdyb25nLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBDYzogUm9k
cmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+ID4gPiA+ID4gQ2M6IEpvc8OpIFJv
YmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+ID4gPiA+ID4gQ2M6IHN0YWJs
ZUB2Z2VyLmtlcm5lbC5vcmcKPiA+ID4gPiA+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnICN2
NS4yCj4gPiA+ID4gPiBGaXhlczogODhhMGQ5NjA2YWZmICgiZHJtL2k5MTUvdmJ0OiBQYXJzZSBh
bmQgdXNlIHRoZSBuZXcgZmllbGQKPiA+ID4gPiA+IHdpdGggUFNSMiBUUDIvMyB3YWtldXAgdGlt
ZSIpCj4gPiA+ID4gPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9MTExMDg4Cj4gPiA+ID4gPiBCdWd6aWxsYTogaHR0cHM6Ly9idWd6aWxsYS5r
ZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0yMDQxODMKPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6
IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPgo+ID4g
PiA+ID4gUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Cj4gPiA+ID4gPiBSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gPiA+ID4gPiBBY2tlZC1ieTogUm9kcmlnbyBWaXZpIDxy
b2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+ID4gPiA+ID4gVGVzdGVkLWJ5OiBGcmFuw6dvaXMgR3Vl
cnJheiA8a3Vicmlja0BmZ3Y2Lm5ldD4KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFJvZHJpZ28g
Vml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiA+ID4gPiA+IExpbms6IAo+ID4gPiA+ID4g
aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIwMTkwNzE3MjIz
NDUxLjI1OTUtMS1kaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbQo+ID4gPiA+ID4gKGNoZXJy
eSBwaWNrZWQgZnJvbSBjb21taXQKPiA+ID4gPiA+IGI1ZWE5YzkzMzcwMDdkNmU3MDAyODBjOGE2
MGI0ZTEwZDA3MGZiNTMpCj4gPiA+ID4gCj4gPiA+ID4gVGhlcmUgaXMgbm8gc3VjaCBjb21taXQg
aW4gTGludXMncyBrZXJuZWwgdHJlZSA6KAo+ID4gCj4gPiBub3QgeWV0Li4uIEl0IGlzIHF1ZXVl
ZCBmb3IgNS4zIG9uIGRybS1pbnRlbC1uZXh0LXF1ZXVlZC4KPiA+IAo+ID4gVGhpcyBsaW5lIGlz
IGF1dG9tYXRpY2FsbHkgYWRkZWQgYnkgImRpbSIgdG9vbCB3aGVuCj4gPiBjaGVycnktcGlja2lu
ZyBxdWV1ZWQgc3R1ZmYgZm9yIG91ciBkcm0taW50ZWwgZml4ZXMgYnJhbmNoZXMuCj4gCj4gV2hh
dCBkbyB5b3UgbmVlZCBoZXIgZnJvbSB1cyB0byBhY2NlcHQgdGhpcyBwYXRjaD8KClVtLCB5b3Ug
aGF2ZSByZWFkIHRoZSBzdGFibGUga2VybmVsIHJ1bGVzLCByaWdodD8KICAgIGh0dHBzOi8vd3d3
Lmtlcm5lbC5vcmcvZG9jL2h0bWwvbGF0ZXN0L3Byb2Nlc3Mvc3RhYmxlLWtlcm5lbC1ydWxlcy5o
dG1sCgpUaGF0J3Mgd2hhdCBJIG5lZWQgZm9yIGl0IHRvIGdvIGludG8gYSBzdGFibGUga2VybmVs
IHJlbGVhc2UuCgp0aGFua3MsCgpncmVnIGstaApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
