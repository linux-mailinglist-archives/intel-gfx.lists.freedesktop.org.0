Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3603319C864
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 19:54:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64B9C6E12C;
	Thu,  2 Apr 2020 17:54:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A633C6E12C
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 17:54:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20779948-1500050 for multiple; Thu, 02 Apr 2020 18:54:16 +0100
MIME-Version: 1.0
In-Reply-To: <20200402174417.83739-1-andi@etezian.org>
References: <20200402174417.83739-1-andi@etezian.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andi Shyti <andi@etezian.org>, Intel GFX <intel-gfx@lists.freedesktop.org>
Message-ID: <158585005660.5852.12532618393857541862@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 02 Apr 2020 18:54:16 +0100
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915/gt: move remaining debugfs
 interfaces into gt
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

Quoting Andi Shyti (2020-04-02 18:44:17)
>  static const struct drm_info_list i915_debugfs_list[] = {
>         {"i915_capabilities", i915_capabilities, 0},
>         {"i915_gem_objects", i915_gem_object_info, 0},
> @@ -1862,10 +1484,8 @@ static const struct drm_info_list i915_debugfs_list[] = {
>         {"i915_llc", i915_llc, 0},
>         {"i915_runtime_pm_status", i915_runtime_pm_status, 0},
>         {"i915_engine_info", i915_engine_info, 0},
> -       {"i915_rcs_topology", i915_rcs_topology, 0},
>         {"i915_shrinker_info", i915_shrinker_info, 0},
>         {"i915_wa_registers", i915_wa_registers, 0},
> -       {"i915_sseu_status", i915_sseu_status, 0},
>         {"i915_rps_boost_info", i915_rps_boost_info, 0},

Future passes:
i915_gem_fence_regs
i915_frequency_info [or subsume]
i915_ring_freq_table
i915_swizzle_info
i915_llc
i915_wa_registers?
i915_rps_boost_info
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
