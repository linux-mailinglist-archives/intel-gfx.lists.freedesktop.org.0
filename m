Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8CB5FC346
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 11:48:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B90CD10E0C6;
	Wed, 12 Oct 2022 09:48:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC90910E0C2
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665568113; x=1697104113;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=2LEbUPgSxUnPTn44Aht4Wrpb3lYqLGs7N2cn3SQyCiE=;
 b=IfB4hzMDmx3tPsMHWnaiLR/UaETRF0RXqjMAQVZmFQ4MknGYUx6RpiTq
 9IZqnNppSigbka/yuCq7HTNlkkQ/9mdFNdcgSZUx1zCdB6awu2xTc8LLY
 WuOBF7QtTi9Px+y1I0kQidHVgiYc16Yf+1yfvK2SeRqzYrQ3JlYBwClaC
 wkJZiu3qqmNNDLmGvuH7YmwXs58PiD6i6Tha0tQDHUc5TrtP/yw/l5oET
 bDb8VLnlPTosu2kDuA+haC/xKNrrWaJlkYgHaCxDtbMFxzgNOZ0WGvDTN
 oTaiSIS3BqRFLuEvcOgaBzRtav/0eZzEFZXfy4NDc9OIW4v7gKACrbI9a w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="284476381"
X-IronPort-AV: E=Sophos;i="5.95,178,1661842800"; d="scan'208";a="284476381"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 02:48:33 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="695410297"
X-IronPort-AV: E=Sophos;i="5.95,178,1661842800"; d="scan'208";a="695410297"
Received: from dionita-mobl.ger.corp.intel.com (HELO [10.252.24.124])
 ([10.252.24.124])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 02:48:31 -0700
Message-ID: <6fb51e71-bc5c-16d1-ad13-33017035be83@intel.com>
Date: Wed, 12 Oct 2022 10:48:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.1
Content-Language: en-GB
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221012083402.1069940-1-anshuman.gupta@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20221012083402.1069940-1-anshuman.gupta@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dgfx: Temporary hammer to keep
 autosuspend control 'on'
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
Cc: rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 12/10/2022 09:34, Anshuman Gupta wrote:
> DGFX platforms has lmem and cpu can access the lmem objects
> via mmap and i915 internal i915_gem_object_pin_map() for
> i915 own usages. Both of these methods has pre-requisite
> requirement to keep GFX PCI endpoint in D0 for a supported
> iomem transaction over PCI link. (Refer PCIe specs 5.3.1.4.1)
> 
> Both DG1/DG2 have a hardware bug that violates the PCIe specs
> and support the iomem read write transaction over PCIe bus despite
> endpoint is D3 state.
> Due to above H/W bug, we had never observed any issue with i915 runtime
> PM versus lmem access.
> But this issue becomes visible when PCIe gfx endpoint's upstream
> bridge enters to D3, at this point any lmem read/write access will be
> returned as unsupported request. But again this issue is not observed
> on every platform because it has been observed on few host machines
> DG1/DG2 endpoint's upstream bridge does not bind with pcieport driver.
> which really disables the PCIe  power savings and leaves the bridge
> at D0 state.
> 
> Till we fix all issues related to runtime PM, we need
> to keep autosupend control to 'on' on all discrete platforms with lmem.
> 
> Fixes: 527bab0473f2 ("drm/i915/rpm: Enable runtime pm autosuspend by default")

So with this change all the runtime pm stuff is disabled on dgfx? i.e 
intel_runtime_pm_get() always returns zero or so? Wondering if we should 
also revert ad74457a6b5a ("drm/i915/dgfx: Release mmap on rpm suspend") 
for now, since that still needs some more fixes...

> Suggested-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>   drivers/gpu/drm/i915/intel_runtime_pm.c | 11 +++++++++--
>   1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
> index 6ed5786bcd29..410a5cb58a61 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> @@ -591,8 +591,15 @@ void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
>   		pm_runtime_use_autosuspend(kdev);
>   	}
>   
> -	/* Enable by default */
> -	pm_runtime_allow(kdev);
> +	/*
> +	 *  FIXME: Temp hammer to keep autosupend disable on lmem supported platforms.
> +	 *  As per PCIe specs 5.3.1.4.1, all iomem read write request over a PCIe
> +	 *  function will be unsupported in case PCIe endpoint function is in D3.
> +	 *  Let's keep i915 autosuspend control 'on' till we fix all known issue
> +	 *  with lmem access in D3.
> +	 */
> +	if (!HAS_LMEM(i915))
> +		pm_runtime_allow(kdev);
>   
>   	/*
>   	 * The core calls the driver load handler with an RPM reference held.
