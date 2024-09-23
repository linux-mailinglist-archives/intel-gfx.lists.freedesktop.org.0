Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B64C97F12E
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 21:23:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE15410E49B;
	Mon, 23 Sep 2024 19:23:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OJq9kW2C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C650B10E48A
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 19:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727119410; x=1758655410;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=sIlXGpwprOwbJnmdrogZguLYz8CZRBAtE6WBsNGGIA8=;
 b=OJq9kW2CVtBWEAdJ9Qqa4iKzv8n4431isk4pz3NbzDUA5AknZhVLk9Vt
 ABMEFWcs6z4K+LIrXrc4PPLDTcVw+cQyrzfO7rOqcVwWzV91bxAdKKkxc
 GvWNlsl50X96pSZvI1uXf1JmHuXuz+7HWOLzPTRG0WeRO7G84+VL8k0Bk
 rs2Nm6UeXO9l13XPSnFs2Ge3hfEQtml0stymiPbVSpTH91bQyUTBcR3+C
 XqeqNtTFjrZCyUHzitAfnG8RkcDZHnt4ph5q9sTVvbCO/7K1UR+C7Uuyo
 ohiYFLJnNAmBv2tN3iqRfrKayCc+f8phFPz/LCZla2HNr+68Y6I1XY5gN A==;
X-CSE-ConnectionGUID: voJbFFsoTcOUYDaHuNnKmg==
X-CSE-MsgGUID: v6upBYiGRuyss4TE5Jn8uQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="28980133"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="28980133"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 12:23:30 -0700
X-CSE-ConnectionGUID: wWi6jFxhSfuJzLJ82HJKUw==
X-CSE-MsgGUID: QRXBWoVIRbCiybBwweFmRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="71306405"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Sep 2024 12:23:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 23 Sep 2024 22:23:27 +0300
Date: Mon, 23 Sep 2024 22:23:27 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>
Subject: Re: [PATCH v2 5/5] drm/i915/display: Cover all possible pipes in
 TP_printk()
Message-ID: <ZvHAL48aC8P-Lvbd@intel.com>
References: <20240923190324.83013-1-gustavo.sousa@intel.com>
 <20240923190324.83013-6-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240923190324.83013-6-gustavo.sousa@intel.com>
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

On Mon, Sep 23, 2024 at 04:02:54PM -0300, Gustavo Sousa wrote:
> Tracepoints that display frame and scanline counters for all pipes were
> added with commit 1489bba82433 ("drm/i915: Add cxsr toggle tracepoint")
> and commit 0b2599a43ca9 ("drm/i915: Add pipe enable/disable
> tracepoints"). At that time, we only had pipes A, B and C. Now that we
> can also have pipe D, the TP_printk() calls are missing it.
> 
> As a quick and dirty fix for that, let's define two common macros to be
> used for the format and values respectively, and also ensure we raise a
> build bug if more pipes are added to enum pipe.
> 
> In the future, we should probably have a way of printing information for
> available pipes only.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  .../drm/i915/display/intel_display_trace.h    | 43 +++++++++++++------
>  1 file changed, 29 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
> index eec9aeddad96..9bd8f1e505b0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_trace.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
> @@ -31,6 +31,29 @@
>  #define _TRACE_PIPE_A	0
>  #define _TRACE_PIPE_B	1
>  #define _TRACE_PIPE_C	2
> +#define _TRACE_PIPE_D	3
> +
> +/*
> + * FIXME: Several TP_printk() calls below display frame and scanline numbers for
> + * all possible pipes (regardless of whether they are available) and that is
> + * done with a constant format string. A better approach would be to generate
> + * that info dynamically based on available pipes, but, while we do not have
> + * that implemented yet, let's assert that the constant format string indeed
> + * covers all possible pipes.
> + */
> +static_assert(I915_MAX_PIPES - 1 == _TRACE_PIPE_D);
> +
> +#define _PIPES_FRAME_AND_SCANLINE_FMT		\
> +	"pipe A: frame=%u, scanline=%u"		\
> +	", pipe B: frame=%u, scanline=%u"	\
> +	", pipe C: frame=%u, scanline=%u"	\
> +	", pipe D: frame=%u, scanline=%u"

Hmm. We have a lot of tracpoints that just print these for a single
pipe. Is there any decent way to make this macro just for one pipe,
and then resuse it for all the tracepoints whether they trace one
pipe or all of them?

> +
> +#define _PIPES_FRAME_AND_SCANLINE_VALUES					\
> +	__entry->frame[_TRACE_PIPE_A], __entry->scanline[_TRACE_PIPE_A]		\
> +	, __entry->frame[_TRACE_PIPE_B], __entry->scanline[_TRACE_PIPE_B]	\
> +	, __entry->frame[_TRACE_PIPE_C], __entry->scanline[_TRACE_PIPE_C]	\
> +	, __entry->frame[_TRACE_PIPE_D], __entry->scanline[_TRACE_PIPE_D]
>  
>  /*
>   * Paranoid sanity check that at least the enumeration starts at the
> @@ -63,11 +86,8 @@ TRACE_EVENT(intel_pipe_enable,
>  			   __entry->pipe_name = pipe_name(crtc->pipe);
>  			   ),
>  
> -	    TP_printk("dev %s, pipe %c enable, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
> -		      __get_str(dev), __entry->pipe_name,
> -		      __entry->frame[_TRACE_PIPE_A], __entry->scanline[_TRACE_PIPE_A],
> -		      __entry->frame[_TRACE_PIPE_B], __entry->scanline[_TRACE_PIPE_B],
> -		      __entry->frame[_TRACE_PIPE_C], __entry->scanline[_TRACE_PIPE_C])
> +	    TP_printk("dev %s, pipe %c enable, " _PIPES_FRAME_AND_SCANLINE_FMT,
> +		      __get_str(dev), __entry->pipe_name, _PIPES_FRAME_AND_SCANLINE_VALUES)
>  );
>  
>  TRACE_EVENT(intel_pipe_disable,
> @@ -96,11 +116,8 @@ TRACE_EVENT(intel_pipe_disable,
>  			   __entry->pipe_name = pipe_name(crtc->pipe);
>  			   ),
>  
> -	    TP_printk("dev %s, pipe %c disable, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
> -		      __get_str(dev), __entry->pipe_name,
> -		      __entry->frame[_TRACE_PIPE_A], __entry->scanline[_TRACE_PIPE_A],
> -		      __entry->frame[_TRACE_PIPE_B], __entry->scanline[_TRACE_PIPE_B],
> -		      __entry->frame[_TRACE_PIPE_C], __entry->scanline[_TRACE_PIPE_C])
> +	    TP_printk("dev %s, pipe %c disable, " _PIPES_FRAME_AND_SCANLINE_FMT,
> +		      __get_str(dev), __entry->pipe_name, _PIPES_FRAME_AND_SCANLINE_VALUES)
>  );
>  
>  TRACE_EVENT(intel_crtc_flip_done,
> @@ -230,11 +247,9 @@ TRACE_EVENT(intel_memory_cxsr,
>  			   __entry->new = new;
>  			   ),
>  
> -	    TP_printk("dev %s, cxsr %s->%s, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
> +	    TP_printk("dev %s, cxsr %s->%s, " _PIPES_FRAME_AND_SCANLINE_FMT,
>  		      __get_str(dev), str_on_off(__entry->old), str_on_off(__entry->new),
> -		      __entry->frame[_TRACE_PIPE_A], __entry->scanline[_TRACE_PIPE_A],
> -		      __entry->frame[_TRACE_PIPE_B], __entry->scanline[_TRACE_PIPE_B],
> -		      __entry->frame[_TRACE_PIPE_C], __entry->scanline[_TRACE_PIPE_C])
> +		      _PIPES_FRAME_AND_SCANLINE_VALUES)
>  );
>  
>  TRACE_EVENT(g4x_wm,
> -- 
> 2.46.1

-- 
Ville Syrjälä
Intel
