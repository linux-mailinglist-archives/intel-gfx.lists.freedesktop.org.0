Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A3E84E1C
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 16:02:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 663DE89E7B;
	Wed,  7 Aug 2019 14:02:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D32C789026;
 Wed,  7 Aug 2019 14:02:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17919253-1500050 for multiple; Wed, 07 Aug 2019 15:02:01 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
References: <20190807135405.2036-1-christian.koenig@amd.com>
In-Reply-To: <20190807135405.2036-1-christian.koenig@amd.com>
Message-ID: <156518651926.6198.3556429609794523741@skylake-alporthouse-com>
Date: Wed, 07 Aug 2019 15:01:59 +0100
Subject: Re: [Intel-gfx] [PATCH] dma-buf: make dma_fence structure a bit
 smaller
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

UXVvdGluZyBDaHJpc3RpYW4gS8O2bmlnICgyMDE5LTA4LTA3IDE0OjU0OjA1KQo+IFRoZSBydWMg
YW5kIGNiX2xpc3QgYXJlIG5ldmVyIHVzZWQgYXQgdGhlIHNhbWUgdGltZS4KPiBUaGlzIHNtYWwg
Y2hhbmdlIGlzIGFjdHVhbGx5IG1ha2luZyB0aGUgc3RydWN0dXJlIDE2JSBzbWFsbGVyLgooVHJp
dmlhbCBwYWlyIG9mIHR5cG9zKQoKWWVzLiBXZSBjbGVhciB0aGUgY2FsbGJhY2sgbGlzdCBvbiBr
cmVmX3B1dCBzbyB0aGF0IGJ5IHRoZSB0aW1lIHdlCnJlbGVhc2UgdGhlIGZlbmNlIGl0IGlzIHVu
dXNlZC4gTm8gb25lIHNob3VsZCBiZSBhZGRpbmcgdG8gdGhlIGNiX2xpc3QKdGhhdCB0aGV5IGRv
bid0IHRoZW1zZWx2ZXMgaG9sZCBhIHJlZmVyZW5jZSBmb3IsIHRoaXMgb25seSBub3cgbWFrZXMg
Zm9yCmEgbXVjaCBtb3JlIHNwZWN0YWN1bGFyIHVzZS1hZnRlci1mcmVlLiA6KQoKPiBTaWduZWQt
b2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+ClJldmll
d2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
