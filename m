Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF36CB13AE1
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jul 2025 15:00:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA03D10E4FF;
	Mon, 28 Jul 2025 13:00:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G4OMCZQN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D151510E4FF;
 Mon, 28 Jul 2025 13:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753707616; x=1785243616;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=w8qOd9zW33choDoCP4Lih3HFeGk4mjD2NSmXEhPTE3E=;
 b=G4OMCZQNvLz7YuguqWobbAqb5obVLpE0Ial3YM4vXyMXMT4cemporKjj
 Pmh9+5vxGLKnhbSIz5MRe3aOQPkS8vW36DLd4amWLCPM8q0T8Wh7Acl5j
 apvYxZPuHT9gUzyxmVAmDyb9evP20Masu49TR7sFtjpy8ONSo8T2mUKKC
 sVnNRCKOBNTvvvpEbPKxPIZyxxal58cCJYL6h8YCZWYXqjgeDACRaq0fm
 W5aCx/iATVVrNrAgboObVGqavKHboDQITTZRuzPqwsQbFkze4cI1s+pFq
 y+0GXL9IODF+WhVqzEVrwxVF3xmY+Je3tQKdT1ZBW/TFaYfzkwRzcMPFi w==;
X-CSE-ConnectionGUID: kd9xbfxuTDuV4A2KZcbPHg==
X-CSE-MsgGUID: UI2X8ty2RfGZldw8xAk38A==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="56046104"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="56046104"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 06:00:15 -0700
X-CSE-ConnectionGUID: A0Xtw0hHTeifDwjCXBVDkQ==
X-CSE-MsgGUID: zhCVstUsStaXTy0WEb2ukw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="162765669"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.225])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 06:00:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH 3/3] drm/i915/edp: eDP Data Overrride
In-Reply-To: <20250725061548.2704697-4-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250725061548.2704697-1-suraj.kandpal@intel.com>
 <20250725061548.2704697-4-suraj.kandpal@intel.com>
Date: Mon, 28 Jul 2025 16:00:10 +0300
Message-ID: <5f02b6b0cf49d1c182a6294fa9144b4b4a22943e@intel.com>
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

On Fri, 25 Jul 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> We need override certain link rates in favour of the next available
> higher link rate. The Link rates that need to be overridden are
> indicated by a mask in VBT. To make sure these modes are skipped we
> don't add them in them in the sink rates array.
>
> --v2
> -Update the link rates after we have a final set of link rates [Ankit]
> -Break this patch up [Ankit]
> -Optimize the assingment during loop [Ankit]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 54d88f24b689..040344949b8f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4277,6 +4277,23 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
>  	intel_dp->mso_pixel_overlap = mso ? info->mso_pixel_overlap : 0;
>  }
>  
> +static void
> +intel_edp_set_data_override_rates(struct intel_dp *intel_dp)
> +{
> +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> +	int *sink_rates = intel_dp->sink_rates;
> +	int i, j = 0;
> +
> +	for (i = 0; i < intel_dp->num_sink_rates; i++) {
> +		if (intel_bios_need_edp_data_override(encoder->devdata,
> +						      intel_dp->sink_rates[i]))
> +			continue;
> +
> +		sink_rates[j++] = intel_dp->sink_rates[i];
> +	}
> +	intel_dp->num_sink_rates = j;
> +}
> +
>  static void
>  intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>  {
> @@ -4327,6 +4344,8 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>  		intel_dp->use_rate_select = true;
>  	else
>  		intel_dp_set_sink_rates(intel_dp);
> +
> +	intel_edp_set_data_override_rates(intel_dp);

This can lead to no rates with a broken VBT, and so far we've taken care
to always have the fallback in there.

BR,
Jani.

>  }
>  
>  static bool

-- 
Jani Nikula, Intel
