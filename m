Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9E419A1B0
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 00:11:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 210686E8A0;
	Tue, 31 Mar 2020 22:11:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E77A6E8A0
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 22:10:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20757789-1500050 for multiple; Tue, 31 Mar 2020 23:10:55 +0100
MIME-Version: 1.0
In-Reply-To: <20200331220432.55227-1-andi@etezian.org>
References: <20200331220432.55227-1-andi@etezian.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andi Shyti <andi@etezian.org>, Intel GFX <intel-gfx@lists.freedesktop.org>
Message-ID: <158569265509.5852.12639974641481565504@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 31 Mar 2020 23:10:55 +0100
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/gt: move remaining debugfs
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

Quoting Andi Shyti (2020-03-31 23:04:32)
> From: Andi Shyti <andi.shyti@intel.com>
> 
> The following interfaces:
> 
> i915_wedged
> i915_forcewake_user
> i915_gem_interrupt
> i915_sseu_status
> 
> are dependent on gt values. Put them inside gt/ and drop the
> "i915_" prefix name. This would be the new structure:
> 
>   gt
>   |
>   +-- forcewake_user
>   |
>   +-- interrupt_info
>   |
>   +-- sseu_status
>   |
>   +-- wedge
> 
> Signed-off-by: Andi Shyti <andi.shyti@intel.com>
> ---
> Hi,
> 
> this patch is the first of a series that aims to refactor the
> debugfs structure in the i915. Some changes will affect the
> debugfs framework as well.
> 
> It has gone through a series of offline reviews mainly from
> Tvrtko.
> 
> Thanks Tvrtko for the review,
> Andi
> 
> Changelog
> =========
> v4:
>  - interrupt and sseu debugfs interface are moved to their own
>    "debugfs_gt_irq" and "debugfs_gt_sseu" files
>  - reset functions are renamed to reset_show/store
> v3:
>  - better arrangement of what should stay in i915_debugfs and
>    what needs to be moved under gt/
>  - more use of the local "uncore" and "i915" variables to improve
>    readability
> v2:
>  - dropped changes on "drop_caches", they were indeed irrelevant
>  - improved interrupt info function
> 
>  drivers/gpu/drm/i915/Makefile             |   2 +
>  drivers/gpu/drm/i915/gt/debugfs_gt.c      |  50 ++-
>  drivers/gpu/drm/i915/gt/debugfs_gt_irq.c  | 162 ++++++++++
>  drivers/gpu/drm/i915/gt/debugfs_gt_irq.h  |  15 +
>  drivers/gpu/drm/i915/gt/debugfs_gt_pm.c   |  32 ++
>  drivers/gpu/drm/i915/gt/debugfs_gt_sseu.c | 282 ++++++++++++++++
>  drivers/gpu/drm/i915/gt/debugfs_gt_sseu.h |  16 +

It's gt/intel_sseu.[ch] so I would have opted for debugfs_sseu.[ch]

>  static const struct drm_info_list i915_debugfs_list[] = {
>         {"i915_capabilities", i915_capabilities, 0},
>         {"i915_gem_objects", i915_gem_object_info, 0},
> @@ -1868,7 +1500,6 @@ static const struct drm_info_list i915_debugfs_list[] = {
>         {"i915_rcs_topology", i915_rcs_topology, 0},

rcs_topology is basically sseu and one imagines would fit nicely inside
debugfs/gt/

Other than those nits,
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
