Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF62D96B85B
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 12:24:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 040A210E747;
	Wed,  4 Sep 2024 10:24:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k6x7H6kk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6602D10E746;
 Wed,  4 Sep 2024 10:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725445487; x=1756981487;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Vri45VZkz7QI4FxLLqRO7WMbBrNY76pHzdZ62I1Fliw=;
 b=k6x7H6kkYYLcBLKQ17LHdSnylgB80XOT/e1io+KrgxdCuLxq4XxMB0rM
 4E5kv3X/N+VaCP1jbz7o7XHNr9ypPj7VgKhQOyEmNnDsOdDzq36LkyGxl
 zFHLXQlv9fvW1V7Lc9cBGQ4TIqf47nQwTTqDLy6QLtwHU1KP9Nrst6/O6
 zSX7zlalIlO34P4RmJ3yJYwMdPd9/giRavh9n3RiHkMwypCJhYNWeXCEv
 V+OHogUQpsUq4cVDrvaEJzCu+0noPitbStJsdHc1dzv9Dfeap/G43mcyD
 aiWHtshWz3YOG4v8VfiCN03MmJ4XKT9YraqfVOhlM7cqAmuuIh8UiqH/r g==;
X-CSE-ConnectionGUID: aKiKkzQASw2jfT8GarYOjA==
X-CSE-MsgGUID: p7QB+c/DSl+2/hvaFCad3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="23961963"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="23961963"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 03:24:47 -0700
X-CSE-ConnectionGUID: Z4CL0QQ3Q26ArFzXhnCN6Q==
X-CSE-MsgGUID: loDQoESMRWuGgr1uOQTgbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="88472323"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.18])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 03:24:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com
Subject: Re: [PATCH 1/2] drm/i915/pciids: use designated initializers in
 INTEL_VGA_DEVICE()
In-Reply-To: <ce15f8f2a6b672155f9728c8e6a5f49d33fafd24.1725443418.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1725443418.git.jani.nikula@intel.com>
 <ce15f8f2a6b672155f9728c8e6a5f49d33fafd24.1725443418.git.jani.nikula@intel.com>
Date: Wed, 04 Sep 2024 13:24:28 +0300
Message-ID: <877cbrsomb.fsf@intel.com>
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

On Wed, 04 Sep 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> With IGT no longer using INTEL_VGA_DEVICE(), we can make it kernel
> specific and use designated initializers. Ditto for
> INTEL_QUANTA_VGA_DEVICE(). Remove the superfluous comments while at it.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> ---
>
> IGT INTEL_VGA_DEVICE removal:
>
> https://lore.kernel.org/r/20240902134907.2186238-2-jani.nikula@intel.com

IGT commit e966143f5c5f ("lib/intel_device_info: use dedicated macro for
struct pci_id_match init").

> ---
>  include/drm/intel/i915_pciids.h | 35 +++++++++++++--------------------
>  1 file changed, 14 insertions(+), 21 deletions(-)
>
> diff --git a/include/drm/intel/i915_pciids.h b/include/drm/intel/i915_pciids.h
> index 2bf03ebfcf73..6a78df5687c5 100644
> --- a/include/drm/intel/i915_pciids.h
> +++ b/include/drm/intel/i915_pciids.h
> @@ -25,27 +25,20 @@
>  #ifndef _I915_PCIIDS_H
>  #define _I915_PCIIDS_H
>  
> -/*
> - * A pci_device_id struct {
> - *	__u32 vendor, device;
> - *      __u32 subvendor, subdevice;
> - *	__u32 class, class_mask;
> - *	kernel_ulong_t driver_data;
> - * };
> - * Don't use C99 here because "class" is reserved and we want to
> - * give userspace flexibility.
> - */
> -#define INTEL_VGA_DEVICE(id, info) { \
> -	0x8086,	id, \
> -	~0, ~0, \
> -	0x030000, 0xff0000, \
> -	(unsigned long) info }
> -
> -#define INTEL_QUANTA_VGA_DEVICE(info) { \
> -	0x8086,	0x16a, \
> -	0x152d,	0x8990, \
> -	0x030000, 0xff0000, \
> -	(unsigned long) info }
> +#ifdef __KERNEL__
> +#define INTEL_VGA_DEVICE(_id, _info) { \
> +	PCI_DEVICE(PCI_VENDOR_ID_INTEL, (_id)), \
> +	.class = PCI_BASE_CLASS_DISPLAY << 16, .class_mask = 0xff << 16, \
> +	.driver_data = (kernel_ulong_t)(_info), \
> +}
> +
> +#define INTEL_QUANTA_VGA_DEVICE(_info) { \
> +	.vendor = PCI_VENDOR_ID_INTEL, .device = 0x16a, \
> +	.subvendor = 0x152d, .subdevice = 0x8990, \
> +	.class = PCI_BASE_CLASS_DISPLAY << 16, .class_mask = 0xff << 16, \
> +	.driver_data = (kernel_ulong_t)(_info), \
> +}
> +#endif
>  
>  #define INTEL_I810_IDS(MACRO__, ...) \
>  	MACRO__(0x7121, ## __VA_ARGS__), /* I810 */ \

-- 
Jani Nikula, Intel
