Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE3E1AE3B2
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 19:21:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DB0889BA3;
	Fri, 17 Apr 2020 17:21:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD9FE897C8
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 17:21:22 +0000 (UTC)
IronPort-SDR: FJNWmF9WgGva0KUsbBj80St1zMpwBxBxrETH+1y7w6TLuuaH5r2MxgeTSzilt7/WUlnVbm6I4h
 O583AsKjx25Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 10:21:22 -0700
IronPort-SDR: RkRRVkr//OUzDSHx83hPZkvfr76kLyIkHsv19UXYSrUS7yLOd/kQfCkyxTrg7fjaO2uA0A5UvA
 OJ6/+p274/6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="244763108"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga007.fm.intel.com with ESMTP; 17 Apr 2020 10:21:21 -0700
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 17 Apr 2020 10:21:21 -0700
Received: from fmsmsx108.amr.corp.intel.com ([169.254.9.13]) by
 FMSMSX155.amr.corp.intel.com ([169.254.5.17]) with mapi id 14.03.0439.000;
 Fri, 17 Apr 2020 10:21:21 -0700
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Refactor dma mask usage to a
 common helper
Thread-Index: AQHWFMwRkLE+mSGcKEeQkyQ1PRiUpKh96V2A//+Q/FCAAHmNAP//meBw
Date: Fri, 17 Apr 2020 17:21:20 +0000
Message-ID: <14063C7AD467DE4B82DEDB5C278E86630102122DC7@FMSMSX108.amr.corp.intel.com>
References: <20200417152244.77623-1-michael.j.ruhl@intel.com>
 <158713815129.2062.12766316238588477850@build.alporthouse.com>
 <14063C7AD467DE4B82DEDB5C278E86630102122CAD@FMSMSX108.amr.corp.intel.com>
 <158714041470.2062.15804332544742923526@build.alporthouse.com>
In-Reply-To: <158714041470.2062.15804332544742923526@build.alporthouse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Refactor dma mask usage to a
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
>Sent: Friday, April 17, 2020 12:20 PM
>To: Ruhl, Michael J <michael.j.ruhl@intel.com>; intel-
>gfx@lists.freedesktop.org
>Subject: Re: [Intel-gfx] [PATCH] drm/i915: Refactor dma mask usage to a
>common helper
>
>Quoting Ruhl, Michael J (2020-04-17 17:07:24)
>> >-----Original Message-----
>> >From: Chris Wilson <chris@chris-wilson.co.uk>
>> >Sent: Friday, April 17, 2020 11:43 AM
>> >To: Ruhl, Michael J <michael.j.ruhl@intel.com>; intel-
>> >gfx@lists.freedesktop.org
>> >Subject: Re: [Intel-gfx] [PATCH] drm/i915: Refactor dma mask usage to a
>> >common helper
>> >
>> >Quoting Michael J. Ruhl (2020-04-17 16:22:44)
>> >> DMA_MASK bit values are different for different generations.
>> >>
>> >> This will become more difficult to manage over time with the open
>> >> coded usage of different versions of the device.
>> >>
>> >> Fix by:
>> >>   adding dma_mask_size to the device info configuration,
>> >>   updating open code call sequence to the latest interface,
>> >>   refactoring into a common function for setting the dma_mask
>> >>
>> >> Note: GEN(5) and down is also set in intel_gmch_probe().
>> >
>> >Assume we pull that code into i915.ko, we will one day.
>>
>> The gen5 stuff has the same dma_mask_size that I added to the
>> i915 config structures.
>>
>> I thought about pulling it out of the gen 5 area, but it appears that that
>> can be built as a separate driver, and if I pulled it out, the ability for it to
>> be set in that path would be lost.
>
>It's not viable standalone anymore. It's over a decade dead by this
>point, we can drop the old AGP interface and then the sole user is
>i915.ko. Even if we did not, you can't use the AGP interface at the same
>time as i915.ko so we can just orphan char/agp, and use our own code.

Ok, so can I do something like this in char/agp/intel-gtt.c:

#if IS_ENABLED(CONFIG_AGP_INTEL)
	mask = intel_private.driver->dma_mask_size;
	if (pci_set_dma_mask(intel_private.pcidev, DMA_BIT_MASK(mask)))
		dev_err(&intel_private.pcidev->dev,
			"set gfx device dma mask %d-bit failed!\n", mask);
	else
		pci_set_consistent_dma_mask(intel_private.pcidev,
					    DMA_BIT_MASK(mask));
#endif

This would fix my flow issue from the previous comments.

Mike

>-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
