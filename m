Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D53C5E5E6C
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 11:23:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B36A10E3D9;
	Thu, 22 Sep 2022 09:23:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F47610E3D9
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 09:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663838623; x=1695374623;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=pAA6CKJgflHgoCD9eQJgqzEcuMrs8//acQTd+tjbx5E=;
 b=Gi2I49UlqCbykQtZuD3vsABg5us9j2kFtuSCsW4ZssA6HJ6vXHaA8X7f
 0FCyNv89xo7UACTVyhJ7+vumYjM6A0dXmtpIU7T7XOxNTNLCj1/iZJQqT
 8hek4m/GpShy1RLMgdF+TLjxXplXLO9nwcup1e0wgIdCAQ/tXDQAYGonM
 HR3TEjKYABkldQ80Oo0unIa8gtpLBGH3Xx716I6L+6ZdKPzAluXi99lGO
 ZoCLK12qM0ME6srs4sw5u9z2J4MEJvR0dra/pPoG65hMkwzRjk+LFoqrL
 KZux4OoI9hwQRsUAV+W2vPJeOwIjfQuQ2ALz1m/kIudoX43cYViorpSEQ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="297848243"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="297848243"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 02:23:43 -0700
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="688225609"
Received: from akoska-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.156])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 02:23:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220921173914.1606359-1-rodrigo.vivi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220921173914.1606359-1-rodrigo.vivi@intel.com>
Date: Thu, 22 Sep 2022 12:23:23 +0300
Message-ID: <87illf7ofo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Cc: Daniel J Blueman <daniel@quora.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, stable@vger.kernel.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Cc: Rafael

On Wed, 21 Sep 2022, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
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
>  drivers/gpu/drm/i915/i915_pci.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 77e7df21f539..fc3e7c69af2a 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -25,6 +25,7 @@
>  #include <drm/drm_color_mgmt.h>
>  #include <drm/drm_drv.h>
>  #include <drm/i915_pciids.h>
> +#include <linux/pm_runtime.h>
>  
>  #include "gt/intel_gt_regs.h"
>  #include "gt/intel_sa_media.h"
> @@ -1304,6 +1305,7 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  {
>  	struct intel_device_info *intel_info =
>  		(struct intel_device_info *) ent->driver_data;
> +	struct device *kdev = &pdev->dev;
>  	int err;
>  
>  	if (intel_info->require_force_probe &&
> @@ -1314,6 +1316,12 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  			 "module parameter or CONFIG_DRM_I915_FORCE_PROBE=%04x configuration option,\n"
>  			 "or (recommended) check for kernel updates.\n",
>  			 pdev->device, pdev->device, pdev->device);
> +
> +		/* Let's not waste power if we are not managing the device */
> +		pm_runtime_use_autosuspend(kdev);
> +		pm_runtime_allow(kdev);
> +		pm_runtime_put_autosuspend(kdev);
> +
>  		return -ENODEV;
>  	}

-- 
Jani Nikula, Intel Open Source Graphics Center
