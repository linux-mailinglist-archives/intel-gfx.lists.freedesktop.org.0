Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F9671CDD
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 18:25:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33EF96E312;
	Tue, 23 Jul 2019 16:25:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B93F56E30D;
 Tue, 23 Jul 2019 16:25:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17539619-1500050 for multiple; Tue, 23 Jul 2019 17:25:19 +0100
MIME-Version: 1.0
To: Chuhong Yuan <hslester96@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190723103915.3964-1-hslester96@gmail.com>
References: <20190723103915.3964-1-hslester96@gmail.com>
Message-ID: <156389911703.31349.2020385253528691635@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 23 Jul 2019 17:25:17 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use dev_get_drvdata
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 Chuhong Yuan <hslester96@gmail.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHVob25nIFl1YW4gKDIwMTktMDctMjMgMTE6Mzk6MTYpCj4gSW5zdGVhZCBvZiB1
c2luZyB0b19wY2lfZGV2ICsgcGNpX2dldF9kcnZkYXRhLAo+IHVzZSBkZXZfZ2V0X2RydmRhdGEg
dG8gbWFrZSBjb2RlIHNpbXBsZXIuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2h1aG9uZyBZdWFuIDxo
c2xlc3Rlcjk2QGdtYWlsLmNvbT4KClRoYXQgY3V0cyBvdXQgc29tZSBjaXJjdW1sb2N1dGlvbiwK
UmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hy
aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
