Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47DEC83A49D
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jan 2024 09:56:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8165310F66D;
	Wed, 24 Jan 2024 08:56:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 283AD10F66D
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jan 2024 08:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706086562; x=1737622562;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=WZnbgsCIrDHfpSj6hB3DW5ori3YAHvw6o87C7Aa1ZtY=;
 b=V7EOrOOnVS7l2zkYBHbQ82Q9Vc6rho9n6hnQ77KlLtAxst26rrDBG0/M
 5rp9vR2B9oE+GvcCbUTvdVm+CWqotYtA4YBVZZCGLAT3IKWwwp3oZPYkr
 +k8vnCQuPPDAwPkT+najAY9ouYcimkPZBQRs/BFDIJ8ltZMUKQn/0Q39U
 kAhN0Fk/vwmwb6+VjWEFNQzgKnVT+ReO7gv00emPnVwfwbqCeAwbtJfqI
 Ab/KzpjLkJtLw3T2JTkP7lB70DOw73BhybsDKRv+y/0lVPXnOj68Ib/Dm
 6ko13cfaCdK38EbhKNGSpYxc/jbmIkrARhXjxKzUZrGgZebvO0hSXX+dD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="1626704"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="1626704"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2024 00:56:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="1117558908"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="1117558908"
Received: from wheelerj-mobl.ger.corp.intel.com (HELO [10.213.198.85])
 ([10.213.198.85])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2024 00:55:58 -0800
Message-ID: <f04e6301-c41e-4293-96a7-6d1fa8f8304d@linux.intel.com>
Date: Wed, 24 Jan 2024 08:55:56 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH] drm/i915: Add GETPARAM for GuC submission version
Content-Language: en-US
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>
References: <20240124081915.68953-1-joonas.lahtinen@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20240124081915.68953-1-joonas.lahtinen@linux.intel.com>
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
Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 Kenneth Graunke <kenneth@whitecape.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Sagar Ghuge <sagar.ghuge@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 24/01/2024 08:19, Joonas Lahtinen wrote:
> Add reporting of the GuC submissio/VF interface version via GETPARAM
> properties. Mesa intends to use this information to check for old
> firmware versions with known bugs before enabling features like async
> compute.

There was 
https://patchwork.freedesktop.org/patch/560704/?series=124592&rev=1 
which does everything in one go so would be my preference.

During the time of that patch there was discussion whether firmware 
version or submission version was better. I vaguely remember someone 
raised an issue with the latter. Adding John in case he remembers.

> Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Kenneth Graunke <kenneth@whitecape.org>
> Cc: Jose Souza <jose.souza@intel.com>
> Cc: Sagar Ghuge <sagar.ghuge@intel.com>
> Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_getparam.c | 12 ++++++++++++
>   include/uapi/drm/i915_drm.h          | 13 +++++++++++++
>   2 files changed, 25 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/i915_getparam.c
> index 5c3fec63cb4c1..f176372debc54 100644
> --- a/drivers/gpu/drm/i915/i915_getparam.c
> +++ b/drivers/gpu/drm/i915/i915_getparam.c
> @@ -113,6 +113,18 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
>   		if (value < 0)
>   			return value;
>   		break;
> +	case I915_PARAM_GUC_SUBMISSION_VERSION_MAJOR:
> +	case I915_PARAM_GUC_SUBMISSION_VERSION_MINOR:
> +	case I915_PARAM_GUC_SUBMISSION_VERSION_PATCH:
> +		if (!intel_uc_uses_guc_submission(&to_gt(i915)->uc))
> +			return -ENODEV;
> +		if (param->param == I915_PARAM_GUC_SUBMISSION_VERSION_MAJOR)
> +			value = to_gt(i915)->uc.guc.submission_version.major;
> +		else if (param->param == I915_PARAM_GUC_SUBMISSION_VERSION_MINOR)
> +			value = to_gt(i915)->uc.guc.submission_version.minor;
> +		else
> +			value = to_gt(i915)->uc.guc.submission_version.patch;
> +		break;
>   	case I915_PARAM_MMAP_GTT_VERSION:
>   		/* Though we've started our numbering from 1, and so class all
>   		 * earlier versions as 0, in effect their value is undefined as
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index fd4f9574d177a..7d5a47f182542 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -806,6 +806,19 @@ typedef struct drm_i915_irq_wait {
>    */
>   #define I915_PARAM_PXP_STATUS		 58
>   
> +/*
> + * Query for the GuC submission/VF interface version number

What is this VF you speak of? :/

Regards,

Tvrtko

> + *
> + * -ENODEV is returned if GuC submission is not used
> + *
> + * On success, returns the respective GuC submission/VF interface major,
> + * minor or patch version as per the requested parameter.
> + *
> + */
> +#define I915_PARAM_GUC_SUBMISSION_VERSION_MAJOR 59
> +#define I915_PARAM_GUC_SUBMISSION_VERSION_MINOR 60
> +#define I915_PARAM_GUC_SUBMISSION_VERSION_PATCH 61
> +
>   /* Must be kept compact -- no holes and well documented */
>   
>   /**
