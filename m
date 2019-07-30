Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F17D47AE77
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 18:56:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF1FD6E5C9;
	Tue, 30 Jul 2019 16:56:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 075B76E5C9
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 16:56:24 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 09:56:24 -0700
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="162634411"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga007-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Jul 2019 09:56:24 -0700
Date: Tue, 30 Jul 2019 09:56:59 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Greg KH <gregkh@linuxfoundation.org>, Jani Nikula <jani.nikula@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Message-ID: <20190730165659.GB18653@intel.com>
References: <20190719004526.B0CC521850@mail.kernel.org>
 <20190722231325.16615-1-dhinakaran.pandiyan@intel.com>
 <20190724120657.GG3244@kroah.com>
 <05339e812e35a4cf1811f26a06bd5a4d1d652407.camel@intel.com>
 <20190724174029.GC30776@intel.com>
 <20190730151908.GA21970@intel.com>
 <20190730152724.GB31590@kroah.com>
 <20190730162207.GA18653@intel.com>
 <20190730162709.GA28503@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730162709.GA28503@kroah.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
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

Ck9uIFR1ZSwgSnVsIDMwLCAyMDE5IGF0IDA2OjI3OjA5UE0gKzAyMDAsIEdyZWcgS0ggd3JvdGU6
Cj4gT24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgMDk6MjI6MDdBTSAtMDcwMCwgUm9kcmlnbyBWaXZp
IHdyb3RlOgo+ID4gT24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgMDU6Mjc6MjRQTSArMDIwMCwgR3Jl
ZyBLSCB3cm90ZToKPiA+ID4gT24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgMDg6MTk6MDhBTSAtMDcw
MCwgUm9kcmlnbyBWaXZpIHdyb3RlOgo+ID4gPiA+IEhpIEdyZWcsCj4gPiA+ID4gCj4gPiA+ID4g
T24gV2VkLCBKdWwgMjQsIDIwMTkgYXQgMTA6NDA6MjlBTSAtMDcwMCwgUm9kcmlnbyBWaXZpIHdy
b3RlOgo+ID4gPiA+ID4gT24gV2VkLCBKdWwgMjQsIDIwMTkgYXQgMDU6Mjc6NDJQTSArMDAwMCwg
U291emEsIEpvc2Ugd3JvdGU6Cj4gPiA+ID4gPiA+IE9uIFdlZCwgMjAxOS0wNy0yNCBhdCAxNDow
NiArMDIwMCwgR3JlZyBLSCB3cm90ZToKPiA+ID4gPiA+ID4gPiBPbiBNb24sIEp1bCAyMiwgMjAx
OSBhdCAwNDoxMzoyNVBNIC0wNzAwLCBEaGluYWthcmFuIFBhbmRpeWFuIHdyb3RlOgo+ID4gPiA+
ID4gPiA+ID4gQSBzaW5nbGUgMzItYml0IFBTUjIgdHJhaW5pbmcgcGF0dGVybiBmaWVsZCBmb2xs
b3dzIHRoZSBzaXh0ZWVuCj4gPiA+ID4gPiA+ID4gPiBlbGVtZW50Cj4gPiA+ID4gPiA+ID4gPiBh
cnJheSBvZiBQU1IgdGFibGUgZW50cmllcyBpbiB0aGUgVkJUIHNwZWMuIEJ1dCwgd2UgaW5jb3Jy
ZWN0bHkKPiA+ID4gPiA+ID4gPiA+IGRlZmluZQo+ID4gPiA+ID4gPiA+ID4gdGhpcyBQU1IyIGZp
ZWxkIGZvciBlYWNoIG9mIHRoZSBQU1IgdGFibGUgZW50cmllcy4gQXMgYSByZXN1bHQsIHRoZQo+
ID4gPiA+ID4gPiA+ID4gUFNSMQo+ID4gPiA+ID4gPiA+ID4gdHJhaW5pbmcgcGF0dGVybiBkdXJh
dGlvbiBmb3IgYW55IHBhbmVsX3R5cGUgIT0gMCB3aWxsIGJlIHBhcnNlZAo+ID4gPiA+ID4gPiA+
ID4gaW5jb3JyZWN0bHkuIFNlY29uZGx5LCBQU1IyIHRyYWluaW5nIHBhdHRlcm4gZHVyYXRpb25z
IGZvciBWQlRzCj4gPiA+ID4gPiA+ID4gPiB3aXRoIGJkYgo+ID4gPiA+ID4gPiA+ID4gdmVyc2lv
biA+PSAyMjYgd2lsbCBhbHNvIGJlIHdyb25nLgo+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+
ID4gPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+ID4gPiA+ID4g
PiA+ID4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+
ID4gPiA+ID4gPiA+ID4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiA+ID4gPiA+ID4gPiA+
IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnICN2NS4yCj4gPiA+ID4gPiA+ID4gPiBGaXhlczog
ODhhMGQ5NjA2YWZmICgiZHJtL2k5MTUvdmJ0OiBQYXJzZSBhbmQgdXNlIHRoZSBuZXcgZmllbGQK
PiA+ID4gPiA+ID4gPiA+IHdpdGggUFNSMiBUUDIvMyB3YWtldXAgdGltZSIpCj4gPiA+ID4gPiA+
ID4gPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTExMDg4Cj4gPiA+ID4gPiA+ID4gPiBCdWd6aWxsYTogaHR0cHM6Ly9idWd6aWxsYS5rZXJu
ZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0yMDQxODMKPiA+ID4gPiA+ID4gPiA+IFNpZ25lZC1vZmYt
Ynk6IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPgo+
ID4gPiA+ID4gPiA+ID4gUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+Cj4gPiA+ID4gPiA+ID4gPiBSZXZpZXdlZC1ieTogSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gPiA+ID4gPiA+ID4gPiBBY2tl
ZC1ieTogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+ID4gPiA+ID4gPiA+
ID4gVGVzdGVkLWJ5OiBGcmFuw6dvaXMgR3VlcnJheiA8a3Vicmlja0BmZ3Y2Lm5ldD4KPiA+ID4g
PiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVs
LmNvbT4KPiA+ID4gPiA+ID4gPiA+IExpbms6IAo+ID4gPiA+ID4gPiA+ID4gaHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIwMTkwNzE3MjIzNDUxLjI1OTUtMS1k
aGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbQo+ID4gPiA+ID4gPiA+ID4gKGNoZXJyeSBwaWNr
ZWQgZnJvbSBjb21taXQKPiA+ID4gPiA+ID4gPiA+IGI1ZWE5YzkzMzcwMDdkNmU3MDAyODBjOGE2
MGI0ZTEwZDA3MGZiNTMpCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gVGhlcmUgaXMgbm8g
c3VjaCBjb21taXQgaW4gTGludXMncyBrZXJuZWwgdHJlZSA6KAo+ID4gPiA+ID4gCj4gPiA+ID4g
PiBub3QgeWV0Li4uIEl0IGlzIHF1ZXVlZCBmb3IgNS4zIG9uIGRybS1pbnRlbC1uZXh0LXF1ZXVl
ZC4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gVGhpcyBsaW5lIGlzIGF1dG9tYXRpY2FsbHkgYWRkZWQg
YnkgImRpbSIgdG9vbCB3aGVuCj4gPiA+ID4gPiBjaGVycnktcGlja2luZyBxdWV1ZWQgc3R1ZmYg
Zm9yIG91ciBkcm0taW50ZWwgZml4ZXMgYnJhbmNoZXMuCj4gPiA+ID4gCj4gPiA+ID4gV2hhdCBk
byB5b3UgbmVlZCBoZXIgZnJvbSB1cyB0byBhY2NlcHQgdGhpcyBwYXRjaD8KPiA+ID4gCj4gPiA+
IFVtLCB5b3UgaGF2ZSByZWFkIHRoZSBzdGFibGUga2VybmVsIHJ1bGVzLCByaWdodD8KPiA+ID4g
ICAgIGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvbGF0ZXN0L3Byb2Nlc3Mvc3RhYmxl
LWtlcm5lbC1ydWxlcy5odG1sCj4gPiA+Cj4gPiA+IFRoYXQncyB3aGF0IEkgbmVlZCBmb3IgaXQg
dG8gZ28gaW50byBhIHN0YWJsZSBrZXJuZWwgcmVsZWFzZS4KPiA+IAo+ID4gWWVzLCBJIGhhdmUg
cmVhZCBpdC4gTWF5YmUgd2hhdCBJIGRvbid0IHVuZGVyc3RhbmQgaXMganVzdCB0aGUgZmFjdCB0
aGF0IHdlIHdpbGwKPiA+IGxldCBjdXN0b21lcnMgZmFjaW5nIGlzc3VlcyBmb3IgNiB3ZWVrcyBv
ciBtb3JlIHdoaWxlIHRoZSBvcmlnaW5hbCBwYXRjaAo+ID4gZG9lc24ndCBsYW5kIG9uIExpbnVz
IHRyZWUuIDooCj4gCj4gVGhlbiBnZXQgdGhlIHBhdGNoIGludG8gTGludXMncyB0cmVlIQo+IE5v
dGhpbmcgSSBjYW4gZG8gdW50aWwgdGhhdCBoYXBwZW5zLCB5b3Uga25vdyB0aGlzLi4uCgotRU5P
VEVOT1VHSENPRkZFRSBzb3JyeS4KRm9yIHNvbWUgcmVhc29uIEkgdGhvdWdodCB0aGlzIHRocmVh
ZCBoYWQgc3RhcnRlZCBhcyB0aGUgcmVqZWN0IG9mIHlvdXIgc2NyaXB0cy4KClRoaXMgcGF0Y2gg
aXMgYWxyZWFkeSBxdWV1ZWQgb24gb3VyIGRybS1pbnRlbC1maXhlcyBhbmQgd2lsbCBwcm9iYWJs
eSBsYW5kIG9uCkxpbnVzIHRyZWUgbmV4dCB3ZWVrLiBUaGFuIHlvdXIgc2NyaXB0cyB3aWxsIGp1
c3QgZ2V0IGl0LgoKU28sIGJhY2sgdG8geW91ciBvcmlnaW5hbCBjb25jZXJuOgoKVGhlIHJlZmVy
cmVuY2UgYjVlYTljOTMzNzAwN2Q2ZTcwMDI4MGM4YTYwYjRlMTBkMDcwZmI1MyB5b3UgcG9pbnRl
ZCBvdXQgd29uJ3QKZXhpc3QgdW50aWwgNS4zIG1lcmdlIHdpbmRvdyB0aG91Z2guCgpNeSBxdWVz
dGlvbiBub3cgaXMgcmVnYXJkaW5nIG91ciBmaXhlcyBmbG93IGFkZGluZyB0aGVzZSBmdXR1cmUg
cmVmZXJlbmNlcy4KRG8geW91IGhhdmUgYW55IGNvbmNlcm4gd2l0aCB0aGF0PwoKU29ycnkgYW5k
IFRoYW5rcywKUm9kcmlnby4KCj4gCj4gZ3JlZyBrLWgKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
