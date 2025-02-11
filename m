Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B67FA30C12
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 13:54:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FAC310E21E;
	Tue, 11 Feb 2025 12:54:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F3ZhqHdq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46FEC10E1A9;
 Tue, 11 Feb 2025 12:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739278444; x=1770814444;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=RDF2ONah8OrLCI1ecjVW5je2vtiWHLyYJNyiBhsXfk0=;
 b=F3ZhqHdqQjTozpfRMfVk7SkDBbkcjyh/8WqSS5hWBhio7rKE6D7KxG2b
 znUJz6xIlWQ6sYt/1/tQLz7UUDlonh07pk0iU9SBHUufNMij/lmqDJG5h
 Ule5QPA7VXOfPjxjBSDZqbKaw7KwpmGxOTF8Ul549RykpeNzeTu4Yh2I4
 FK14yEazP63ICHJnU77FhqaqL2hJ1U36yz4EwFxf8i2ze9wFtrCs0dqMB
 u4s8LvMk4Bo/aThzDAjftgGUKeA0LOkh+64ljgabV/J/79gkhL0Z7meqo
 iIBy1iarTYkwbLpQZaDhK5CbNu7eGD88aM9fJyVu7IgPtXqozoq3m34mH Q==;
X-CSE-ConnectionGUID: 5OnBiWyuQDmzCqDApD8dUg==
X-CSE-MsgGUID: ZAxflhEzTH+HsX2rvM8aiA==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="27494387"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="27494387"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 04:54:04 -0800
X-CSE-ConnectionGUID: 833ERXceQ3WnJHsVtYn8Rg==
X-CSE-MsgGUID: s80o71f4Q66tp8zMyzMxAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="149688047"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.93])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 04:54:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH 2/9] drm/i915/display_debug_fs: Prefer using
 display->platform
In-Reply-To: <20250211104857.3501566-3-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250211104857.3501566-1-suraj.kandpal@intel.com>
 <20250211104857.3501566-3-suraj.kandpal@intel.com>
Date: Tue, 11 Feb 2025 14:53:58 +0200
Message-ID: <8734gk3amx.fsf@intel.com>
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

On Tue, 11 Feb 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Prefer using display->platform.xx instead of IS_PLATFORM() checks

Could've been squashed to the previous patch?

Ditto about the subject prefix as previous patch.

Regardless,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index d85924caa26e..991c1726f522 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -96,14 +96,14 @@ static int i915_sr_status(struct seq_file *m, void *unused)
>  		/* no global SR status; inspect per-plane WM */;
>  	else if (HAS_PCH_SPLIT(dev_priv))
>  		sr_enabled = intel_de_read(display, WM1_LP_ILK) & WM_LP_ENABLE;
> -	else if (IS_I965GM(dev_priv) || IS_G4X(dev_priv) ||
> -		 IS_I945G(dev_priv) || IS_I945GM(dev_priv))
> +	else if (display->platform.i965gm || display->platform.g4x ||
> +		 display->platform.i945g || display->platform.i945gm)
>  		sr_enabled = intel_de_read(display, FW_BLC_SELF) & FW_BLC_SELF_EN;
> -	else if (IS_I915GM(dev_priv))
> +	else if (display->platform.i915gm)
>  		sr_enabled = intel_de_read(display, INSTPM) & INSTPM_SELF_EN;
> -	else if (IS_PINEVIEW(dev_priv))
> +	else if (display->platform.pineview)
>  		sr_enabled = intel_de_read(display, DSPFW3(dev_priv)) & PINEVIEW_SELF_REFRESH_EN;
> -	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> +	else if (display->platform.valleyview || display->platform.cherryview)
>  		sr_enabled = intel_de_read(display, FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
>  
>  	intel_display_power_put(display, POWER_DOMAIN_INIT, wakeref);

-- 
Jani Nikula, Intel
