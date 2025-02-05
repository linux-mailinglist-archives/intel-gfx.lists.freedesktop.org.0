Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E4CA28C26
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 14:45:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD1CB10E7B2;
	Wed,  5 Feb 2025 13:45:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LmJIlo3n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D607810E7B0;
 Wed,  5 Feb 2025 13:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738763111; x=1770299111;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=EqX0YnxPZwpoVlMU7NXip1F6FwpdpOh3xO/dRhUcqdY=;
 b=LmJIlo3nwZ4dbKU33d3Lwc1XzfYp+puiNxZ5OjDB4KC+0u4Ps2fTMmA7
 5TVGjunMy9Pd7kQLl0Cj/Xe5xKHyvjI1fjuUTaLDfXESyU30gplsI08z7
 nruxM7MkYBZCR86s6R60+TQn/TJ6bXln0DXC9OYHx8OJ+mTzZ4siao86f
 5W9TdWQwpLhDz0uYttTLfqQFsPo9BXeX+CCTMKXUcEmyppbspj/xFq0Dm
 UaCbTlcDrnzjgJgBlRqDlIWdAhg4KnRdXyEt6Vu/LEuiiozYuvg1ChCag
 0BbSm9PiSN5AkIEv12KDjRK8J5lgb+dFkDm96hRm14cyrPkyAX062sx/b A==;
X-CSE-ConnectionGUID: zDs6AdkbTWew8s2iYstc3Q==
X-CSE-MsgGUID: pcqpoptLRayPYAX3hyr/6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="38559286"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="38559286"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 05:45:10 -0800
X-CSE-ConnectionGUID: h7vxkS80RT+lq0lGj5/sTg==
X-CSE-MsgGUID: P73DqTAFRc6w34bPIiDXQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="110808429"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 05:45:09 -0800
Date: Wed, 5 Feb 2025 15:46:07 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 08/17] drm/i915/ddi: Move platform checks within
 mtl_ddi_enable/disable_d2d_link()
Message-ID: <Z6Nrn_GsmWLG_ruP@ideak-desk.fi.intel.com>
References: <20250129200221.2508101-1-imre.deak@intel.com>
 <20250129200221.2508101-9-imre.deak@intel.com>
 <87lduk4l7f.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87lduk4l7f.fsf@intel.com>
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

On Wed, Feb 05, 2025 at 02:42:12PM +0200, Jani Nikula wrote:
> On Wed, 29 Jan 2025, Imre Deak <imre.deak@intel.com> wrote:
> > The prefix of the mtl_ddi_enable_d2d() / mtl_ddi_disable_d2d_link()
> > names show already what are the relevant platforms, so the corresponding
> > platform check is a detail that can be hidden in the functions, do so.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> But unrelated bafflement below.
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 9 +++++++--
> >  1 file changed, 7 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index d040558b5d029..07188606a0177 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -2545,6 +2545,9 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
> >  	i915_reg_t reg;
> >  	u32 set_bits, wait_bits;
> >  
> > +	if (DISPLAY_VER(dev_priv) < 14)
> > +		return;
> > +
> >  	if (DISPLAY_VER(dev_priv) >= 20) {
> >  		reg = DDI_BUF_CTL(port);
> 
> Unrelated to this patch, this seems weird. DDI_BUF_CTL for display
> version 20+? 

Yes, some DDI buffer control/status flags got shuffled around across
different platforms. The D2D enabling flag was originally added on MTL
in the new XELPDP_PORT_BUF_CTL1 register, then on LNL this same D2D
enabling flag was moved (back) to the old DDI_BUF_CTL register. A
similar shuffling happened with the DDI buffer (PHY) enabled _status_
flag (vs. the DDI buffer enabled _control_ flag, which was not
shuffled).

> While XELPDP_PORT_BUF_CTL1() also has a check for >= 20.

Yes, flags other than the D2D enable control/status are in
XELPDP_PORT_BUF_CTL1 reg for LNL+. So both MTL and LNL+ uses this
register, but the mapping of the register for port A/B changed on LNL+.

> 
> >  		set_bits = XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
> > @@ -3035,6 +3038,9 @@ mtl_ddi_disable_d2d_link(struct intel_encoder *encoder)
> >  	i915_reg_t reg;
> >  	u32 clr_bits, wait_bits;
> >  
> > +	if (DISPLAY_VER(dev_priv) < 14)
> > +		return;
> > +
> >  	if (DISPLAY_VER(dev_priv) >= 20) {
> >  		reg = DDI_BUF_CTL(port);
> >  		clr_bits = XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
> > @@ -3411,8 +3417,7 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
> >  		hsw_prepare_hdmi_ddi_buffers(encoder, crtc_state);
> >  
> >  	/* e. Enable D2D Link for C10/C20 Phy */
> > -	if (DISPLAY_VER(dev_priv) >= 14)
> > -		mtl_ddi_enable_d2d(encoder);
> > +	mtl_ddi_enable_d2d(encoder);
> 
> Why do we have mtl_ddi_enable_d2d() and mtl_ddi_disable_d2d_link(). It
> just boggles my mind that the names mismatch.

Yes, it's not consistent. I can include the
s/mtl_ddi_disable_d2d_link/mtl_ddi_disable_ddi/
change in this patch.

> >  
> >  	encoder->set_signal_levels(encoder, crtc_state);
> 
> -- 
> Jani Nikula, Intel
