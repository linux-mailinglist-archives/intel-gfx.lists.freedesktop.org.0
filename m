Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D716BEB46
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 15:30:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B530110E125;
	Fri, 17 Mar 2023 14:30:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE5F510E125
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 14:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679063440; x=1710599440;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=KgptQsEw5g+EHBUfosQcjJWgkEuWtKGSMHSfFVU28q0=;
 b=HNHhAm3LxK+YmfaD/5fBtXPTTMTnY8+FMfFZIzl3uwMmMmbiTUmaH42W
 o8aMP+nZUoyg0DVDBPMiasYyNQMxsUI1rQ6PedkuYd7oUPXw37NRdZdZU
 BFYj2spYX8aykkcV0yyWgIcGQoBJs9mKzpsdrHKVjDn1nSR0/lh+6fUj7
 Figk4rcLIUXitdaf5rmrT1exUr6buXxk2Y20PXamEvOMsf9d2hwY6FVYt
 dm476tfQXK5bkGhDOo0iMsYgGU9DhPgKF7GftsIkhn6ekLn+J4QRNQTU1
 8mNvrG33884GOmODdVI1Jdo4ZKXqkulXMloshxUMbdI8bv/YJMqdaXjM8 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="340629414"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="340629414"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 07:30:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="680301483"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="680301483"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 17 Mar 2023 07:30:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Mar 2023 16:30:37 +0200
Date: Fri, 17 Mar 2023 16:30:37 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZBR5jb3TY6S92yZE@intel.com>
References: <20230317125352.198042-1-jani.nikula@intel.com>
 <20230317125352.198042-2-jani.nikula@intel.com>
 <ZBRpOllVY8PFfc3w@intel.com> <87pm97a48q.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87pm97a48q.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/debugfs: add crtc i915_pipe
 debugfs file
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 17, 2023 at 03:37:09PM +0200, Jani Nikula wrote:
> On Fri, 17 Mar 2023, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Fri, Mar 17, 2023 at 02:53:52PM +0200, Jani Nikula wrote:
> >> The pipe may differ from crtc index if pipes are fused off. For testing
> >> purposes, IGT needs to know the pipe.
> >> 
> >> There's already a I915_GET_PIPE_FROM_CRTC_ID IOCTL for this. However,
> >> the upcoming Xe driver won't have that IOCTL, and going forward, we'll
> >> want a unified interface for testing i915 and Xe, as they share the
> >> display code. Thus add the debugfs for i915 display.
> >> 
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  .../gpu/drm/i915/display/intel_display_debugfs.c    | 13 +++++++++++++
> >>  1 file changed, 13 insertions(+)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >> index faa44fb80aac..e85270adca95 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >> @@ -1657,6 +1657,17 @@ static int i915_current_bpc_show(struct seq_file *m, void *data)
> >>  }
> >>  DEFINE_SHOW_ATTRIBUTE(i915_current_bpc);
> >>  
> >> +/* Pipe may differ from crtc index if pipes are fused off */
> >> +static int intel_crtc_pipe_show(struct seq_file *m, void *unused)
> >> +{
> >> +	struct intel_crtc *crtc = m->private;
> >> +
> >> +	seq_printf(m, "%d\n", crtc->pipe);
> >
> > Are we happy with an integer or should we use the actual alphabetic
> > name here?
> 
> Primarily I considered the programmatic use case, and the ease of
> switching over from the ioctl. What do we gain by making IGT parse this?

Well even the integer is represented in ascii so parsing
needs to happen anyway. But I was mainly thinking if any
human looks at it they may be confused as to what the
raw integer even means.

> 
> > Either way, the series is:
> > Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Thanks,
> Jani.
> 
> >
> >> +
> >> +	return 0;
> >> +}
> >> +DEFINE_SHOW_ATTRIBUTE(intel_crtc_pipe);
> >> +
> >>  /**
> >>   * intel_connector_debugfs_add - add i915 specific connector debugfs files
> >>   * @connector: pointer to a registered drm_connector
> >> @@ -1735,4 +1746,6 @@ void intel_crtc_debugfs_add(struct intel_crtc *crtc)
> >>  
> >>  	debugfs_create_file("i915_current_bpc", 0444, root, crtc,
> >>  			    &i915_current_bpc_fops);
> >> +	debugfs_create_file("i915_pipe", 0444, root, crtc,
> >> +			    &intel_crtc_pipe_fops);
> >>  }
> >> -- 
> >> 2.39.2
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
