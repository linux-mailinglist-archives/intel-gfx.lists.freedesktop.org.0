Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 621C789D700
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Apr 2024 12:30:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF886112C91;
	Tue,  9 Apr 2024 10:30:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R2h5aAdj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78509112C91
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Apr 2024 10:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712658627; x=1744194627;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=uDjfKerI8/MUJYJhIDXisXaJ2gyTjWiliIprs6Zpa70=;
 b=R2h5aAdjiuP3pL629+16Oza2JkwC1UEO5CDYip7fA7stf+/RUFYoNspH
 pr2vbH4Zo5dmTPNo+Y2OyMOZyoTR/z1UaCMS2AHKgxB/UmBB6dfJ6OK3t
 Yc0UISPjVhPDjeyssa6AB0x+M75oIPQlTrghkmB2/tb4X2MuGl5/t5J9V
 qdoVKyVV7++kMcaITLvW2WXjO+e6Iu0Zc029c5KKzqWIdXsdI1vTWxUzQ
 UxncBhUjZPb5JMs7pXWrjN+oulKZlr8NSzUGkvS/+Nehus60M+msM0zWL
 U2J9pFuv1FLceBBZV+HADkq1W42yYhtQ4fVDBqA0ZhHiIPPyn6gAp/tsD w==;
X-CSE-ConnectionGUID: HB5WLdUuRlqmGLK+mLDcNg==
X-CSE-MsgGUID: C2Lfu3z0QlKUYIqvREg7oQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="11742631"
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="11742631"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 03:30:26 -0700
X-CSE-ConnectionGUID: 23jRXm99SumaKs4NFWNroA==
X-CSE-MsgGUID: 9uG1p9w8RzKBPQNJiq3/Ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="20626736"
Received: from mserban-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.59.228])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 03:30:24 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Brent Lu <brent.lu@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Brent Lu <brent.lu@intel.com>
Subject: Re: [PATCH] drm/i915/audio: 'scheduling while atomic' during system
 resume
In-Reply-To: <20240409130113.3081587-1-brent.lu@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240409130113.3081587-1-brent.lu@intel.com>
Date: Tue, 09 Apr 2024 13:30:20 +0300
Message-ID: <87jzl696bn.fsf@intel.com>
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

On Tue, 09 Apr 2024, Brent Lu <brent.lu@intel.com> wrote:
> The i915_audio_component_codec_wake_override() function will be called
> during resume process so replace usleep_range() function calls with
> udelay() to avoid the 'scheduling while atomic' error.

That explanation does not hold water.

For example, what about the mutexes on the same paths?


BR,
Jani.


>
> [22138.069052] BUG: scheduling while atomic: cras/2682/0x00000000
> [22138.069359] Call Trace:
> [22138.069369]  <TASK>
> [22138.069380]  dump_stack_lvl+0x69/0x97
> [22138.069407]  __schedule_bug+0x87/0x9a
> [22138.069422]  __schedule+0x4f9/0xf88
> [22138.069450]  schedule+0x4e/0xd0
> [22138.069462]  schedule_hrtimeout_range_clock+0xab/0x11b
> [22138.069488]  usleep_range_state+0x63/0x8c
> [22138.069502]  i915_audio_component_codec_wake_override+0x8e/0xf2
> [22138.069518]  snd_hdac_set_codec_wakeup+0x39/0x44 [snd_hda_core (HASH:381b 97)]
> [22138.069541]  hda_dsp_ctrl_init_chip+0x45/0x414 [snd_sof_intel_hda_common (HASH:ff4d 98)]
> [22138.069578]  hda_resume+0x4c/0xf2 [snd_sof_intel_hda_common (HASH:ff4d 98)]
> [22138.069598]  hda_dsp_runtime_resume+0x32/0x9f [snd_sof_intel_hda_common (HASH:ff4d 98)]
> [22138.069618]  sof_resume+0x67/0x234 [snd_sof (HASH:ad31 99)]
> [22138.069655]  __rpm_callback+0x87/0x130
> [22138.069680]  rpm_callback+0x22/0x77
> [22138.069691]  rpm_resume+0x3bb/0x508
>
> Signed-off-by: Brent Lu <brent.lu@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 07e0c73204f3..9a85e6da63bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -1120,12 +1120,12 @@ static void i915_audio_component_codec_wake_override(struct device *kdev,
>  	 */
>  	intel_de_rmw(i915, HSW_AUD_CHICKENBIT,
>  		     SKL_AUD_CODEC_WAKE_SIGNAL, 0);
> -	usleep_range(1000, 1500);
> +	udelay(1000);
>  
>  	if (enable) {
>  		intel_de_rmw(i915, HSW_AUD_CHICKENBIT,
>  			     0, SKL_AUD_CODEC_WAKE_SIGNAL);
> -		usleep_range(1000, 1500);
> +		udelay(1000);
>  	}
>  
>  	i915_audio_component_put_power(kdev, cookie);

-- 
Jani Nikula, Intel
