Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C2EA42115
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:42:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B55F010E414;
	Mon, 24 Feb 2025 13:41:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QKKV7gux";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F0A710E195;
 Mon, 24 Feb 2025 09:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740388024; x=1771924024;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=t9ScBW2yGd9SWCJah/1Rmr+E/xvk0XmecLVjTv/K/qE=;
 b=QKKV7guxd0dnByqMCDU9jDKQbn1SImQ+4ZmSpRy2h6Icgoh7L+LL6A6H
 tWpYVOVzWWQaJsMgrPRfRVaXCldvOk/hnP25rnNt1L9Dd6umRgR+rGRKY
 wlLMhT2RNrAOyaJh3A5gVuoier+uVz+lk+sN34O/8SOJn2vVu+miu7l2z
 Wjh+u7dicxepwpPTTJVBAJ0BLAmvXk4wqwXzZUc9gYIMN2Vy5Gm2ESYrB
 s+VUhLIUaFSWIs87RjFazUfZs4SiU3kuh1jPDIpRcv0Emb8bfj6xnEeBR
 /Z6EB+4xFSuVFeplyZE0yrHTBZnVrySdK1z5h1+QMJOG0q9wD1FvfptDR g==;
X-CSE-ConnectionGUID: mMxj7o/6RIW0+z1DgmXSeg==
X-CSE-MsgGUID: YYTh02VZT2KHpJljSAPKOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="63602423"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="63602423"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 01:07:04 -0800
X-CSE-ConnectionGUID: 3Vz9sllbQgiaBgyPhfb/Bw==
X-CSE-MsgGUID: ApkaIjXVTSqCaPH0MLeNaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="115979779"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.133])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 01:07:00 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: gareth.yu@intel.com, intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, shawn.c.lee.intel.om@freedesktop.org,
 william.tseng@intel.com, ankit.k.nautiyal@intel.com, Gareth Yu
 <gareth.yu@intel.com>, Suraj Kandpal <suraj.kandpal@intel.com>, Juha-Pekka
 Heikkil <juha-pekka.heikkila@intel.com>
Subject: Re: [PATCH] drm/i915/vdsc: Correct the conditions of DSC1.1 and DSC
 1.2 for rc params calculation
In-Reply-To: <20250221041401.2219258-1-gareth.yu@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250221041401.2219258-1-gareth.yu@intel.com>
Date: Mon, 24 Feb 2025 11:06:57 +0200
Message-ID: <87ldtv90em.fsf@intel.com>
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

On Fri, 21 Feb 2025, gareth.yu@intel.com wrote:
> From: Gareth Yu <gareth.yu@intel.com>
>
> The condition change is because Gen 14 begins to support DSC 1.2
> and need to check if the sink supports DSC1.2
>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13719
>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>
> Signed-off-by: Gareth Yu <gareth.yu@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index b355c479eda3..555180e40b72 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -320,7 +320,7 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
>  	 * upto uncompressed bpp-1, hence add calculations for all the rc
>  	 * parameters
>  	 */
> -	if (DISPLAY_VER(dev_priv) >= 13) {
> +	if ((DISPLAY_VER(dev_priv) >= 14) && (vdsc_cfg->dsc_version_minor >= 2)) {

Please do not add unnecessary parenthesis. They're a distraction.

BR,
Jani.

>  		calculate_rc_params(vdsc_cfg);
>  	} else {
>  		if ((compressed_bpp == 8 ||

-- 
Jani Nikula, Intel
