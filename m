Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB23441D695
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 11:44:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FA2F6E3BB;
	Thu, 30 Sep 2021 09:44:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 318796E3BB
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 09:44:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="223259767"
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="223259767"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 02:44:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="479805099"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 30 Sep 2021 02:44:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Sep 2021 12:44:39 +0300
Date: Thu, 30 Sep 2021 12:44:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YVWHB94gggUJ4aOB@intel.com>
References: <cover.1632992608.git.jani.nikula@intel.com>
 <427d27eb4e5daca208d496d6c2ffc91ed90ba714.1632992608.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <427d27eb4e5daca208d496d6c2ffc91ed90ba714.1632992608.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/fdi: move fdi modeset asserts
 to intel_fdi.c
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

On Thu, Sep 30, 2021 at 12:22:58PM +0300, Jani Nikula wrote:
<snip>
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
> index af01d1fa761e..02d3294bad7b 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> @@ -10,6 +10,97 @@
>  #include "intel_fdi.h"
>  #include "intel_sideband.h"
>  
> +static void assert_fdi_tx(struct drm_i915_private *dev_priv,
> +			  enum pipe pipe, bool state)
> +{
> +	bool cur_state;
> +
> +	if (HAS_DDI(dev_priv)) {
> +		/*
> +		 * DDI does not have a specific FDI_TX register.
> +		 *
> +		 * FDI is never fed from EDP transcoder
> +		 * so pipe->transcoder cast is fine here.
> +		 */
> +		enum transcoder cpu_transcoder = (enum transcoder)pipe;
> +		cur_state = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder)) & TRANS_DDI_FUNC_ENABLE;
> +	} else {
> +		cur_state = intel_de_read(dev_priv, FDI_TX_CTL(pipe)) & FDI_TX_ENABLE;
> +	}
> +	I915_STATE_WARN(cur_state != state,
> +			"FDI TX state assertion failure (expected %s, current %s)\n",
> +			onoff(state), onoff(cur_state));
> +}
> +
> +void assert_fdi_tx_enabled(struct drm_i915_private *i915, enum pipe pipe)
> +{
> +	assert_fdi_tx(i915, pipe, true);
> +}
> +
> +void assert_fdi_tx_disabled(struct drm_i915_private *i915, enum pipe pipe)
> +{
> +	assert_fdi_tx(i915, pipe, false);
> +}

For these wrappers I could argue that static inlines would be less
loc overall, while still wouldn't need any extra struct definitions/etc.
in the header. But not performance sensitive so from that pov static
inline is pointless.

Anyways, this approach seems fine to me. For the series
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

-- 
Ville Syrjälä
Intel
