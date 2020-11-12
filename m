Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A596F2B0EFF
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 21:24:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 102BF6E42C;
	Thu, 12 Nov 2020 20:24:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C8A26E42C
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 20:24:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22977075-1500050 for multiple; Thu, 12 Nov 2020 20:24:49 +0000
MIME-Version: 1.0
In-Reply-To: <3148dbcb1b690dcf57b1cd2071b6a26d5c30eccf.1605181350.git.jani.nikula@intel.com>
References: <cover.1605181350.git.jani.nikula@intel.com>
 <3148dbcb1b690dcf57b1cd2071b6a26d5c30eccf.1605181350.git.jani.nikula@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Date: Thu, 12 Nov 2020 20:24:48 +0000
Message-ID: <160521268802.25046.2410915590335317700@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915: remove last users of
 I915_READ_FW()
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2020-11-12 11:44:34)
> Use the preferred intel_uncore_read_fw() instead.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_debugfs.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index 77e76b665098..7cbca268cb61 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -1238,10 +1238,10 @@ static int i915_rps_boost_info(struct seq_file *m, void *data)
>                 u32 rpdown, rpdownei;
>  
>                 intel_uncore_forcewake_get(&dev_priv->uncore, FORCEWAKE_ALL);
> -               rpup = I915_READ_FW(GEN6_RP_CUR_UP) & GEN6_RP_EI_MASK;
> -               rpupei = I915_READ_FW(GEN6_RP_CUR_UP_EI) & GEN6_RP_EI_MASK;
> -               rpdown = I915_READ_FW(GEN6_RP_CUR_DOWN) & GEN6_RP_EI_MASK;
> -               rpdownei = I915_READ_FW(GEN6_RP_CUR_DOWN_EI) & GEN6_RP_EI_MASK;
> +               rpup = intel_uncore_read_fw(&dev_priv->uncore, GEN6_RP_CUR_UP) & GEN6_RP_EI_MASK;
> +               rpupei = intel_uncore_read_fw(&dev_priv->uncore, GEN6_RP_CUR_UP_EI) & GEN6_RP_EI_MASK;
> +               rpdown = intel_uncore_read_fw(&dev_priv->uncore, GEN6_RP_CUR_DOWN) & GEN6_RP_EI_MASK;
> +               rpdownei = intel_uncore_read_fw(&dev_priv->uncore, GEN6_RP_CUR_DOWN_EI) & GEN6_RP_EI_MASK;
>                 intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);

This information is no longer [as] relevant. We can just remove the if
block.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
