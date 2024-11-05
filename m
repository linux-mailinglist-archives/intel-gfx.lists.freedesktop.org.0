Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9339BD574
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 19:55:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2DEE10E427;
	Tue,  5 Nov 2024 18:54:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kbd46BZb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DE3F10E425;
 Tue,  5 Nov 2024 18:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730832885; x=1762368885;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=HnIhjXn+3tMcjxxONQA9JgAJKDfI3DFtV12kkkR7S4s=;
 b=kbd46BZbg4ZE4J2M4BYoxxbqM32u/iGsCpein/E/X1vmfU0a5sV2Fgth
 Zd/1+9FB0yzZxRMjT+xebRcFPklSsIA42dx87hAJsnu7pogQEsxYJEnTu
 5szcPXvN0guG6k5qQvfhrCj8sdao7BLtsDrcBvO6s9xG+r5ewSfRzTnxR
 yWdfnqhhL+AcJgO8APyN4vcVU/prQwnZ7VR6cyfbn5q1KMDFUuMr9mkvW
 WX6QFwk5uE2FbUxZcz/nON+cmxKM5go1BW/IMOonCtfM7ea/mtow5kFk6
 rtnQ9zZIeZGtFsvyZvGR/5Tz/FQZcJ6MpakE0/VAv1D47jRWn9LpoZNmi Q==;
X-CSE-ConnectionGUID: 5PnvZs0SQP+gaOXA3gPINg==
X-CSE-MsgGUID: FfvLML9rTiW5OrB8VcuUeQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30773814"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30773814"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 10:54:45 -0800
X-CSE-ConnectionGUID: EY0UCMsgT+2Zyn0HkBJtGw==
X-CSE-MsgGUID: 0wb334ZhQJS0I6pSXqsLGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="88923147"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 05 Nov 2024 10:54:43 -0800
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t8OhM-000mMR-2n;
 Tue, 05 Nov 2024 18:54:40 +0000
Date: Wed, 6 Nov 2024 02:53:47 +0800
From: kernel test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev, jani.nikula@intel.com
Subject: Re: [PATCH 15/15] drm/i915/display: add mobile platform group
Message-ID: <202411060217.jLvmbe0Z-lkp@intel.com>
References: <e9277a5635fc02106ca69b9071928c2249323500.1730740629.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e9277a5635fc02106ca69b9071928c2249323500.1730740629.git.jani.nikula@intel.com>
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

Hi Jani,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on next-20241105]
[cannot apply to drm-xe/drm-xe-next linus/master drm-intel/for-linux-next-fixes drm-tip/drm-tip v6.12-rc6]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jani-Nikula/drm-i915-display-identify-discrete-graphics/20241105-012305
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/e9277a5635fc02106ca69b9071928c2249323500.1730740629.git.jani.nikula%40intel.com
patch subject: [PATCH 15/15] drm/i915/display: add mobile platform group
config: x86_64-randconfig-123-20241105 (https://download.01.org/0day-ci/archive/20241106/202411060217.jLvmbe0Z-lkp@intel.com/config)
compiler: clang version 19.1.3 (https://github.com/llvm/llvm-project ab51eccf88f5321e7c60591c5546b254b6afab99)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241106/202411060217.jLvmbe0Z-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202411060217.jLvmbe0Z-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/gpu/drm/i915/display/intel_display_device.c:469:40: sparse: sparse: symbol 'snb_display' was not declared. Should it be static?
   drivers/gpu/drm/i915/display/intel_display_device.c: note: in included file (through include/linux/mmzone.h, include/linux/gfp.h, include/linux/xarray.h, ...):
   include/linux/page-flags.h:237:46: sparse: sparse: self-comparison always evaluates to false
   include/linux/page-flags.h:237:46: sparse: sparse: self-comparison always evaluates to false
   drivers/gpu/drm/i915/display/intel_display_device.c:555:25: sparse: sparse: Initializer entry defined twice
   drivers/gpu/drm/i915/display/intel_display_device.c:556:25: sparse:   also defined here
   drivers/gpu/drm/i915/display/intel_display_device.c:608:25: sparse: sparse: Initializer entry defined twice
   drivers/gpu/drm/i915/display/intel_display_device.c:609:25: sparse:   also defined here
   drivers/gpu/drm/i915/display/intel_display_device.c:857:17: sparse: sparse: Initializer entry defined twice
   drivers/gpu/drm/i915/display/intel_display_device.c:859:17: sparse:   also defined here
   drivers/gpu/drm/i915/display/intel_display_device.c:1065:17: sparse: sparse: Initializer entry defined twice
   drivers/gpu/drm/i915/display/intel_display_device.c:1070:18: sparse:   also defined here
   drivers/gpu/drm/i915/display/intel_display_device.c:1108:17: sparse: sparse: Initializer entry defined twice
   drivers/gpu/drm/i915/display/intel_display_device.c:1110:18: sparse:   also defined here
   drivers/gpu/drm/i915/display/intel_display_device.c:1346:9: sparse: sparse: Initializer entry defined twice
   drivers/gpu/drm/i915/display/intel_display_device.c:1348:10: sparse:   also defined here
   drivers/gpu/drm/i915/display/intel_display_device.c:1355:9: sparse: sparse: Initializer entry defined twice
   drivers/gpu/drm/i915/display/intel_display_device.c:1356:10: sparse:   also defined here

vim +/snb_display +469 drivers/gpu/drm/i915/display/intel_display_device.c

   468	
 > 469	const struct intel_display_device_info snb_display = {
   470		.has_hotplug = 1,
   471		I9XX_PIPE_OFFSETS,
   472		I9XX_CURSOR_OFFSETS,
   473		ILK_COLORS,
   474	
   475		.__runtime_defaults.ip.ver = 6,
   476		.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
   477		.__runtime_defaults.cpu_transcoder_mask =
   478		BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
   479		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
   480		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
   481	};
   482	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
