Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F7BAFB0B
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 13:02:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E90736EA86;
	Wed, 11 Sep 2019 11:02:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FCE66E239
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 11:02:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18449850-1500050 for multiple; Wed, 11 Sep 2019 12:02:29 +0100
MIME-Version: 1.0
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190911105229.GY7482@intel.com>
References: <20190910073931.GY7482@intel.com>
 <20190911101959.13793-1-chris@chris-wilson.co.uk>
 <20190911105229.GY7482@intel.com>
Message-ID: <156819974749.30942.2403129862890881155@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 11 Sep 2019 12:02:27 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: Allow clobbering gpu resets
 if the display is off
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

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMTktMDktMTEgMTE6NTI6MjkpCj4gT24gV2VkLCBT
ZXAgMTEsIDIwMTkgYXQgMTE6MTk6NTlBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
SWYgdGhlIGRpc3BsYXkgaXMgaW5hY3RpdmUsIHdlIG5lZWQgbm90IHdvcnJ5IGFib3V0IHRoZSBn
cHUgcmVzZXQKPiA+IGNsb2JiZXJpbmcgdGhlIGRpc3BsYXkhIFRvIHByZXZlbnQgdGhlIGRpc3Bs
YXkgY2hhbmdpbmcgc3RhdGUgYmV0d2VlbiB1cwo+ID4gY2hlY2tpbmcgdGhlIGFjdGl2ZSBzdGF0
ZSBhbmQgZG9pbmcgdGhlIGhhcmQgcmVzZXQsIHdlIGludHJvZHVjZSB0aGUKPiA+IGxpZ2h0d2Vp
Z2h0IHJlc2V0IGxvY2sgdG8gdGhlIGF0b21pYyBjb21taXQgZm9yIHRoZSBhZmZlY3RlZCAobGVn
YWN5KQo+ID4gcGxhdGZvcm1zLgo+ID4gCj4gPiBUZXN0Y2FzZTogaWd0L2dlbV9laW8va21zCj4g
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
PiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+
ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
fCAxMSArKysrKysrKysrKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0
LmMgICAgICAgIHwgMTggKysrKysrKysrKysrKysrKystCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAy
OCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gPiBpbmRleCA0ZWU3NTBmYTNlZjAuLmE5
MjQ4N2Q4ZjRjZiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYwo+ID4gQEAgLTEzOTg2LDYgKzEzOTg2LDcgQEAgc3RhdGljIHZvaWQgaW50
ZWxfYXRvbWljX2NvbW1pdF90YWlsKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQo+
ID4gICAgICAgc3RydWN0IGludGVsX2NydGMgKmNydGM7Cj4gPiAgICAgICB1NjQgcHV0X2RvbWFp
bnNbSTkxNV9NQVhfUElQRVNdID0ge307Cj4gPiAgICAgICBpbnRlbF93YWtlcmVmX3Qgd2FrZXJl
ZiA9IDA7Cj4gPiArICAgICBpbnQgc3JjdTsKPiA+ICAgICAgIGludCBpOwo+ID4gIAo+ID4gICAg
ICAgaW50ZWxfYXRvbWljX2NvbW1pdF9mZW5jZV93YWl0KHN0YXRlKTsKPiA+IEBAIC0xNDAwNSw2
ICsxNDAwNiwxMiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNfY29tbWl0X3RhaWwoc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCj4gPiAgICAgICAgICAgICAgIH0KPiA+ICAgICAg
IH0KPiA+ICAKPiA+ICsgICAgIC8qIFByZXZlbnQgc3RhcnRpbmcgYSBHUFUgcmVzZXQgd2hpbGUg
d2UgY2hhbmdlIGdsb2JhbCBkaXNwbGF5IHN0YXRlICovCj4gPiArICAgICBzcmN1ID0gLUVOT0RF
VjsKPiA+ICsgICAgIGlmIChJTlRFTF9JTkZPKGRldl9wcml2KS0+Z3B1X3Jlc2V0X2Nsb2JiZXJz
X2Rpc3BsYXkpCj4gPiArICAgICAgICAgICAgIC8qIG9ubHkgZmFpbHMgaWYgaW50ZXJydXB0ZWQg
Ki8KPiA+ICsgICAgICAgICAgICAgc3JjdSA9IGludGVsX2d0X3Jlc2V0X3RyeWxvY2soJmRldl9w
cml2LT5ndCk7Cj4gCj4gSG1tLiBXaGF0IGhhcHBlbnMgaWYgd2UncmUgaG9sZGluZyB0aGUgbW9k
ZXNldCBsb2NrcyBhbmQgdGhlcmUncyBhbgo+IG9uZ29pbmcgcmVzZXQgYmxvY2tlZCBvbiBzYWlk
IGxvY2tzPwoKSSB3YXMgYWJvdXQgdG8gc2F5IGl0J3MgdGhlIGlubmVyIGxvY2sgaW4gYm90aCBj
YXNlcywgYnV0IGl0J3Mgbm90LgpBbnl3YXkgZG9lc24ndCB0aGF0IGludGVyYWN0aW9uIChpbnRl
bF9wcmVwYXJlX3Jlc2V0KSBwcmV2ZW50CmNydGMtPmFjdGl2ZSBjaGFuZ2luZyBhcyB3ZSB1c2Ug
aXQgZnJvbSBpbnNpZGUgaW50ZWxfZ3RfcmVzZXQgKHdoaWNoCmNhbGxzIGludGVsX2d0X3Vuc2V0
X3dlZGdlZCk/Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
