Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B74115D99
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2019 17:55:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CD756E1DE;
	Sat,  7 Dec 2019 16:55:57 +0000 (UTC)
X-Original-To: Intel-GFX@Lists.FreeDesktop.Org
Delivered-To: Intel-GFX@Lists.FreeDesktop.Org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95FD76E1DE
 for <Intel-GFX@Lists.FreeDesktop.Org>; Sat,  7 Dec 2019 16:55:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19496860-1500050 for multiple; Sat, 07 Dec 2019 16:55:36 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-GFX@Lists.FreeDesktop.Org, John.C.Harrison@Intel.com
References: <20191207010033.24667-1-John.C.Harrison@Intel.com>
In-Reply-To: <20191207010033.24667-1-John.C.Harrison@Intel.com>
Message-ID: <157573773472.2300.15710269161567410787@skylake-alporthouse-com>
Date: Sat, 07 Dec 2019 16:55:34 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Update uncore access path in
 flush_ggtt_writes
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

UXVvdGluZyBKb2huLkMuSGFycmlzb25ASW50ZWwuY29tICgyMDE5LTEyLTA3IDAxOjAwOjMzKQo+
IEZyb206IE1hdHRoZXcgQnJvc3QgPG1hdHRoZXcuYnJvc3RAaW50ZWwuY29tPgo+IAo+IFRoZSBw
cmVmZXJyZWQgd2F5IHRvIGFjY2VzcyB0aGUgdW5jb3JlIGlzIHRocm91Z2ggdGhlIEdUIHN0cnVj
dHVyZS4KPiBVcGRhdGUgdGhlIEd1QyBmdW5jdGlvbiwgZmx1c2hfZ2d0dF93cml0ZXMsIHRvIHVz
ZSB0aGlzIHBhdGguCj4gCj4gU2lnbmVkLW9mZi1ieTogTWF0dGhldyBCcm9zdCA8bWF0dGhldy5i
cm9zdEBpbnRlbC5jb20+Cj4gQ2M6IEpvaG4gSGFycmlzb24gPGpvaG4uYy5oYXJyaXNvbkBpbnRl
bC5jb20+CgpKb2huLCB5b3Ugc2hvdWxkIHByb3ZpZGUgYW4gcy1vLWIgaGVyZSwgYmVpbmcgYSBj
b25kdWl0LgoKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
