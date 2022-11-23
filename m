Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FEF9635B7A
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 12:21:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42B1A10E216;
	Wed, 23 Nov 2022 11:21:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2661F10E216
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 11:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669202487; x=1700738487;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=/hOK/HeajnwTctY/Q3M1MgCdqj0ZaZ0sV87zQWFgjPg=;
 b=JcMP/amIrbGD5MdGqoiAtBIqN4Kc5FA9CJcyTdXT8uy4zhHl7A8V8sXE
 Nuysja3DVEk2C98UZNPZGjLn3Tb9as5nGt+SN5miOHkXyAfjlpdP7QvM3
 y4To3Iv9pKGLo4ok5EkVIC2zvvC35kxbHN6do5/wTfyIRMrqtsxYhHx+n
 +kCrV9HX9lNKg5YfCwRdVIoABlPnfBSniiIk1ZE5Zx8zhu4mVEqum8uHA
 l+EjXfO4mqVjsWEsIy2k23coh91wsOVoTSOyfk88BVmpuAsjXb2PLD8Hl
 8LN1G5oZ2ph6vPVcKA9seHWajmWH8IqKl0vYo3QSBOCnlbpQUn+7ETiCi w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="311673868"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="311673868"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 03:21:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="747755208"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="747755208"
Received: from jgronski-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.163])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 03:21:25 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nischal Varide <nischal.varide@intel.com>,
 intel-gfx@lists.freedesktop.org, nischal.varide@intel.com
In-Reply-To: <20221123074356.7513-1-nischal.varide@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221123074356.7513-1-nischal.varide@intel.com>
Date: Wed, 23 Nov 2022 13:21:23 +0200
Message-ID: <87k03lx6fg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: A check on mode->clock,
 if it exceeds max_dot_clock
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


Although the change isn't needed as Ville points out, I'll take the
opportunity to comment on other things here, with hopes it'll improve
future contributions.

On Wed, 23 Nov 2022, Nischal Varide <nischal.varide@intel.com> wrote:
> Making sure that the  mode-clock is not greater than the
> max_dot_clock freq.This patch will prevent attempts from
> userspace to modeset with mode->clock greater than
> max_dot_clock freq.

Both in the patch subject and commit message, please use the imperative
mood, e.g. "add", "make sure", "prevent".

Please don't refer to "this patch". When it's been committed, it's no
longer a patch. But don't refer to "this commit" either. Just say what
the patch does, "Prevent ...".

>
> Signed-off-by: Nischal Varide <nischal.varide@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c   | 10 ++++++++++
>  drivers/gpu/drm/i915/display/intel_hdmi.c |  3 +++
>  2 files changed, 13 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7400d6b4c587..e603b7c01d27 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2045,6 +2045,16 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  	if (intel_dp_hdisplay_bad(dev_priv, adjusted_mode->crtc_hdisplay))
>  		return -EINVAL;
>  
> +	if (!intel_dp_can_bigjoiner(intel_dp) &&
> +			(adjusted_mode->clock > dev_priv->max_dotclk_freq))
> +		return -EINVAL;
> +
> +	if (intel_dp_can_bigjoiner(intel_dp) &&
> +		(adjusted_mode->clock >  (2 * dev_priv->max_dotclk_freq)))
> +		return -EINVAL;
> +
> +
> +

The alignment is wrong, there are unnecessary parenthesis and
superfluous newlines. We care about this stuff, and we would not apply
the patch without fixing, requiring an extra version.

All this would be caught by checkpatch. Please make it a habit to run
checkpatch.pl --strict locally on your patches before submitting. (Or
dim checkpatch.)

BR,
Jani.


>  	/*
>  	 * Try to respect downstream TMDS clock limits first, if
>  	 * that fails assume the user might know something we don't.
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 02f8374ea51f..50603806a964 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2247,6 +2247,9 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>  
> +	if (adjusted_mode->clock > dev_priv->max_dotclk_freq)
> +		return -EINVAL;
> +
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->has_hdmi_sink = intel_has_hdmi_sink(intel_hdmi,
>  							 conn_state);

-- 
Jani Nikula, Intel Open Source Graphics Center
