Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B68D0853AD
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 21:39:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5C946E765;
	Wed,  7 Aug 2019 19:39:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C302289824
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 19:39:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17923027-1500050 for multiple; Wed, 07 Aug 2019 20:39:27 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190806233002.984-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20190806233002.984-1-umesh.nerlige.ramappa@intel.com>
Message-ID: <156520676498.6198.3609948948878770726@skylake-alporthouse-com>
Date: Wed, 07 Aug 2019 20:39:25 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Refactor oa object to better
 manage resources
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

UXVvdGluZyBVbWVzaCBOZXJsaWdlIFJhbWFwcGEgKDIwMTktMDgtMDcgMDA6MzA6MDIpCj4gVGhl
IG9hIG9iamVjdCBtYW5hZ2VzIHRoZSBvYSBidWZmZXIgYW5kIG11c3QgYmUgYWxsb2NhdGVkIHdo
ZW4gdGhlIHVzZXIKPiBpbnRlbmRzIHRvIHJlYWQgcGVyZm9ybWFuY2UgY291bnRlciBzbmFwc2hv
dHMuIFRoaXMgY2FuIGJlIGFjaGlldmVkIGJ5Cj4gbWFraW5nIHRoZSBvYSBvYmplY3QgcGFydCBv
ZiB0aGUgc3RyZWFtIG9iamVjdCB3aGljaCBpcyBhbGxvY2F0ZWQgd2hlbiBhCj4gc3RyZWFtIGlz
IG9wZW5lZCBieSB0aGUgdXNlci4KPiAKPiBBdHRyaWJ1dGVzIGluIHRoZSBvYSBvYmplY3QgdGhh
dCBhcmUgZ2VuLXNwZWNpZmljIGFyZSBtb3ZlZCB0byB0aGUgcGVyZgo+IG9iamVjdCBzbyB0aGF0
IHRoZXkgY2FuIGJlIGluaXRpYWxpemVkIG9uIGRyaXZlciBsb2FkLgo+IAo+IFRoZSBzcGxpdCBw
cm92aWRlcyBhIGJldHRlciBzZXBhcmF0aW9uIG9mIHRoZSBvYmplY3RzIHVzZWQgaW4gcGVyZgo+
IGltcGxlbWVudGF0aW9uIG9mIGk5MTUgZHJpdmVyIHNvIHRoYXQgcmVzb3VyY2VzIGFyZSBhbGxv
Y2F0ZWQgYW5kCj4gaW5pdGlhbGl6ZWQgb25seSB3aGVuIG5lZWRlZC4KPiAKPiB2MjogRml4IGNo
ZWNrcGF0Y2ggd2FybmluZ3MKPiB2MzogQWRkcmVzc2VkIExpb25lbCdzIHJldmlldyBjb21tZW50
Cj4gdjQ6IFJlYmFzZQo+IHY1OiBGaXggcmViYXNlL21lcmdlIGlzc3VlIHdpdGggcmF0ZWxpbWl0
X3N0YXRlX2luaXQKPiAKPiBTaWduZWQtb2ZmLWJ5OiBVbWVzaCBOZXJsaWdlIFJhbWFwcGEgPHVt
ZXNoLm5lcmxpZ2UucmFtYXBwYUBpbnRlbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IExpb25lbCBMYW5k
d2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KClB1c2hlZC4gVGhhbmtzLAot
Q2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
