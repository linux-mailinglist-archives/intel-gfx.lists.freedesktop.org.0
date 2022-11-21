Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A9963211F
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 12:47:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEAAB10E036;
	Mon, 21 Nov 2022 11:47:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFA3D10E036
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 11:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669031246; x=1700567246;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=1wLby4xJ6UpboYKfcTCRrCSwwJfi//NDyqcSy4o73s4=;
 b=QZRx1719hXHo1CgPg+7z3KEyG7ye8zE3d9UDs8mZHgDYqfHCecsSwWNl
 8CDMHzewk3nm3PrT8CnUy2abBXtIgF1ynR9qhL7mCE4DMxKIMYFMMtMyl
 +1pv8hA2bcb0O0qCAqTf3Yzt9yZ37YC3lZZHExh09Nhh2on9J7jDHESZQ
 HYZKkOebKHwiBiJTVdqUIryg1K8JPzTfD03Yp7k54bnvlHPGP+vhFFCOS
 1y01mdACflyB8F8TIRpARcm1u6A3KL4yU2PSGYwew80vBLPIgVuy93vlZ
 KbTf0wWXFOTgwI2KdpgWjXB6rugmAMjfFE0sjJLU5MXLorkKjgLOKPtC4 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="375683952"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; d="scan'208";a="375683952"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 03:47:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="591739091"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; d="scan'208";a="591739091"
Received: from slarkin-mobl.ger.corp.intel.com (HELO [10.213.201.194])
 ([10.213.201.194])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 03:47:25 -0800
Message-ID: <87c63fc5-1553-1794-1f48-73a47de273bb@linux.intel.com>
Date: Mon, 21 Nov 2022 11:47:23 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20221121100134.2523381-1-himal.prasad.ghimiray@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20221121100134.2523381-1-himal.prasad.ghimiray@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max memory
 bandwidth via sysfs
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


On 21/11/2022 10:01, Himal Prasad Ghimiray wrote:
> Export lmem maximum memory bandwidth to the userspace via sysfs
> 
> (v2)
> Add TODO comment to have client parts specific condition (Anshuman)
> Remove prelim prefix from the sysfs node name (Aravind)

Link to userspace consumer?

> Signed-off-by: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_reg.h   |  2 ++
>   drivers/gpu/drm/i915/i915_sysfs.c | 28 ++++++++++++++++++++++++++++
>   2 files changed, 30 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 8e1892d147741..1d59b84b86ad2 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6606,6 +6606,8 @@
>   #define	    POWER_SETUP_I1_WATTS		REG_BIT(31)
>   #define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed point format */
>   #define	    POWER_SETUP_I1_DATA_MASK		REG_GENMASK(15, 0)
> +#define	  PCODE_MEMORY_CONFIG			0x70
> +#define	    MEMORY_CONFIG_SUBCOMMAND_READ_MAX_BANDWIDTH 0x0
>   #define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
>   #define   XEHP_PCODE_FREQUENCY_CONFIG		0x6e	/* xehpsdv, pvc */
>   /* XEHP_PCODE_FREQUENCY_CONFIG sub-commands (param1) */
> diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
> index 595e8b5749907..69df2012bd10e 100644
> --- a/drivers/gpu/drm/i915/i915_sysfs.c
> +++ b/drivers/gpu/drm/i915/i915_sysfs.c
> @@ -37,7 +37,10 @@
>   
>   #include "i915_drv.h"
>   #include "i915_sysfs.h"
> +#include "i915_reg.h"
>   #include "intel_pm.h"
> +#include "intel_pcode.h"
> +

Please don't do whitespace changes if there isn't a good reason.

>   
>   struct drm_i915_private *kdev_minor_to_i915(struct device *kdev)
>   {
> @@ -231,11 +234,36 @@ static void i915_setup_error_capture(struct device *kdev) {}
>   static void i915_teardown_error_capture(struct device *kdev) {}
>   #endif
>   
> +static ssize_t
> +lmem_max_bw_Mbps_show(struct device *dev, struct device_attribute *attr, char *buff)
> +{
> +	struct drm_i915_private *i915 = kdev_minor_to_i915(dev);
> +	u32 val;
> +	int err;
> +
> +	err = snb_pcode_read_p(&i915->uncore, PCODE_MEMORY_CONFIG,
> +			       MEMORY_CONFIG_SUBCOMMAND_READ_MAX_BANDWIDTH,
> +			       0x0, &val);
> +	if (err)
> +		return err;
> +
> +	return sysfs_emit(buff, "%u\n", val);
> +}
> +
> +static DEVICE_ATTR_RO(lmem_max_bw_Mbps);
> +
>   void i915_setup_sysfs(struct drm_i915_private *dev_priv)
>   {
>   	struct device *kdev = dev_priv->drm.primary->kdev;
>   	int ret;
>   
> +	/*TODO: Need to add client Parts condition check. */

What does this mean? Are DG1 and DG2 not client parts?

> +	if (IS_DG1(dev_priv) || IS_DG2(dev_priv)) {
> +		ret = sysfs_create_file(&kdev->kobj, &dev_attr_lmem_max_bw_Mbps.attr);
> +		if (ret)
> +			drm_err(&dev_priv->drm, "Setting up sysfs to read max B/W failed\n");

I suggest at most drm_warn since error is ignored.

I also suggest expanding B/W to memory bandwidth. Maybe "Failed to 
create maximum memory bandwidth sysfs file"?

Regards,

Tvrtko

> +	}
> +
>   	if (HAS_L3_DPF(dev_priv)) {
>   		ret = device_create_bin_file(kdev, &dpf_attrs);
>   		if (ret)
