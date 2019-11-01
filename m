Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C546DEC819
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 18:44:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7E946E402;
	Fri,  1 Nov 2019 17:44:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 654EA6E293;
 Fri,  1 Nov 2019 17:44:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19051054-1500050 for multiple; Fri, 01 Nov 2019 17:43:46 +0000
MIME-Version: 1.0
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <d85f54be-4ef1-8647-7b9b-65adf93c30a8@intel.com>
References: <20191101142123.18136-1-chris@chris-wilson.co.uk>
 <d85f54be-4ef1-8647-7b9b-65adf93c30a8@intel.com>
Message-ID: <157263022458.20971.8246562358077800836@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 01 Nov 2019 17:43:44 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/i915_selftests: Expose 'perf'
 selftests
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
Cc: igt-dev@lists.freedesktop.org, Tomi Sarvela <tomi.p.sarvela@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0xMS0wMSAxNzoyNjoxNykKPiBPbiAwMS8x
MS8yMDE5IDE2OjIxLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBGaW5kIGFsbCB0aGUgcGVyZiog
c2VsZnRlc3RzIGFuZCBleHBvc2UgdGhlbSBpbiBvdXIgaWd0LiBJbiBDSSB3ZSBleHBlY3QKPiA+
IHRoZXNlIG5vdCB0byBiZSBydW4gaW4gQkFUIChzaW5jZSB0aGV5IGFyZSBqdXN0IHBlcmZvcm1h
bmNlIHRlc3RzIHJhdGhlcgo+ID4gdGhhbiBjb25mb3JtYW5jZSksIGJ1dCBleHBlY3QgdGhlIHJl
c3VsdHMgdG8gYmUgYXZhaWxhYmxlIGZyb20gdGhlCj4gPiBzaGFyZHMuCj4gPgo+ID4gU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiBDYzog
TWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+ID4gQ2M6IFRvbWkgU2FydmVs
YSA8dG9taS5wLnNhcnZlbGFAaW50ZWwuY29tPgo+IEFja2VkLWJ5OiBMaW9uZWwgTGFuZHdlcmxp
biA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+CgpJbiBjYXNlIEkgY29uZnVzZWQgeW91
LCBub3QgaTkxNV9wZXJmLmMgcGVyIHNlLCBidXQgd2hlbiBwdXR0aW5nCnRvZ2V0aGVyIHRoZSBz
ZWxmdGVzdHMgd2UgaGFkIHRocmVlIGNhdGVnb3J5IGlkZWFzOiBtb2NrLCBsaXZlIGFuZCBwZXJm
LgpOb3cgZmluYWxseSBnZXQgYXJvdW5kIHRvIGFkZGluZyB0aGUgcGVyZm9ybWFuY2UgY2VudHJp
YyB0ZXN0cyAoc3VjaCBhcwpwZWFrIHRocm91Z2hwdXQgb2YgdGhlIGJsaXR0ZXIpIHdoaWNoIGRv
bid0IG9mZmVyIG11Y2ggQ0kgYmVuZWZpdCwgYnV0Cmp1c3Qgb2NjYXNpb25hbGx5IGNvbnZleSB1
c2VmdWwgaW5mb3JtYXRpb24gd2hpY2ggbWF5IGhlbHAgaW4gY2hhc2luZwpidWdzLgotQ2hyaXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
