Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A6188E72E
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 15:49:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 342CF10EF0B;
	Wed, 27 Mar 2024 14:49:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UMS4IUAj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7FAF10FD5B
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Mar 2024 14:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711550996; x=1743086996;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=V9y9nY/bi9bTzw74fe0XiefvT6JTYuVc5IIVSER0Npc=;
 b=UMS4IUAjqsmnepCW3H4OSjV1kG5zY15/uKgaFd2lNyaP0zb/MIPvUoNE
 wW8/paSGXFTH2XPHnLQ1RiUt3oeI+mDEVax9pjO6ifMtz+5KFZtgyo9jL
 p/LW9lh/5RVzqM3vY57JudK1jQ0hECGMqcLfBgZkl7Zv6poV2s81UoAip
 2vKQqsq9QHjZDONnKxsRS4ElfNv3a5KRcCHlwARpdBfc9toft2Ed5+Vkf
 a9EkbZUxNyvNgHKAtn8fD3FEcdCW/B7LRFaspCq2RPydRbn6C4ju1LYD3
 q9gcotZ7ldiXIqlBs790OjbXS77QEnnYumYRWmu7Ew3LwQTtBDL5slEep w==;
X-CSE-ConnectionGUID: DJXMsseOQj+93upsPT1JLQ==
X-CSE-MsgGUID: vb9q3GFFRdSJ2tSjIq6WqQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="24147663"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="24147663"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 07:49:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="20979694"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 07:49:53 -0700
Date: Wed, 27 Mar 2024 16:50:23 +0200
From: Imre Deak <imre.deak@intel.com>
To: Manasi Navare <navaremanasi@chromium.org>
Cc: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 06/11] drm/i915/dp_mst: Sanitize calculating the DSC DPT
 bpp limit
Message-ID: <ZgQyL6BVHXhETDfW@ideak-desk.fi.intel.com>
References: <20240320201152.3487892-1-imre.deak@intel.com>
 <20240320201152.3487892-7-imre.deak@intel.com>
 <11f68c1e-2855-4305-8bab-af6250b7caaf@intel.com>
 <CAE72mN=wHqsO5gKeisCkN--g+kz6QcpgfLH8iXe6H96JALX-jA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAE72mN=wHqsO5gKeisCkN--g+kz6QcpgfLH8iXe6H96JALX-jA@mail.gmail.com>
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

On Tue, Mar 26, 2024 at 01:13:38PM -0700, Manasi Navare wrote:
> Hi Imre,
> 
> Would this impact/fix DSC functionality on ADL based platforms as well
> or will this change only impact platforms that support UHBR?

The related DPT limit changes in this patchset make a difference only
on platforms supporting UHBR, so DG2 and MTL+.

> Manasi
> 
> On Tue, Mar 26, 2024 at 5:55 AM Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com> wrote:
> >
> >
> > On 3/21/2024 1:41 AM, Imre Deak wrote:
> > > Instead of checking each compressed bpp value against the maximum
> > > DSC/DPT bpp, simplify things by calculating the maximum bpp upfront and
> > > limiting the range of bpps looped over using this maximum.
> > >
> > > While at it add a comment about the origin of the DSC/DPT bpp limit.
> > >
> > > Bspec: 49259, 68912
> > >
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> >
> > LGTM.
> >
> > Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >
> > > ---
> > >   drivers/gpu/drm/i915/display/intel_dp_mst.c | 45 +++++++++++----------
> > >   1 file changed, 23 insertions(+), 22 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > index 40660dc5edb45..516b00f791420 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > @@ -51,27 +51,24 @@
> > >   #include "intel_vdsc.h"
> > >   #include "skl_scaler.h"
> > >
> > > -static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp,
> > > -                                       const struct drm_display_mode *adjusted_mode,
> > > -                                       struct intel_crtc_state *crtc_state,
> > > -                                       bool dsc)
> > > +static int intel_dp_mst_max_dpt_bpp(const struct intel_crtc_state *crtc_state,
> > > +                                 bool dsc)
> > >   {
> > > -     if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 20 && dsc) {
> > > -             int output_bpp = bpp;
> > > -             int symbol_clock = intel_dp_link_symbol_clock(crtc_state->port_clock);
> > > -             int available_bw = mul_u32_u32(symbol_clock * 72,
> > > -                                            drm_dp_bw_channel_coding_efficiency(true)) /
> > > -                                1000000;
> > > +     struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> > > +     const struct drm_display_mode *adjusted_mode =
> > > +             &crtc_state->hw.adjusted_mode;
> > >
> > > -             if (output_bpp * adjusted_mode->crtc_clock >
> > > -                 available_bw) {
> > > -                     drm_dbg_kms(&i915->drm, "UHBR check failed(required bw %d available %d)\n",
> > > -                                 output_bpp * adjusted_mode->crtc_clock, available_bw);
> > > -                     return -EINVAL;
> > > -             }
> > > -     }
> > > +     if (!intel_dp_is_uhbr(crtc_state) || DISPLAY_VER(i915) >= 20 || !dsc)
> > > +             return INT_MAX;
> > >
> > > -     return 0;
> > > +     /*
> > > +      * DSC->DPT interface width:
> > > +      *   ICL-MTL: 72 bits (each branch has 72 bits, only left branch is used)
> > > +      *   LNL+:    144 bits (not a bottleneck in any config)
> > > +      */
> > > +     return div64_u64(mul_u32_u32(intel_dp_link_symbol_clock(crtc_state->port_clock) * 72,
> > > +                                  drm_dp_bw_channel_coding_efficiency(true)),
> > > +                      mul_u32_u32(adjusted_mode->crtc_clock, 1000000));
> > >   }
> > >
> > >   static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
> > > @@ -160,6 +157,7 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
> > >       const struct drm_display_mode *adjusted_mode =
> > >               &crtc_state->hw.adjusted_mode;
> > >       int bpp, slots = -EINVAL;
> > > +     int max_dpt_bpp;
> > >       int ret = 0;
> > >
> > >       mst_state = drm_atomic_get_mst_topology_state(state, &intel_dp->mst_mgr);
> > > @@ -180,6 +178,13 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
> > >                                                     crtc_state->port_clock,
> > >                                                     crtc_state->lane_count);
> > >
> > > +     max_dpt_bpp = intel_dp_mst_max_dpt_bpp(crtc_state, dsc);
> > > +     if (max_bpp > max_dpt_bpp) {
> > > +             drm_dbg_kms(&i915->drm, "Limiting bpp to max DPT bpp (%d -> %d)\n",
> > > +                         max_bpp, max_dpt_bpp);
> > > +             max_bpp = max_dpt_bpp;
> > > +     }
> > > +
> > >       drm_dbg_kms(&i915->drm, "Looking for slots in range min bpp %d max bpp %d\n",
> > >                   min_bpp, max_bpp);
> > >
> > > @@ -191,10 +196,6 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
> > >
> > >               drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp);
> > >
> > > -             ret = intel_dp_mst_check_constraints(i915, bpp, adjusted_mode, crtc_state, dsc);
> > > -             if (ret)
> > > -                     continue;
> > > -
> > >               link_bpp_x16 = to_bpp_x16(dsc ? bpp :
> > >                                         intel_dp_output_bpp(crtc_state->output_format, bpp));
> > >
