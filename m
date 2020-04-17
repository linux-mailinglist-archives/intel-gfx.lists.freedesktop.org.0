Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 766671AE5D7
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 21:31:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D79736E804;
	Fri, 17 Apr 2020 19:31:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56BC36E804
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 19:31:56 +0000 (UTC)
IronPort-SDR: +50fwp16Yo64wKa9WIFe9ftw5Z+AjnZTT6BMcAhyECLRlSNzHk50+JoguOEEG61JHKtw5NlqxV
 l56+ZJrXcTkw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 12:31:55 -0700
IronPort-SDR: Ula/Rry/gSr9XjrcyHZ2Eq2J41VxymkKEulJtcTZ+91UAFVdwa4mnAV3JxCF3faag05tNyY/Ns
 olKI3lPgrPLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="246366710"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga008.fm.intel.com with ESMTP; 17 Apr 2020 12:31:53 -0700
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 17 Apr 2020 12:31:53 -0700
Received: from fmsmsx108.amr.corp.intel.com ([169.254.9.13]) by
 FMSMSX109.amr.corp.intel.com ([169.254.15.84]) with mapi id 14.03.0439.000;
 Fri, 17 Apr 2020 12:31:53 -0700
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v1] drm/i915: Refactor setting dma info to
 a common helper
Thread-Index: AQHWFOlDcLZDUexyVESkgHG3M4EHZKh+IcEA//+MykA=
Date: Fri, 17 Apr 2020 19:31:52 +0000
Message-ID: <14063C7AD467DE4B82DEDB5C278E86630102123147@FMSMSX108.amr.corp.intel.com>
References: <20200417185134.47401-1-michael.j.ruhl@intel.com>
 <158715031025.2062.239714179327017572@build.alporthouse.com>
In-Reply-To: <158715031025.2062.239714179327017572@build.alporthouse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: Refactor setting dma info to a
 common helper
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

>-----Original Message-----
>From: Chris Wilson <chris@chris-wilson.co.uk>
>Sent: Friday, April 17, 2020 3:05 PM
>To: Ruhl, Michael J <michael.j.ruhl@intel.com>; intel-
>gfx@lists.freedesktop.org
>Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: Refactor setting dma info to a
>common helper
>
>Quoting Michael J. Ruhl (2020-04-17 19:51:34)
>> DMA_MASK bit values are different for different generations.
>>
>> This will become more difficult to manage over time with the open
>> coded usage of different versions of the device.
>>
>> Fix by:
>>   disallow setting of dma mask in AGP path (< GEN(5) for i915,
>>   add dma_mask_size to the device info configuration,
>>   updating open code call sequence to the latest interface,
>>   refactoring into a common function for setting the dma segment
>>   and mask info
>>
>> Signed-off-by: Michael J. Ruhl <michael.j.ruhl@intel.com>
>> cc: Brian Welty <brian.welty@intel.com>
>> cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>>
>> ---
>> v1: removed i915 depenancy from agp path for dma mask
>>     Consolidated segment size and work arounds to the helper
>> ---
>>  drivers/char/agp/intel-gtt.c             | 17 +++--
>>  drivers/gpu/drm/i915/gt/intel_ggtt.c     | 15 ----
>>  drivers/gpu/drm/i915/i915_drv.c          | 94 +++++++++++++++---------
>>  drivers/gpu/drm/i915/i915_pci.c          | 14 ++++
>>  drivers/gpu/drm/i915/intel_device_info.c |  1 +
>>  drivers/gpu/drm/i915/intel_device_info.h |  2 +
>>  6 files changed, 87 insertions(+), 56 deletions(-)
>>
>> diff --git a/drivers/char/agp/intel-gtt.c b/drivers/char/agp/intel-gtt.c
>> index 3d42fc4290bc..4b34a5195c65 100644
>> --- a/drivers/char/agp/intel-gtt.c
>> +++ b/drivers/char/agp/intel-gtt.c
>> @@ -1407,13 +1407,16 @@ int intel_gmch_probe(struct pci_dev
>*bridge_pdev, struct pci_dev *gpu_pdev,
>>
>>         dev_info(&bridge_pdev->dev, "Intel %s Chipset\n",
>intel_gtt_chipsets[i].name);
>>
>> -       mask = intel_private.driver->dma_mask_size;
>> -       if (pci_set_dma_mask(intel_private.pcidev, DMA_BIT_MASK(mask)))
>> -               dev_err(&intel_private.pcidev->dev,
>> -                       "set gfx device dma mask %d-bit failed!\n", mask);
>> -       else
>> -               pci_set_consistent_dma_mask(intel_private.pcidev,
>> -                                           DMA_BIT_MASK(mask));
>> +       if (bridge) {
>> +               mask = intel_private.driver->dma_mask_size;
>> +               if (pci_set_dma_mask(intel_private.pcidev,
>DMA_BIT_MASK(mask)))
>> +                       dev_err(&intel_private.pcidev->dev,
>> +                               "set gfx device dma mask %d-bit failed!\n",
>> +                               mask);
>> +               else
>> +                       pci_set_consistent_dma_mask(intel_private.pcidev,
>> +                                                   DMA_BIT_MASK(mask));
>> +       }
>
>This could even go under IS_ENABLED(CONFIG_AGP_INTEL)

I was going to, but then I was going to have to add:

#if IS_ENABLED(CONFIG_AGP_INTEL)
	int mask;
#endif

as well...so I stopped while I was a ahead.  If you would like the #if I will
add it.

>> +/**
>> + * i915_set_dma_info - set all relevant PCI dma info as configured for the
>> + * platform
>> + * @i915: valid i915 instance
>> + *
>> + * Set the dma max segment size, device and coherent masks.  The dma
>mask set
>> + * needs to occur before i915_ggtt_probe_hw.
>> + *
>> + * A couple of platforms have special needs.  Address them as well.
>> + *
>> + */
>> +static int i915_set_dma_info(struct drm_i915_private *i915)
>> +{
>> +       struct pci_dev *pdev = i915->drm.pdev;
>> +       unsigned int mask_size = INTEL_INFO(i915)->dma_mask_size;
>> +       int ret;
>> +
>> +       GEM_BUG_ON(!mask_size);
>> +
>> +       /*
>> +        * We don't have a max segment size, so set it to the max so sg's
>> +        * debugging layer doesn't complain
>> +        */
>> +       dma_set_max_seg_size(&pdev->dev, UINT_MAX);
>> +
>> +       ret = dma_set_mask(&pdev->dev, DMA_BIT_MASK(mask_size));
>> +       if (ret)
>> +               goto mask_err;
>> +
>> +       /* overlay on gen2 is broken and can't address above 1G */
>> +       if (IS_GEN(i915, 2))
>> +               mask_size = 30;
>> +
>> +       /*
>> +        * 965GM sometimes incorrectly writes to hardware status page (HWS)
>> +        * using 32bit addressing, overwriting memory if HWS is located
>> +        * above 4GB.
>> +        *
>> +        * The documentation also mentions an issue with undefined
>> +        * behaviour if any general state is accessed within a page above 4GB,
>> +        * which also needs to be handled carefully.
>> +        */
>> +       if (IS_I965G(i915) || IS_I965GM(i915))
>> +               mask_size = 32;
>> +
>> +       ret = dma_set_coherent_mask(&pdev->dev,
>DMA_BIT_MASK(mask_size));
>> +       if (ret)
>> +               goto mask_err;
>
>This has captured all the old w/a knowledge in one spot, and we don't
>have the dma-mask spread over multiple files/locations.
>
>> +
>> +       return 0;
>> +
>> +mask_err:
>> +       drm_err(&i915->drm, "Can't set DMA mask/consistent mask (%d)\n",
>ret);
>> +       return ret;
>
>And on later error we are fine not to cleanup the dma-mask, as
>pci_device takes care of that for us.
>
>> +}
>
>> @@ -685,6 +698,7 @@ static const struct intel_device_info skl_gt4_info = {
>>         .has_logical_ring_contexts = 1, \
>>         .has_logical_ring_preemption = 1, \
>>         .has_gt_uc = 1, \
>> +       .dma_mask_size = 39, \
>>         .ppgtt_type = INTEL_PPGTT_FULL, \
>>         .ppgtt_size = 48, \
>>         .has_reset_engine = 1, \
>
>Diff making a hash of this file again, but they all looked correct.
>
>> diff --git a/drivers/gpu/drm/i915/intel_device_info.h
>b/drivers/gpu/drm/i915/intel_device_info.h
>> index cce6a72c5ebc..69c9257c6c6a 100644
>> --- a/drivers/gpu/drm/i915/intel_device_info.h
>> +++ b/drivers/gpu/drm/i915/intel_device_info.h
>> @@ -158,6 +158,8 @@ struct intel_device_info {
>>
>>         enum intel_platform platform;
>>
>> +       unsigned int dma_mask_size; /* available DMA address bits */
>
>One day we should pack this struct and see how much .data we can save.

Hmm, this value could be a u8. However, placement for optimal usage is a
bit more difficult...

I can update if you would like.

>Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

Thanks!

M

>-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
