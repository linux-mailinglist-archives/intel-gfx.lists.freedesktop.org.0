Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B9EA39CD0
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 14:05:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7AAC10E6A1;
	Tue, 18 Feb 2025 13:05:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PZ7/CEp/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D42E610E09E;
 Tue, 18 Feb 2025 13:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739883918; x=1771419918;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=71kS2+48mrgYJgp15fTP57cbCUmSXoX2GS52jWwTd6k=;
 b=PZ7/CEp/ZYR+6ivOPRCt4QO3Tkelp3bbeCKNaZsczfWTg1QSZsSJ70QB
 V5Ax0swrWEWuJtOdNFUvNpaWF339x2uvSGCIJLJbs4Ijyk+cg/MlIoixx
 9rUPYbA+S8NVj//t6mpXxGarhs5VfLBr394bKMqwaYr70BPQxtK0X0Dg6
 aJPQX8X2AT3jU4h78utF0lAcMOkdctiz9en1fBVAqMOrx13kA4rM+ZLdU
 mEJ6wvqTbztHWcsjGKLWBhVPImMu4y/3bmTqi/Cbhz4u9uUd0EOEvadUq
 HAWBaImYkVFLnvomIpv+Jh3CeTjeRaB3oVcz8P/Qv5IK/5vkBDSymKYJf Q==;
X-CSE-ConnectionGUID: t6rtxv/rSti6QMGLbeGQzA==
X-CSE-MsgGUID: ODV5LqjFTcSWs0rJD/GfwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="52007614"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="52007614"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 05:05:18 -0800
X-CSE-ConnectionGUID: cF6gCwh6T9SGTT0NHqU7sQ==
X-CSE-MsgGUID: 6VZhtQpVSA6Je94QwbgT9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="114313710"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 05:05:17 -0800
Date: Tue, 18 Feb 2025 15:06:13 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 stable@vger.kernel.org
Subject: Re: [PATCH 1/2] drm/i915/dp: Fix error handling during 128b/132b
 link training
Message-ID: <Z7SFxRKb9_H0fAjG@ideak-desk.fi.intel.com>
References: <20250217223828.1166093-1-imre.deak@intel.com>
 <20250217223828.1166093-2-imre.deak@intel.com>
 <875xl7o1py.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <875xl7o1py.fsf@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 18, 2025 at 02:51:21PM +0200, Jani Nikula wrote:
> On Tue, 18 Feb 2025, Imre Deak <imre.deak@intel.com> wrote:
> > At the end of a 128b/132b link training sequence, the HW expects the
> > transcoder training pattern to be set to TPS2 and from that to normal
> > mode (disabling the training pattern). Transitioning from TPS1 directly
> > to normal mode leaves the transcoder in a stuck state, resulting in
> > page-flip timeouts later in the modeset sequence.
> >
> > Atm, in case of a failure during link training, the transcoder may be
> > still set to output the TPS1 pattern. Later the transcoder is then set
> > from TPS1 directly to normal mode in intel_dp_stop_link_train(), leading
> > to modeset failures later as described above. Fix this by setting the
> > training patter to TPS2, if the link training failed at any point.
> >
> > Cc: stable@vger.kernel.org # v5.18+
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> 
> No bspec link for this?

The only clue I see for this is PTL's (and other platforms') modeset
page (68849) "Enable Sequence" 6. n.: "If DP v2.0/128b, set DP_TP_CTL
link training pattern 2."

Since setting TPS2 is normally part of the link training (described by
6. l./m.), so the only reason mentioning it as a separate step for
128b/132b (vs. 8b/10b for which it is not mentioned), could be this HW
behavior.

It's obscure imo, could've been explained in the spec better. I can
clarify this in the commit log and also file a bspec ticket for it.

> Acked-by: Jani Nikula <jani.nikula@intel.com>

Thanks.

> 
> > ---
> >  .../gpu/drm/i915/display/intel_dp_link_training.c | 15 ++++++++++++++-
> >  1 file changed, 14 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index 3cc06c916017d..11953b03bb6aa 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -1563,7 +1563,7 @@ intel_dp_128b132b_link_train(struct intel_dp *intel_dp,
> >  
> >  	if (wait_for(intel_dp_128b132b_intra_hop(intel_dp, crtc_state) == 0, 500)) {
> >  		lt_err(intel_dp, DP_PHY_DPRX, "128b/132b intra-hop not clear\n");
> > -		return false;
> > +		goto out;
> >  	}
> >  
> >  	if (intel_dp_128b132b_lane_eq(intel_dp, crtc_state) &&
> > @@ -1575,6 +1575,19 @@ intel_dp_128b132b_link_train(struct intel_dp *intel_dp,
> >  	       passed ? "passed" : "failed",
> >  	       crtc_state->port_clock, crtc_state->lane_count);
> >  
> > +out:
> > +	/*
> > +	 * Ensure that the training pattern does get set to TPS2 even in case
> > +	 * of a failure, as is the case at the end of a passing link training
> > +	 * and what is expected by the transcoder. Leaving TPS1 set (and
> > +	 * disabling the link train mode in DP_TP_CTL later from TPS1 directly)
> > +	 * would result in a stuck transcoder HW state and flip-done timeouts
> > +	 * later in the modeset sequence.
> > +	 */
> > +	if (!passed)
> > +		intel_dp_program_link_training_pattern(intel_dp, crtc_state,
> > +						       DP_PHY_DPRX, DP_TRAINING_PATTERN_2);
> > +
> >  	return passed;
> >  }
> 
> -- 
> Jani Nikula, Intel
