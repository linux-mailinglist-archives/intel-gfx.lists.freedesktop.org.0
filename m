Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB9BF2B53
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 10:49:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAFD56F3E5;
	Thu,  7 Nov 2019 09:49:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 734076F3E5
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 09:49:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19112057-1500050 for multiple; Thu, 07 Nov 2019 09:49:30 +0000
MIME-Version: 1.0
To: Niranjan Vishwanathapura <niranjana.vishwanathapura@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191107050525.GG19940@nvishwa1-DESK.sc.intel.com>
References: <20191106000205.22480-1-niranjana.vishwanathapura@intel.com>
 <20191106000205.22480-4-niranjana.vishwanathapura@intel.com>
 <157300060718.21573.2346937645489800091@skylake-alporthouse-com>
 <20191106021641.GF19940@nvishwa1-DESK.sc.intel.com>
 <157303037798.18566.12503418453281213801@skylake-alporthouse-com>
 <20191107050525.GG19940@nvishwa1-DESK.sc.intel.com>
Message-ID: <157312016887.26738.6871601455648596824@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 07 Nov 2019 09:49:28 +0000
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Use rcu_dereference for rcu
 protected pointer
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBOaXJhbmphbiBWaXNod2FuYXRoYXB1cmEgKDIwMTktMTEtMDcgMDU6MDU6MjYpCj4g
T24gV2VkLCBOb3YgMDYsIDIwMTkgYXQgMDg6NTI6NThBTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+ID5TdXJlLCBmb3IgY29ycmVjdG5lc3Mgc2VlIGNsb25lX3ZtKCkuCj4gCj4gT2ssIEkg
Y2FuIHB1dCBhIGNvbW1vbiBoZWxwZXIgZnVuY3Rpb24gbGlrZSB2bV9nZXRfcmN1X3NhZmUoY3R4
KS4KCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC8zMzkxMTAvP3Nlcmll
cz02OTA0NCZyZXY9MQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
