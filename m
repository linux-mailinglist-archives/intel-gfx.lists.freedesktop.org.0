Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E71C84997B
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 13:03:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA1BA10E5B0;
	Mon,  5 Feb 2024 12:03:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hltS8e0y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BA4510E5B0
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Feb 2024 12:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707134585; x=1738670585;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=/UcnLMuOxU8S+9B+SVeSwwmmgGnXv4PDopSaNRDDz4g=;
 b=hltS8e0yZDiYVFKNfjImjYclt1cauhmj4BkdWW0C5RoNeaIXDSzXt3cZ
 imkaxCm0CP/hdpaBBY9LbvI39O47G6lDqnPJHGgcbbwQA6lOCN2Z7VZjF
 KvCyMIh2B3iq3WmO8Dqlg/q3YggntJN+vXThjVTfX4NqMOqb7HtSFYdNh
 4jnlK4qSDsyuwWXSZiPKC99Fu29fIkNlct2vew9H4VRhNUgua200NuV1b
 72dv1BLotD8lNtTW96R3cPkWXI+0s6sSW2I39bFeyjfKRClFESBEArwmn
 B0VmOTtPx4U/oft+y6fSi6LlI5Qb+tuypXSu2lgehY0PZG8shmcQy+laS Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="11245772"
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; d="scan'208";a="11245772"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 04:03:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="1022688"
Received: from bgrigorc-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.24])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 04:03:03 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Manasi Navare <navaremanasi@chromium.org>, intel-gfx@lists.freedesktop.org
Cc: Manasi Navare <navaremanasi@chromium.org>, Suraj Kandpal
 <suraj.kandpal@intel.com>, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Animesh Manna <animesh.manna@intel.com>, Sean Paul <sean@poorly.run>, Drew
 Davenport <ddavenport@chromium.org>
Subject: Re: [PATCH v2] drm/i915/dsc: Fix the macro that calculates
 DSCC_/DSCA_ PPS reg address
In-Reply-To: <20240202204752.1210687-1-navaremanasi@chromium.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240202204752.1210687-1-navaremanasi@chromium.org>
Date: Mon, 05 Feb 2024 14:02:56 +0200
Message-ID: <878r3zdspb.fsf@intel.com>
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

On Fri, 02 Feb 2024, Manasi Navare <navaremanasi@chromium.org> wrote:
> Commit bd077259d0a9 ("drm/i915/vdsc: Add function to read any PPS register") defines
> a new macro to calculate the DSC PPS register addresses with PPS number as an
> input. This macro correctly calculates the addresses till PPS 11 since the
> addresses increment by 4. So in that case the following macro works correctly
> to give correct register address:
> _MMIO(_DSCA_PPS_0 + (pps) * 4)
>
> However after PPS 11, the register address for PPS 12 increments by 12 because
> of RC Buffer memory allocation in between. Because of this discontinuity
> in the address space, the macro calculates wrong addresses for PPS 12 - 16
> resulting into incorrect DSC PPS parameter value read/writes causing DSC
> corruption.
>
> This fixes it by correcting this macro to add the offset of 12 for
> PPS >=12.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10172
> Fixes: bd077259d0a9 ("drm/i915/vdsc: Add function to read any PPS register")
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Animesh Manna <animesh.manna@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: Drew Davenport <ddavenport@chromium.org>
> Signed-off-by: Manasi Navare <navaremanasi@chromium.org>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc_regs.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> index 64f440fdc22b..e676440af369 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> @@ -51,8 +51,8 @@
>  #define DSCC_PICTURE_PARAMETER_SET_0		_MMIO(0x6BA00)
>  #define _DSCA_PPS_0				0x6B200
>  #define _DSCC_PPS_0				0x6BA00
> -#define DSCA_PPS(pps)				_MMIO(_DSCA_PPS_0 + (pps) * 4)
> -#define DSCC_PPS(pps)				_MMIO(_DSCC_PPS_0 + (pps) * 4)
> +#define DSCA_PPS(pps)				_MMIO(_DSCA_PPS_0 + ((pps < 12) ? (pps):(pps + 12)) * 4)
> +#define DSCC_PPS(pps)				_MMIO(_DSCC_PPS_0 + ((pps < 12) ? (pps):(pps + 12)) * 4)

pps still needs to be wrapped in parens like I said, to avoid precedence
issues. Also, spaces are needed around ":". They were all there in what
I suggested to be used, and checkpatch also notices both.

BR,
Jani.

>  #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB	0x78270
>  #define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB	0x78370
>  #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC	0x78470

-- 
Jani Nikula, Intel
