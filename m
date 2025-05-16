Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D725AB9E27
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 16:06:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1C8810EACD;
	Fri, 16 May 2025 14:06:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ITy4/fKD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02E2810EACC;
 Fri, 16 May 2025 14:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747404361; x=1778940361;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=6xDJNLp1HR+OV9ReTzcdk/uc8M52LxvAq9VHVj2npVE=;
 b=ITy4/fKDxdb7ECjQuTqdDHKneBIZObFy+Km+/HoBo7Ce9Z8G7A72ljH9
 /vXEx0t01tpZeADfV2oTUIgOV2kivdqnQL9+hH60bQfaxst8aGnunwlpF
 ql0a58QNcnJogEGbKH0hwit6Isq2j/kNrxupX+gS8jutZFpCMAP3J+Saf
 hCsdsDNsto/X2qCgqoRyHfByQxx1wEfXFcQVw3uFRavoUkuLpKxdgIq/u
 WxoFpm/I7NzZchBiGvOgbenbsqreZ9kyEyF2Zhw4liOCXnn1JhraOv7s0
 YXEiJFKi6uXGGvmMiZtfSGKFYbpSQoDK80Fy8F6b6tvPSW6iXIw+LxUhf w==;
X-CSE-ConnectionGUID: Y6aYXrYcRaue4wFgHBGMSw==
X-CSE-MsgGUID: N7z3S5rMRmKf2EigWWEQIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11435"; a="49533819"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="49533819"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 07:06:00 -0700
X-CSE-ConnectionGUID: qxDvn3C8QJimJoMZ/VhZqw==
X-CSE-MsgGUID: nUc83+4DSJWP4Atdq5BxFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="142707413"
Received: from slindbla-desk.ger.corp.intel.com (HELO [10.245.245.176])
 ([10.245.245.176])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 07:05:59 -0700
Message-ID: <9f6475d0-516f-47af-843b-777c77ad26c4@intel.com>
Date: Fri, 16 May 2025 15:05:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/7] drm/xe/display: Add check for
 alloc_ordered_workqueue()
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Haoxiang Li <haoxiang_li2024@163.com>, stable@vger.kernel.org
References: <cover.1747397638.git.jani.nikula@intel.com>
 <4ee1b0e5d1626ce1dde2e82af05c2edaed50c3aa.1747397638.git.jani.nikula@intel.com>
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <4ee1b0e5d1626ce1dde2e82af05c2edaed50c3aa.1747397638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

On 16/05/2025 13:16, Jani Nikula wrote:
> From: Haoxiang Li <haoxiang_li2024@163.com>
> 
> Add check for the return value of alloc_ordered_workqueue()
> in xe_display_create() to catch potential exception.
> 
> Fixes: 44e694958b95 ("drm/xe/display: Implement display support")
> Cc: stable@vger.kernel.org
> Signed-off-by: Haoxiang Li <haoxiang_li2024@163.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> ---
>   drivers/gpu/drm/xe/display/xe_display.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 699f401eff10..df897d08255c 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -112,6 +112,8 @@ int xe_display_create(struct xe_device *xe)
>   	spin_lock_init(&display->fb_tracking.lock);
>   
>   	display->hotplug.dp_wq = alloc_ordered_workqueue("xe-dp", 0);
> +	if (!display->hotplug.dp_wq)
> +		return -ENOMEM;
>   
>   	return drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
>   }

