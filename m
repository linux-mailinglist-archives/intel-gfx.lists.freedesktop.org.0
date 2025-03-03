Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B87BA4C5E0
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Mar 2025 16:57:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0657C10E48C;
	Mon,  3 Mar 2025 15:57:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dORj87lU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2CEA10E487;
 Mon,  3 Mar 2025 15:57:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741017472; x=1772553472;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=X/kGmlSdAf8hVWg3etAJmXC9bKDpWdSh38Iung1v08g=;
 b=dORj87lUnPxEo46FDSTTTgaNlanoAaYF5TJRvT7E7xjh986uIQYpikdS
 GZMRRyK8raBuMhnrD2yEZNnZId0QuIfU8UhUazmLZFSX9IIXwiob/0ev5
 q6U30t7YwkzFQYWcrRilJtuTopWP8a0OyiiIaX8fKs/RtmpOOBNCN6Q+o
 qUSby8vgHRyR3GxO6ozzO4pBGuu08ax8b9tVykU0HkCaTpKfgS8mH4l+Z
 nkHNDX9fuqkTd8fgv4oaJXLMgkpkFgWAcLaCJBI2/Z8CegA5vfOb2XqY5
 RhoEDEEYBNsT6Mn4ltYbecvOEa9BW5JZhsE9uAxpj9GIs/GJhbdkq8PHq Q==;
X-CSE-ConnectionGUID: DEK9gAlWT+CT4bb3hAGw1g==
X-CSE-MsgGUID: J10oiQcGQXq1W564iItvHg==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="52105390"
X-IronPort-AV: E=Sophos;i="6.13,330,1732608000"; d="scan'208";a="52105390"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 07:57:48 -0800
X-CSE-ConnectionGUID: 5U3UNDmoQ7eMcV1DiVMP8g==
X-CSE-MsgGUID: a/KzYxh+TcmmGgBi1RBnIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,330,1732608000"; d="scan'208";a="148880799"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 07:57:47 -0800
Date: Mon, 3 Mar 2025 17:57:41 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>,
 "Kandpal, Suraj" <suraj.kandpal@intel.com>
Subject: Re: [PATCH v9] drm/i915/dp: Guarantee a minimum HBlank time
Message-ID: <Z8XRda_CyPSPqwFq@ideak-desk.fi.intel.com>
References: <20250122-hblank-v9-1-90afda006685@intel.com>
 <Z6U7Z5EWRYzKAUlQ@ideak-desk.fi.intel.com>
 <IA0PR11MB7307437F3882B0B5BAE7B3F1BAC92@IA0PR11MB7307.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <IA0PR11MB7307437F3882B0B5BAE7B3F1BAC92@IA0PR11MB7307.namprd11.prod.outlook.com>
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

On Mon, Mar 03, 2025 at 11:55:30AM +0200, Murthy, Arun R wrote:
> [...]
> > > +{
> > > +   struct intel_encoder *encoder = connector->encoder;
> > > +   struct intel_display *display = to_intel_display(encoder);
> > > +   const struct drm_display_mode *adjusted_mode =
> > > +                                   &crtc_state->hw.adjusted_mode;
> > > +   int symbol_size = intel_dp_is_uhbr(crtc_state) ? 32 : 8;
> > > +   int hblank;
> > > +
> > > +   if (DISPLAY_VER(display) < 20)
> > > +           return;
> > > +
> > > +   /* Calculate min Hblank Link Layer Symbol Cycle Count for 8b/10b MST & 128b/132b */
> > > +   hblank = DIV_ROUND_UP((DIV_ROUND_UP
> > > +                          (adjusted_mode->htotal - adjusted_mode->hdisplay, 4) * bpp_x16),
> > > +                         symbol_size);
> >
> > bpp_x16 is the bpp in .4 fixed point format, so the above seems to be missing a
> > div-by-16 accordingly.

Please also comment on the above.

> > Also the above formula doesn't seem to take DSC into account. Based on the
> > HBLNK_ML_SYM_CYC_CNT formula in DP Standard v2.1 (at 2.6.4.4.1 and
> > 2.7.9) Bspec tells us to use (converting it to LL cycles, which is just assuming 4
> > lanes always), I think we'd need something like:
> >
> > lane_count = 4;
> > hactive = adjusted_mode->hdisplay;
> > htotal = adjusted_mode->htotal;
> > is_mst = true;
> >
> > hactive_sym_cycles = is_dsc ? drm_dp_link_dsc_symbol_cycles(lane_count, hactive, dsc_slices,
> >                                                             bpp_x16, symbol_size, is_mst) :
> >                             drm_dp_link_symbol_cycles(...);
> > htotal_sym_cycles = htotal * hactive_sym_cycles / hactive;
> > hblank_sym_cycles = htotal_sym_cycles - hactive_sym_cycles;
> >
> I assume this is for Htotal LL CYC CNT.
> Min Hblank calculation is included in the VESA spec (https://groups.vesa.org/wg/DP/document/20494)

I meant MIN_HBLNK_LL_SYM_CYC_CNT which Bspec refers to and
defined by the DP Standard as:

MIN_HBLNK_LL_SYM_CYC_CNT = MAX((FLOOR(HTOTAL_WIDTH * EFF_PIX_BPP / (4 * SYMBOL_SIZE)) - HACT_LL_SYM_CYC_CNT),
                               min_sym_cycles)

where min_sym_cycles is 5 for 8b/10b and 3 for 128b/132b. This is the
same as

    MAX(hblank_sym_cycles, min_sym_cycles)

using hblank_sym_cycles from above.

> > > +
> > > +   crtc_state->min_hblank = hblank;
> > > +}
> [...]
> > > @@ -1280,6 +1308,29 @@ static void mst_stream_enable(struct intel_atomic_state *state,
> > >                            TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz & 0xffffff));
> > >     }
> > >
> > > +   if (DISPLAY_VER(display) >= 20) {
> > > +           /*
> > > +            * adjust the BlankingStart/BlankingEnd framing control from
> > > +            * the calculated value
> > > +            */
> >
> > All these adjustments should be done already during computation in
> > intel_dp_mst_compute_min_hblank(), the only thing done here is
> > writing pipe_config->min_hblank to the register.
> >
> As per the comment, the crtc_state should not hold the register
> content, retained the calculated value in crtc_state and register
> alignment done here.

The actual value programmed to the register should be computed already
in intel_dp_mst_compute_min_hblank(). There is no point in doing part of
the computation in intel_dp_mst_compute_min_hblank() and part of it
here. Moving all the computation to intel_dp_mst_compute_min_hblank()
is also what makes sense wrt. the HW/SW state verification.

> 
> > HW/SW state verification should be added, as Ville reminded.
> >
> > > +           min_hblank = pipe_config->min_hblank - 2;
> >
> > Probably better to avoid getting min_hblank negative already here.
> >
> > > +
> > > +           /* Maximum value to be programmed is limited to 0x10 */
> > > +           min_hblank = min(0x10, min_hblank);
> >
> > Bspec seems to specify a decimal 10 value.
> >
> Will get this clarified.
> 
> > > +           /*
> > > +            * Minimum hblank accepted for 128b/132b would be 5 and for
> > > +            * 8b/10b would be 3 symbol count

This seems to be swapped, based on the DP Standard the minimum should
be 3 for 128b/132b and 5 for 8b/10b.


> > > +            */
> >
> > Where is the above 5 and 3 minimum symbol count defined at? I can't see
> > anything related to that at least in Bspec.
> >
> This is mentioned in the HLD and https://groups.vesa.org/wg/DP/document/20494

There should be a comment about this in the code. Based on the DP
Standard, I suppose for 128b/132b the 3 symbols are BS, VB-ID, BE.

> > > +           if (intel_dp_is_uhbr(pipe_config))
> > > +                   min_hblank = max(min_hblank, 5);
> > > +           else
> > > +                   min_hblank = max(min_hblank, 3);
> > > +
> > > +           intel_de_write(display, DP_MIN_HBLANK_CTL(trans),
> > > +                          min_hblank);
> >
> > What is the purpose of programming this? I can't find any explanation for it,
> > but one reason could be to ensure that the audio SDP data can be transmitted
> > during the Hblank period. That would mean it wouldn't need to be programmed
> > if there is no audio being transmitted and that it could be adjusted according to
> > the actual audio BW. Would be good to request a clarification for this from HW
> > people.
> >
> https://groups.vesa.org/wg/DP/document/20494
>
> Address issues for resolutions with high refresh rate that have small
> Hblank, specifically where Hblank is smaller than one MTP.
> Simulations indicate this this will address the jitter issues that
> currently causes BS to be immediately followed by BE which DPRX
> devices are unable to handle.

I can't see this. It would make sense to document this as well in the
code.

> Thanks and Regards,
> Arun R Murthy
> ---------------------
