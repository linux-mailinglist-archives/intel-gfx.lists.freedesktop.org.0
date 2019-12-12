Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF93411D90B
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 23:09:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 449946E11E;
	Thu, 12 Dec 2019 22:09:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9F4F6E11E
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 22:09:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19560891-1500050 for multiple; Thu, 12 Dec 2019 22:08:57 +0000
MIME-Version: 1.0
To: Andi Shyti <andi@etezian.org>, Intel GFX <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191212220121.17852-3-andi@etezian.org>
References: <20191212220121.17852-1-andi@etezian.org>
 <20191212220121.17852-3-andi@etezian.org>
Message-ID: <157618853809.2219.5933500200749458624@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 12 Dec 2019 22:08:58 +0000
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/gt: Move power management
 debug files into a gt aware debugfs
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

Quoting Andi Shyti (2019-12-12 22:01:21)
> +static const struct drm_info_list i915_gt_pm_debugfs_list[] = {
> +       {"i915_frequency_info", i915_frequency_info, 0},
> +       {"i915_ring_freq_table", i915_ring_freq_table, 0},
> +       {"i915_rps_boost_info", i915_rps_boost_info, 0},
> +       {"i915_forcewake_domains", i915_forcewake_domains, 0},
> +       {"i915_drpc_info", i915_drpc_info, 0},
> +       {"i915_llc", i915_llc, 0},

One thing as we are moving beneath a directory, we can break the naming
convention as we go. We certainly do not mean to imply these are global
i915 properties anymore, and do not need i915_ to differentiate from
core debugfs either.

> +};
> +
> +int intel_gt_pm_debugfs_register(struct intel_gt *gt)
> +{
> +       struct drm_minor *minor = gt->i915->drm.primary;
> +
> +       return drm_debugfs_create_files(i915_gt_pm_debugfs_list,
> +                                       ARRAY_SIZE(i915_gt_pm_debugfs_list),
> +                                       gt->debugfs_entry, minor);

There's a patch 3, right? (For the passing of gt as the private, not
using drm_debugfs?)

> +}

>  struct dpcd_block {
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.h b/drivers/gpu/drm/i915/i915_debugfs.h
> index c0cd22eb916d..56bd7d14bb22 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.h
> +++ b/drivers/gpu/drm/i915/i915_debugfs.h
> @@ -6,6 +6,10 @@
>  #ifndef __I915_DEBUGFS_H__
>  #define __I915_DEBUGFS_H__
>  
> +#include <drm/drm_debugfs.h>
> +
> +#include "i915_drv.h"
> +
>  struct drm_i915_private;
>  struct drm_connector;
>  
> @@ -17,4 +21,9 @@ static inline int i915_debugfs_register(struct drm_i915_private *dev_priv) { ret
>  static inline int i915_debugfs_connector_add(struct drm_connector *connector) { return 0; }
>  #endif
>  
> +static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
> +{
> +       return to_i915(node->minor->dev);
> +}

I wouldn't bother exporting this as a common header as it is only
temporary and the privates will depend on how we setup the debugfs --
which will different :-p
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
