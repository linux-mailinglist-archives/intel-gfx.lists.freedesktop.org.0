Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82AA2189D8B
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 15:06:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E30A089ECD;
	Wed, 18 Mar 2020 14:06:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D6A6899E9
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 14:06:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20603671-1500050 for multiple; Wed, 18 Mar 2020 14:06:09 +0000
MIME-Version: 1.0
In-Reply-To: <20200318135837.79467-1-andi@etezian.org>
References: <20200318135837.79467-1-andi@etezian.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andi Shyti <andi@etezian.org>, Intel GFX <intel-gfx@lists.freedesktop.org>
Message-ID: <158454036744.6873.6457313387180453751@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 18 Mar 2020 14:06:07 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: move files more files into
 debugfs
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

Quoting Andi Shyti (2020-03-18 13:58:37)
> From: Andi Shyti <andi.shyti@intel.com>
> 
> The following interfaces:
> 
> i915_wedged
> i915_forcewake_user

Ok.

> i915_gem_interrupt

More display really, not actually the primary info dump for GEM or GT.
s/gem/ or just delete it, if we're not using, and display isn't, it's
pretty pointless.

> i915_gem_drop_caches

This is definitely an outer layer only debug iface. I don't think we
really want this to proliferate.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
