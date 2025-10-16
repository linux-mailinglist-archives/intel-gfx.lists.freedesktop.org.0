Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F01E4BE4FB0
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 20:04:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DB3C10E325;
	Thu, 16 Oct 2025 18:04:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dx8sdUMV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37E8A10E325;
 Thu, 16 Oct 2025 18:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760637845; x=1792173845;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=hN+T/OHPUHs9d4WZGPSqJ0c11kdDjvwDmypYDVjzPkk=;
 b=dx8sdUMVvg82/3k3l0VK8sTBQY3FzI9/vJfDCpc6h/F3S5/K4zoLyBw4
 PPXq34Up9De8u5L74Av4i3OG0usvS5DQ12+GY0uF2qy9dlXQWnK5P8cnn
 BgpFWXE284qFPCRf+dUmm3Z5t88PY7ojLKx/C99VvopGkrR73ByhSxCC7
 FvUqdFTHYNo1/lOZMKSP5lrMSa1A3llkLX7/dgJFD7/G1YNAi5XzoQfPd
 xovVEH8gMnhmjaCxoAs+Fpm0QPh2Jj1hyjb3X4ptd/HO+Fjpl37nLrIWt
 so4c0J1ZH7QCXPHsOudSBG2xU6NjI8B2TxhVcYAZ2vkw95KTWuqgXw3VQ w==;
X-CSE-ConnectionGUID: 8MPr+Wa/SbyycnGvD5qLGw==
X-CSE-MsgGUID: h838ULGYTwOap0UbbY2QxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="62889390"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="62889390"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 11:04:05 -0700
X-CSE-ConnectionGUID: 5J5Ss/+uT4SYjky3FNbjJA==
X-CSE-MsgGUID: pQ+IxYjjQgyIxN2Y/QAokg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="182203794"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.12])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 11:04:02 -0700
Date: Thu, 16 Oct 2025 21:04:00 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, Imre Deak <imre.deak@intel.com>
Subject: Re: [RFC PATCH 18/39] drm/i915/display: Determine Cx0 PLL DP mode
 from PLL state
Message-ID: <aPEzkHAVpYKl-GcC@intel.com>
References: <20251001082839.2585559-1-mika.kahola@intel.com>
 <20251001082839.2585559-19-mika.kahola@intel.com>
 <6e0a3d761178ff4901ad81e3c2fa84b75a0d7dfe@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6e0a3d761178ff4901ad81e3c2fa84b75a0d7dfe@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Wed, Oct 01, 2025 at 12:16:57PM +0300, Jani Nikula wrote:
> On Wed, 01 Oct 2025, Mika Kahola <mika.kahola@intel.com> wrote:
> > From: Imre Deak <imre.deak@intel.com>
> >
> > The Cx0 PLL enable programming needs to know if the PLL is in DP or HDMI
> > mode. The PLL manager framework doesn't pass the CRTC state to the PLL's
> > enable hook, so prepare here for the conversion to use the PLL manager
> > for Cx0 PHY PLLs by determining the DP/HDMI mode from the PLL state.
> >
> > For C10 PHYs use the fact that the HDMI divider value in the PLL
> > registers are set if and only if the PLL is in HDMI mode.
> >
> > For C20 PHYs use the DP mode flag programmed to the VDR SERDES register,
> > which is set if and only if the PLL is in DP mode.
> >
> > Assert that the above PLL/VDR SERDES register values match the DP/HDMI
> > mode being configured already during state computation.
> >
> > This also allows dropping the is_dp param from the
> > __intel_cx0pll_enable() function, since it can retrieve this now from
> > the PLL state.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 43 ++++++++++++++++----
> >  1 file changed, 36 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > index 93e37b7ac3d9..f2fd766343d5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > @@ -2090,6 +2090,24 @@ static void intel_c10pll_update_pll(struct intel_encoder *encoder,
> >  		pll_state->c10.pll[i] = 0;
> >  }
> >  
> > +static bool c10pll_state_is_dp(const struct intel_c10pll_state *pll_state)
> > +{
> > +	return !REG_FIELD_GET8(C10_PLL15_HDMIDIV_MASK, pll_state->pll[15]);
> > +}
> > +
> > +static bool c20pll_state_is_dp(const struct intel_c20pll_state *pll_state)
> > +{
> > +	return pll_state->vdr.serdes_rate & PHY_C20_IS_DP;
> 
> Wouldn't need this if software state was the logical state instead of
> hardware state that you need to mask. It could be just
> pll_state->vdr.is_dp, and no function needed.

I think for now we want the PLL states to be raw registers. That's how
it all worked so far, except that snps/cx0 screwed that up by adding
some non-register stuff in there. It looks to me like one of the reasons
why the cx0 code is a bit of a mess is exactly because it hasn't fully
committed to either representation.

I think for now we should generally nuke that abstract stuff from
cx0/snps and go for pure register values to keep the design consistent. 

In the future we might want to change things to track the PLL state
in some common abstract form in high level code, and just convert
to/from the register based representation inside the specific PLL
implementation.

For that we would need to come up with some abstract PLL state
that covers all the important aspects across all the platforms,
but doesn't delve into the super low level hw details because
there's just far too much of that in PLLs.

-- 
Ville Syrjälä
Intel
