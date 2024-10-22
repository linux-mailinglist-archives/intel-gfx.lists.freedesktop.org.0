Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B349AA31C
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 15:28:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FF4910E324;
	Tue, 22 Oct 2024 13:28:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TCcjo3/D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0039410E324
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2024 13:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729603730; x=1761139730;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=fT/aT7zVNfYDhNkZ531uQ9Frz2Q27JppnRuGzBhooaU=;
 b=TCcjo3/D/9vE49UN0VMrBy+e6hJYo5Tb8afM0Hmv9keUA1MswcKKGQid
 J6f7vWH1o/Hw76k3CqVz/568xdSFsRZ2brFyPC3Uw0SYbXQT3xP4yTBV8
 LIRhlS02+/EJqZ8OXLTZ4xlyJ+RcVPYnemnrFMelZPscdB111cO1jue9a
 TP4DpljO4gTDovshG59+DvMRBPePpzSelcgXWrjM6yc35LP8DL5T+Aadd
 jXxhnvyTrBkxd4qsswNbvqFQIWmef5bdGDZGslp3fmNHwzLEIMep3i88p
 tKm508r2es2JvZ1Oy3vSIMfm1IP4+U0wnWK6uNUCZEKZU4m4eXClsRD7m Q==;
X-CSE-ConnectionGUID: /cfyuMc7T9e6cYm00vkrDQ==
X-CSE-MsgGUID: eVPBeDuBTUG5Lc4+bcJj6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="29249334"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="29249334"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 06:28:49 -0700
X-CSE-ConnectionGUID: KQEP0bdMTtakLYPcDFmg3w==
X-CSE-MsgGUID: bgZLgCZkT4OvGE4r7xNKog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="103165817"
Received: from carterle-desk.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.31])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 06:28:47 -0700
Date: Tue, 22 Oct 2024 15:28:43 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Badal Nilawar <badal.nilawar@intel.com>
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 rodrigo.vivi@intel.com, chris.p.wilson@linux.intel.com
Subject: Re: [PATCH] drm/i915/rc6: Disable RPG during workload execution
Message-ID: <Zxeoi1baLtbqDKIr@ashyti-mobl2.lan>
References: <20241022132226.1110383-1-badal.nilawar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241022132226.1110383-1-badal.nilawar@intel.com>
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

Hi Badal,

On Tue, Oct 22, 2024 at 06:52:26PM +0530, Badal Nilawar wrote:
> Encountering forcewake errors related to render power gating;

Can you please expand your explanation here?

> therefore, disable it during workload execution.

... and here.

> Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_rc6.c       | 18 +++++++++++++++++-
>  drivers/gpu/drm/i915/gt/intel_rc6_types.h |  1 +
>  2 files changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index c864d101faf9..459394ab5258 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -140,6 +140,7 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
>  					      VDN_MFX_POWERGATE_ENABLE(i));
>  	}
>  
> +	rc6->pg_enable = pg_enable;

this looks borderline racy, it's fine only because this function
is called during resume which normally runs in atomic context.

>  	intel_uncore_write_fw(uncore, GEN9_PG_ENABLE, pg_enable);
>  }
>  
> @@ -572,8 +573,11 @@ static void __intel_rc6_disable(struct intel_rc6 *rc6)
>  	intel_guc_rc_disable(gt_to_guc(gt));
>  
>  	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
> -	if (GRAPHICS_VER(i915) >= 9)
> +	if (GRAPHICS_VER(i915) >= 9) {
> +		rc6->pg_enable = 0;
>  		intel_uncore_write_fw(uncore, GEN9_PG_ENABLE, 0);
> +	}
> +
>  	intel_uncore_write_fw(uncore, GEN6_RC_CONTROL, 0);
>  	intel_uncore_write_fw(uncore, GEN6_RC_STATE, 0);
>  	intel_uncore_forcewake_put(uncore, FORCEWAKE_ALL);
> @@ -687,6 +691,15 @@ void intel_rc6_unpark(struct intel_rc6 *rc6)
>  
>  	/* Restore HW timers for automatic RC6 entry while busy */
>  	intel_uncore_write_fw(uncore, GEN6_RC_CONTROL, rc6->ctl_enable);
> +
> +	/*
> +	 * Seeing render forcewake timeouts during active submissions so disable render PG
> +	 * while workloads are under execution.

Can you please improve this sentence? If I never new about the
issue I would be a bit confused.

> +	 * FIXME Remove this change once real cause of render force wake timeout is fixed
> +	 */
> +	if (rc6->pg_enable == GEN9_RENDER_PG_ENABLE)

is this supposed to be "pg_enable == GEN9_RENDER_PG_ENABLE" or
"pg_enable & GEN9_RENDER_PG_ENABLE" ?

Andi
