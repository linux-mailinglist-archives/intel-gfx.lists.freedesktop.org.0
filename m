Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B47199EB13F
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 13:52:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA3C510E5C4;
	Tue, 10 Dec 2024 12:52:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kZ40ABEV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7854410E5C4
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 12:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733835149; x=1765371149;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ATp1obH5C95iwb08Ab1zrXWEBFOi9Uwy8LoWil+QVC0=;
 b=kZ40ABEVDV6hTo4gHmQUbhWLW7rlRmigHuFTatY4PEzOsBnbciffXxG8
 ioh0nEGTvYC3nxwwr3wr0KtEWL4VlnMq21eO4NGyn+regsi7MKNQVIwxA
 Tzufbn8mWiKv48I2i07EUvX0cs2kKWEZOSJTlYabugLppuCq9KgpXJJS5
 SxUvCbXNynU4Ns5InjikAt2e8MsWwDEIus/BV8U2aP61/ixT9t0S4xSVq
 A8Bd5odcgEzCc6Ss5USsuJtFSG2jBtUOslEj9mTED5EjGJjI+v1BoZeJR
 QVupgJPeqn1KNEYwSKusqOOhslx5XuZj4hHw+hXfhH5fANMLAY9uoUB8x A==;
X-CSE-ConnectionGUID: 52D9zDYWT3atVFWkzZMxWA==
X-CSE-MsgGUID: vYIYRIuXQySsRjgMKKfdtw==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="21759647"
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="21759647"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 04:52:29 -0800
X-CSE-ConnectionGUID: zgVjsVaqRK6JXOcHogj+yA==
X-CSE-MsgGUID: Wg51C5dLRnO0nc8CkauQNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="95606080"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.254])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 04:52:25 -0800
Date: Tue, 10 Dec 2024 13:52:21 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Raag Jadav <raag.jadav@intel.com>
Cc: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com, intel-gfx@lists.freedesktop.org,
 anshuman.gupta@intel.com, badal.nilawar@intel.com, riana.tauro@intel.com
Subject: Re: [PATCH v3 4/4] drm/i915/dg2: Implement Wa_14022698537
Message-ID: <Z1g5heTT1rwTcdt9@ashyti-mobl2.lan>
References: <20241030143418.410406-1-raag.jadav@intel.com>
 <20241030143418.410406-5-raag.jadav@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241030143418.410406-5-raag.jadav@intel.com>
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

Hi Raag,

> +/* Wa_14022698537:dg2 */
> +static void i915_enable_g8(struct drm_i915_private *i915)
> +{
> +	if (IS_DG2(i915)) {
> +		if (IS_DG2_D(i915) && !intel_match_g8_cpu())
> +			return;
> +
> +		snb_pcode_write_p(&i915->uncore, PCODE_POWER_SETUP,
> +				  POWER_SETUP_SUBCOMMAND_G8_ENABLE, 0, 0);
> +	}

In the workaround description there an "else if" which I am not
understanding. I it suggesting to do nothing or is it suggesting
to do the same thing?

> +}
> +
>  static int i915_pcode_init(struct drm_i915_private *i915)
>  {
>  	struct intel_gt *gt;
> @@ -428,6 +442,7 @@ static int i915_pcode_init(struct drm_i915_private *i915)
>  		}
>  	}
>  
> +	i915_enable_g8(i915);
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 89e4381f8baa..d400c77423a5 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3617,6 +3617,7 @@
>  #define	    POWER_SETUP_I1_WATTS		REG_BIT(31)
>  #define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed point format */
>  #define	    POWER_SETUP_I1_DATA_MASK		REG_GENMASK(15, 0)
> +#define     POWER_SETUP_SUBCOMMAND_G8_ENABLE	0x6

for aesthetics 0x06 would look better, but this should be
changed everywhere in the file because single digit hex values
are used. It's better to keep uniformity in the style.

Andi

>  #define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
>  #define   XEHP_PCODE_FREQUENCY_CONFIG		0x6e	/* pvc */
>  /* XEHP_PCODE_FREQUENCY_CONFIG sub-commands (param1) */
> -- 
> 2.34.1
