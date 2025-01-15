Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12595A126E4
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 16:07:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3435510E037;
	Wed, 15 Jan 2025 15:07:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V9LSI2E4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 218B410E06B;
 Wed, 15 Jan 2025 15:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736953664; x=1768489664;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=uyqXYhDZI8B5V4qwEcNTyKfK9HJDUshN8tbglXwnNbA=;
 b=V9LSI2E4KoyWlac7YIuTnaLdJdoJn5SEyJQU2XlvRKVUjUxoFgU+8Vqs
 v9hGIOdELIF5U6Jo0Nl97RiYI9DhM6EL8bKClpqeWoqn9TgXcO0cglX05
 RVi6sNcqUJ9OF2O6ZNcZu6tu8vb/RzKmJLEHo6bea/+FZz/cxsx01tN7R
 3PfZ3RkiOgLlLJ/7hZCnQHOVCM07KYW7UnP/Zfu5PBbrAuxkvazUCmAV3
 JNiPmjcg/lXHVq+M8p+3w+B+9vlwcwCO7c2p+qXTSxVPVb9Em03taxyHX
 X44gpIqn0QuDXCNxTh/cjEhVr7naXZFuBZzmIwmLmJK0A0USerONj1GJ7 w==;
X-CSE-ConnectionGUID: gRHjyM49SQiULvXVXD+nbA==
X-CSE-MsgGUID: +LDz5cBLT5ebegcAIQ8t/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="48688578"
X-IronPort-AV: E=Sophos;i="6.13,206,1732608000"; d="scan'208";a="48688578"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 07:07:44 -0800
X-CSE-ConnectionGUID: VdJ50npUTOid3XKNSEcshA==
X-CSE-MsgGUID: CwnmMkGwSqe4inlMYKNPlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,206,1732608000"; d="scan'208";a="105355052"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 15 Jan 2025 07:07:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Jan 2025 17:07:39 +0200
Date: Wed, 15 Jan 2025 17:07:39 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v5] drm/i915/cmtg: Disable the CMTG
Message-ID: <Z4fPO_hBt9tr-gY1@intel.com>
References: <20250113204815.114019-1-gustavo.sousa@intel.com>
 <87msfth14h.fsf@intel.com>
 <173687228001.2823.13065824358956469360@intel.com>
 <Z4afvb-BsavfTC54@intel.com>
 <173694505428.3159.15238384116175670777@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <173694505428.3159.15238384116175670777@intel.com>
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

On Wed, Jan 15, 2025 at 09:44:14AM -0300, Gustavo Sousa wrote:
> Quoting Ville Syrjälä (2025-01-14 14:32:45-03:00)
> >On Tue, Jan 14, 2025 at 01:31:20PM -0300, Gustavo Sousa wrote:
> >> Quoting Jani Nikula (2025-01-14 12:21:50-03:00)
> >> >On Mon, 13 Jan 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> >> >> The CMTG is a timing generator that runs in parallel with transcoders
> >> >> timing generators and can be used as a reference for synchronization.
> >> >>
> >> >> On PTL (display Xe3_LPD), we have observed that we are inheriting from
> >> >> GOP a display configuration with the CMTG enabled. Because our driver
> >> >> doesn't currently implement any CMTG sequences, the CMTG ends up still
> >> >> enabled after our driver takes over.
> >> >>
> >> >> We need to make sure that the CMTG is not enabled if we are not going to
> >> >> use it. For that, let's add a partial implementation in our driver that
> >> >> only cares about disabling the CMTG if it was found enabled during
> >> >> initial hardware readout. In the future, we can also implement sequences
> >> >> for enabling CMTG if that becomes a needed feature.
> >> >
> >> >Doesn't this patch disable the CRTC, not the CMTG?
> >> 
> >> It disables the CMTG and that's it for LNL and PTL.
> >> 
> >> For platforms prior to LNL, disabling the CMTG requires a modeset;
> >> specifically for those, the CRTC is also disabled during the
> >> sanitization process (not sure if there is a clean way of forcing a
> >> modeset from the sanitization routine).
> >
> >I'm not sure why this whole global state stuff is needed here.
> >It seems to me that this should be handled more or less the same
> >as port sync. Ie:
> >
> >- track the cmtg state in intel_crtc_state
> 
> The main reasons I implemented CMTG state as a global state were that
> CMTG is not a exactly per-pipe thing and it could affect multiple pipes
> (A and B), at least not on pre-LNL platforms.

I suppose. But it doesn't seem to be fully really independent
thing either especially given the dependency to the port PLL
and such, and that's all handled per-pipe.

> On pre-LNL platforms, we have a single CMTG that can be used to
> synchronize the eDP TG of either or both pipes A and B.
> 
> As of LNL (Xe2_LPD, in the current patch I mistankenly considered
> Xe3_LPD instead), a second CMTG instance is added. In this case, we have
> CMTG A wired to pipe A and CMTG B, to pipe B. For dual eDP with support
> from the CMTG, both CMTGs must be on. For single eDP, the respective
> CMTG should be used.
> 
> Yeah, maybe tracking the CMTG state as part of intel_crtc_state could
> work. Just need to think then on how to handle the pre-LNL case.
> 
> (Furthermore I would also need educate myself on how our driver handle
> port sync that you mentioned above :-))
> 
> >- read it out
> 
> In this patch I only kept the state necessary for disabling. Should we
> keep it like that while we only care about disabling the CMTG?

Yeah, I guess we don't need a full readout right now.

> 
> >- add it to the state checker
> 
> By "state checker", do you refer to intel_pipe_config_compare()?
> 
> One possible issue here is that for LNL and newer, disabling the CMTG
> does not require a modeset. So, could we be causing an unnecessary
> modeset in some cases?

We can skip the check for fastset, assuming we have a proper fastset
codepath for disabling the CMTG. I don't know what kind of magic
synchronization is needed around that.

> 
> >- add the necessary bits to the disable sequence
> >  (no need for enable right now I guess if we 
> >  force a disable)
> 
> Yep, I believe I have the hardware programming sequence to actually
> disable.
> 
> One thing I'm strugling is to find the proper place to cause the
> disabling. In my original approach (see [1]), I had that done as part of
> the initial commit. In this current patch, the disabling was done as
> part of the sanitization.
> 
> [1] https://lore.kernel.org/all/20250104172937.64015-2-gustavo.sousa@intel.com/
> 
> >- flag mode_changed=true for any crtc that has cmtg enabled
> >  in initial commit to force the modeset
> 
> Well, for LNL I believe we can skip the modeset and trigger it only for
> pre-LNL. At which point exactly should we flag mode_changed=true?

Around the same part where we have the color_mgmt_changed hack
in intel_initial_commit() would seem fine to me.

> 
> In [1], I forced a modeset in intel_cmtg_check_modeset() for pipes that
> would have their TRANS_DDI_FUNC_CTL2[CMTG Secondary mode] bit changed
> (would would only be from 1 to 0 in this case).
> 
> >
> >I guess the one open question is how to deal with cases
> >where the same CMTG is used for two pipes (assuming that's
> >a thing?).
> 
> That's a thing for pre-LNL platforms.
> 
> > We may need to extend the port_sync master/slave
> >handling in the enable/disable sequences to deal with cmtg
> >as well to make sure things are done in the right order.
> >
> >Also it looks like CMTG is more or less a full blow trancoder
> >(ie. has a full set of timing registers). The docs are rather
> >confusing but it looks to me like they're saying that one
> >should still program the normal transcoder registers as well,
> >even when using CMTG. I guess if we ever implement proper
> >support for this we should at least have some kind of
> >sanity check to confirm that.
> 
> Yeah. I had to go through more documentation outside of the BSpec as
> well as go asking hardware folks to understand it better.
> 
> As far as I understand, the CMTG is not exactly a full blow transcoder.
> I suspect it replicates only the functions related to timing generation.
> 
> And it does not actually drive the port. It runs in parallel to the
> timing generator actually driving the port (i.e. the eDP TG). The only
> interaction between the two is for synchronization. When
> TRANS_DDI_FUNC_CTL2[CMTG Secondary mode] is 1, the eDP TG will sync with
> the CMTG's TG start and frame sync signals.
> 
> --
> Gustavo Sousa
> 
> >
> >-- 
> >Ville Syrjälä
> >Intel

-- 
Ville Syrjälä
Intel
