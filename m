Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A94B695EC3
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 10:18:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8090D10E835;
	Tue, 14 Feb 2023 09:18:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8226D10E835
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 09:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676366323; x=1707902323;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=DQRvRg8zplwvNvB+0prfLW/pNPr10BB3361Aif68V6A=;
 b=cVZDRMzfEcUjInNA0oBuTieGs6I2WT+Q3nZtdTHmpNj7dgxgVQWih253
 Zwre0TAlOYnyGhpj0kvKR2eSdQi4cqoXAcFNhsopEgJ9J0XB+fVFT714D
 7MCcbgjfZZitWLL2BMTcEGZbwagInzFRkANEr7d6b5Pu8ifjqYC+75w3F
 4b8gp9rsOJ6Kzj/WPltIlroquvneI2hNX2IVrGd9KU8VGLdVHBol9gPJN
 TkxK3Qn8aiIN5GLzGGTyghB8j29HgDUENGYt0S1SSqRaZI2erT1edekwn
 pxcLYz0qJH6K52FAaj+zIKVdXlvQFuEIS66pMHxboBlbwIMZqokFyfx3r g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="332431622"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="332431622"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 01:18:40 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="732824998"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="732824998"
Received: from skalyan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.52.13])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 01:18:38 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230208114300.3123934-5-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230208114300.3123934-1-imre.deak@intel.com>
 <20230208114300.3123934-5-imre.deak@intel.com>
Date: Tue, 14 Feb 2023 11:18:36 +0200
Message-ID: <87lel0txjn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915: Sanitize the display
 fused-off check on GEN7/8
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 08 Feb 2023, Imre Deak <imre.deak@intel.com> wrote:
> Detecting in intel_device_info_runtime_init() that the display is fused
> off or not present should only zero intel_runtime_info::pipe_mask, while
> the other related masks will be accordingly zeroed later in the
> function. Remove the redundant zeroing of the related fields on GEN7/8.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_device_info.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index e07deb4630f97..b9ec184b5aab5 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -465,8 +465,6 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
>  			drm_info(&dev_priv->drm,
>  				 "Display fused off, disabling\n");
>  			runtime->pipe_mask = 0;
> -			runtime->cpu_transcoder_mask = 0;
> -			runtime->fbc_mask = 0;
>  		} else if (fuse_strap & IVB_PIPE_C_DISABLE) {
>  			drm_info(&dev_priv->drm, "PipeC fused off\n");
>  			runtime->pipe_mask &= ~BIT(PIPE_C);

-- 
Jani Nikula, Intel Open Source Graphics Center
