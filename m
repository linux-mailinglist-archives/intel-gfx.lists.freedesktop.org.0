Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03ECA53E5BE
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jun 2022 18:37:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 436D811A867;
	Mon,  6 Jun 2022 16:37:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00C1E11A867
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jun 2022 16:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654533441; x=1686069441;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ksV7r6qwrAiFg5nJbQRHF2bp4/nzRSgNgqXsAx+FJRY=;
 b=Yhkbr6LAI1qgXviORaTBSIK3kr4TZZj6hkM9uq5DioIC5pbB9c47mPQy
 Nl6grZTZydAPX2WUe5hKF6dEcKf5/ck3OEGThdGdOFLdyUpBVIblWXpgF
 LtaSnn542l3ZGnGJy/Twd/VhBqoMM19MjvPj2EAbWRxx1whF+u55DAslB
 rieZElnMFkI6a4L8pnxMIotjSxbvQ9zBI5AiIpMuOasVRkkTWrwknK8UF
 dizvSCo8toOf1PK9Q5vj4CGgEeloLTE5rCw/ONTG3ScgaiPXryWdGOHs4
 nULXzj9KaujwylqT7SSa7U68l5aNexIfVlhIEtowVC0D39dXhdjZAlHkz Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10370"; a="256505655"
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="256505655"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2022 09:37:21 -0700
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="564979371"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2022 09:37:20 -0700
Date: Mon, 6 Jun 2022 09:37:19 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <Yp4tP3ogHnNPLlY9@mdroper-desk1.amr.corp.intel.com>
References: <20220606060324.1618-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220606060324.1618-1-anshuman.gupta@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Add Wa_14015795083
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 06, 2022 at 11:33:24AM +0530, Anshuman Gupta wrote:
> i915 must disable Render DOP clock gating globally.
> 
> B.Spec: 52621
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Badal Nilawar <badal.nilawar@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
>  2 files changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 58e9b464d564..55a291ab5536 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -630,6 +630,7 @@
>  
>  #define GEN7_MISCCPCTL				_MMIO(0x9424)
>  #define   GEN7_DOP_CLOCK_GATE_ENABLE		(1 << 0)
> +#define   GEN12_DOP_CLOCK_GATE_RENDER_ENABLE    (1 << 1)

We should use a tab (instead of spaces) between the register name and
the bit definition.  We should probably switch to 'REG_BIT' notation for
new bits being added too.

>  #define   GEN8_DOP_CLOCK_GATE_CFCLK_ENABLE	(1 << 2)
>  #define   GEN8_DOP_CLOCK_GATE_GUC_ENABLE	(1 << 4)
>  #define   GEN8_DOP_CLOCK_GATE_MEDIA_ENABLE	(1 << 6)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index a604bc7c0701..b957dec64eee 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1489,6 +1489,11 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  	 * performance guide section.
>  	 */
>  	wa_write_or(wal, GEN12_SQCM, EN_32B_ACCESS);
> +
> +	/*
> +	 * Wa_14015795083
> +	 */

We can just use a single-line comment here.

Aside from these cosmetic issues (and the formatting of 'Bspec' that
Jani noted),

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


> +	wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
>  }
>  
>  static void
> -- 
> 2.26.2
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
