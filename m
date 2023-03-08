Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A4E6B1034
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 18:30:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0118810E6BA;
	Wed,  8 Mar 2023 17:30:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3886C10E6BA
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 17:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678296598; x=1709832598;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=0x7YDpH0mixgwpiyiwla9w7K1Vm9C2T3JQSVxI02ZcI=;
 b=JPhzzsP2S6KscXPMKIwZAvYKSEhfhYYh1lvGmpatw0Ec9QPB3ZTQFm3I
 vqWq2oCXp6M4c5YH41MTwqVQv8DuS54ncYCs7JHhxstVn7oVyg6YmH0yo
 qiu4KLXvLR0J11TmZ9PMGIgtaS/tk5dUX1YvIjStj34aaJwnzjSbZOHFM
 3VM2/D9A0sHH758z36QuBMYMAVzhJ3IarUd1Th8aE7AEyzEJEE7+mXDrk
 Qe/Hb4XWemMgwAJZ9UBqG1ZNCCp4767rwlxp2/UmAWzRA1UIbC8aimHIF
 oRHzB8qALsMrcVmIVQYLgd0upVW3jJAqFEgf/GCMmj6QVmWmEf8uQD3hr g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="334932760"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="334932760"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 09:29:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="745986557"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="745986557"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.251.218.251])
 ([10.251.218.251])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 09:29:56 -0800
Message-ID: <c743ac87-27d8-c986-ae2a-874b8381afe5@linux.intel.com>
Date: Wed, 8 Mar 2023 18:29:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <ZAiKuulQBp0569s/@intel.com>
 <20230308133624.2131582-1-andrzej.hajda@intel.com>
Content-Language: en-US
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20230308133624.2131582-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: prevent forcewake releases
 during BAR resize
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
Cc: Nirmoy Das <nirmoy.das@intel.com>, chris.p.wilson@linux.intel.com,
 Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 3/8/2023 2:36 PM, Andrzej Hajda wrote:
> Tests on DG2 machines show that releasing forcewakes during BAR resize
> results later in forcewake ack timeouts.
Do we have a fdo/issues url for that? Having that as References would be 
nice.
>   Since forcewakes can be realeased
> asynchronously the simplest way to prevent it is to get all forcewakes
> for duration of BAR resizing.
>
> v2: hold rpm as well during resizing (Rodrigo)
>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>


Acked-by: Nirmoy Das <nirmoy.das@intel.com>


> ---
> Please ignore resend of v1, my mistake.
>
> Regards
> Andrzej
> ---
>   drivers/gpu/drm/i915/gt/intel_region_lmem.c | 25 +++++++++++++++------
>   1 file changed, 18 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> index 89fdfc67f8d1e0..2a3217e2890fc7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> @@ -54,6 +54,7 @@ static void i915_resize_lmem_bar(struct drm_i915_private *i915, resource_size_t
>   	struct resource *root_res;
>   	resource_size_t rebar_size;
>   	resource_size_t current_size;
> +	intel_wakeref_t wakeref;
>   	u32 pci_cmd;
>   	int i;
>   
> @@ -102,15 +103,25 @@ static void i915_resize_lmem_bar(struct drm_i915_private *i915, resource_size_t
>   		return;
>   	}
>   
> -	/* First disable PCI memory decoding references */
> -	pci_read_config_dword(pdev, PCI_COMMAND, &pci_cmd);
> -	pci_write_config_dword(pdev, PCI_COMMAND,
> -			       pci_cmd & ~PCI_COMMAND_MEMORY);
> +	/*
> +	 * Releasing forcewake during BAR resizing results in later forcewake
> +	 * ack timeouts and former can happen any time - it is asynchronous.
> +	 * Grabbing all forcewakes prevents it.
> +	 */
> +	with_intel_runtime_pm(i915->uncore.rpm, wakeref) {
> +		intel_uncore_forcewake_get(&i915->uncore, FORCEWAKE_ALL);
>   
> -	_resize_bar(i915, GEN12_LMEM_BAR, rebar_size);
> +		/* First disable PCI memory decoding references */
> +		pci_read_config_dword(pdev, PCI_COMMAND, &pci_cmd);
> +		pci_write_config_dword(pdev, PCI_COMMAND,
> +				       pci_cmd & ~PCI_COMMAND_MEMORY);
>   
> -	pci_assign_unassigned_bus_resources(pdev->bus);
> -	pci_write_config_dword(pdev, PCI_COMMAND, pci_cmd);
> +		_resize_bar(i915, GEN12_LMEM_BAR, rebar_size);
> +
> +		pci_assign_unassigned_bus_resources(pdev->bus);
> +		pci_write_config_dword(pdev, PCI_COMMAND, pci_cmd);
> +		intel_uncore_forcewake_put(&i915->uncore, FORCEWAKE_ALL);
> +	}
>   }
>   #else
>   static void i915_resize_lmem_bar(struct drm_i915_private *i915, resource_size_t lmem_size) {}
