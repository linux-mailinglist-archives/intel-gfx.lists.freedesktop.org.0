Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E626B0C26
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 12:02:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 889066ECA1;
	Thu, 12 Sep 2019 10:02:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B10D76ECA1
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 10:02:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18461815-1500050 for multiple; Thu, 12 Sep 2019 11:02:34 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190911163815.11430-1-chris@chris-wilson.co.uk>
 <bc9c4ab1-f161-cfd1-e60a-01747d361bfd@linux.intel.com>
 <156828117233.4926.13426076212674383174@skylake-alporthouse-com>
 <8abfc3c7-9ca8-1f56-65c3-bdb17bf31aae@linux.intel.com>
In-Reply-To: <8abfc3c7-9ca8-1f56-65c3-bdb17bf31aae@linux.intel.com>
Message-ID: <156828255290.4926.2853537452936858244@skylake-alporthouse-com>
Date: Thu, 12 Sep 2019 11:02:32 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Use GT parked for estimating
 RC6 while asleep
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0xMiAxMDo1NTowMCkKPiAKPiBPbiAxMi8w
OS8yMDE5IDEwOjM5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA5LTEyIDEwOjIwOjM5KQo+ID4+IERvbid0IHdlIGVuZCB1cCBkb2luZyB0aGUg
aXJxc2F2ZSBzcGlubG9jayBuZWVkbGVzc2x5IHdoZW4gIUNPTkZJR19QTT8KPiA+IAo+ID4gTm8s
IHRoZSBpbnRlbnQgaXMgdG8gc2VyaWFsaXNlIHdpdGggaTkxNV9wbXVfZ3RfcGFya2VkIGFuZAo+
ID4gaTkxNV9wbXVfZ3RfdW5wYXJrZWQgKGFuZCB0aGUgR1QgYXdha2Ugc3RhdGUpLCB3aGljaCBh
cmUgaW5kZXBlbmRlbnQgb2YKPiA+IENPTkZJR19QTS4KPiAKPiBZZXMgYnV0IHdpdGggIUNPTkZJ
R19QTSB3ZSBjYW4gYWx3YXlzIHJlYWQgdGhlIHJlYWwgY291bnRlcnMgYW5kIGRvbid0IAo+IG5l
ZWQgdG8gZG8gYW55IGFkZGl0aW9uYWwgbWFnaWMuIEluIGZhY3QgY29kZSBpbiBpOTE1X3BtdV9n
dF8odW4pcGFya2VkIAo+IGNvdWxkIGJlIGlmZGVmLWVkIG91dCBmb3IgdGhhdCBjYXNlIGFzIHdl
bGwuCgpPaCwgeW91IG1lYW4gaWYgd2UgZGlkbid0IGhhdmUgdG8gd29ycnkgYWJvdXQgcnVudGlt
ZS1wbSBhdCBhbGwgZm9yCm1taW8gYWNjZXNzLiBJIHdhcyBub3QgdGhpbmtpbmcgb2YgdGhhdCBh
dCBhbGwsIGp1c3QgYmFsYW5jaW5nIHBhcmtlZCB2cwpzYW1wbGUuCi1DaHJpcwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
