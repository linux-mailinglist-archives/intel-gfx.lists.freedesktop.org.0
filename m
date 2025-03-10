Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBFAEA59A64
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 16:52:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C016910E483;
	Mon, 10 Mar 2025 15:52:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="neYaKKCu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9247610E480;
 Mon, 10 Mar 2025 15:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741621931; x=1773157931;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9hRtz3LYpwJ6Wy9v2dvZe3fOq9VWstYw+TA2eVsSmcM=;
 b=neYaKKCuRmhrBSPJA6HW8zi88l0YAbIsv0pLPJQhlHvqCTL5xvHqUNmS
 hrVsOnp5dOsaxw0/suVQcb755L5XkfGLh++Bsyl3fEKsYAgXaivPk3hfc
 5kc0sngjg4lVDJjj9ASuC4UpquExbvY9L8notGPAMsTx1iiz8fGT0kBn3
 AmgBPkDMFLvyQamgHAj1LnrqmXBr/Gvday7mT++8nr5lHmSO9YRe6uVP5
 Fgi8Hnc5F31wGMwQGgI31MH8TLrY8qrPtZIZqR2Nwbd6skU7aaxMskZSO
 ci7E07nHfb95F01ol55A7/sQP4D/MDTz12LWC3/0vy4YCoVPM55qMQ3eK w==;
X-CSE-ConnectionGUID: X7LK7xYzT9aJF/kRkm8Ayw==
X-CSE-MsgGUID: KsGhXLURRxCHpRGZWxE5mw==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="65080436"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="65080436"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 08:52:10 -0700
X-CSE-ConnectionGUID: SAzD0fIVSd2yFvNnDOBWJg==
X-CSE-MsgGUID: bSUMX9nXTAufsFTzermV6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="125259570"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 10 Mar 2025 08:52:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 10 Mar 2025 17:52:06 +0200
Date: Mon, 10 Mar 2025 17:52:06 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 17/21] drm/i915/display: Move vrr.guardband/pipeline_full
 out of !fastset block
Message-ID: <Z88Kpk7Pcl_YCDRV@intel.com>
References: <20250306131100.3989503-1-ankit.k.nautiyal@intel.com>
 <20250306131100.3989503-18-ankit.k.nautiyal@intel.com>
 <Z8sCIb37gtdczFtx@intel.com>
 <49d75934-ea02-45e1-a8ec-862af3aee5b1@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <49d75934-ea02-45e1-a8ec-862af3aee5b1@intel.com>
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

On Sun, Mar 09, 2025 at 10:05:48PM +0530, Nautiyal, Ankit K wrote:
> 
> On 3/7/2025 7:56 PM, Ville Syrjälä wrote:
> > On Thu, Mar 06, 2025 at 06:40:56PM +0530, Ankit Nautiyal wrote:
> >> The vrr.guardband/pipeline_full depend on the vrr.vmin. Since we have
> >> set vrr.vmin to adjusted_mode->crtc_vtotal, this shouldn't change on the
> >> fly. With this we can move vrr.guardband/pipeline_full out from !fastset
> >> block.
> >>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_display.c | 5 +++--
> >>   1 file changed, 3 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> >> index 322a05648f58..a642496e366c 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >> @@ -5393,8 +5393,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
> >>   		PIPE_CONF_CHECK_I(vrr.vmin);
> >>   		PIPE_CONF_CHECK_I(vrr.vmax);
> >>   		PIPE_CONF_CHECK_I(vrr.flipline);
> >> -		PIPE_CONF_CHECK_I(vrr.pipeline_full);
> >> -		PIPE_CONF_CHECK_I(vrr.guardband);
> >>   		PIPE_CONF_CHECK_I(vrr.vsync_start);
> >>   		PIPE_CONF_CHECK_I(vrr.vsync_end);
> >>   		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
> >> @@ -5402,6 +5400,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
> >>   		PIPE_CONF_CHECK_BOOL(cmrr.enable);
> >>   	}
> >>   
> >> +	PIPE_CONF_CHECK_I(vrr.pipeline_full);
> >> +	PIPE_CONF_CHECK_I(vrr.guardband);
> >
> > Assuming we can't reprogram the guardband safely live
> > I think this would have to become
> >
> > if (!fastset || always_use_vrr_tg()) {
> >          ...
> > }
> >
> > which avoids breaking the LRR fastset on older platforms.
> >
> > Whether we can still risk the fastboot exception for the new
> > platforms I don't know. I guess leave it out for now and
> > ponder it further later.
> >
> > In the future I guess one option to resurrecting the fastsets
> > would be to somehow use a more fixed size gurdband instead of
> > the full vblank length, but that would need a lot of thought
> > and work, so definitely not something we can just do right
> > now.
> 
> 
> Yes I agree.
> 
> Will have the guardband under the new check.
> 
> Do we need to let pipeline_full as it is in !fastset since 
> always_use_vrr_tg() is anyways false for older platforms? Or we keep it 
> along with guardband?

I think we want to keep the two together. That way we can also
easily test the always_use_vrr_tg() codepaths on older platforms.

-- 
Ville Syrjälä
Intel
