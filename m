Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 072A491054
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Aug 2019 13:51:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BB2C6E4BA;
	Sat, 17 Aug 2019 11:51:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E67106E4BA;
 Sat, 17 Aug 2019 11:51:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18172605-1500050 for multiple; Sat, 17 Aug 2019 12:51:13 +0100
MIME-Version: 1.0
To: "Koenig, Christian" <Christian.Koenig@amd.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <250a96e7-6cb7-6333-055a-eb30293534bf@amd.com>
References: <20190817113947.5868-1-chris@chris-wilson.co.uk>
 <250a96e7-6cb7-6333-055a-eb30293534bf@amd.com>
Message-ID: <156604267115.24359.13401934175715613226@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 17 Aug 2019 12:51:11 +0100
Subject: Re: [Intel-gfx] [PATCH] dma-buf: Shrink size of struct dma_fence
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBLb2VuaWcsIENocmlzdGlhbiAoMjAxOS0wOC0xNyAxMjo0Mjo0OCkKPiBBbSAxNy4w
OC4xOSB1bSAxMzozOSBzY2hyaWViIENocmlzIFdpbHNvbjoKPiA+IFJlYXJyYW5nZSB0aGUgY291
cGxlIG9mIDMyLWJpdCBhdG9taWNzIGhpZGRlbiBhbW9uZ3N0IHRoZSBmaWVsZCBvZgo+ID4gcG9p
bnRlcnMgdGhhdCB1bm5lY2Vzc2FyaWx5IGNhdXNlZCB0aGUgY29tcGlsZXIgdG8gaW5zZXJ0IHNv
bWUgcGFkZGluZywKPiA+IHNocmlua3MgdGhlIHNpemUgb2YgdGhlIGJhc2Ugc3RydWN0IGRtYV9m
ZW5jZSBmcm9tIDgwIHRvIDcyIGJ5dGVzIG9uCj4gPiB4ODYtNjQuCj4gPgo+ID4gU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiBDYzogQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IAo+IFJldmlld2VkLWJ5
OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gCj4gQlRXOiBX
ZSBjb3VsZCBhbHNvIHB1dCB0aGUgdGltZXN0YW1wIGluIHRoZSB1bmlvbiBpZiB3ZSB3YW50Lgo+
IAo+IEUuZy4gdGhlIGNiX2xpc3Qgc2hvdWxkIG9ubHkgYmUgdXNlZCB3aGlsZSB0aGUgZmVuY2Ug
aXMgdW5zaWduYWxlZCwgdGhlIAo+IHRpbWVzdGFtcCB3aGlsZSBpdCBpcyBzaWduYWxlZCBhbmQg
dGhlIHJjdSB3aGlsZSBpdCBpcyBmcmVlZC4KPiAKPiBXb3VsZCBzYXZlIGFub3RoZXIgOCBieXRl
cywgYnJpbmdpbmcgdXMgZG93biB0byA2NC4KCkkgd2FzIGxvb2tpbmcgYXQgcGFja2luZyB0aGUg
ZXJyb3IgaW50byB0aGUgZmxhZ3MgYW5kIHNocmlua2luZyB0aGF0IHRvCjMyYiB0byBmaXQgaW5z
aWRlIHRoZSBtYWdpY2FsIDY0IGJ5dGVzLiBZb3UgYXJlIHJpZ2h0IGFib3V0IHRoZQp0aW1lc3Rh
bXAgYmVpbmcgbXV0dWFsbHkgZXhjbHVzaXZlIHdpdGggdGhlIGNiX2xpc3QuIFRoZSBvbmx5IGNh
dmVhdApiZWluZyB0aGF0IG5vIHJlYWRlciB3b3VsZCBiZSBhbGxvd2VkIGFjY2VzcyB0byB0aGUg
dGltZXN0YW1wIHVubGVzcwp0aGV5IGhvbGQgYSByZWZlcmVuY2UgKHdoaWNoIEkgdGhpbmsgY292
ZXJzIGFsbCBjdXJyZW50IHVzZXJzKS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
