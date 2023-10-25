Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CB57D66F7
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 11:35:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D4D610E082;
	Wed, 25 Oct 2023 09:35:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EC3F10E082
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 09:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698226517; x=1729762517;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=qSBVcC0TelxlZybDne+Uf0e+XUAZkqo/60p05ahnX3o=;
 b=CaLllK5dMxHfViI+BExyvDJ4Sc8vhSMyFnDDmps9CPpPeO7RmYyfZCK7
 LePH2YXS7Aw9Y+EHIeAZCLqZe0gtsyE0iboYc+UQ2zKH2NE6ujVOjAh/z
 +A+lkGAu5umDm4gSP7ML/rxRWdY8SP8ZKMx1bFLWtmZjanicbDUlReQGO
 8IK2s6zeIkianiM7Wf7rZPjRVqllwmxQv267pmksjnza2+4+M8qktpd1E
 +dezIgP1RBz1ANhbJpOJfuONLeGsLMlgkAqziAN6KQMvyJGPu4nZSaAFH
 ri4mUpaYTKD3KxPCcnOpT5+txLugGItJvFSN3KRwbC2GhQmzUPVolnKno w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="384482960"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="384482960"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 02:35:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="882400117"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="882400117"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.48.142])
 ([10.252.48.142])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 02:35:14 -0700
Message-ID: <b09a4449-0e15-606e-107f-163ce60ecfc9@linux.intel.com>
Date: Wed, 25 Oct 2023 11:35:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20231024130448.576297-1-jani.nikula@intel.com>
 <20231024130448.576297-2-jani.nikula@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20231024130448.576297-2-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: move Makefile display debugfs
 files next to display
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


On 10/24/2023 3:04 PM, Jani Nikula wrote:
> Keep the display build lists together.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/Makefile | 7 ++++---
>   1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index bc785dd89c19..e92682424915 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -95,9 +95,7 @@ i915-$(CONFIG_COMPAT) += \
>   	i915_ioc32.o
>   i915-$(CONFIG_DEBUG_FS) += \
>   	i915_debugfs.o \
> -	i915_debugfs_params.o \
> -	display/intel_display_debugfs.o \
> -	display/intel_pipe_crc.o
> +	i915_debugfs_params.o
>   i915-$(CONFIG_PERF_EVENTS) += \
>   	i915_pmu.o
>   
> @@ -318,6 +316,9 @@ i915-$(CONFIG_ACPI) += \
>   	display/intel_opregion.o
>   i915-$(CONFIG_DRM_FBDEV_EMULATION) += \
>   	display/intel_fbdev.o
> +i915-$(CONFIG_DEBUG_FS) += \
> +	display/intel_display_debugfs.o \
> +	display/intel_pipe_crc.o

 From a quick look, I am not sure how this file is related to debugfs. I 
will try to find out but that is

unrelated to this patch so

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

>   
>   # modesetting output/encoder code
>   i915-y += \
