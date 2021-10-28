Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9DF43E1FA
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 15:25:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 266306E824;
	Thu, 28 Oct 2021 13:25:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C727B6E824
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 13:25:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="217316438"
X-IronPort-AV: E=Sophos;i="5.87,189,1631602800"; d="scan'208";a="217316438"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 06:25:40 -0700
X-IronPort-AV: E=Sophos;i="5.87,189,1631602800"; d="scan'208";a="597793176"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 06:25:39 -0700
Date: Thu, 28 Oct 2021 16:25:35 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20211028132535.GA3069912@ideak-desk.fi.intel.com>
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
 <20211006204937.30774-17-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211006204937.30774-17-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 16/16] drm/i915: Fix icl+ combo phy static
 lane power down setup
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

On Wed, Oct 06, 2021 at 11:49:37PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Our lane power down defines already include the necessary shift,
> don't shit them a second time.
> 
> Fortunately we masked off the correct bits, so we accidentally
> left all lanes powered up all the time.
> 
> Bits 8-11 where we end up writing our misdirected lane mask are
> documented as MBZ, but looks like you can actually write there
> so they're not read only bits. No idea what side effect the
> bogus register write might have.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4151
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_combo_phy.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> index 634e8d449457..f628e0542933 100644
> --- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> @@ -301,7 +301,7 @@ void intel_combo_phy_power_up_lanes(struct drm_i915_private *dev_priv,
>  
>  	val = intel_de_read(dev_priv, ICL_PORT_CL_DW10(phy));
>  	val &= ~PWR_DOWN_LN_MASK;
> -	val |= lane_mask << PWR_DOWN_LN_SHIFT;
> +	val |= lane_mask;
>  	intel_de_write(dev_priv, ICL_PORT_CL_DW10(phy), val);
>  }
>  
> -- 
> 2.32.0
> 
