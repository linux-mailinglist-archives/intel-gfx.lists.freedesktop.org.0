Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6560012DC63
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jan 2020 01:15:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C366389B70;
	Wed,  1 Jan 2020 00:15:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41E0A89B70
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jan 2020 00:15:41 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Dec 2019 16:15:40 -0800
X-IronPort-AV: E=Sophos;i="5.69,381,1571727600"; d="scan'208";a="224505527"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Dec 2019 16:15:39 -0800
Date: Wed, 1 Jan 2020 02:15:03 +0200
From: Imre Deak <imre.deak@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200101001503.GA19285@ideak-desk.fi.intel.com>
References: <20191231122708.4025916-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191231122708.4025916-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Restore coarse power gating
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, Eero Tamminen <eero.t.tamminen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 31, 2019 at 12:27:08PM +0000, Chris Wilson wrote:
> The coarse power gating was disabled as part of commit 2248a28384fe
> ("drm/i915/gen8+: Add RC6 CTX corruption WA") as a prelude to recover
> from the context corruption; the power gating itself has no direct
> impact on the RC6 context corruption. However, that recovery scheme was
> never implemented due to difficult corner cases, and so we no longer need
> to keep the power gating disabled.
> 
> Fixes: 2248a28384fe ("drm/i915/gen8+: Add RC6 CTX corruption WA")
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/846
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Eero Tamminen <eero.t.tamminen@intel.com>
> Cc: Jon Bloomfield <jon.bloomfield@intel.com>

Yes, the original reason to disable CPG doesn't apply imo any more:
Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.h | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index b7f122dccdca..85b565e69ad4 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1657,8 +1657,11 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	(IS_BROADWELL(dev_priv) || IS_GEN(dev_priv, 9))
>  
>  /* WaRsDisableCoarsePowerGating:skl,cnl */
> -#define NEEDS_WaRsDisableCoarsePowerGating(dev_priv) \
> -	IS_GEN_RANGE(dev_priv, 9, 10)
> +#define NEEDS_WaRsDisableCoarsePowerGating(dev_priv) 			\
> +	(IS_CANNONLAKE(dev_priv) ||					\
> +	 IS_SKL_GT3(dev_priv) ||					\
> +	 IS_SKL_GT4(dev_priv))
> +
>  
>  #define HAS_GMBUS_IRQ(dev_priv) (INTEL_GEN(dev_priv) >= 4)
>  #define HAS_GMBUS_BURST_READ(dev_priv) (INTEL_GEN(dev_priv) >= 10 || \
> -- 
> 2.25.0.rc0
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
