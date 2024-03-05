Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41EB88721C8
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 15:42:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C1E2112B67;
	Tue,  5 Mar 2024 14:42:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hr2htgxR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B899112B67
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 14:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709649751; x=1741185751;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=pwURWEEtO6TuBbdXINX5BTq1iwsibv36S/azatJ3vUY=;
 b=Hr2htgxR3aFquF1ySzUcrQhbvSHHldemssGjLhXL+wnZMoTemmJT32Tx
 2UmDpUIfLSfxv0XDEY0xKN3+YjBY1gmyzRvWvZw7WdP97yiQQpPrQDY8X
 /80LkkqEoB/rUZ3oSUh8/jLfoiux2XpCDoBDjJu+1PQvEwJlmv8JKYzl0
 fTqPB3fTd0/btopFciqn9ixEpPADq/Z5Ma1BU6qPXid9+/aIsKj3dGNZG
 Wopda07prgsBK8spYuxV7rz9bv05ZmnjKW4Dn+ZGRaLr3jOMrIGXzXAfn
 Sf1gu5mGsogf13yQAX9uBx1utHiQMXGPtwDooDlXTs83pth68xO53G4Fa A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="8022627"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="8022627"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 06:42:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="9559521"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 06:42:29 -0800
Date: Tue, 5 Mar 2024 16:42:53 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/4] drm/i915: Rename ICL_AUX_ANAOVRD1 to
 ICL_PORT_TX_DW6_AUX
Message-ID: <ZecvbTEgePd77pCY@ideak-desk.fi.intel.com>
References: <20240229200357.7969-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240229200357.7969-1-ville.syrjala@linux.intel.com>
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

On Thu, Feb 29, 2024 at 10:03:54PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> ICL_AUX_ANAOVRD1 is actually ICL_PORT_TX_DW6_AUX. Give it its proper
> name, and relocate to the correct file (intel_combo_phy_regs.h).
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_combo_phy_regs.h     | 6 ++++++
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 5 ++++-
>  drivers/gpu/drm/i915/i915_reg.h                         | 9 ---------
>  3 files changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h b/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
> index b0983edccf3f..1d931557cd79 100644
> --- a/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
> @@ -142,6 +142,12 @@
>  #define   RTERM_SELECT(x)			((x) << 3)
>  #define   RTERM_SELECT_MASK			(0x7 << 3)
>  
> +#define ICL_PORT_TX_DW6_AUX(phy)		_MMIO(_ICL_PORT_TX_DW_AUX(6, phy))
> +#define ICL_PORT_TX_DW6_GRP(phy)		_MMIO(_ICL_PORT_TX_DW_GRP(6, phy))
> +#define ICL_PORT_TX_DW6_LN(ln, phy)		_MMIO(_ICL_PORT_TX_DW_LN(6, ln, phy))
> +#define   ICL_AUX_ANAOVRD1_LDO_BYPASS		(1 << 7)
> +#define   ICL_AUX_ANAOVRD1_ENABLE		(1 << 0)

The above flags seemed to be swapped in the spec, even though this
doesn't matter in the code.

> +
>  #define ICL_PORT_TX_DW7_AUX(phy)		_MMIO(_ICL_PORT_TX_DW_AUX(7, phy))
>  #define ICL_PORT_TX_DW7_GRP(phy)		_MMIO(_ICL_PORT_TX_DW_GRP(7, phy))
>  #define ICL_PORT_TX_DW7_LN(ln, phy)		_MMIO(_ICL_PORT_TX_DW_LN(7, ln, phy))
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index c20e80aded35..a1edac6ce31f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -199,6 +199,9 @@ static void hsw_power_well_pre_disable(struct drm_i915_private *dev_priv,
>  		gen8_irq_power_well_pre_disable(dev_priv, irq_pipe_mask);
>  }
>  
> +#define ICL_AUX_PW_TO_PHY(pw_idx)	\
> +	((pw_idx) - ICL_PW_CTL_IDX_AUX_A + PHY_A)
> +
>  #define ICL_AUX_PW_TO_CH(pw_idx)	\
>  	((pw_idx) - ICL_PW_CTL_IDX_AUX_A + AUX_CH_A)
>  
> @@ -426,7 +429,7 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
>  	/* Display WA #1178: icl */
>  	if (pw_idx >= ICL_PW_CTL_IDX_AUX_A && pw_idx <= ICL_PW_CTL_IDX_AUX_B &&
>  	    !intel_port_is_edp(dev_priv, (enum port)phy))
> -		intel_de_rmw(dev_priv, ICL_AUX_ANAOVRD1(pw_idx),
> +		intel_de_rmw(dev_priv, ICL_PORT_TX_DW6_AUX(ICL_AUX_PW_TO_PHY(pw_idx)),
>  			     0, ICL_AUX_ANAOVRD1_ENABLE | ICL_AUX_ANAOVRD1_LDO_BYPASS);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index e00557e1a57f..74e943f21475 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5566,15 +5566,6 @@ enum skl_power_gate {
>  	((pw_idx) - ICL_PW_CTL_IDX_PW_1 + SKL_PG1)
>  #define  SKL_FUSE_PG_DIST_STATUS(pg)		(1 << (27 - (pg)))
>  
> -#define _ICL_AUX_REG_IDX(pw_idx)	((pw_idx) - ICL_PW_CTL_IDX_AUX_A)
> -#define _ICL_AUX_ANAOVRD1_A		0x162398
> -#define _ICL_AUX_ANAOVRD1_B		0x6C398
> -#define ICL_AUX_ANAOVRD1(pw_idx)	_MMIO(_PICK(_ICL_AUX_REG_IDX(pw_idx), \
> -						    _ICL_AUX_ANAOVRD1_A, \
> -						    _ICL_AUX_ANAOVRD1_B))
> -#define   ICL_AUX_ANAOVRD1_LDO_BYPASS	(1 << 7)
> -#define   ICL_AUX_ANAOVRD1_ENABLE	(1 << 0)
> -
>  /* Per-pipe DDI Function Control */
>  #define _TRANS_DDI_FUNC_CTL_A		0x60400
>  #define _TRANS_DDI_FUNC_CTL_B		0x61400
> -- 
> 2.43.0
> 
