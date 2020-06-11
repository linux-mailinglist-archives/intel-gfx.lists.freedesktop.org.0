Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5631F65DA
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 12:41:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D90B76E090;
	Thu, 11 Jun 2020 10:41:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FCC86E090
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2020 10:41:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21463089-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2020 11:41:32 +0100
MIME-Version: 1.0
In-Reply-To: <20200611080140.30228-2-chris@chris-wilson.co.uk>
References: <20200611080140.30228-1-chris@chris-wilson.co.uk>
 <20200611080140.30228-2-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Message-ID: <159187209092.1506.14313893821550517148@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 11 Jun 2020 11:41:30 +0100
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/gt: Move ivb GT workarounds
 from init_clock_gating to workarounds
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

Quoting Chris Wilson (2020-06-11 09:01:36)
> +static void
> +ivb_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
> +       /*
> +        * BSpec recommends 8x4 when MSAA is used,
> +        * however in practice 16x4 seems fastest.
> +        *
> +        * Note that PS/WM thread counts depend on the WIZ hashing
> +        * disable bit, which we don't touch here, but it's good
> +        * to keep in mind (see 3DSTATE_PS and 3DSTATE_WM).
> +        */
> +       wa_add(wal, GEN7_GT_MODE, 0,
> +              _MASKED_FIELD(GEN6_WIZ_HASHING_MASK, GEN6_WIZ_HASHING_16x4),
> +              GEN6_WIZ_HASHING_16x4);

Fwiw, from gen8+, we have this in the ctx workarounds. Not sure if
that's a better spot or not. An inquiry for later, as it is passing the
tests for now :)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
