Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F081B10A007
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 15:14:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34C7C6E0E2;
	Tue, 26 Nov 2019 14:14:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C38976E0E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 14:14:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 06:14:15 -0800
X-IronPort-AV: E=Sophos;i="5.69,246,1571727600"; d="scan'208";a="202730171"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.9.229])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 06:14:12 -0800
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <4740e8fe-7747-1eb5-803b-bcefb5d72959@linux.intel.com>
References: <20191125162737.2161069-1-chris@chris-wilson.co.uk>
 <4740e8fe-7747-1eb5-803b-bcefb5d72959@linux.intel.com>
Message-ID: <157477765031.23972.17834103213042211263@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Tue, 26 Nov 2019 16:14:10 +0200
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Default to more lenient force
 preempt timeout
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
Cc: Eero Tamminen <eero.t.tamminen@intel.com>,
 Kenneth Graunke <kenneth@whitecape.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

KyBKYXNvbi9LZW4gZm9yIE1lc2EgZmVlZGJhY2sgKHBsZWFzZSBsb29rIGF0IEJ1Z3ppbGxhIGRp
c2N1c3Npb24pCgpRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTExLTI2IDExOjMyOjQyKQo+
IAo+IE9uIDI1LzExLzIwMTkgMTY6MjcsIENocmlzIFdpbHNvbiB3cm90ZToKPiA+IEJhc2VkIG9u
IGEgc2FtcGxpbmcgb2YgYSBudW1iZXIgb2YgYmVuY2htYXJrcyBhY3Jvc3MgcGxhdGZvcm1zLCBi
eQo+ID4gZGVmYXVsdCBvcHQgZm9yIGEgbW9yZSBtdWNoIGxlbmllbnQgdGltZW91dCBzbyB0aGF0
IHdlIHNob3VsZCBub3QKPiA+IGFkdmVyc2VseSBhZmZlY3QgZXhpc3RpbmcgY2xpZW50cy4KPiA+
IAo+ID4gNjQwbXMgb3VnaHQgdG8gYmUgZW5vdWdoIGZvciBhbnlvbmUuCj4gPiAKPiA+IEJ1Z3pp
bGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTIxNjkK
PiA+IEZpeGVzOiAzYTdhOTJhYmE4ZmIgKCJkcm0vaTkxNS9leGVjbGlzdHM6IEZvcmNlIHByZWVt
cHRpb24iKQo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Cj4gPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXgu
aW50ZWwuY29tPgo+ID4gQ2M6IEVlcm8gVGFtbWluZW4gPGVlcm8udC50YW1taW5lbkBpbnRlbC5j
b20+Cj4gPiBDYzogRG1pdHJ5IFJvZ296aGtpbiA8ZG1pdHJ5LnYucm9nb3poa2luQGludGVsLmNv
bT4KPiA+IC0tLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLnByb2ZpbGUgfCAy
ICstCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+
ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5wcm9maWxl
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5wcm9maWxlCj4gPiBpbmRleCAxNzk5NTM3
YTMyMjguLmMyODBiNmFlMzhlYiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L0tjb25maWcucHJvZmlsZQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5w
cm9maWxlCj4gPiBAQCAtMjUsNyArMjUsNyBAQCBjb25maWcgRFJNX0k5MTVfSEVBUlRCRUFUX0lO
VEVSVkFMCj4gPiAgIAo+ID4gICBjb25maWcgRFJNX0k5MTVfUFJFRU1QVF9USU1FT1VUCj4gPiAg
ICAgICBpbnQgIlByZWVtcHQgdGltZW91dCAobXMsIGppZmZ5IGdyYW51bGFyaXR5KSIKPiA+IC0g
ICAgIGRlZmF1bHQgMTAwICMgbWlsbGlzZWNvbmRzCj4gPiArICAgICBkZWZhdWx0IDY0MCAjIG1p
bGxpc2Vjb25kcwoKTWF5YmUganVzdCBidW1wIHRvIDEwMDAgbXMgZm9yIGEgZ29vZCBtZWFzdXJl
LgoKNjQwIG1zIGlzIGFscmVhZHkgYSByYWRpY2FsIHN0YWxsLgoKUmVnYXJkcywgSm9vbmFzCgo+
ID4gICAgICAgaGVscAo+ID4gICAgICAgICBIb3cgbG9uZyB0byB3YWl0IChpbiBtaWxsaXNlY29u
ZHMpIGZvciBhIHByZWVtcHRpb24gZXZlbnQgdG8gb2NjdXIKPiA+ICAgICAgICAgd2hlbiBzdWJt
aXR0aW5nIGEgbmV3IGNvbnRleHQgdmlhIGV4ZWNsaXN0cy4gSWYgdGhlIGN1cnJlbnQgY29udGV4
dAo+ID4gCj4gCj4gSWYgaXQncyBuZWVkZWQgaXQncyBuZWVkZWQuCj4gCj4gUmV2aWV3ZWQtYnk6
IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gCj4gUmVnYXJkcywK
PiAKPiBUdnJ0a28KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
