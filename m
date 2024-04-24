Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0AA8B054C
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Apr 2024 11:05:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D871811396D;
	Wed, 24 Apr 2024 09:05:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NF9xoJmT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7205411396D
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Apr 2024 09:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713949534; x=1745485534;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=G8mTbv/OPF79LOCx+p1UjRftErzZHW90VKr/JQZTsfw=;
 b=NF9xoJmTFCy15Q46yS0shvzWm2prLIBx4dPJrkkU/DviaSmwiJc4m4Zs
 MY6s60+tdswfKdzfmz9UGcFjqUeQ6ObqOuunNo7xihVpsz7aYIItRaHu4
 wDihR/9KLqrZojs1y5GgLKk+j4alut8yWrg5ym63hG4Q7Tc4nvHSlPZhe
 ovzxZoTVFbUpDdzirUSwav1gEf9dSMmHn5OHCn5yAuNKe88vnS+BM94dT
 5pAqLW4CBowQH3LhN1cWFgWaYhjKOZv/cMecpEll6rI8JfIuoZ3Bal6SK
 LXx7sMnueuoWQoWumkfb/cxZpqogUbRmSBIAXn259y+NCqryCoJtUKSDq A==;
X-CSE-ConnectionGUID: Lw1uaQdfSqCkNWrRNroILA==
X-CSE-MsgGUID: m7y8CrjDSpem2oUUbAGCIw==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="9438978"
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; 
   d="scan'208";a="9438978"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 02:05:32 -0700
X-CSE-ConnectionGUID: d7Oh1r6JROGAMHDejvw9Jg==
X-CSE-MsgGUID: nYheh2BuQmmHbW1hQLZPEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; d="scan'208";a="29290460"
Received: from vgrigo2x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.49])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 02:05:30 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
Cc: arun.r.murthy@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>, Nemesa
 Garg <nemesa.garg@intel.com>
Subject: Re: [RFC 1/3] drm/i915: Add Dark screen detection registers
In-Reply-To: <20240424073829.824312-3-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240424073829.824312-2-suraj.kandpal@intel.com>
 <20240424073829.824312-3-suraj.kandpal@intel.com>
Date: Wed, 24 Apr 2024 12:05:26 +0300
Message-ID: <87frvbqgfd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 24 Apr 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Add Dark screen detection related register and field definitions.

It's time we stopped adding *any* new display registers to i915_reg.h.

BR,
Jani.

>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 8eb6c2bf4557..474b1c263517 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1838,6 +1838,14 @@
>  #define VRR_VSYNC_START_MASK		REG_GENMASK(12, 0)
>  #define VRR_VSYNC_START(vsync_start)	REG_FIELD_PREP(VRR_VSYNC_START_MASK, (vsync_start))
>  
> +#define _DARK_SCREEN_PIPE_A		0x60120
> +#define DARK_SCREEN(trans)		_MMIO_TRANS2(trans, _DARK_SCREEN_PIPE_A)
> +#define   DARK_SCREEN_ENABLE		REG_BIT(31)
> +#define   DARK_SCREEN_DETECT		REG_BIT(29)
> +#define   DARK_SCREEN_DONE		REG_BIT(28)
> +#define DARK_SCREEN_COMPARE_MASK	REG_GENMASK(9, 0)
> +#define DARK_SCREEN_COMPARE_VAL(x)	REG_FIELD_PREP(DARK_SCREEN_COMPARE_MASK, (x))
> +
>  /* VGA port control */
>  #define ADPA			_MMIO(0x61100)
>  #define PCH_ADPA                _MMIO(0xe1100)

-- 
Jani Nikula, Intel
