Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D948F1AE1D0
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 18:07:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 344946E11C;
	Fri, 17 Apr 2020 16:07:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0FC16E11C
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 16:07:35 +0000 (UTC)
IronPort-SDR: flrndyAkoqA5X+sgiqejiF1H2LigfAt2CIhtvz1RkOMoZLR2PkX03TO8S/7jy8h+SZvN8XEX6I
 PPiYPs0OcooQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 09:07:25 -0700
IronPort-SDR: LmSEzIdiyiV+UKhrsfMxAo4GwqNouLF2+ucxVq7bM+RANAoNVLif3O+s0iDtf7sFMame2fya3c
 jv0hsiSJupjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="254251369"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga003.jf.intel.com with ESMTP; 17 Apr 2020 09:07:24 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 17 Apr 2020 09:07:24 -0700
Received: from fmsmsx108.amr.corp.intel.com ([169.254.9.13]) by
 FMSMSX113.amr.corp.intel.com ([169.254.13.51]) with mapi id 14.03.0439.000;
 Fri, 17 Apr 2020 09:07:24 -0700
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Refactor dma mask usage to a
 common helper
Thread-Index: AQHWFMwRkLE+mSGcKEeQkyQ1PRiUpKh96V2A//+Q/FA=
Date: Fri, 17 Apr 2020 16:07:24 +0000
Message-ID: <14063C7AD467DE4B82DEDB5C278E86630102122CAD@FMSMSX108.amr.corp.intel.com>
References: <20200417152244.77623-1-michael.j.ruhl@intel.com>
 <158713815129.2062.12766316238588477850@build.alporthouse.com>
In-Reply-To: <158713815129.2062.12766316238588477850@build.alporthouse.com>
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
>Sent: Friday, April 17, 2020 11:43 AM
>To: Ruhl, Michael J <michael.j.ruhl@intel.com>; intel-
>gfx@lists.freedesktop.org
>Subject: Re: [Intel-gfx] [PATCH] drm/i915: Refactor dma mask usage to a
>common helper
>
>Quoting Michael J. Ruhl (2020-04-17 16:22:44)
>> DMA_MASK bit values are different for different generations.
>>
>> This will become more difficult to manage over time with the open
>> coded usage of different versions of the device.
>>
>> Fix by:
>>   adding dma_mask_size to the device info configuration,
>>   updating open code call sequence to the latest interface,
>>   refactoring into a common function for setting the dma_mask
>>
>> Note: GEN(5) and down is also set in intel_gmch_probe().
>
>Assume we pull that code into i915.ko, we will one day.

The gen5 stuff has the same dma_mask_size that I added to the
i915 config structures.

I thought about pulling it out of the gen 5 area, but it appears that that
can be built as a separate driver, and if I pulled it out, the ability for it to
be set in that path would be lost.

M

>-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
