Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD77A22DDA
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 14:32:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF0C210E96C;
	Thu, 30 Jan 2025 13:32:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c2jqx72O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8831910E96C;
 Thu, 30 Jan 2025 13:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738243959; x=1769779959;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=ClWwjQAKIGMHtJ7E2jilT+iBDi9d8nllpe1XKWl83tI=;
 b=c2jqx72Ozy5oYQ+HItTEYX8sJvsSdsL5nlBnQAsR8phaEm86J6r4TznB
 GSWWidzx7hwXAsEmjIJfevP8nxExmyPIgtXOcjz0U1Q1nsmWZ22evJUD9
 4QGRMo+05TVYTxNOd2vafoxAsueNHiDYsSJbizixRkTI0bXMhpIeum+Xe
 sFiDmwKkXpkyu2ykqKW6JsjvrknrkGp78JM+SqfUFIpwipP37hpQ7u8Au
 UjrFpcRf42AJUfvIKPui1rUKiOOOoxoxMjG9NgPor1L11aq7YHHGybaKE
 IkaiFrBYyaTLxcRZo5+2dNM7vLzpcTOHqIjGiu/hIEQWxWWsG4LgAj3sE g==;
X-CSE-ConnectionGUID: eK4LDE51RZqkTmlnwCG7eQ==
X-CSE-MsgGUID: on528xTdRd6xPNxLgGHPiw==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="50169361"
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="50169361"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 05:32:39 -0800
X-CSE-ConnectionGUID: wxSYTyf/SSutxr2XqBa0BQ==
X-CSE-MsgGUID: KfdDp5oMR5i8pNBRqC8VzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="109306619"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 05:32:36 -0800
Date: Thu, 30 Jan 2025 15:33:33 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Imre Deak <imre.deak@gmail.com>
Subject: Re: [PATCH 02/17] drm/i915/ddi: Fix HDMI port width programming in
 DDI_BUF_CTL
Message-ID: <Z5t_resAQN-5ybYJ@ideak-desk.fi.intel.com>
References: <20250129200221.2508101-1-imre.deak@intel.com>
 <20250129200221.2508101-3-imre.deak@intel.com>
 <87bjvo8qp2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87bjvo8qp2.fsf@intel.com>
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

On Thu, Jan 30, 2025 at 01:51:53PM +0200, Jani Nikula wrote:
> On Wed, 29 Jan 2025, Imre Deak <imre.deak@intel.com> wrote:
> > From: Imre Deak <imre.deak@gmail.com>
> >
> > Fix the port width programming in the DDI_BUF_CTL register on MTLP+,
> > where this had an off-by-one error.
> 
> Fixes: b66a8abaa48a ("drm/i915/display/mtl: Fill port width in DDI_BUF_/TRANS_DDI_FUNC_/PORT_BUF_CTL for HDMI")
> Cc: <stable@vger.kernel.org> # v6.5+

I wasn't sure if this has any effect on the HW, since HDMI seemed to
work at least on MTLP regardless. Earlier platforms ignored the port
width in DDI_BUF_CTL for HDMI, maybe it's actually the same on new HW
as well. But it's better to do what the spec says.

> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> However, if this gets backported, it'll break DSI. Patch 1 needs to
> accompany it.
> 
> Either add the same Fixes line to patch 1, or squash patches 1-2
> together.

Ok, will add the Fixes: line to patch 1 as well.

> > Signed-off-by: Imre Deak <imre.deak@gmail.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 2 +-
> >  drivers/gpu/drm/i915/i915_reg.h          | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index dc319f37b1be9..36e7dde422d37 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -3501,7 +3501,7 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
> >  		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(dev_priv, port),
> >  			     XELPDP_PORT_WIDTH_MASK | XELPDP_PORT_REVERSAL, port_buf);
> >  
> > -		buf_ctl |= DDI_PORT_WIDTH(lane_count);
> > +		buf_ctl |= DDI_PORT_WIDTH(crtc_state->lane_count);
> >  
> >  		if (DISPLAY_VER(dev_priv) >= 20)
> >  			buf_ctl |= XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index 03da51b03fb90..04e47d0a8ab92 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -3635,7 +3635,7 @@ enum skl_power_gate {
> >  #define  DDI_BUF_IS_IDLE			(1 << 7)
> >  #define  DDI_BUF_CTL_TC_PHY_OWNERSHIP		REG_BIT(6)
> >  #define  DDI_A_4_LANES				(1 << 4)
> > -#define  DDI_PORT_WIDTH(width)			(((width) - 1) << 1)
> > +#define  DDI_PORT_WIDTH(width)			(((width) == 3 ? 4 : ((width) - 1)) << 1)
> >  #define  DDI_PORT_WIDTH_MASK			(7 << 1)
> >  #define  DDI_PORT_WIDTH_SHIFT			1
> >  #define  DDI_INIT_DISPLAY_DETECTED		(1 << 0)
> 
> -- 
> Jani Nikula, Intel
