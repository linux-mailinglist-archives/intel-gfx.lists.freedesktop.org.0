Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 183C02071F7
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 13:19:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72D986EAD7;
	Wed, 24 Jun 2020 11:19:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA67A6EAD7
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 11:19:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21601673-1500050 for multiple; Wed, 24 Jun 2020 12:19:30 +0100
MIME-Version: 1.0
In-Reply-To: <159292581164.3967.4508032507063193551@build.alporthouse.com>
References: <20200623142843.423594-1-maarten.lankhorst@linux.intel.com>
 <159292581164.3967.4508032507063193551@build.alporthouse.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <159299756563.4527.12397689258939181513@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 24 Jun 2020 12:19:25 +0100
Subject: Re: [Intel-gfx] [PATCH 01/26] Revert "drm/i915/gem: Async GPU
 relocations only"
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-06-23 16:23:31)
> Quoting Maarten Lankhorst (2020-06-23 15:28:18)
> > This reverts commit 9e0f9464e2ab36b864359a59b0e9058fdef0ce47,
> > and related commit 7ac2d2536dfa7 ("drm/i915/gem: Delete unused code").
> 
> Regardless that you haven't adapted the series...
> 
> This still prevents concurrent submission between clients, and does not
> remove the allocation mutexes. That latter we can do in a couple of
> patches that preserve the status quo with just a name switch and the
> forced removal of nestable shrinkers.

To be clear, I think the first patch has to be
https://patchwork.freedesktop.org/series/78772/ (provided the rebasing
went ok) to fully commit ourselves to removing obj->mm.mutex. Empirically,
we cannot use trylock inside the mmu_notifier as that often fails during
normal unmap.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
