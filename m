Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E73B197F19E
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 22:18:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 294E410E490;
	Mon, 23 Sep 2024 20:18:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="azcUNnXR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F256A10E489
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 20:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727122723; x=1758658723;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=TKlNje6lrmJB9zhLdZo7khUWP+vwm8+sgVoIfyfP5Hw=;
 b=azcUNnXRL9psdtUNnSkMEMyyD0dSwNH/qcsAbQvnpJEhpJ+dMWbR3/P7
 /1L5HjUIBoJ5YkrSEU2QwVQYaloJNyMbxXlhIjN/uoMkHuJs2J42FmnVE
 Hivo3IaXpvfsJzqRyu7IE9tbfcg8H+bmCbPezwlsp5oQbFcOFISdQgFEv
 UE6KvuDDJJCQ7TKJpXsnSIKfidUh+UGa/P94DINF4KCfmcEHd0wrV0TFz
 ZrpluMd1J0l1ojWpKN7SSaB55W4/XI8j/EMnfSYI/bHj3EiZrvR2Iiq/J
 8rdTyJe0lzW4oz4exkXpwYeJJDqcgOfyGvAxAqvkM5XIu6LxXb0fp/uX6 w==;
X-CSE-ConnectionGUID: 3edem9m4RLyNFLFJRtzJPQ==
X-CSE-MsgGUID: QjPY+MPOQlSXbIXHL9uRnA==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="37227795"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="37227795"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 13:18:43 -0700
X-CSE-ConnectionGUID: CIMqW+uHSpiZZGDVQAcOWQ==
X-CSE-MsgGUID: 7IrYqD64Tbq/1J8TAGKfiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="71319529"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Sep 2024 13:18:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 23 Sep 2024 23:18:39 +0300
Date: Mon, 23 Sep 2024 23:18:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>
Subject: Re: [PATCH v2 5/5] drm/i915/display: Cover all possible pipes in
 TP_printk()
Message-ID: <ZvHNH20i3-zkqR2H@intel.com>
References: <20240923190324.83013-1-gustavo.sousa@intel.com>
 <20240923190324.83013-6-gustavo.sousa@intel.com>
 <ZvHAL48aC8P-Lvbd@intel.com>
 <172712196055.84255.91494974908186120@gjsousa-mobl2>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <172712196055.84255.91494974908186120@gjsousa-mobl2>
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

On Mon, Sep 23, 2024 at 05:06:00PM -0300, Gustavo Sousa wrote:
> Quoting Ville Syrjälä (2024-09-23 16:23:27-03:00)
> >On Mon, Sep 23, 2024 at 04:02:54PM -0300, Gustavo Sousa wrote:
> >> Tracepoints that display frame and scanline counters for all pipes were
> >> added with commit 1489bba82433 ("drm/i915: Add cxsr toggle tracepoint")
> >> and commit 0b2599a43ca9 ("drm/i915: Add pipe enable/disable
> >> tracepoints"). At that time, we only had pipes A, B and C. Now that we
> >> can also have pipe D, the TP_printk() calls are missing it.
> >> 
> >> As a quick and dirty fix for that, let's define two common macros to be
> >> used for the format and values respectively, and also ensure we raise a
> >> build bug if more pipes are added to enum pipe.
> >> 
> >> In the future, we should probably have a way of printing information for
> >> available pipes only.
> >> 
> >> Cc: Matt Roper <matthew.d.roper@intel.com>
> >> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> >> ---
> >>  .../drm/i915/display/intel_display_trace.h    | 43 +++++++++++++------
> >>  1 file changed, 29 insertions(+), 14 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
> >> index eec9aeddad96..9bd8f1e505b0 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_trace.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
> >> @@ -31,6 +31,29 @@
> >>  #define _TRACE_PIPE_A        0
> >>  #define _TRACE_PIPE_B        1
> >>  #define _TRACE_PIPE_C        2
> >> +#define _TRACE_PIPE_D        3
> >> +
> >> +/*
> >> + * FIXME: Several TP_printk() calls below display frame and scanline numbers for
> >> + * all possible pipes (regardless of whether they are available) and that is
> >> + * done with a constant format string. A better approach would be to generate
> >> + * that info dynamically based on available pipes, but, while we do not have
> >> + * that implemented yet, let's assert that the constant format string indeed
> >> + * covers all possible pipes.
> >> + */
> >> +static_assert(I915_MAX_PIPES - 1 == _TRACE_PIPE_D);
> >> +
> >> +#define _PIPES_FRAME_AND_SCANLINE_FMT                \
> >> +        "pipe A: frame=%u, scanline=%u"                \
> >> +        ", pipe B: frame=%u, scanline=%u"        \
> >> +        ", pipe C: frame=%u, scanline=%u"        \
> >> +        ", pipe D: frame=%u, scanline=%u"
> >
> >Hmm. We have a lot of tracpoints that just print these for a single
> >pipe. Is there any decent way to make this macro just for one pipe,
> >and then resuse it for all the tracepoints whether they trace one
> >pipe or all of them?
> 
> Maybe what we could do is to have a local struct pipe_counters type
> and have _PIPE_COUNTERS_FMT and _PIPE_COUNTERS_VALUES for it. Then they
> could be used here as well as for the single-pipe cases.

Can we use structs here or would that confuse trace-cmd as well?

-- 
Ville Syrjälä
Intel
