Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21469933FDB
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2024 17:44:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4C6010E2C7;
	Wed, 17 Jul 2024 15:44:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CwVjFnAL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AEED10E2C7
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2024 15:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721231039; x=1752767039;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=1KGjLZOvXpBsnRKxPXYrgG/zYZIAMdz/diFyeB7zkj0=;
 b=CwVjFnALQ1pX8Hfu67Uer/h4kiDAwcRJZRqGZn7tTdkYWBFRMz/1hRQ9
 WTqcYMim+ls8UQRgHjvfBT14QZpgnQvp5LUHh2/wBMMTsbUE7/vFwToRP
 OrfTkf57VE77h7lmF6ochawpoS7DED08ffupxwwChFmi48PQMNUkzywFh
 AQ4gbf7y4kmU7Bn86opa7h0KjhSqS2aPXlBbbUyUp8/+XiaGOmP5XS2tn
 TkH3t4WcLqWtqqlAydbifXTiUYldjEevX6ufwPNUbjdUQ7gMKfDkhSO5g
 WUXhMmXi46TRXYHYdohM8QxBNm/mnwHrJCtiQusoy6/4ZOBfduLdmu2Sy g==;
X-CSE-ConnectionGUID: utVMd9KnTsyOlp13ExiAHQ==
X-CSE-MsgGUID: ECiVWPsZT7GFCBMetsQWxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="21648525"
X-IronPort-AV: E=Sophos;i="6.09,215,1716274800"; d="scan'208";a="21648525"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 08:43:59 -0700
X-CSE-ConnectionGUID: Wwoi8XgqTpqZzSaM0k6WGA==
X-CSE-MsgGUID: NGHTKJDSS5uzd5wY2ZJNuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,215,1716274800"; d="scan'208";a="50168381"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.246.38.191])
 ([10.246.38.191])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 08:43:57 -0700
Message-ID: <ae211930-55b6-4623-985a-d34bc38807d1@linux.intel.com>
Date: Wed, 17 Jul 2024 17:43:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Allow NULL memory region
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, dan.carpenter@linaro.org,
 chris.p.wilson@linux.intel.com
References: <20240712214156.3969584-1-jonathan.cavitt@intel.com>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20240712214156.3969584-1-jonathan.cavitt@intel.com>
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


On 7/12/2024 11:41 PM, Jonathan Cavitt wrote:
> Prevent a NULL pointer access in intel_memory_regions_hw_probe.
>
> Fixes: 05da7d9f717b ("drm/i915/gem: Downgrade stolen lmem setup warning")
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11704

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

> ---
>   drivers/gpu/drm/i915/intel_memory_region.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
> index 172dfa7c3588b..d40ee1b42110a 100644
> --- a/drivers/gpu/drm/i915/intel_memory_region.c
> +++ b/drivers/gpu/drm/i915/intel_memory_region.c
> @@ -368,8 +368,10 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
>   			goto out_cleanup;
>   		}
>   
> -		mem->id = i;
> -		i915->mm.regions[i] = mem;
> +		if (mem) { /* Skip on non-fatal errors */
> +			mem->id = i;
> +			i915->mm.regions[i] = mem;
> +		}
>   	}
>   
>   	for (i = 0; i < ARRAY_SIZE(i915->mm.regions); i++) {
