Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 011DFA2F36C
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 17:26:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9064A10E5B2;
	Mon, 10 Feb 2025 16:26:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hylktwo9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2670510E5AF;
 Mon, 10 Feb 2025 16:26:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739204796; x=1770740796;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Vmg8p5eX5GVmMdCUDP5DgY6RMP7wGECXypMEKqU1YNw=;
 b=Hylktwo9Z85LfXC1gT5wUaJhQbeeeuynJ99sXpP9Rk/yiGro1wPDHC0u
 WM78BBsofMsOrxa79fB4BhFApzPBs/bNteJEj9WfIja3W+Z/uh2cvAStd
 08eHErZIb9YrK16mRi/lUiO7DDgEH/9J2fch0I8QYdsS2ymipUTQ5zj5o
 4wRRHqzseqPIrzf4Il/3ImbSEdGKN6KL16ZyKlme0Jr+vKyfZRvOVgguW
 5wF5wyR5IAqWmYo4pD0TZK1SzIAH3LYuiqdxHtgVkVR97X8MVcHdSy3uj
 MmS2SjzIvsoP+ca7E2JiiEIMt0aMcSxVRbV6jvV+UfYQ13WXdB+llQB2A Q==;
X-CSE-ConnectionGUID: 2HJnvFuMTPaPvBhLMSY9zA==
X-CSE-MsgGUID: QcPWjUybSHKg/4uxAjKNsw==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="50429693"
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="50429693"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 08:26:36 -0800
X-CSE-ConnectionGUID: y8EvgqrrTKSzJDwWaQ6rqg==
X-CSE-MsgGUID: PGvveXUsTMSzbSDa7bZLqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="112454049"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Feb 2025 08:26:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 10 Feb 2025 18:26:32 +0200
Date: Mon, 10 Feb 2025 18:26:32 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 animesh.manna@intel.com, ville.syrjala@intel.com
Subject: Re: [PATCH v6 07/12] drm/i915/psr: Changes for PSR2_MAN_TRK_CTL
 handling when DSB is in use
Message-ID: <Z6oouL3AYZ-JQ7xd@intel.com>
References: <20250127102846.1237560-1-jouni.hogander@intel.com>
 <20250127102846.1237560-8-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250127102846.1237560-8-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
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

On Mon, Jan 27, 2025 at 12:28:41PM +0200, Jouni Högander wrote:
> Do needed changes to handle PSR2_MAN_TRK_CTL correctly when DSB is in use:
> 
> 1. Write PSR2_MAN_TRK_CTL in commit_pipe_pre_planes only when not using
>    DSB.
> 2. Add PSR2_MAN_TRK_CTL writing into DSB commit in
>    intel_atomic_dsb_finish.
> 
> Taking PSR lock over DSB commit is not needed because PSR2_MAN_TRK_CTL is
> now written only by DSB.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> Reviewed-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index aed35f203fd8d..5db2af86d0c8a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7143,7 +7143,8 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
>  			intel_pipe_fastset(old_crtc_state, new_crtc_state);
>  	}
>  
> -	intel_psr2_program_trans_man_trk_ctl(NULL, new_crtc_state);
> +	if (!new_crtc_state->use_dsb)
> +		intel_psr2_program_trans_man_trk_ctl(NULL, new_crtc_state);

commit_pipe_pre_planes() is not called when use_dsb==true.

>  
>  	intel_atomic_update_watermarks(state, crtc);
>  }
> @@ -7731,6 +7732,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>  					       new_crtc_state);
>  		bdw_set_pipe_misc(new_crtc_state->dsb_commit,
>  				  new_crtc_state);
> +		intel_psr2_program_trans_man_trk_ctl(new_crtc_state->dsb_commit,
> +						     new_crtc_state);
>  		intel_crtc_planes_update_arm(new_crtc_state->dsb_commit,
>  					     state, crtc);
>  
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
