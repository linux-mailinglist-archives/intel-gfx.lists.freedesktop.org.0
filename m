Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F040873E3
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 10:18:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E13DD6ED1A;
	Fri,  9 Aug 2019 08:18:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEAAF6ED1A
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 08:18:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17939170-1500050 for multiple; Fri, 09 Aug 2019 09:18:34 +0100
MIME-Version: 1.0
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156533789610.5047.2458968814186640869@lmkuo-mobl1.gar.corp.intel.com>
References: <20190808092748.28800-1-chris@chris-wilson.co.uk>
 <156533789610.5047.2458968814186640869@lmkuo-mobl1.gar.corp.intel.com>
Message-ID: <156533871294.24524.7302706281575390215@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 09 Aug 2019 09:18:32 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Replace global bsd_dispatch_index
 with random seed
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

UXVvdGluZyBKb29uYXMgTGFodGluZW4gKDIwMTktMDgtMDkgMDk6MDQ6NTYpCj4gUXVvdGluZyBD
aHJpcyBXaWxzb24gKDIwMTktMDgtMDggMTI6Mjc6NDgpCj4gPiBXZSBrZWVwIGEgZ2xvYmFsIHNl
ZWQgZm9yIHRoZSBsZWdhY3kgQlNEIHJvdW5kLXJvYmluIHNlbGVjdG9yLCBidXQgaW4KPiA+IG91
ciB0ZXN0aW5nIG9mIG11bHRpcGxlIHNpbXVsdGFuZW91cyBjbGllbnQgd29ya2xvYWRzLCBhIHJh
bmRvbSBzZWVkCj4gPiBzcHJlYWRzIHRoZSBsb2FkIG1vcmUgZXZlbmx5LiAoQXMgZXZlbiBhcyBh
biBpbml0aWFsIHJvdW5kLXJvYmluIHNlbGVjdG9yCj4gPiBjYW4gYmUhKQo+IAo+IEEgc2VudGVu
Y2UgY291bGQgYmUgYWRkZWQgYWJvdXQgdGhlIHRlc3Qgc2NlbmFyaW8uCgpXZSBjYW4gc2ltdWxh
dGUgbXVsdGktY2xpZW50IChib3RoIHNhbWUgYW5kIG1peGVkIHdvcmtsb2FkcykgdXNpbmcKZ2Vt
X3dzaW0gdG8gd29yayBvdXQgb3B0aW1hbCBzdHJhdGVnaWVzIGFuZCB0aGVuIGNvbXBhcmUgb3Vy
IHNpbXVsYXRpb24Kd2l0aCB0aGUgYWN0dWFsIHRyYW5zY29kZXIuIFRoaXMgZml4ZWQgcm91bmQt
cm9iaW4gdHVybnMgb3V0IHRvIGJlIG9uZQpvZiB0aGUgd29yc3QuCgpObyB1c2VyIGlzIGFkdmlz
ZWQgdG8gdXNlIHRoaXMgbWV0aG9kLiBBdCB0aGUgcHJlc2VudCB0aW1lLCBpbnRlbC1tZWRpYQpp
cyBleHBsaWNpdCwgYnV0IGxpYnZhIHN0aWxsIHNlZW1zIHRvIHVzZSBpdCwgd2l0aCB0aGUgZXhj
ZXB0aW9uIG9mCmJhdGNoZXMgdGhhdCBtdXN0IGV4ZWN1dGUgb24gdmNzMC4gT2ggd2VsbC4KCj4g
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
PiA+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+ID4gQ2M6
IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiAKPiBS
ZXZpZXdlZC1ieTogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwu
Y29tPgo+IAo+IFJlZ2FyZHMsIEpvb25hcwo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
