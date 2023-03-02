Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1586A88FA
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 20:05:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AD3410E142;
	Thu,  2 Mar 2023 19:05:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F14EA10E0FF
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 19:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677783951; x=1709319951;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+czk3+LGryyJQQYkW6jipxrPCdjGk7QdTDdxaGnWcMo=;
 b=lRVD24Y+Nhbh+Wxwfv1V0pIfX27c8o2mewIdKV8kwP6DwKc/QsqxDiee
 /6LkZ8gP9MWr07JGrDIP89EB1eWMvqwVi/IUwNT62A08vLNhDiEuU/8z8
 dIPKND4JZl7nSPoh7ui9saFs0rPf8w5xJ+DyulYsMnYKYs+RRnxrBzU8m
 17/5SnWKDyfpDBOAoHjd31+PJUjfVF8inXCETS7qRCrnO9aO8BhwULoF0
 NzamzgoQeUyn1nw4zuxhIOBt/3xKDf9hjb1B0WWUBQh4J1/yLYBdSY4Xn
 j5JjqeMTmrG2pzu/L96U0Ea0sqmi2w97NbrAcvNlE0MmyF0445wFx0RN1 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="332303217"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="332303217"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 11:04:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="739205854"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="739205854"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 11:03:44 -0800
Date: Thu, 2 Mar 2023 21:03:42 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <ZADzDhPBjkhNsT7+@ideak-desk.fi.intel.com>
References: <20230214134348.11020-1-ville.syrjala@linux.intel.com>
 <20230214134348.11020-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230214134348.11020-3-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Fix idle pattern enabling
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

On Tue, Feb 14, 2023 at 03:43:48PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Currently we are always switching to the idle pattern after the
> link training, but we don't always wait for the minimum number
> of idle patterns sent. That doesn't look to be what Bspec
> asks of us.
> 
> According to bspec what we should do is switch to idle pattern
> and wait for it only in DP1.4 MST cases. In all other cases we
> should apparently do neither.
> 
> What confuses matters further is that the port sync SST sequence
> asks us to "stay in idle pattern". But if we never switched to it
> how can we stay in it? This still needs further clarificaiton.

HSW seems to require it also for SST, but yes for all other platforms
bspec only requires it for MST. The DP2.1 standard has some addition
(3.5.1.2.6) referring to idle pattern to be sent after TPS even for SST.
Not sure if this would be done automatically by HW w/o manually
switching to it.

> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 20 +++++++++-----------
>  1 file changed, 9 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 4af2ba2dfcad..a3466b71d18a 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3219,24 +3219,22 @@ static void intel_ddi_set_idle_link_train(struct intel_dp *intel_dp,
>  {
>  	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> -	enum port port = encoder->port;
>  	u32 val;
>  
> +	/*
> +	 * FIXME DP modeset sequence says to switch to idle pattern
> +	 * only for DP1.4 MST cases, but port sync SST sequence asks
> +	 * us to "stay in Idle Pattern", implying that we should
> +	 * switch to it earlier. Which is it?
> +	 */
> +	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
> +		return;
> +
>  	val = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
>  	val &= ~DP_TP_CTL_LINK_TRAIN_MASK;
>  	val |= DP_TP_CTL_LINK_TRAIN_IDLE;
>  	intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), val);
>  
> -	/*
> -	 * Until TGL on PORT_A we can have only eDP in SST mode. There the only
> -	 * reason we need to set idle transmission mode is to work around a HW
> -	 * issue where we enable the pipe while not in idle link-training mode.
> -	 * In this case there is requirement to wait for a minimum number of
> -	 * idle patterns to be sent.
> -	 */
> -	if (port == PORT_A && DISPLAY_VER(dev_priv) < 12)
> -		return;
> -
>  	if (intel_de_wait_for_set(dev_priv,
>  				  dp_tp_status_reg(encoder, crtc_state),
>  				  DP_TP_STATUS_IDLE_DONE, 1))
> -- 
> 2.39.1
> 
