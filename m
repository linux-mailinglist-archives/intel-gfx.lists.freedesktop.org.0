Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 318E41B2518
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 13:30:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0D8E6E919;
	Tue, 21 Apr 2020 11:30:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C33BF6E919
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 11:30:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20970116-1500050 for multiple; Tue, 21 Apr 2020 12:30:37 +0100
MIME-Version: 1.0
In-Reply-To: <20200421101955.15651-1-liwei.song@windriver.com>
References: <20200421101955.15651-1-liwei.song@windriver.com>
To: Liwei Song <liwei.song@windriver.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158746863572.19285.13815649267212854361@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 21 Apr 2020 12:30:35 +0100
Subject: Re: [Intel-gfx] [PATCH xf86-video-intel v5] Sync i915_pciids upto
 8717c6b7414f
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

Quoting Liwei Song (2020-04-21 11:19:55)
> Import the kernel's i915_pciids.h, up to:
> 
> commit 8717c6b7414ffb890672276dccc284c23078ac0e
> Author: Lee Shawn C <shawn.c.lee@intel.com>
> Date:   Tue Dec 10 23:04:15 2019 +0800
> 
>     drm/i915/cml: Separate U series pci id from origianl list.
> 
> Signed-off-by: Liwei Song <liwei.song@windriver.com>

Fixed the remaining addition of gen10+ to gen9_render.c (we can't reuse
the same assembler, so we need to rework lots; a decade on and
extracting those paths from mesa look even less likely.) and pushed.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
