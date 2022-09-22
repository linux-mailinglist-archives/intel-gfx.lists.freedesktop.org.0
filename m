Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B05215E5CB8
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 09:56:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE40E10EA67;
	Thu, 22 Sep 2022 07:56:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47E5D10EA67
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 07:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663833369; x=1695369369;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=DHnshpJXgS0wLVRLy6Z4hikW5QAdGGxrmEDk2Isok7k=;
 b=LnG1vsBknv1z2bg2xbBTXO76OuWNcF0A7Fzsx6orS/D+Hz/79NQrYbTN
 7/EGzysCCNJs79WT2WeY2FumJXU1Fu1IPjqNC9DmFaoNPjVG6bPsb6uG4
 jxb9kWqGETr2K5CvPtt4qv45XL+/Md3qNd2Z0PN+bUWlNdnLHJ966N578
 wprVoDhm0IGketTGXKblKO3UsQ4ZTWdZo2xvJq8OUfaj6uJSqSfj9X2A0
 hgFbir5lyops+qoNvy+TIPTNb/EBLe4+MbDUoInseNMBkqabX/pkjAwHR
 TP3zObsI3h+KJ26+4Po82+Bb5wUEao9pvGlFoMRI/l5InK8wdHkEMRZYY A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="287309598"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="287309598"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 00:56:08 -0700
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="688198629"
Received: from mmorri2-mobl.ger.corp.intel.com (HELO [10.213.205.83])
 ([10.213.205.83])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 00:56:06 -0700
Message-ID: <2f318650-b01a-a526-8b74-bff99d5b2010@linux.intel.com>
Date: Thu, 22 Sep 2022 08:56:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220921173914.1606359-1-rodrigo.vivi@intel.com>
Content-Language: en-US
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220921173914.1606359-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Allow D3 when we are not actively
 managing a known PCI device.
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
Cc: Daniel J Blueman <daniel@quora.org>, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 21/09/2022 18:39, Rodrigo Vivi wrote:
> The force_probe protection actively avoids the probe of i915 to
> manage a device that is currently under development. It is a nice
> protection for future users when getting a new platform but using
> some older kernel.
> 
> However, when we avoid the probe we don't take back the registration
> of the device. We cannot give up the registration anyway since we can
> have multiple devices present. For instance an integrated and a discrete
> one.
> 
> When this scenario occurs, the user will not be able to change any
> of the runtime pm configuration of the unmanaged device. So, it will
> be blocked in D0 state wasting power. This is specially bad in the
> case where we have a discrete platform attached, but the user is
> able to fully use the integrated one for everything else.
> 
> So, let's put the protected and unmanaged device in D3. So we can
> save some power.
> 
> Reported-by: Daniel J Blueman <daniel@quora.org>
> Cc: stable@vger.kernel.org
> Cc: Daniel J Blueman <daniel@quora.org>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_pci.c | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 77e7df21f539..fc3e7c69af2a 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -25,6 +25,7 @@
>   #include <drm/drm_color_mgmt.h>
>   #include <drm/drm_drv.h>
>   #include <drm/i915_pciids.h>
> +#include <linux/pm_runtime.h>
>   
>   #include "gt/intel_gt_regs.h"
>   #include "gt/intel_sa_media.h"
> @@ -1304,6 +1305,7 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   {
>   	struct intel_device_info *intel_info =
>   		(struct intel_device_info *) ent->driver_data;
> +	struct device *kdev = &pdev->dev;
>   	int err;
>   
>   	if (intel_info->require_force_probe &&
> @@ -1314,6 +1316,12 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   			 "module parameter or CONFIG_DRM_I915_FORCE_PROBE=%04x configuration option,\n"
>   			 "or (recommended) check for kernel updates.\n",
>   			 pdev->device, pdev->device, pdev->device);
> +
> +		/* Let's not waste power if we are not managing the device */
> +		pm_runtime_use_autosuspend(kdev);
> +		pm_runtime_allow(kdev);
> +		pm_runtime_put_autosuspend(kdev);

This sequence is black magic to me so can't really comment on the specifics. But in general, what I think I've figured out is, that the PCI core calls our runtime resume callback before probe:

local_pci_probe:
...
         /*
          * Unbound PCI devices are always put in D0, regardless of
          * runtime PM status.  During probe, the device is set to
          * active and the usage count is incremented.  If the driver
          * supports runtime PM, it should call pm_runtime_put_noidle(),
          * or any other runtime PM helper function decrementing the usage
          * count, in its probe routine and pm_runtime_get_noresume() in
          * its remove routine.
          */
         pm_runtime_get_sync(dev);
         pci_dev->driver = pci_drv;
         rc = pci_drv->probe(pci_dev, ddi->id);
         if (!rc)
                 return rc;
         if (rc < 0) {
                 pci_dev->driver = NULL;
                 pm_runtime_put_sync(dev);
                 return rc;
         }

And if probe fails it calls pm_runtime_put_sync which presumably does not provide the symmetry we need?

Anyway since I can't provide meaningful review I'll copy Imre since I think he worked in the area in the past. Just so more eyes is better.

Regards,

Tvrtko


> +
>   		return -ENODEV;
>   	}
>   
