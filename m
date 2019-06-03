Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB543386E
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 20:43:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 568888930F;
	Mon,  3 Jun 2019 18:43:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95D718930F
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2019 18:43:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jun 2019 11:43:42 -0700
X-ExtLoop1: 1
Received: from marisca-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.34.88])
 by fmsmga001.fm.intel.com with ESMTP; 03 Jun 2019 11:43:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <155937872123.22493.3618519792490340553@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190531222409.9177-1-daniele.ceraolospurio@intel.com>
 <155937872123.22493.3618519792490340553@skylake-alporthouse-com>
Date: Mon, 03 Jun 2019 21:43:59 +0300
Message-ID: <874l56o6fk.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 0/2] split out intel_display_power
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU2F0LCAwMSBKdW4gMjAxOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IFF1b3RpbmcgRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyAoMjAxOS0wNS0zMSAy
MzoyNDowNykKPj4gU2VwYXJhdGUgdGhlIGRpc3BsYXkgUE0gZnJvbSB0aGUgUENJLWxldmVsIHJ1
bnRpbWUgUE0uCj4+IEknbGwgZm9sbG93IHRoaXMgdXAgd2l0aCB2MiBvZiB0aGUgcnBtIGVuY2Fw
c3VsYXRpb24gc2VyaWVzIFsxXSwgYnV0Cj4+IEknZCBsaWtlIHRvIGdldCB0aGlzIGluIGJlZm9y
ZSB0aGF0IHRvIGF2b2lkIGhhdmluZyB0byBjYXJyeSB0aGlzCj4+IGJpZyBkdW1iIGRpZmYgaW4g
dGhhdCBzZXJpZXMuCj4KPiBXaXRoIFJVTlRJTUVfUE1fREVCVUcgZGlzYWJsZWQsCj4KPiBhZGQv
cmVtb3ZlOiAzLzEgZ3Jvdy9zaHJpbms6IDYvOCB1cC9kb3duOiAzOTYvLTM5MyAoMykKPiBGdW5j
dGlvbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvbGQgICAgIG5ldyAgIGRl
bHRhCj4gaW50ZWxfcnVudGltZV9wbV9yZWxlYXNlICAgICAgICAgICAgICAgICAgICAgICAtICAg
ICAyNzQgICAgKzI3NAo+IGludGVsX3J1bnRpbWVfcG1fcHV0X3JhdyAgICAgICAgICAgICAgICAg
ICAgICAgLSAgICAgIDQ1ICAgICArNDUKPiBpbnRlbF9ydW50aW1lX3BtX3B1dF91bmNoZWNrZWQg
ICAgICAgICAgICAgICAgMTAgICAgICA0OCAgICAgKzM4Cj4gaW50ZWxfZGlzcGxheV9wb3dlcl9w
dXRfYXN5bmNfd29yayAgICAgICAgICAgMTc5ICAgICAxOTIgICAgICsxMwo+IGludGVsX2Rpc3Bs
YXlfcG93ZXJfZmx1c2hfd29yayAgICAgICAgICAgICAgIDExNyAgICAgMTI2ICAgICAgKzkKPiBf
X2ludGVsX2Rpc3BsYXlfcG93ZXJfcHV0X2FzeW5jICAgICAgICAgICAgICAxOTMgICAgIDE5OSAg
ICAgICs2Cj4gaW50ZWxfcnVudGltZV9wbV9nZXRfcmF3ICAgICAgICAgICAgICAgICAgICAgICAt
ICAgICAgIDQgICAgICArNAo+IGludGVsX2Rpc3BsYXlfcG93ZXJfZ3JhYl9hc3luY19wdXRfcmVm
ICAgICAgIDExNyAgICAgMTIxICAgICAgKzQKPiBfX3dhcm5lZCAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICA0NjkgICAgIDQ3MiAgICAgICszCj4gaW50ZWxfcnVudGltZV9wbV9n
ZXQgICAgICAgICAgICAgICAgICAgICAgICAgIDEwICAgICAgIDcgICAgICAtMwo+IGludGVsX3Bv
d2VyX2RvbWFpbnNfZW5hYmxlICAgICAgICAgICAgICAgICAgICAzOCAgICAgIDMzICAgICAgLTUK
PiBpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dF91bmNoZWNrZWQgICAgICAgICAgICAgMjMgICAgICAx
OCAgICAgIC01Cj4gaW50ZWxfZGlzcGxheV9wb3dlcl9nZXRfaWZfZW5hYmxlZCAgICAgICAgICAg
MTQzICAgICAxMzggICAgICAtNQo+IGludGVsX2Rpc3BsYXlfcG93ZXJfZ2V0ICAgICAgICAgICAg
ICAgICAgICAgICA4NCAgICAgIDc5ICAgICAgLTUKPiBpbnRlbF9wb3dlcl9kb21haW5zX3N1c3Bl
bmQgICAgICAgICAgICAgICAgICA0OTAgICAgIDQ4MCAgICAgLTEwCj4gaW50ZWxfcG93ZXJfZG9t
YWluc19maW5pX2h3ICAgICAgICAgICAgICAgICAgMTE2ICAgICAxMDYgICAgIC0xMAo+IHJlbGVh
c2VfYXN5bmNfcHV0X2RvbWFpbnMgICAgICAgICAgICAgICAgICAgIDIyMCAgICAgMjAzICAgICAt
MTcKPiBfX2ludGVsX3J1bnRpbWVfcG1fcHV0LmNvbnN0cHJvcCAgICAgICAgICAgICAzMzMgICAg
ICAgLSAgICAtMzMzCj4gVG90YWw6IEJlZm9yZT0yMzM5NDM4OCwgQWZ0ZXI9MjMzOTQzOTEsIGNo
ZyArMC4wMCUKPgo+IHdoaWNoIGlzIG15IGJpZ2dlc3Qgd29ycnkgd2hlbiBtZWRkbGluZyB3aXRo
IHRoZXNlLCB0aGF0IHdlIGFjY2lkZW50YWxseQo+IGV4cGxvZGUgcHJvZHVjdGlvbiBjb2RlIHdp
dGggdW51c2VkIGRlYnVnZ2luZyAoYWxsIHRob3NlIHdha2VyZWZzKS4KPgo+IExndG0sIEkgd291
bGQgbGlrZSBKYW5pIHRvIGluZGljYXRlIHRoYXQgaGUncyBoYXBweSB3aXRoIHRoaXMgc3BsaXQg
YXMKPiB3ZWxsIHNpbmNlIGhlIGhhcyBiZWVuIGxvb2tpbmcgYXQgdmVyeSBzaW1pbGFyIGlkZWFz
LgoKSSBtaWdodCBiaWtlc2hlZCB0aGUgbmFtaW5nLCBmcm9tIHRoZSBQT1YgdGhhdCBmdW5jdGlv
bnMgd291bGQgYmUgbmljZQp0byBiZSAoZXZlbnR1YWxseSkgbmFtZWQgYmFzZWQgb24gdGhlIG5h
bWUgb2YgdGhlIGZpbGUgdGhleSByZXNpZGUKaW4uIEJ1dCBJIGd1ZXNzIGludGVsX2Rpc3BsYXlf
cG93ZXIuW2NoXSBpcyBhcyBnb29kIGFzIGFueSBJIGNvdWxkIGNvbWUKdXAgd2l0aCwgYW5kIG5v
dCBldmVyeXRoaW5nIGlzIGdvaW5nIHRvIGZvbGxvdyB0aGUgbmFtaW5nIHBhdHRlcm4KYW55d2F5
LgoKSSdkIHN0aWxsIGxpa2UgdG8gZ2V0IGFuIGFjayBmcm9tIEltcmUgYmVmb3JlIG1lcmdpbmcs
IGJ1dCBmcm9tIG15IHNpZGUKdGhpcyBpcywKCkFja2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPgoKVGhhbmtzIGZvciBkb2luZyB0aGlzLgoKCgo+IC1DaHJpcwo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gCkph
bmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
