Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD9B72948A
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 11:15:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB79110E663;
	Fri,  9 Jun 2023 09:15:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5550A10E663
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 09:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686302154; x=1717838154;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=QkBXpmXA2VCzNq+rssDXA9VF2Q49kEDeWMcnkZON1hY=;
 b=NAfU/vZC/m3CmKJeh4YpeauWzvm/j/Kf7K9qzrEIvgIqXkheRrPoKCAP
 9QAG8CAoOTUNU/GoU8eYMyGFoPHwP+5waURvph5fGMtGBmQCwzRi9UdGB
 nBk2R3rPulaWEgmgBfVTRHBNC21rHtIpJSzmBmbh2MqWIpbVK4tUdWwxz
 s7NDIm8KL6wDOlVlkMiJEOWFRuRzsRCul5rAz6iojk4DlmJ8mRMaarZ08
 z5Kkwfb5FQlERbZOwuqNn03moyfJoRQSMCTC7+z6BvnAQ3hkTL4bmj57e
 0+Xw83p86uwPwHRYJiikyvzi/+/NlPtugQW/aoIto2kewZYRO3YUVzBKC A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="342232432"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="342232432"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 02:15:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="775429892"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="775429892"
Received: from skolhe-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.58.254])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 02:15:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gil Dekel <gildekel@chromium.org>, intel-gfx@lists.freedesktop.org,
 seanpaul@chromium.org, navaremanasi@chromium.org
In-Reply-To: <20230608220037.1555814-1-gildekel@chromium.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230608220037.1555814-1-gildekel@chromium.org>
Date: Fri, 09 Jun 2023 12:15:42 +0300
Message-ID: <87v8fxq9mp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tc: Use standard ternary operator
 instead of GCC extension
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
Cc: Gil Dekel <gildekel@chromium.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 08 Jun 2023, Gil Dekel <gildekel@chromium.org> wrote:
> The ternary expression:
>
>   x ? : y
>
> is a GCC extension and is not a part of C/C++ standard.
>
> Use the canonical form instead to reduce dependency over GCC extension.

Thanks for the patch, but no thanks, we'll keep it as it is.

It's acceptable use of GCC extensions in kernel, it's supported by both
GCC and Clang, and there are thousands of uses of uses in kernel, and
dozens in i915 alone. I don't want to open the door for an influx of
patches changing this.

Besides, it's one of the better GCC extensions there is, avoiding the
unnecessary duplication and verbosity.


BR,
Jani.

>
> Signed-off-by: Gil Dekel <gildekel@chromium.org>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 916009894d89c..39d0dbad589bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -255,7 +255,9 @@ static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
>  {
>  	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
>  	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
> -	int timeout = power_well->desc->enable_timeout ? : 1;
> +	int timeout = power_well->desc->enable_timeout ?
> +			      power_well->desc->enable_timeout :
> +			      1;
>
>  	/*
>  	 * For some power wells we're not supposed to watch the status bit for
> --
> Gil Dekel, Software Engineer, Google / ChromeOS Display and Graphics

-- 
Jani Nikula, Intel Open Source Graphics Center
