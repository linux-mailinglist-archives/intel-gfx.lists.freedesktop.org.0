Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 116458A4E05
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 13:49:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F9431124C2;
	Mon, 15 Apr 2024 11:49:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RvN04nD2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F151F1124C2;
 Mon, 15 Apr 2024 11:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713181751; x=1744717751;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=BvYRvLxqz71pNRmblDFU/UgQvTh6L/rQZlt8ZpGHFJE=;
 b=RvN04nD2n8V00aV3kkqBL+clRWYeg0eVgpG18Lv55scGVotYwsT/MjU6
 5O3RA4N5XVBiS9Lf7sdYyCoZN0XAhpjo8exjto46jlwF1mzEnbIjhrh+n
 xqCgBWzpdQBD4CYUhWek0zRcYrWji9SSr1/rlxVaD79UpuPZFUebjm5fV
 aXKujDLVUXv3TvA9G+oRWLP1GPOcwF5N6QrmNDu14227BRFodtmgKsn6u
 8LEpxiNkrORUnS0JdB93vMFufQXC6w3ab4eCJzsRMeyGxGrNInb3wSrgY
 6ggGW1oA31XArQch+O3YiMBVHb4LCeVbeWA0bQiZ7pmYvPiimIBg4/q+x Q==;
X-CSE-ConnectionGUID: SgkWans2RUORPsgkFGi8AQ==
X-CSE-MsgGUID: s1gpxd2JRhWqtv3BoDcjDA==
X-IronPort-AV: E=McAfee;i="6600,9927,11044"; a="8736640"
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; 
   d="scan'208";a="8736640"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 04:49:07 -0700
X-CSE-ConnectionGUID: MqPhaDHuSHaPFPZAkfC3Eg==
X-CSE-MsgGUID: FKuA0ltpRgq3QDZSRzZajg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="21944319"
Received: from lcariou-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.61.121])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 04:49:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, jouni.hogander@intel.com,
 arun.r.murthy@intel.com, Animesh Manna <animesh.manna@intel.com>
Subject: Re: [PATCH v2 5/6] drm/i915/alpm: Enable lobf from source in ALPM_CTL
In-Reply-To: <20240412155243.2891996-6-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240412155243.2891996-1-animesh.manna@intel.com>
 <20240412155243.2891996-6-animesh.manna@intel.com>
Date: Mon, 15 Apr 2024 14:48:54 +0300
Message-ID: <87v84i3kyh.fsf@intel.com>
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

On Fri, 12 Apr 2024, Animesh Manna <animesh.manna@intel.com> wrote:
> Set the Link Off Between Frames Enable bit in ALPM_CTL register.
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c          | 5 +++++
>  drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
>  2 files changed, 6 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index 699f2f051766..ae894c85233c 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -325,6 +325,11 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp)
>  			   ALPM_CTL_EXTENDED_FAST_WAKE_TIME(intel_dp->alpm_parameters.fast_wake_lines);
>  	}
>  
> +	if (intel_dp->lobf_supported) {
> +		alpm_ctl |= ALPM_CTL_LOBF_ENABLE;
> +		intel_dp->lobf_enabled = true;

Gut feeling says this should not be part of intel_dp but rather crtc
state.

BR,
Jani.

> +	}
> +
>  	alpm_ctl |= ALPM_CTL_ALPM_ENTRY_CHECK(intel_dp->alpm_parameters.check_entry_lines);
>  
>  	intel_de_write(dev_priv, ALPM_CTL(cpu_transcoder), alpm_ctl);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 6116c383b543..f61ba582429b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1884,6 +1884,7 @@ struct intel_dp {
>  
>  	/* LOBF flags*/
>  	bool lobf_supported;
> +	bool lobf_enabled;
>  };
>  
>  enum lspcon_vendor {

-- 
Jani Nikula, Intel
