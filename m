Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 888DA96E176
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 20:02:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACB5110E922;
	Thu,  5 Sep 2024 18:02:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nEdDKwTh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A99BB10E91D;
 Thu,  5 Sep 2024 18:02:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725559377; x=1757095377;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=qdCDVzTpTnYMe8nawGG1f/KdDnFa54doFuXQ5nMqRJg=;
 b=nEdDKwThNm23+r6WIwDMqrEIZAw4fWYmZ09bOStlplcRb29UcxrOzDOt
 TkPfkkMWZf+MlaxAxO72nePna0dmGBm7NuSBOI6mV9YhkmVzVWAfTfj1u
 X2nPb5JvtzTltJof5NbrFVhUZl4QVvBBPWeGEkvPqwpkb/G14TTBhDYR6
 D+SIHsNBkjI+2YFS/DRYwtWV2FJHgXofSrHLZqTqt4WruNu+4sVN4u8Rc
 zTfGPLwVxOPDYdp6b5+39OvVW2ye1CH6vHv8GuXMcZ1GpHDGPzl8TcVLf
 R5jpynp3tES5+MiGD0geVkkK1CbqjdnXPxQ6GlV+XWQLZ9BrckzMJKzI2 g==;
X-CSE-ConnectionGUID: SZ2PtQEpSWWMsHHrd+pDHw==
X-CSE-MsgGUID: yzPY4Rx7TY2AYyRRyReN5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="23800706"
X-IronPort-AV: E=Sophos;i="6.10,205,1719903600"; d="scan'208";a="23800706"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 11:02:56 -0700
X-CSE-ConnectionGUID: tZK+RwdCRu++SFjn9lTjyw==
X-CSE-MsgGUID: dvpn5q25TpuutQKaq+D09w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,205,1719903600"; d="scan'208";a="66250076"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.216])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 11:02:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 lucas.demarchi@intel.com
Subject: Re: [PATCH 1/2] drm/i915/pciids: use designated initializers in
 INTEL_VGA_DEVICE()
In-Reply-To: <ZtnnDNFjC2WTt5u4@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1725443418.git.jani.nikula@intel.com>
 <ce15f8f2a6b672155f9728c8e6a5f49d33fafd24.1725443418.git.jani.nikula@intel.com>
 <ZtnnDNFjC2WTt5u4@intel.com>
Date: Thu, 05 Sep 2024 21:02:50 +0300
Message-ID: <87cyliou5x.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 05 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Wed, Sep 04, 2024 at 12:51:32PM +0300, Jani Nikula wrote:
>> With IGT no longer using INTEL_VGA_DEVICE(), we can make it kernel
>> specific and use designated initializers. Ditto for
>> INTEL_QUANTA_VGA_DEVICE(). Remove the superfluous comments while at it.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> 
>> ---
>> 
>> IGT INTEL_VGA_DEVICE removal:
>> 
>> https://lore.kernel.org/r/20240902134907.2186238-2-jani.nikula@intel.com
>
>
> I guess that if someone else is still using this directly like IGT was,
> then they will have to adjust when the sync with this header like this,
> so:

Yeah, but I recently did much more invasive changes by converting i915
pciids to the same style as xe, and nobody complained. (I fixed the IGT
parts, of course.)

>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, both pushed to din.

BR,
Jani.


>
>
>> ---
>>  include/drm/intel/i915_pciids.h | 35 +++++++++++++--------------------
>>  1 file changed, 14 insertions(+), 21 deletions(-)
>> 
>> diff --git a/include/drm/intel/i915_pciids.h b/include/drm/intel/i915_pciids.h
>> index 2bf03ebfcf73..6a78df5687c5 100644
>> --- a/include/drm/intel/i915_pciids.h
>> +++ b/include/drm/intel/i915_pciids.h
>> @@ -25,27 +25,20 @@
>>  #ifndef _I915_PCIIDS_H
>>  #define _I915_PCIIDS_H
>>  
>> -/*
>> - * A pci_device_id struct {
>> - *	__u32 vendor, device;
>> - *      __u32 subvendor, subdevice;
>> - *	__u32 class, class_mask;
>> - *	kernel_ulong_t driver_data;
>> - * };
>> - * Don't use C99 here because "class" is reserved and we want to
>> - * give userspace flexibility.
>> - */
>> -#define INTEL_VGA_DEVICE(id, info) { \
>> -	0x8086,	id, \
>> -	~0, ~0, \
>> -	0x030000, 0xff0000, \
>> -	(unsigned long) info }
>> -
>> -#define INTEL_QUANTA_VGA_DEVICE(info) { \
>> -	0x8086,	0x16a, \
>> -	0x152d,	0x8990, \
>> -	0x030000, 0xff0000, \
>> -	(unsigned long) info }
>> +#ifdef __KERNEL__
>> +#define INTEL_VGA_DEVICE(_id, _info) { \
>> +	PCI_DEVICE(PCI_VENDOR_ID_INTEL, (_id)), \
>> +	.class = PCI_BASE_CLASS_DISPLAY << 16, .class_mask = 0xff << 16, \
>> +	.driver_data = (kernel_ulong_t)(_info), \
>> +}
>> +
>> +#define INTEL_QUANTA_VGA_DEVICE(_info) { \
>> +	.vendor = PCI_VENDOR_ID_INTEL, .device = 0x16a, \
>> +	.subvendor = 0x152d, .subdevice = 0x8990, \
>> +	.class = PCI_BASE_CLASS_DISPLAY << 16, .class_mask = 0xff << 16, \
>> +	.driver_data = (kernel_ulong_t)(_info), \
>> +}
>> +#endif
>>  
>>  #define INTEL_I810_IDS(MACRO__, ...) \
>>  	MACRO__(0x7121, ## __VA_ARGS__), /* I810 */ \
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
