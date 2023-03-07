Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7646AD992
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 09:51:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E3F710E105;
	Tue,  7 Mar 2023 08:51:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09ADA10E0F6
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 08:51:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678179072; x=1709715072;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=omhaUM4Y4YGFVBOltvkEjdai8/DN6CHUGLxQJ+SE6k4=;
 b=GP0fOM2Wuiv5AAqfZHlPPyXLDt6kcO6KNRQxFmCiJLa3J3WFeKHf1Q8Z
 3rLxYn0keEs4vntwNqo/Or+78LXoWY2fpBDg7UMsQ0gRtYwQG33LLr+zm
 iS389lnbNzeSA3y364fjj+rSfNfItRpTBjWU75I9GBDlBrdOqXugA34Jj
 Z1LqIpVxR4wkQj8MR9gXODoi6XUOvnSwgFlKvzC0loBoLltv/i7Q1TTAR
 hGIYCSFjUChetNVSukNpHp/Q2PeVLlDMRlcK9acNBI0BoP+mUiIjQjCeP
 bxioPxSSvwA4JzsZQIZb7lD6jPfR+7bK/eU4LLmR/UMsmnqQhrNva61lF w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="335820468"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="335820468"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 00:51:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="745388713"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="745388713"
Received: from sbarnes-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.58.236])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 00:51:10 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230221125737.1813187-3-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230221125737.1813187-1-imre.deak@intel.com>
 <20230221125737.1813187-3-imre.deak@intel.com>
Date: Tue, 07 Mar 2023 10:51:08 +0200
Message-ID: <87r0u1rlkz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/opregion: Register display
 debugfs later, after initialization steps
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

On Tue, 21 Feb 2023, Imre Deak <imre.deak@intel.com> wrote:
> Move the display debugfs registration later, after initializing steps
> for opregion/acpi/audio. These latter ones don't depend on the debugfs
> entries, OTOH some debugfs entries may depend on the initialized state.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Patches 1-3,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a1fbdf32bd214..7827ef3e2d1e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8885,14 +8885,14 @@ void intel_display_driver_register(struct drm_i915_private *i915)
>  	if (!HAS_DISPLAY(i915))
>  		return;
>  
> -	intel_display_debugfs_register(i915);
> -
>  	/* Must be done after probing outputs */
>  	intel_opregion_register(i915);
>  	intel_acpi_video_register(i915);
>  
>  	intel_audio_init(i915);
>  
> +	intel_display_debugfs_register(i915);
> +
>  	/*
>  	 * Some ports require correctly set-up hpd registers for
>  	 * detection to work properly (leading to ghost connected

-- 
Jani Nikula, Intel Open Source Graphics Center
