Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B513B7509
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jun 2021 17:18:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFFE46E8B3;
	Tue, 29 Jun 2021 15:18:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE5076E8B3
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Jun 2021 15:18:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10030"; a="195459893"
X-IronPort-AV: E=Sophos;i="5.83,309,1616482800"; d="scan'208";a="195459893"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 08:17:55 -0700
X-IronPort-AV: E=Sophos;i="5.83,309,1616482800"; d="scan'208";a="643751106"
Received: from liubin1-mobl.amr.corp.intel.com (HELO intel.com) ([10.212.5.44])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 08:17:54 -0700
Date: Tue, 29 Jun 2021 11:17:53 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Message-ID: <YNs5ofqwVZ0WVnwO@intel.com>
References: <20210629105356.927359-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210629105356.927359-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/jsl: Remove require_force_probe
 protection
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 29, 2021 at 04:23:56PM +0530, Tejas Upadhyay wrote:
> Removing force probe protection from JSL platform. Did
> not observe warnings, errors, flickering or any visual
> defects while doing ordinary tasks like browsing and
> editing documents in a two monitor setup.
> 
> For more info drm-tip idle run results :
> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip.html?
> 
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_pci.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index f1f43192f9fb..bc3c14ce92f7 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -853,7 +853,6 @@ static const struct intel_device_info ehl_info = {
>  static const struct intel_device_info jsl_info = {
>  	GEN11_FEATURES,
>  	PLATFORM(INTEL_JASPERLAKE),
> -	.require_force_probe = 1,
>  	.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(VCS0) | BIT(VECS0),
>  	.ppgtt_size = 36,
>  };
> -- 
> 2.31.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
