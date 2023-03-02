Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 279E76A88C1
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 19:53:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95A7110E142;
	Thu,  2 Mar 2023 18:53:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 148B010E142
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 18:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677783230; x=1709319230;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=C/cyGbazf8MMqOw1nh7phpxE5Rvme1OclWYJVIEUCVU=;
 b=WPJC7+bV90dQxp3ERaSLl7jjuNE0S3p6E1DMq538JLF8CVUbkAwd9QVl
 FA/LD+GhzezM82Sbg8kg/G4Rvlw8ZPAjorxid/z7h/LYo8GMZwbvcunLt
 GbtFtTSi7ZpEcqqMDh6Z5r4AJKhcblrDr+e9U+8tMC8nenXCUo6pqxTWl
 RwUoaw37YY4/zHeCcS45itlCspMQyG+5Xl1ThnyZM2hFoWGRyhiZ50a5+
 TuK0vpolMB+dQ1b6Mj+GOQt/YPg2xzzxOTIdYZ4ihyRR8isBFzGd9rW2z
 ERpOUHVEU6q3hmvSod846gz0pQkPIYo7Ump2yTmL0jAWE5yZ5TbUAeShx w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="336334611"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="336334611"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 10:53:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="818169947"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="818169947"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 10:53:47 -0800
Date: Thu, 2 Mar 2023 20:53:46 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <ZADwmeXbkVpjMGV9@ideak-desk.fi.intel.com>
References: <20230214134348.11020-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230214134348.11020-1-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Don't switch to TPS1 when
 disabling DP_TP_CTL
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 14, 2023 at 03:43:46PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> AFAICS Bspec has never asked us to switch to TPS1 when *disabling*
> DP_TP_CTL. Let's stop doing that in case it confuses something.
> We do have to switch before we *enable* DP_TP_CTL, but that
> is already being handled correctly.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index bfd1e30a27b4..4af2ba2dfcad 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2624,8 +2624,7 @@ static void intel_disable_ddi_buf(struct intel_encoder *encoder,
>  
>  	if (intel_crtc_has_dp_encoder(crtc_state)) {
>  		val = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
> -		val &= ~(DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK);
> -		val |= DP_TP_CTL_LINK_TRAIN_PAT1;
> +		val &= ~DP_TP_CTL_ENABLE;
>  		intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), val);
>  	}
>  
> @@ -3153,8 +3152,7 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
>  			wait = true;
>  		}
>  
> -		dp_tp_ctl &= ~(DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK);
> -		dp_tp_ctl |= DP_TP_CTL_LINK_TRAIN_PAT1;
> +		dp_tp_ctl &= ~DP_TP_CTL_ENABLE;
>  		intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), dp_tp_ctl);
>  		intel_de_posting_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
>  
> -- 
> 2.39.1
> 
