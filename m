Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 176442F7703
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 11:51:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 648C289E36;
	Fri, 15 Jan 2021 10:51:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C05C89AB2
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jan 2021 10:51:00 +0000 (UTC)
IronPort-SDR: chMbDrU8MEORzPidfrDm8W1RiWplNHDsIWz6cflUyJvihi6Vvar6iWOhqLacedO+i18Hz2oaiq
 ee8qg4rXQZPQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="263325791"
X-IronPort-AV: E=Sophos;i="5.79,349,1602572400"; d="scan'208";a="263325791"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2021 02:50:59 -0800
IronPort-SDR: Jm3Vfu7IfmHjt9dNpolDHXw3Mi74b4eB4yxBop4CnANKrpxk3j2cz7A+Xd8CPu8fBL/49UqkK4
 MVbWkIhQQNpA==
X-IronPort-AV: E=Sophos;i="5.79,349,1602572400"; d="scan'208";a="465548714"
Received: from bmkierna-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.213.221.58])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2021 02:50:57 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Zhenyu Wang <zhenyuw@linux.intel.com>,
 Xiong Zhang <xiong.y.zhang@intel.com>
In-Reply-To: <20210114051410.GU15982@zhen-hp.sh.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <87im8soq2w.fsf@intel.com>
 <20210114005819.4290-1-xiong.y.zhang@intel.com>
 <20210114051410.GU15982@zhen-hp.sh.intel.com>
Date: Fri, 15 Jan 2021 12:50:54 +0200
Message-ID: <878s8upj75.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915: Try to guess PCH type even
 without ISA bridge
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
Cc: intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 14 Jan 2021, Zhenyu Wang <zhenyuw@linux.intel.com> wrote:
> On 2021.01.14 08:58:19 +0800, Xiong Zhang wrote:
>> From: Zhenyu Wang <zhenyuw@linux.intel.com>
>> 
>> Some vmm like hyperv and crosvm don't supply any ISA bridge to their guest,
>> when igd passthrough is equipped on these vmm, guest i915 display may
>> couldn't work as guest i915 detects PCH_NONE pch type.
>> 
>> When i915 runs as guest, this patch guess pch type through gpu type even
>> without ISA bridge.
>> 
>> v2: Fix CI warning
>> v3: Add HAS_DISPLAY()= true condition beforce guessing virt pch, then
>>     refactori.
>> v4: Fix CI warning
>> 
>> Signed-off-by: Zhenyu Wang <zhenyuw@linux.intel.com>
>> Signed-off-by: Xiong Zhang <xiong.y.zhang@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_drv.h  |  7 +++++-
>>  drivers/gpu/drm/i915/intel_pch.c | 39 ++++++++++++++++++--------------
>>  2 files changed, 28 insertions(+), 18 deletions(-)
>>
>
> Good to me, thanks! I think this should change author to you. :)
>
> Reviewed-by: Zhenyu Wang <zhenyuw@linux.intel.com>

Pushed to drm-intel-next, thanks for the patch and review. I ended up
retaining Zhenyu's authorship, and added

Co-developed-by: Xiong Zhang <xiong.y.zhang@intel.com>

BR,
Jani.


>
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>> index 2688f3e3e349..266dec627fa2 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -1754,6 +1754,11 @@ tgl_revids_get(struct drm_i915_private *dev_priv)
>>  #define INTEL_DISPLAY_ENABLED(dev_priv) \
>>  	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)), !(dev_priv)->params.disable_display)
>>  
>> +static inline bool run_as_guest(void)
>> +{
>> +	return !hypervisor_is_type(X86_HYPER_NATIVE);
>> +}
>> +
>>  static inline bool intel_vtd_active(void)
>>  {
>>  #ifdef CONFIG_INTEL_IOMMU
>> @@ -1762,7 +1767,7 @@ static inline bool intel_vtd_active(void)
>>  #endif
>>  
>>  	/* Running as a guest, we assume the host is enforcing VT'd */
>> -	return !hypervisor_is_type(X86_HYPER_NATIVE);
>> +	return run_as_guest();
>>  }
>>  
>>  static inline bool intel_scanout_needs_vtd_wa(struct drm_i915_private *dev_priv)
>> diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
>> index f31c0dabd0cc..ecaf314d60b6 100644
>> --- a/drivers/gpu/drm/i915/intel_pch.c
>> +++ b/drivers/gpu/drm/i915/intel_pch.c
>> @@ -143,8 +143,9 @@ static bool intel_is_virt_pch(unsigned short id,
>>  		 sdevice == PCI_SUBDEVICE_ID_QEMU));
>>  }
>>  
>> -static unsigned short
>> -intel_virt_detect_pch(const struct drm_i915_private *dev_priv)
>> +static void
>> +intel_virt_detect_pch(const struct drm_i915_private *dev_priv,
>> +		      unsigned short *pch_id, enum intel_pch *pch_type)
>>  {
>>  	unsigned short id = 0;
>>  
>> @@ -181,12 +182,21 @@ intel_virt_detect_pch(const struct drm_i915_private *dev_priv)
>>  	else
>>  		drm_dbg_kms(&dev_priv->drm, "Assuming no PCH\n");
>>  
>> -	return id;
>> +	*pch_type = intel_pch_type(dev_priv, id);
>> +
>> +	/* Sanity check virtual PCH id */
>> +	if (drm_WARN_ON(&dev_priv->drm,
>> +			id && *pch_type == PCH_NONE))
>> +		id = 0;
>> +
>> +	*pch_id = id;
>>  }
>>  
>>  void intel_detect_pch(struct drm_i915_private *dev_priv)
>>  {
>>  	struct pci_dev *pch = NULL;
>> +	unsigned short id;
>> +	enum intel_pch pch_type;
>>  
>>  	/* DG1 has south engine display on the same PCI device */
>>  	if (IS_DG1(dev_priv)) {
>> @@ -206,9 +216,6 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
>>  	 * of only checking the first one.
>>  	 */
>>  	while ((pch = pci_get_class(PCI_CLASS_BRIDGE_ISA << 8, pch))) {
>> -		unsigned short id;
>> -		enum intel_pch pch_type;
>> -
>>  		if (pch->vendor != PCI_VENDOR_ID_INTEL)
>>  			continue;
>>  
>> @@ -221,14 +228,7 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
>>  			break;
>>  		} else if (intel_is_virt_pch(id, pch->subsystem_vendor,
>>  					     pch->subsystem_device)) {
>> -			id = intel_virt_detect_pch(dev_priv);
>> -			pch_type = intel_pch_type(dev_priv, id);
>> -
>> -			/* Sanity check virtual PCH id */
>> -			if (drm_WARN_ON(&dev_priv->drm,
>> -					id && pch_type == PCH_NONE))
>> -				id = 0;
>> -
>> +			intel_virt_detect_pch(dev_priv, &id, &pch_type);
>>  			dev_priv->pch_type = pch_type;
>>  			dev_priv->pch_id = id;
>>  			break;
>> @@ -244,10 +244,15 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
>>  			    "Display disabled, reverting to NOP PCH\n");
>>  		dev_priv->pch_type = PCH_NOP;
>>  		dev_priv->pch_id = 0;
>> +	} else if (!pch) {
>> +		if (run_as_guest() && HAS_DISPLAY(dev_priv)) {
>> +			intel_virt_detect_pch(dev_priv, &id, &pch_type);
>> +			dev_priv->pch_type = pch_type;
>> +			dev_priv->pch_id = id;
>> +		} else {
>> +			drm_dbg_kms(&dev_priv->drm, "No PCH found.\n");
>> +		}
>>  	}
>>  
>> -	if (!pch)
>> -		drm_dbg_kms(&dev_priv->drm, "No PCH found.\n");
>> -
>>  	pci_dev_put(pch);
>>  }
>> -- 
>> 2.17.1
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
