Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1981943E02B
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 13:43:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEBEC6E090;
	Thu, 28 Oct 2021 11:43:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E64316E090
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 11:43:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="211158574"
X-IronPort-AV: E=Sophos;i="5.87,189,1631602800"; d="scan'208";a="211158574"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 04:43:13 -0700
X-IronPort-AV: E=Sophos;i="5.87,189,1631602800"; d="scan'208";a="498366682"
Received: from ralfseng-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.214.156])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 04:43:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com, matthew.d.roper@intel.com,
 ville.syrjala@linux.intel.com, Vandita
 Kulkarni <vandita.kulkarni@intel.com>
In-Reply-To: <20211019151435.20477-5-vandita.kulkarni@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211019151435.20477-1-vandita.kulkarni@intel.com>
 <20211019151435.20477-5-vandita.kulkarni@intel.com>
Date: Thu, 28 Oct 2021 14:43:08 +0300
Message-ID: <87zgqtfk8j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [V2 4/4] drm/i915/dsi: Ungate clock before enabling
 the phy
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

On Tue, 19 Oct 2021, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
> For the PHY enable/disable signalling to propagate
> between Dispaly and PHY, DDI clocks need to be running when
> enabling the PHY.
>
> Bspec: 49188 says gate the clocks after enabling the
>        DDI Buffer.
>        We also have a commit 991d9557b0c4 ("drm/i915/tgl/dsi: Gate the ddi
>        clocks after pll mapping") which gates the clocks much before,
>        as per the older spec. This commit nullifies its effect and makes
>        sure that the clocks are not gated while we enable the DDI
>        buffer.
> v2: Bspec ref, add a comment wrt earlier clock gating sequence (Jani)
>
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 63dd75c6448a..e5ef5c4a32d7 100644
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

What about the changes to gen11_dsi_map_pll() in commit 991d9557b0c4
("drm/i915/tgl/dsi: Gate the ddi clocks after pll mapping")? It starts
off with clocks gated for gen12+, ungated otherwise.

BR,
Jani.


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
>  }
>  
>  static void gen11_dsi_powerup_panel(struct intel_encoder *encoder)

-- 
Jani Nikula, Intel Open Source Graphics Center
