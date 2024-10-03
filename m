Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5226498F85B
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 22:59:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E59A410E1CD;
	Thu,  3 Oct 2024 20:59:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZeZiqiMM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6603E10E1CD;
 Thu,  3 Oct 2024 20:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727989196; x=1759525196;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=yU47IDmaOxgO+DlQHOlF1NxeXtdfklYO97qszBimVoI=;
 b=ZeZiqiMMz+JQnLh3KI3xGY4mddCXdLG300p8lmsuD5+T4lntFAKmFQF4
 U9OvFApFIc7oTxcKBd/yeO1V+ltHzd/O0YR1tLiBDT8GIlqRur08AOgmz
 PB3yhr2/MtaBegf6Amv+5Biu4QIDAIvYoanc6wwMA6E6bkOI5tZzJV8T0
 SKxx30VjPmx/vk6QrNCETpbpFpKT9GuDIPtdn294umV2kW2adVF8KybUI
 ILQDhc3qhQ9JjHuMRHPMkjibV1nnvN0FleZYZMa26hGb8AVAgzbB80sFe
 fA9q9IDKqt7eIWf6MEsN6/Pg631pI21JjANJrQj8Y1Tv2ON8cu2c4CjkW g==;
X-CSE-ConnectionGUID: EI6KRAV2RhSmO6gV4yfwZA==
X-CSE-MsgGUID: L3za5meuRKepx13ewIDS/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="44670858"
X-IronPort-AV: E=Sophos;i="6.11,175,1725346800"; d="scan'208";a="44670858"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 13:59:55 -0700
X-CSE-ConnectionGUID: rwPBZcgWQS+rTcbZk05JqQ==
X-CSE-MsgGUID: KnjyNG5UQqmnIAzhcGJr5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,175,1725346800"; d="scan'208";a="74600031"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 Oct 2024 13:59:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Oct 2024 23:59:53 +0300
Date: Thu, 3 Oct 2024 23:59:53 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v3 03/12] drm/i915/display: Use async flip when available
 for initial plane config
Message-ID: <Zv8FyY-Wz2FBxQ_8@intel.com>
References: <20241003154421.33805-1-maarten.lankhorst@linux.intel.com>
 <20241003154421.33805-4-maarten.lankhorst@linux.intel.com>
 <Zv7C7-H3sb053fje@intel.com>
 <e83436f7-7236-4cd7-a5a3-75c7c7dfcb04@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e83436f7-7236-4cd7-a5a3-75c7c7dfcb04@linux.intel.com>
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

On Thu, Oct 03, 2024 at 10:50:24PM +0200, Maarten Lankhorst wrote:
> Hello,
> 
> Den 2024-10-03 kl. 18:14, skrev Ville Syrjälä:
> > On Thu, Oct 03, 2024 at 05:44:12PM +0200, Maarten Lankhorst wrote:
> >> I'm planning to reorder readout in the Xe sequence in such a way that
> >> interrupts will not be available, so just use an async flip.
> >>
> >> Since the new FB points to the same pages, it will not tear. It also
> >> has the benefit of perhaps being slightly faster.
> >>
> >> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/skl_universal_plane.c | 13 +++++++++++--
> >>   1 file changed, 11 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> >> index fdb141cfa4274..73a3624e34098 100644
> >> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> >> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> >> @@ -2800,7 +2800,7 @@ bool skl_fixup_initial_plane_config(struct intel_crtc *crtc,
> >>   		to_intel_plane_state(plane->base.state);
> >>   	enum plane_id plane_id = plane->id;
> >>   	enum pipe pipe = crtc->pipe;
> >> -	u32 base;
> >> +	u32 base, plane_ctl;
> >>   
> >>   	if (!plane_state->uapi.visible)
> >>   		return false;
> >> @@ -2814,7 +2814,16 @@ bool skl_fixup_initial_plane_config(struct intel_crtc *crtc,
> >>   	if (plane_config->base == base)
> >>   		return false;
> >>   
> >> +	/* Perform an async flip to the new surface. */
> >> +	plane_ctl = intel_read(i915, PLANE_CTL(pipe, plane_id));
> >> +	plane_ctl |= PLANE_CTL_ASYNC_FLIP;
> >> +
> > 
> > No async flips!
> 
> Can you please explain your reasoning?

Async flips are special. They have all kinds of random hardware
limitations.

> I think async flip would fit 
> perfectly here. We cannot perform a wait_for_vblank as we will not have 
> interrupts enabled yet.

The type of flip is irrelevant when you just poll until it's done.

> Additionally an async flip would cause a faster 
> driver loading. Since the FB is exactly the same except set to a 
> different address, no tearing will occur.

Until we violate some hardware requirement and you get a fault.

-- 
Ville Syrjälä
Intel
