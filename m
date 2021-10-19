Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46140433361
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 12:19:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46C3C6E038;
	Tue, 19 Oct 2021 10:19:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F8436E038
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 10:19:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="291940677"
X-IronPort-AV: E=Sophos;i="5.85,384,1624345200"; d="scan'208";a="291940677"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 03:18:41 -0700
X-IronPort-AV: E=Sophos;i="5.85,384,1624345200"; d="scan'208";a="494033293"
Received: from jsanz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.211.239])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 03:18:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com, matthew.d.roper@intel.com,
 Vandita Kulkarni <vandita.kulkarni@intel.com>
In-Reply-To: <20211018065207.30587-5-vandita.kulkarni@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211018065207.30587-1-vandita.kulkarni@intel.com>
 <20211018065207.30587-5-vandita.kulkarni@intel.com>
Date: Tue, 19 Oct 2021 13:18:14 +0300
Message-ID: <87y26pqpw9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/dsi: Ungate clock before
 enabling the phy
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

On Mon, 18 Oct 2021, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
> For the PHY enable/disable signalling to propagate
> between Dispaly and PHY, DDI clocks need to be running when
> enabling the PHY.
>

A bspec reference would be useful:

Bspec: NNN 

> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 8c166f92f8bd..77cd01ecfa80 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1135,8 +1135,6 @@ static void
>  gen11_dsi_enable_port_and_phy(struct intel_encoder *encoder,
>  			      const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> -
>  	/* step 4a: power up all lanes of the DDI used by DSI */
>  	gen11_dsi_power_up_lanes(encoder);
>  
> @@ -1146,6 +1144,8 @@ gen11_dsi_enable_port_and_phy(struct intel_encoder *encoder,
>  	/* step 4c: configure voltage swing and skew */
>  	gen11_dsi_voltage_swing_program_seq(encoder);
>  
> +	gen11_dsi_ungate_clocks(encoder);
> +
>  	/* enable DDI buffer */
>  	gen11_dsi_enable_ddi_buffer(encoder);
>  
> @@ -1161,9 +1161,7 @@ gen11_dsi_enable_port_and_phy(struct intel_encoder *encoder,
>  	/* Step (4h, 4i, 4j, 4k): Configure transcoder */
>  	gen11_dsi_configure_transcoder(encoder, crtc_state);
>  
> -	/* Step 4l: Gate DDI clocks */
> -	if (DISPLAY_VER(dev_priv) == 11)
> -		gen11_dsi_gate_clocks(encoder);
> +	gen11_dsi_gate_clocks(encoder);

So how does this relate to
991d9557b0c4 ("drm/i915/tgl/dsi: Gate the ddi clocks after pll mapping")

>  }
>  
>  static void gen11_dsi_powerup_panel(struct intel_encoder *encoder)

-- 
Jani Nikula, Intel Open Source Graphics Center
