Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF2A91B887
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2024 09:36:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B494310E0E3;
	Fri, 28 Jun 2024 07:36:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Se8RrErC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCFAA10E10E
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2024 07:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719560199; x=1751096199;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=08mcPC3xjeYJFsS7dB0F79IrG5h2rvjd9xiSKKLM4sk=;
 b=Se8RrErC1+M8z/7n35FaGns1zSLSJRDhdsDLGUKy1c593NeKcu0rQSyj
 GPr5gC7nN6RVjcHkABB2eSTmQlGa0Kp7K0dHmt2kcId6E46Rw+LGuGB8V
 dNynH2D9mOJCjJoCIuUp7ICtlbxamgCE56YCcNyzBzBE38OenygJqW2LB
 adtCikv54gMf/wSew/oA9oxss150pP+VFeK921OhXkCE8hxznSX35v80U
 u+BOnkqN1DDVywX7d+5buU2Sx5u8gGjEHcCCn3Qa9L2rMip5xGDcf4a9s
 hMBLoshmj3ATPpqkcN+DoEo1jZzWPWlXqWmFVZ6SqNb3QDS5TzdVTfMr+ Q==;
X-CSE-ConnectionGUID: tz/aFDeDTn2ipNm2bo1cZg==
X-CSE-MsgGUID: s5S0USDmTsGnUzzFfdRDzQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="27863734"
X-IronPort-AV: E=Sophos;i="6.09,168,1716274800"; d="scan'208";a="27863734"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2024 00:36:38 -0700
X-CSE-ConnectionGUID: m092QRnwRLWSTMvG81Sqnw==
X-CSE-MsgGUID: vSWGFNNMTDmOWU54xcCn+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,168,1716274800"; d="scan'208";a="49127957"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.189])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2024 00:36:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ben Kao <ben.kao@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Ben Kao <ben.kao@intel.com>
Subject: Re: [PATCH v1] drm/i915/dp: Modify DP lane count from DPCD reading
In-Reply-To: <20240628073013.17233-1-ben.kao@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240628073013.17233-1-ben.kao@intel.com>
Date: Fri, 28 Jun 2024 10:36:32 +0300
Message-ID: <87o77lbjsv.fsf@intel.com>
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

On Fri, 28 Jun 2024, Ben Kao <ben.kao@intel.com> wrote:
> We found that the external monitor would be failed to display
> when hot-plug with dual Type-C USB cable on Dell WD19DC dock.
> Due to the host would receive 2 lanes setting when the first HPD,
> then receive 4 lanes setting later, but the host only sets 2 lanes
> DP and skips to set 4 lanes DP. I modify DP lane count if the
> current DP lane count is not the same as DPCD reading.
>
> Signed-off-by: Ben Kao <ben.kao@intel.com>

Please file a bug according to [1].

BR,
Jani.

[1] https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html


> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 5b3b6ae1e3d7..a9b9023c6744 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5545,6 +5545,12 @@ intel_dp_detect_dpcd(struct intel_dp *intel_dp)
>  	if (!intel_dp_get_dpcd(intel_dp))
>  		return connector_status_disconnected;
>  
> +	/* lanes count changed */
> +	if (intel_dp->lane_count != drm_dp_max_lane_count(intel_dp->dpcd)) {
> +		intel_dp->lane_count = drm_dp_max_lane_count(intel_dp->dpcd);
> +		return connector_status_disconnected;
> +	}
> +
>  	intel_dp->mst_detect = intel_dp_mst_detect(intel_dp);
>  
>  	/* if there's no downstream port, we're done */

-- 
Jani Nikula, Intel
