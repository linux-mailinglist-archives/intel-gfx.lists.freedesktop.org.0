Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DFA65985E
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Dec 2022 13:43:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8857F10E18B;
	Fri, 30 Dec 2022 12:43:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F016E10E18B
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Dec 2022 12:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672404179; x=1703940179;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=MkEBZ2IZEkqMyzxW2yPfBpMQDrkgkFf8LOABthtmDho=;
 b=nNdQZklCbX13gbgzYymdEYALgFB/WraPBG8+HTBhMSEV9FSGFJ+/TOHI
 LUXqyBqZLcrLN2HGC5Qet0CUOojjVVlI1qP7APQ+eCHwN3sfDE5kMjHz6
 gjRbt7xgCNnVqKfLaIExkU2l4r+sPAv7ET1UxzafXMoVRyu0H4KllD9BO
 Hp+bPAkzRkNLlxEWtJyzAwDy3jHid+BmA35WzfUY2TFMbFB//KqSmT5mx
 zEQhFf/G/mLI2aG1XOtc3WWUSJbJ3xyc6yog057Ln2ETkkrLXdtF/d5cD
 5R5JDio7AZbweLf+vSXCAnDOCrxeif3ajyRzsJK8pR284f1PC01k0FWNh A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10575"; a="323187346"
X-IronPort-AV: E=Sophos;i="5.96,287,1665471600"; d="scan'208";a="323187346"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2022 04:42:59 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10575"; a="684458021"
X-IronPort-AV: E=Sophos;i="5.96,287,1665471600"; d="scan'208";a="684458021"
Received: from seanla2x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.9.146])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2022 04:42:57 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, Gustavo Sousa
 <gustavo.sousa@intel.com>
In-Reply-To: <Y66euxZzzpuHmnVd@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221229161230.1261938-1-rodrigo.vivi@intel.com>
 <20221229180134.ulydr5qprda3z3zz@gjsousa-mobl2>
 <Y66euxZzzpuHmnVd@intel.com>
Date: Fri, 30 Dec 2022 14:42:51 +0200
Message-ID: <87358x12r8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Expand force_probe to block probe
 of devices as well.
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 30 Dec 2022, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Thu, Dec 29, 2022 at 03:01:34PM -0300, Gustavo Sousa wrote:
>> On Thu, Dec 29, 2022 at 11:12:30AM -0500, Rodrigo Vivi wrote:
>> > There are new cases where we want to block i915 probe, such
>> > as when experimenting or developing the new Xe driver.
>> > 
>> > But also, with the new hibrid cards, users or developers might
>> > want to use i915 only on integrated and fully block the probe
>> > of the i915 for the discrete. Or vice versa.
>> > 
>> > Oh, and there are even older development and validation reasons,
>> > like when you use some distro where the modprobe.blacklist is
>> > not present.
>> > 
>> > But in any case, let's introduce a more granular control, but without
>> > introducing yet another parameter, but using the existent force_probe
>> > one.
>> > 
>> > Just by adding a ! in the begin of the id in the force_probe, like
>> > in this case where we would block the probe for Alder Lake:
>> > 
>> > $ insmod i915.ko force_probe='!46a6'
>> > 
>> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/Kconfig       | 13 ++++++++++---
>> >  drivers/gpu/drm/i915/i915_params.c |  2 +-
>> >  drivers/gpu/drm/i915/i915_pci.c    | 29 +++++++++++++++++++++++++----
>> >  3 files changed, 36 insertions(+), 8 deletions(-)
>> > 
>> > diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
>> > index 3efce05d7b57..8873cd0355b7 100644
>> > --- a/drivers/gpu/drm/i915/Kconfig
>> > +++ b/drivers/gpu/drm/i915/Kconfig
>> > @@ -54,24 +54,31 @@ config DRM_I915
>> >  	  If "M" is selected, the module will be called i915.
>> >  
>> >  config DRM_I915_FORCE_PROBE
>> > -	string "Force probe driver for selected new Intel hardware"
>> > +	string "Force probe i915 for selected Intel hardware IDs"
>> >  	depends on DRM_I915
>> >  	help
>> >  	  This is the default value for the i915.force_probe module
>> >  	  parameter. Using the module parameter overrides this option.
>> >  
>> > -	  Force probe the driver for new Intel graphics devices that are
>> > +	  Force probe the i915 for Intel graphics devices that are
>> >  	  recognized but not properly supported by this kernel version. It is
>> >  	  recommended to upgrade to a kernel version with proper support as soon
>> >  	  as it is available.
>> >  
>> > +	  It can also be used to block the probe of recognized and fully
>> > +	  supported devices.
>> > +
>> >  	  Use "" to disable force probe. If in doubt, use this.
>> >  
>> > -	  Use "<pci-id>[,<pci-id>,...]" to force probe the driver for listed
>> > +	  Use "<pci-id>[,<pci-id>,...]" to force probe the i915 for listed
>> >  	  devices. For example, "4500" or "4500,4571".
>> >  
>> >  	  Use "*" to force probe the driver for all known devices.
>> >  
>> > +	  Use "!" right before the ID to block the probe of the device. For
>> > +	  example, "4500,!4571" forces the probe of 4500 and blocks the probe of
>> > +	  4571.
>> > +
>> >  config DRM_I915_CAPTURE_ERROR
>> >  	bool "Enable capturing GPU state following a hang"
>> >  	depends on DRM_I915
>> > diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
>> > index 61578f2860cd..d634bd3f641a 100644
>> > --- a/drivers/gpu/drm/i915/i915_params.c
>> > +++ b/drivers/gpu/drm/i915/i915_params.c
>> > @@ -122,7 +122,7 @@ i915_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
>> >  	"Default: 0");
>> >  
>> >  i915_param_named_unsafe(force_probe, charp, 0400,
>> > -	"Force probe the driver for specified devices. "
>> > +	"Force probe options for specified supported devices. "
>> >  	"See CONFIG_DRM_I915_FORCE_PROBE for details.");
>> >  
>> >  i915_param_named_unsafe(disable_power_well, int, 0400,
>> > diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
>> > index 668e9da52584..fc1383f3a646 100644
>> > --- a/drivers/gpu/drm/i915/i915_pci.c
>> > +++ b/drivers/gpu/drm/i915/i915_pci.c
>> > @@ -1253,7 +1253,7 @@ static void i915_pci_remove(struct pci_dev *pdev)
>> >  }
>> >  
>> >  /* is device_id present in comma separated list of ids */
>> > -static bool force_probe(u16 device_id, const char *devices)
>> > +static bool device_id_in_list(u16 device_id, const char *devices, bool negative)
>> >  {
>> >  	char *s, *p, *tok;
>> >  	bool ret;
>> > @@ -1272,6 +1272,12 @@ static bool force_probe(u16 device_id, const char *devices)
>> >  	for (p = s, ret = false; (tok = strsep(&p, ",")) != NULL; ) {
>> >  		u16 val;
>> >  
>> > +		if (negative && tok[0] == '!')
>> > +			tok++;
>> > +		else if ((negative && tok[0] != '!') ||
>> > +			 (!negative && tok[0] == '!'))
>> > +			 continue;
>> > +
>> >  		if (kstrtou16(tok, 16, &val) == 0 && val == device_id) {
>> >  			ret = true;
>> >  			break;
>> > @@ -1283,6 +1289,16 @@ static bool force_probe(u16 device_id, const char *devices)
>> >  	return ret;
>> >  }
>> >  
>> > +static bool id_forced(u16 device_id)
>> > +{
>> > +	return device_id_in_list(device_id, i915_modparams.force_probe, false);
>> > +}
>> > +
>> > +static bool id_blocked(u16 device_id)
>> > +{
>> > +	return device_id_in_list(device_id, i915_modparams.force_probe, true);
>> > +}
>> 
>> I think id_blocked() would return true for any device id if force_probe was "*".
>
> good catch. I will just wait until middle next week to see if someone has something
> against the idea in general and then re-spin a version with:
>
> - if (strcmp(devices, "*") == 0)
> + if (strcmp(devices, "*") == 0 && !negative)

I admit I didn't bother checking, but please ensure force_probe=!* also
works to block everything.

BR,
Jani.

>
>> 
>> > +
>> >  bool i915_pci_resource_valid(struct pci_dev *pdev, int bar)
>> >  {
>> >  	if (!pci_resource_flags(pdev, bar))
>> > @@ -1308,10 +1324,9 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>> >  		(struct intel_device_info *) ent->driver_data;
>> >  	int err;
>> >  
>> > -	if (intel_info->require_force_probe &&
>> > -	    !force_probe(pdev->device, i915_modparams.force_probe)) {
>> > +	if (intel_info->require_force_probe && !id_forced(pdev->device)) {
>> >  		dev_info(&pdev->dev,
>> > -			 "Your graphics device %04x is not properly supported by the driver in this\n"
>> > +			 "Your graphics device %04x is not properly supported by i915 in this\n"
>> >  			 "kernel version. To force driver probe anyway, use i915.force_probe=%04x\n"
>> >  			 "module parameter or CONFIG_DRM_I915_FORCE_PROBE=%04x configuration option,\n"
>> >  			 "or (recommended) check for kernel updates.\n",
>> > @@ -1319,6 +1334,12 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>> >  		return -ENODEV;
>> >  	}
>> >  
>> > +	if (id_blocked(pdev->device)) {
>> > +		dev_info(&pdev->dev, "I915 probe blocked for Device ID %04x.\n",
>> > +			 pdev->device);
>> > +		return -ENODEV;
>> > +	}
>> > +
>> >  	/* Only bind to function 0 of the device. Early generations
>> >  	 * used function 1 as a placeholder for multi-head. This causes
>> >  	 * us confusion instead, especially on the systems where both
>> > -- 
>> > 2.38.1
>> > 

-- 
Jani Nikula, Intel Open Source Graphics Center
