Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6189B67F3
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 16:34:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F24710E7C0;
	Wed, 30 Oct 2024 15:34:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XcF11JHO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0F8B10E7C0
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 15:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730302464; x=1761838464;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Xqix9FPgnGClWRIOiU/DhHtckAtXugyC/Ux/el9oilE=;
 b=XcF11JHO5TIc6s8da2+vtLELdQPwiEyKi0Xzfzj+sJyXsXiXD2R67rO5
 117Yg/txFkYiI/RDjY8OhvQLINWMUbp/qXNOAqt7N/zer5HRXrerY8wyf
 ngLwREpAZEFlzQVdpc/oCeYLuRwKkj5PLqbMggt+KMZZfKg7cCFeah6LA
 GWeGFS6B1MzPF1LNc2F0PfOLuuvSxRHXlBu9NMM+LPnyhiidENvpJ7Xk9
 Ci4GsGjrF3QRYHiUNjayFVmCooiLZeH3n/5QJoOndGnDVxYNJmddCFwYO
 +wFBtoHENIY1+2K3NbHt+rznJiDjvxzWD68hTKNKkYZHDZGMMJi/gundG Q==;
X-CSE-ConnectionGUID: Dv7O3VKYTFaz9fdFdGvmuQ==
X-CSE-MsgGUID: a+sxvDYcSUu8ms8Y00Pf8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29777691"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29777691"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 08:34:24 -0700
X-CSE-ConnectionGUID: zr+2iwagTz+/6oJ1GefJdg==
X-CSE-MsgGUID: 4UfEqSdpSqeeWWAmXugMtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="81903527"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.147])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 08:34:21 -0700
Date: Wed, 30 Oct 2024 16:34:17 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Raag Jadav <raag.jadav@intel.com>
Cc: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com, intel-gfx@lists.freedesktop.org,
 anshuman.gupta@intel.com, badal.nilawar@intel.com, riana.tauro@intel.com
Subject: Re: [PATCH v3 4/4] drm/i915/dg2: Implement Wa_14022698537
Message-ID: <ZyJR-fWLkXPHr-J8@ashyti-mobl2.lan>
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

...

> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 89e4381f8baa..d400c77423a5 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3617,6 +3617,7 @@
>  #define	    POWER_SETUP_I1_WATTS		REG_BIT(31)
>  #define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed point format */
>  #define	    POWER_SETUP_I1_DATA_MASK		REG_GENMASK(15, 0)
> +#define     POWER_SETUP_SUBCOMMAND_G8_ENABLE	0x6

0x06 for alignment, please.

Andi

>  #define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
>  #define   XEHP_PCODE_FREQUENCY_CONFIG		0x6e	/* pvc */
>  /* XEHP_PCODE_FREQUENCY_CONFIG sub-commands (param1) */
> -- 
> 2.34.1
