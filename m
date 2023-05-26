Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E55712C11
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 19:52:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21A5810E1E1;
	Fri, 26 May 2023 17:52:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB65A10E1E1
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 17:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685123522; x=1716659522;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=H7MGlmbFcti3nCpGHdmGoVb6/ibCWm/VFn4CRdpMU4I=;
 b=Ps2T+LMKkTvTTweJh031RrkIkH1k/2IzT4eBMn8n7TYJyPuTZ5bSMzdQ
 tWCvaNL5xn0aP8Pd83UmFdcWocnF8y61v2zG4gCljFpaOM2UUGGxs2DOZ
 /bQusmz7i2/bqhVgRz7ZMbOA7Crc2q4kIG7XnwSSddd84J4Er6XYdctCq
 x9sAGi7xxUnatB04f8jDz9hpOH1dkuCrwW2z02ofCoKwmzdZIANDxkEKe
 hiOE7pr3B4FfMDXPi4giuCu6K7VE5xV3N9qvzTLu64oXhDM9MB0pigN0+
 0swHvjp+YFW3Wc7jIsG0ZtuwGCxJE9QSWszthHVxdIFDAOWDDJ7bPUPDP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="420024374"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="420024374"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 10:51:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="738354992"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="738354992"
Received: from cyrillet-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.53.219])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 10:51:51 -0700
Date: Fri, 26 May 2023 19:51:48 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZHDxtK5eC2dwOuK7@ashyti-mobl2.lan>
References: <cover.1685119006.git.jani.nikula@intel.com>
 <d542f25bffd5a50ff621bee93415a972c7768a2a.1685119007.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d542f25bffd5a50ff621bee93415a972c7768a2a.1685119007.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 08/15] drm/i915/gt/uc: drop unused but set
 variable sseu
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

Hi Jani,

On Fri, May 26, 2023 at 07:38:01PM +0300, Jani Nikula wrote:
> Prepare for re-enabling -Wunused-but-set-variable.
> 
> Apparently sseu is leftover from commit 9a92732f040a ("drm/i915/gt: Add
> general DSS steering iterator to intel_gt_mcr").
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> index 0ff864da92df..331cec07c125 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> @@ -301,7 +301,6 @@ guc_capture_alloc_steered_lists(struct intel_guc *guc,
>  	const struct __guc_mmio_reg_descr_group *list;
>  	struct __guc_mmio_reg_descr_group *extlists;
>  	struct __guc_mmio_reg_descr *extarray;
> -	struct sseu_dev_info *sseu;
>  	bool has_xehpg_extregs;
>  
>  	/* steered registers currently only exist for the render-class */
> @@ -318,7 +317,6 @@ guc_capture_alloc_steered_lists(struct intel_guc *guc,
>  	if (has_xehpg_extregs)
>  		num_steer_regs += ARRAY_SIZE(xehpg_extregs);
>  
> -	sseu = &gt->info.sseu;

leftovers...

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Thanks,
Andi

>  	for_each_ss_steering(iter, gt, slice, subslice)
>  		num_tot_regs += num_steer_regs;
>  
> -- 
> 2.39.2
