Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C702178A869
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 11:00:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DFF310E254;
	Mon, 28 Aug 2023 09:00:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2ADE10E258;
 Mon, 28 Aug 2023 09:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693213226; x=1724749226;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=rZyQDvcQgEDqoVMUiEVwNpykcBHY1OKfMVxDnFZCEVc=;
 b=MDcPd1HMBTR+nYPISFQdzzDEaeZkgIaluMI4ox/GA6ht+S2wDLYcgc9x
 mb39bcumC9asfgj73ixSu1XoyqzJa43+Yt0MZwjsa1weCU3k509l/UpfI
 vrvbVSLTABLQ4Fb7eNPe0RA7GJtOmDIoxbfTk2iyjAj1CWjh5xdsSaWvG
 M6LjSslXUn2ceUyrzkmnboTuOiyxGDeecGhzm1qZVBr33wg1MoTr8X+La
 PD7Y2gxssn39rzV61xhhtHAgwbq6tC2KFcQzdLlbza6COpjG9fKuYq5bW
 U5BESGbO7rjCONHS/imJ4PP6B6YgDBGdwuJjZH2llLksBtFWdyprVmxQK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="439001992"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="439001992"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 02:00:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="911966520"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="911966520"
Received: from golubevv-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.84])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 02:00:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-xe@lists.freedesktop.org
In-Reply-To: <20230828062035.6906-4-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230828062035.6906-1-vinod.govindapillai@intel.com>
 <20230828062035.6906-4-vinod.govindapillai@intel.com>
Date: Mon, 28 Aug 2023 12:00:18 +0300
Message-ID: <87h6oj35jx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 3/4] drm/i915/lnl: support FBC on
 any plane
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
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 28 Aug 2023, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index aefad14ab27a..b207774f3c33 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1327,6 +1327,10 @@
>  #define   DPFC_CTL_PLANE_IVB(i9xx_plane)	REG_FIELD_PREP(DPFC_CTL_PLANE_MASK_IVB, (i9xx_plane))
>  #define   DPFC_CTL_FENCE_EN_IVB			REG_BIT(28) /* ivb+ */
>  #define   DPFC_CTL_PERSISTENT_MODE		REG_BIT(25) /* g4x-snb */
> +#define   DPFC_CTL_PLANE_BINDING_MASK		REG_GENMASK(12, 11) /* XE */
> +#define   DPFC_CTL_PLANE_BINDING_1		REG_FIELD_PREP(DPFC_CTL_PLANE_BINDING_MASK, 0) /* XE */
> +#define   DPFC_CTL_PLANE_BINDING_2		REG_FIELD_PREP(DPFC_CTL_PLANE_BINDING_MASK, 1) /* XE */
> +#define   DPFC_CTL_PLANE_BINDING_3		REG_FIELD_PREP(DPFC_CTL_PLANE_BINDING_MASK, 2) /* XE */

What's with the /* XE */ comments?

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
