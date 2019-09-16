Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F40B3C54
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2019 16:16:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCCBE6E986;
	Mon, 16 Sep 2019 14:16:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 599536E986
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2019 14:16:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18507866-1500050 for multiple; Mon, 16 Sep 2019 15:16:05 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190916092901.31440-1-jani.nikula@intel.com>
References: <20190916092901.31440-1-jani.nikula@intel.com>
Message-ID: <156864336294.5729.482612247149662589@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 16 Sep 2019 15:16:02 +0100
Subject: Re: [Intel-gfx] [RESEND] drm/i915: stop conflating HAS_DISPLAY()
 and disabled display
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wOS0xNiAxMDoyOTowMSkKPiBTdG9wIHNldHRpbmcg
LT5waXBlX21hc2sgdG8gemVybyB3aGVuIGRpc3BsYXkgaXMgZGlzYWJsZWQsIGFsbG93aW5nIHVz
Cj4gdG8gaGF2ZSBkaWZmZXJlbnQgY29kZSBwYXRocyBmb3Igbm90IGFjdHVhbGx5IGhhdmluZyBk
aXNwbGF5IGhhcmR3YXJlLAo+IGFuZCBoYXZpbmcgZGlzcGxheSBoYXJkd2FyZSBkaXNhYmxlZC4g
VGhpcyBsZXRzIHVzIGRldmVsb3AgdGhvc2UgdHdvCj4gYXZlbnVlcyBpbmRlcGVuZGVudGx5Lgo+
IAo+IFRoZXJlIGFyZSBubyBmdW5jdGlvbmFsIGNoYW5nZXMgZm9yIHdoZW4gdGhlcmUgaXMgbm8g
ZGlzcGxheS4gSG93ZXZlciwKPiBhbGwgdXNlcyBvZiBmb3JfZWFjaF9waXBlKCkgYW5kIGZvcl9l
YWNoX3BpcGVfbWFza2VkKCkgd2lsbCBzdGFydAo+IHJ1bm5pbmcgZm9yIHRoZSBkaXNhYmxlZCBk
aXNwbGF5IGNhc2UuIFB1dCBvbmUgb2YgdGhlIG1vcmUgc2lnbmlmaWNhbnQKPiBvbmVzIGJlaGlu
ZCBjaGVja3MgZm9yIElOVEVMX0RJU1BMQVlfRU5BQkxFRCgpLCBvdGhlcndpc2UgdGhlIGNhc2Vz
Cj4gc2hvdWxkIG5vdCBiZSBoaXQgd2l0aCBkaXNhYmxlZCBkaXNwbGF5LCBvciB0aGV5IHNlZW0g
YmVuaWduLiBGaW5nZXJzCj4gY3Jvc3NlZC4KPiAKPiBBbGwgaW4gYWxsLCB0aGlzIG1pZ2h0IG5v
dCBiZSB0aGUgaWRlYWwgc29sdXRpb24uIEluIGZhY3Qgd2UgbWF5IGhhdmUKPiBoYWQgc29tZXRo
aW5nIGFsb25nIHRoZSBsaW5lcyBvZiB0aGlzIGluIHRoZSBwYXN0LCBidXQgd2UgZW5kZWQgdXAK
PiBjb25mbGF0aW5nIHRoZSB0d28gY2FzZXMuIFBvc3NpYmx5IGV2ZW4gYnkgcmVjb21tZW5kYXRp
b24gYnkgeW91cnMKPiB0cnVseTsgSSBkaWQgbm90IGRhcmUgZGlnIHVwIHRoYXQgcGFydCBvZiB0
aGUgaGlzdG9yeS4gQnV0IHRoZSBwZXJmZWN0Cj4gaXMgdGhlIGVuZW15IG9mIHRoZSBnb29kLCB0
aGlzIGlzIGEgc3RyYWlnaHRmb3J3YXJkIGNoYW5nZSwgYW5kIGxldHMgdXMKPiBnZXQgYWN0dWFs
IHdvcmsgZG9uZSBpbiBib3RoIGZyb250cyB3aXRob3V0IGludGVyZmVyaW5nIHdpdGggZWFjaCBv
dGhlci4KPiAKPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4g
Q2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IENjOiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IFNpZ25lZC1v
ZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CgpJdCBkb2Vzbid0IGZh
bGwgb3Zlciwgd2hpY2ggaXMgaW1wcmVzc2l2ZSBlbm91Z2guClJldmlld2VkLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
