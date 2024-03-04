Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7043986FC31
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 09:47:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD92510FE6D;
	Mon,  4 Mar 2024 08:47:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hmKl2FDu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD59110FE6D
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Mar 2024 08:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709542033; x=1741078033;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=q/TyTSI0IsIcyNg65h5R9dET9h4Gt7StQwQEYGhlS+s=;
 b=hmKl2FDuWuS+1/lX/4IQmVaFCnXSALoQnYJqKf2UAlhuz7MfsnKPJeSA
 WsYJiohCp4GZa2NDphWjxALJKGJ/fpAAZuZDs/KuYdUtPHWZfGlBEmb+o
 mxlIm0/oSDkcwYXj6m1qOTZLmXXum8kqAbEQkrZ4udp0TUEGhvtbgvX4x
 +E/bghnpRtNuHY+C+6BdPZJ+adh/BP885qPzjHjwBAGxs66I7u7uISQ4u
 uFlwAyuc2x/HfBQ6rX0hbgsI3in8a3eBkqgDuo0I7AvaAdhkpRKR9C72c
 3T0NdluiuyNZgqRYLmszPQRdTN7a6jp/oRYUpwE80r1GENNCRlg+aJ6d4 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11002"; a="3885260"
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; 
   d="scan'208";a="3885260"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 00:47:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; d="scan'208";a="13481150"
Received: from syakovle-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.51.3])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 00:47:10 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Shekhar Chauhan <shekhar.chauhan@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: matthew.d.roper@intel.com, clinton.a.taylor@intel.com,
 shekhar.chauhan@intel.com
Subject: Re: [PATCH v3] drm/i915/dp: Increase idle pattern wait timeout to 2ms
In-Reply-To: <20240304050631.774920-1-shekhar.chauhan@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240304050631.774920-1-shekhar.chauhan@intel.com>
Date: Mon, 04 Mar 2024 10:46:59 +0200
Message-ID: <87il225qpo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 04 Mar 2024, Shekhar Chauhan <shekhar.chauhan@intel.com> wrote:
> Currently, the driver is only waiting for 1ms for
> idle patterns. But starting from LNL and beyond,
> the MST wants the driver to wait for 1640us before

What does it mean that "the MST wants"?

> timing out (which we round up to 2ms).
>
> v1: Introduced the 2ms wait timeout.
> v2: Segregated the wait timeout for platforms before & after LNL.

I did not ask for this. I would rather all platforms used 2 ms. I even
said the original change looked fine. But I'd like it to be explained in
the commit message.

> v3: Fixed 2 cosmetic changes.
>
> BSpec: 68849
> Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 15 +++++++++++----
>  1 file changed, 11 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index bea441590204..b59adb7685b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3677,12 +3677,19 @@ static void intel_ddi_set_idle_link_train(struct intel_dp *intel_dp,
>  	 */
>  	if (port == PORT_A && DISPLAY_VER(dev_priv) < 12)
>  		return;
> -
> -	if (intel_de_wait_for_set(dev_priv,
> -				  dp_tp_status_reg(encoder, crtc_state),
> -				  DP_TP_STATUS_IDLE_DONE, 1))
> +	if (DISPLAY_VER(dev_priv) >= 20) {
> +		if (intel_de_wait_for_set(dev_priv,
> +			dp_tp_status_reg(encoder, crtc_state),
> +			DP_TP_STATUS_IDLE_DONE, 2))
> +		drm_err(&dev_priv->drm,
> +			"Timed out waiting for DP idle patterns\n");
> +	} else {
> +		if (intel_de_wait_for_set(dev_priv,
> +			dp_tp_status_reg(encoder, crtc_state),
> +			DP_TP_STATUS_IDLE_DONE, 1))
>  		drm_err(&dev_priv->drm,
>  			"Timed out waiting for DP idle patterns\n");
> +	}

So I'd like you to go back to how it was originally.


>  }
>  
>  static bool intel_ddi_is_audio_enabled(struct drm_i915_private *dev_priv,

-- 
Jani Nikula, Intel
