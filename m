Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8B089106
	for <lists+intel-gfx@lfdr.de>; Sun, 11 Aug 2019 11:18:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 025AF6E319;
	Sun, 11 Aug 2019 09:18:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFB646E319;
 Sun, 11 Aug 2019 09:18:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17958673-1500050 for multiple; Sun, 11 Aug 2019 10:18:33 +0100
MIME-Version: 1.0
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 dri-devel@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190811085601.110919-1-christian.koenig@amd.com>
References: <20190811085601.110919-1-christian.koenig@amd.com>
Message-ID: <156551511039.2301.9800850987730158624@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sun, 11 Aug 2019 10:18:30 +0100
Subject: Re: [Intel-gfx] [PATCH] dma-buf: rename reservation_object to
 dma_resv
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
Cc: gustavo@padovan.org, intel-gfx@lists.freedesktop.org,
 sumit.semwal@linaro.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpc3RpYW4gS8O2bmlnICgyMDE5LTA4LTExIDA5OjU2OjAxKQo+IEJlIG1vcmUg
Y29uc2lzdGVudCB3aXRoIHRoZSBuYW1pbmcgb2YgdGhlIG90aGVyIERNQS1idWYgb2JqZWN0cy4K
CkZyb20gdGhlIHRpcCBvZiBteSBmaW5nZXJzLCBcby8KIAo+IFNpZ25lZC1vZmYtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KCkxldHRpbmcgdGhlIGNvbXBp
bGVyIGRvIHRoZSByZWFsIHdvcmsgKGZvciB0aGUgYml0cyBJIHNwb3QgY2hlY2tlZCBpdAp3YXMg
dGhlIGV4cGVjdGVkIG1lY2hhbmljYWwgdHJhbnNsYXRpb24pLCBhbmQgb3ZlcndoZWxtaW5nbHkg
YWdyZWVpbmcgd2l0aAp0aGUgbW90aXZhdGlvbiwKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
