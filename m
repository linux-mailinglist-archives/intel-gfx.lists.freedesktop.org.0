Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B3B1B7D9
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2019 16:11:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B104089DA7;
	Mon, 13 May 2019 14:11:46 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B00689DA7;
 Mon, 13 May 2019 14:11:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16541525-1500050 for multiple; Mon, 13 May 2019 15:11:35 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <4d429e9b-ed7c-e29f-4d90-2fb553c35ae6@linux.intel.com>
References: <20190508121058.27038-1-tvrtko.ursulin@linux.intel.com>
 <20190508121058.27038-18-tvrtko.ursulin@linux.intel.com>
 <155749613109.10894.9454885750652959998@skylake-alporthouse-com>
 <4d429e9b-ed7c-e29f-4d90-2fb553c35ae6@linux.intel.com>
Message-ID: <155775669491.2165.6877244718142149331@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 13 May 2019 15:11:34 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 17/21] gem_wsim: Infinite
 batch support
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0xMyAxNDo1OTowMSkKPiAKPiBPbiAxMC8w
NS8yMDE5IDE0OjQ4LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA1LTA4IDEzOjEwOjU0KQo+ID4gU28gcHJlZW1wdGlvbiBjaGVjayBpbnRlcnZh
bCBpcyBnaXZlbiBieSBiYXRjaF9zdGFydCAtIG1tYXBfc3RhcnQuCj4gPiBXaGljaCBpcyBsaW1p
dGVkIHRvIGEgbWF4IG9mIDY0IGJ5dGVzLiBUaGF0IG1pZ2h0IGJlIGEgYml0IGV4Y2Vzc2l2ZSBv
bgo+ID4gdGhlIGZyZXF1ZW5jeSBvZiBkb2luZyBNSV9CQl9TVEFSVCwgY2VydGFpbmx5IGZvciBn
ZW43LCBnZW44KyBpcyBhIHRhZAo+ID4gbW9yZSBmb3JnaXZpbmcgaS5lLiBpdCBoYXMgbW9yZSBi
dyBhbmQgZG9lc24ndCBzdGFydmUgdGhlIGNwdSBhcyBtdWNoLgo+IAo+IE5vcGUsIG1tYXBfc3Rh
cnQgaXMgbm90IGNvbnRyb2xsaW5nIHRoZSBiYXRjaCBidWZmZXIgYXQgYWxsLiBJdCBpcyBqdXN0
IAo+IHRvIGZpbmQgdGhlIGNhbGN1bGF0ZWQgYmF0Y2hfc3RhcnQgZ2l2ZW4gdGhhdCBtbWFwKCkg
d2FzIGdpdmVuIGEgCj4gcm91bmQtZG93biBQQUdFX0FMSUdOIHN0YXJ0IGFkZHJlc3MuIEFjdHVh
bCBwcmVlbXB0aW9uIGNoZWNrIGludGVydmFsIGlzIAo+IG9uZSBNSV9OT09QLiAvb1wgSG93IG11
Y2ggd291bGQgeW91IHJlY29tbWVuZCB0byBiZSBzYWZlPwoKV2UndmUgYmVlbiB1c2luZyA2NCBi
eXRlcyByb3V0aW5lbHkgd2l0aG91dCB0b28gbXVjaCBoYXNzbGUsIGJ1dCB0aGF0CmNhbiBiZSBu
b3RpY2VhYmxlLiBGb3IgdGhlIGR1bW15bG9hZCB3ZSB1c2Ugcm91Z2hseSB0aGUgZnVsbCBwYWdl
IGFuZAp0aGF0IHNlZW1zIG9rLCB3aXRoIGEgZmV3IG1pY3Jvc2Vjb25kcyBvZiBleHRyYSBsYXRl
bmN5LiBJZiB0aGF0J3MKdG9sZXJhYmxlLCBJIHdvdWxkIG9wdCBmb3IgdHJ5aW5nIHRvIHVzZSBh
IGZ1bGwgcGFnZSBmb3IgdGhlIHJlY3Vyc2l2ZQpiYXRjaC4gQWx0ZXJuYXRpdmVseSwgd2UgY2Fu
IHVzZSBhIE1JX1NFTUFfV0FJVCB8IFBPTEwgb24gYSB1c2VyCmFkZHJlc3MgKGp1c3QgdGhyb3dp
bmcgaXQgb3V0IHRoZXJlIGFzIGFuIG9wdGlvbikuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
