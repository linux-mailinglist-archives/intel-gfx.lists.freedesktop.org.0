Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C714D318FC7
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 17:25:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00B576EE5D;
	Thu, 11 Feb 2021 16:25:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94C336EE5D
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 16:25:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23840662-1500050 for multiple; Thu, 11 Feb 2021 16:24:53 +0000
MIME-Version: 1.0
In-Reply-To: <YCVV5zgZZi6T9yRp@intel.com>
References: <20210210233946.7602-1-chris@chris-wilson.co.uk>
 <YCVV5zgZZi6T9yRp@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjälä <ville.syrjala@linux.intel.com>
Date: Thu, 11 Feb 2021 16:24:52 +0000
Message-ID: <161306069289.7731.1304191156152290264@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Refine VT-d scanout workaround
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMjEtMDItMTEgMTY6MDU6NTkpCj4gT24gV2VkLCBG
ZWIgMTAsIDIwMjEgYXQgMTE6Mzk6NDZQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
QEAgLTYzNyw2ICs2NDIsMTMgQEAgaTkxNV92bWFfaW5zZXJ0KHN0cnVjdCBpOTE1X3ZtYSAqdm1h
LCB1NjQgc2l6ZSwgdTY0IGFsaWdubWVudCwgdTY0IGZsYWdzKQo+ID4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBhbGlnbm1lbnQsIHZtYS0+ZmVuY2VfYWxpZ25tZW50KTsKPiA+ICAg
ICAgIH0KPiA+ICAKPiA+ICsgICAgIC8qIFZULWQgcmVxdWlyZXMgcGFkZGluZyBiZWZvcmUvYWZ0
ZXIgdGhlIHZtYSAqLwo+ID4gKyAgICAgaWYgKGZsYWdzICYgUElOX1ZURCkgewo+ID4gKyAgICAg
ICAgICAgICBhbGlnbm1lbnQgPSBtYXhfdCh0eXBlb2YoYWxpZ25tZW50KSwgYWxpZ25tZW50LCBW
VERfR1VBUkQpOwo+ID4gKyAgICAgICAgICAgICB2bWEtPmd1YXJkID0gYWxpZ25tZW50Owo+ID4g
KyAgICAgICAgICAgICBzaXplICs9IDIgKiB2bWEtPmd1YXJkOwo+ID4gKyAgICAgfQo+ID4gKwo+
ID4gICAgICAgR0VNX0JVR19PTighSVNfQUxJR05FRChzaXplLCBJOTE1X0dUVF9QQUdFX1NJWkUp
KTsKPiA+ICAgICAgIEdFTV9CVUdfT04oIUlTX0FMSUdORUQoYWxpZ25tZW50LCBJOTE1X0dUVF9N
SU5fQUxJR05NRU5UKSk7Cj4gPiAgICAgICBHRU1fQlVHX09OKCFpc19wb3dlcl9vZl8yKGFsaWdu
bWVudCkpOwo+IHNvbWVoPiBAQCAtNzI1LDYgKzczNywxMSBAQCBpOTE1X3ZtYV9pbnNlcnQoc3Ry
dWN0IGk5MTVfdm1hICp2bWEsIHU2NCBzaXplLCB1NjQgYWxpZ25tZW50LCB1NjQgZmxhZ3MpCj4g
PiAgCj4gPiAgICAgICBsaXN0X2FkZF90YWlsKCZ2bWEtPnZtX2xpbmssICZ2bWEtPnZtLT5ib3Vu
ZF9saXN0KTsKPiA+ICAKPiA+ICsgICAgIGlmIChmbGFncyAmIFBJTl9WVEQpIHsKPiA+ICsgICAg
ICAgICAgICAgdm1hLT5ub2RlLnN0YXJ0ICs9IHZtYS0+Z3VhcmQ7Cj4gCj4gV2FzIGEgYml0IHdv
cnJpZWQgZm9yIGEgc2Vjb25kIHRoYXQgdGhpcyBtaWdodCBnaXZlIHRoZSBkaXNwbGF5Cj4gYSBw
b3RlbnRpYWxseSBtaXNhbGlnbmVkIHZtYSBzdGFydC4gQnV0IGxvb2tzIGxpa2UgeW91IGRpZCBj
b25zaWRlcgo+IGFsbCB0aGF0OiBWVERfR1VBUkQ9PVBPVCwgYWxpZ25tZW50ICsgZ3VhcmQgYm90
aCBnZXQgYnVtcGVkCj4gdG8gdGhlIG1heCgpLiBTbyBBRkFJQ1Mgc2hvdWxkIGd1YXJhbnRlZSBl
dmVyeW9uZSBpcyBoYXBweS4KPiAKPiBJIGd1ZXNzIHdlJ3JlIG5vdyB3YXN0aW5nIGEgbG90IG1v
cmUgZ2d0dCBhZGRyZXNzIHNwYWNlIHRob3VnaD8KPiBOb3Qgc3VyZSBpZiBhbnlvbmUgaGFzIGV2
ZXIgYmVlbiBhdCByaXNrIG9mIHJ1bm5pbmcgb3V0IHRob3VnaC4KPiBBbmQgRFBUIHNob3VsZCBo
ZWxwIHdpdGggdGhpcyBvbiBuZXcgcGxhdGZvcm1zLgoKRGVmaW5pdGVseSB0aGlzIGlzIGEgY29u
c2lkZXJhYmxlIGJsb2F0IHRvIG1vc3Qgc2Nhbm91dCBidWZmZXJzLCB3aGljaApmb3IgdGhlIHNh
a2Ugb2YgYXJndW1lbnQgbGV0cyBzYXkgYXJlIDhNaUIuIFN0aWxsIGVub3VnaCByb29tIGZvciBh
IGZsaXAKY2hhaW4gd2l0aGluIHRoZSBtYXBwYWJsZSBwb3J0aW9uLCBhbmQgd2hlbiB3ZSBnZXQg
dG8gc2Nhbm91dHMgdGhhdCBhcmUKbGFyZ2UgZW5vdWdoIHRvIGNvbnN1bWUgdGhlIG1ham9yaXR5
IG9mIHRoZSBHR1RULCB0aGUgZml4ZWQgMk1pQiBvZgpwYWRkaW5nIGlzIGxvc3QgaW4gdGhlIG5v
aXNlLgoKU28gaGFuZHdhdmluZyBpdCBzaG91bGRuJ3QgbGVhZCB0byBub3RpY2VhYmx5IG1vcmUg
dGhyYXNoaW5nIG9mIHRoZQpHR1RUIGZvciBleGlzdGluZyBwbGF0Zm9ybXMuIFRoZXJlJ3MgdG9v
IG11Y2ggcmVjeWNsaW5nIGFuZCB0b28gbGl0dGxlCnJldXNlIG9mIHNjYW5vdXRzIGluIGN1cnJl
bnQgZGlzcGxheSBzeXN0ZW1zIGZvciBteSBsaWtpbmcsIHNvIHRoZSBleHRyYQoyNSUgb3Zlcmhl
YWQgaW4gR0dUVCB1cGRhdGVzIGlzIG1vcmUgbGlrZWx5IHRvIGJlIGEgY29uY2Vybi4gKFRob3Vn
aCBpdApkb2VzIGJhbGFuY2Ugb3V0IGluIHRoYXQgd2Ugbm93IHNraXAgdGhlIGNsZWFyIGFmdGVy
IHVzZS4pCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
