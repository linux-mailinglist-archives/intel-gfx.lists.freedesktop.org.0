Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5E18A6089
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 03:42:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C80CC10EBF8;
	Tue, 16 Apr 2024 01:42:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lSPPsyJg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D175511294A
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Apr 2024 01:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713231741; x=1744767741;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=lYvLyTVX7zQX8aroRQ6akQUSKsmn3x6XyK4qnUQpe2E=;
 b=lSPPsyJgh0FvBfv7Zh18ojPZILVgb/FMsJvyYFpRuGtqgv9XSsN/yOXi
 esRmfy4M+botIomGqz/moJzNmC3TEGBlOJF2c3NnuUNv8c5T5NnjUjp50
 XWqXHbQMkrWge9G3KMQ4PsHO0++f9vXEae9qgqQX3DXoVwVi+LVX5zbrX
 dVSRiTI5Y7C/KSGyES0kgmEAc7Dg+IMX2HYuiuhytUWZd7/pWcBAGnrwn
 9VNDDtZwAMD6CKBBpBbr492+JKQO2X84CWdfal9197UzAoPUxc02Q9qZv
 J9LFIWW9GCSaV45M8BNeRKNFD1wyxr1/mw+ygm8F+wfP+eHFTxJ20c43S A==;
X-CSE-ConnectionGUID: CPZkpy59R9+YKXjcEVLGkg==
X-CSE-MsgGUID: lYJkCBvqSVmV2AgzZOsMKQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="8479716"
X-IronPort-AV: E=Sophos;i="6.07,204,1708416000"; 
   d="scan'208";a="8479716"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 18:42:21 -0700
X-CSE-ConnectionGUID: oK7Q4F4sRoquRK9cU7BetQ==
X-CSE-MsgGUID: waEfTCrOTLiL7n+Aiqeaww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,204,1708416000"; d="scan'208";a="22178835"
Received: from unknown (HELO 23c141fc0fd8) ([10.239.97.151])
 by fmviesa008.fm.intel.com with ESMTP; 15 Apr 2024 18:42:19 -0700
Received: from kbuild by 23c141fc0fd8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rwXpw-0004pA-31;
 Tue, 16 Apr 2024 01:42:16 +0000
Date: Tue, 16 Apr 2024 09:41:44 +0800
From: kernel test robot <lkp@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev
Subject: Re: [PATCH 3/8] drm/i915/dpio: Extract bxt_dpio_phy_regs.h
Message-ID: <202404160914.qsredYDl-lkp@intel.com>
References: <20240412175818.29217-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240412175818.29217-4-ville.syrjala@linux.intel.com>
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

Hi Ville,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-intel/for-linux-next]
[also build test ERROR on drm-intel/for-linux-next-fixes drm-tip/drm-tip linus/master v6.9-rc4 next-20240415]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Ville-Syrjala/drm-i915-dpio-Clean-up-bxt-glk-PHY-registers/20240415-095059
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20240412175818.29217-4-ville.syrjala%40linux.intel.com
patch subject: [PATCH 3/8] drm/i915/dpio: Extract bxt_dpio_phy_regs.h
config: x86_64-rhel-8.3-rust (https://download.01.org/0day-ci/archive/20240416/202404160914.qsredYDl-lkp@intel.com/config)
compiler: clang version 17.0.6 (https://github.com/llvm/llvm-project 6009708b4367171ccdbf4b5905cb6a803753fe18)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240416/202404160914.qsredYDl-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202404160914.qsredYDl-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1130:9: error: call to undeclared function 'BXT_PORT_PLL_ENABLE'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
    1130 |         MMIO_D(BXT_PORT_PLL_ENABLE(PORT_A));
         |                ^
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1130:2: error: member reference base type 'int' is not a structure or union
    1130 |         MMIO_D(BXT_PORT_PLL_ENABLE(PORT_A));
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: expanded from macro 'MMIO_D'
      35 | #define MMIO_D(reg) MMIO_F(reg, 4)
         |                     ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: expanded from macro 'MMIO_F'
      30 |         ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
         |                                          ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:283:31: note: expanded from macro 'i915_mmio_reg_offset'
     283 |         _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
         |                                   ~~~^~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1130:2: error: member reference base type 'int' is not a structure or union
    1130 |         MMIO_D(BXT_PORT_PLL_ENABLE(PORT_A));
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: expanded from macro 'MMIO_D'
      35 | #define MMIO_D(reg) MMIO_F(reg, 4)
         |                     ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: expanded from macro 'MMIO_F'
      30 |         ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
         |                                          ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:283:56: note: expanded from macro 'i915_mmio_reg_offset'
     283 |         _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
         |                                                            ~~~^~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1130:9: error: controlling expression type 'int' not compatible with any generic association type
    1130 |         MMIO_D(BXT_PORT_PLL_ENABLE(PORT_A));
         |                ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:28: note: expanded from macro 'MMIO_D'
      35 | #define MMIO_D(reg) MMIO_F(reg, 4)
         |                            ^~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:56: note: expanded from macro 'MMIO_F'
      30 |         ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
         |                                                               ^~~
   drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: expanded from macro 'i915_mmio_reg_offset'
     283 |         _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
         |                   ^
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1131:9: error: call to undeclared function 'BXT_PORT_PLL_ENABLE'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
    1131 |         MMIO_D(BXT_PORT_PLL_ENABLE(PORT_B));
         |                ^
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1131:2: error: member reference base type 'int' is not a structure or union
    1131 |         MMIO_D(BXT_PORT_PLL_ENABLE(PORT_B));
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: expanded from macro 'MMIO_D'
      35 | #define MMIO_D(reg) MMIO_F(reg, 4)
         |                     ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: expanded from macro 'MMIO_F'
      30 |         ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
         |                                          ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:283:31: note: expanded from macro 'i915_mmio_reg_offset'
     283 |         _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
         |                                   ~~~^~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1131:2: error: member reference base type 'int' is not a structure or union
    1131 |         MMIO_D(BXT_PORT_PLL_ENABLE(PORT_B));
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: expanded from macro 'MMIO_D'
      35 | #define MMIO_D(reg) MMIO_F(reg, 4)
         |                     ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: expanded from macro 'MMIO_F'
      30 |         ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
         |                                          ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:283:56: note: expanded from macro 'i915_mmio_reg_offset'
     283 |         _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
         |                                                            ~~~^~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1131:9: error: controlling expression type 'int' not compatible with any generic association type
    1131 |         MMIO_D(BXT_PORT_PLL_ENABLE(PORT_B));
         |                ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:28: note: expanded from macro 'MMIO_D'
      35 | #define MMIO_D(reg) MMIO_F(reg, 4)
         |                            ^~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:56: note: expanded from macro 'MMIO_F'
      30 |         ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
         |                                                               ^~~
   drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: expanded from macro 'i915_mmio_reg_offset'
     283 |         _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
         |                   ^
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1132:9: error: call to undeclared function 'BXT_PORT_PLL_ENABLE'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
    1132 |         MMIO_D(BXT_PORT_PLL_ENABLE(PORT_C));
         |                ^
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1132:2: error: member reference base type 'int' is not a structure or union
    1132 |         MMIO_D(BXT_PORT_PLL_ENABLE(PORT_C));
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: expanded from macro 'MMIO_D'
      35 | #define MMIO_D(reg) MMIO_F(reg, 4)
         |                     ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: expanded from macro 'MMIO_F'
      30 |         ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
         |                                          ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:283:31: note: expanded from macro 'i915_mmio_reg_offset'
     283 |         _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
         |                                   ~~~^~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1132:2: error: member reference base type 'int' is not a structure or union
    1132 |         MMIO_D(BXT_PORT_PLL_ENABLE(PORT_C));
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: expanded from macro 'MMIO_D'
      35 | #define MMIO_D(reg) MMIO_F(reg, 4)
         |                     ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: expanded from macro 'MMIO_F'
      30 |         ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
         |                                          ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:283:56: note: expanded from macro 'i915_mmio_reg_offset'
     283 |         _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
         |                                                            ~~~^~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1132:9: error: controlling expression type 'int' not compatible with any generic association type
    1132 |         MMIO_D(BXT_PORT_PLL_ENABLE(PORT_C));
         |                ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:28: note: expanded from macro 'MMIO_D'
      35 | #define MMIO_D(reg) MMIO_F(reg, 4)
         |                            ^~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:56: note: expanded from macro 'MMIO_F'
      30 |         ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
         |                                                               ^~~
   drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: expanded from macro 'i915_mmio_reg_offset'
     283 |         _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
         |                   ^
>> drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1133:9: error: call to undeclared function 'BXT_PORT_CL1CM_DW0'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
    1133 |         MMIO_D(BXT_PORT_CL1CM_DW0(DPIO_PHY0));
         |                ^
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1133:2: error: member reference base type 'int' is not a structure or union
    1133 |         MMIO_D(BXT_PORT_CL1CM_DW0(DPIO_PHY0));
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: expanded from macro 'MMIO_D'
      35 | #define MMIO_D(reg) MMIO_F(reg, 4)
         |                     ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: expanded from macro 'MMIO_F'
      30 |         ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
         |                                          ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:283:31: note: expanded from macro 'i915_mmio_reg_offset'
     283 |         _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
         |                                   ~~~^~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1133:2: error: member reference base type 'int' is not a structure or union
    1133 |         MMIO_D(BXT_PORT_CL1CM_DW0(DPIO_PHY0));
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: expanded from macro 'MMIO_D'
      35 | #define MMIO_D(reg) MMIO_F(reg, 4)
         |                     ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: expanded from macro 'MMIO_F'
      30 |         ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
         |                                          ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:283:56: note: expanded from macro 'i915_mmio_reg_offset'
     283 |         _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
         |                                                            ~~~^~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1133:9: error: controlling expression type 'int' not compatible with any generic association type
    1133 |         MMIO_D(BXT_PORT_CL1CM_DW0(DPIO_PHY0));
         |                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:28: note: expanded from macro 'MMIO_D'
      35 | #define MMIO_D(reg) MMIO_F(reg, 4)
         |                            ^~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:56: note: expanded from macro 'MMIO_F'
      30 |         ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
         |                                                               ^~~
   drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: expanded from macro 'i915_mmio_reg_offset'
     283 |         _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
         |                   ^
>> drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1134:9: error: call to undeclared function 'BXT_PORT_CL1CM_DW9'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
    1134 |         MMIO_D(BXT_PORT_CL1CM_DW9(DPIO_PHY0));
         |                ^
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1134:2: error: member reference base type 'int' is not a structure or union
    1134 |         MMIO_D(BXT_PORT_CL1CM_DW9(DPIO_PHY0));
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: expanded from macro 'MMIO_D'
      35 | #define MMIO_D(reg) MMIO_F(reg, 4)
         |                     ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: expanded from macro 'MMIO_F'
      30 |         ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
         |                                          ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:283:31: note: expanded from macro 'i915_mmio_reg_offset'
     283 |         _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
         |                                   ~~~^~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1134:2: error: member reference base type 'int' is not a structure or union
    1134 |         MMIO_D(BXT_PORT_CL1CM_DW9(DPIO_PHY0));
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:21: note: expanded from macro 'MMIO_D'
      35 | #define MMIO_D(reg) MMIO_F(reg, 4)
         |                     ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_gvt_mmio_table.c:30:35: note: expanded from macro 'MMIO_F'
      30 |         ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
         |                                          ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:283:56: note: expanded from macro 'i915_mmio_reg_offset'
     283 |         _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
         |                                                            ~~~^~~~
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   20 errors generated.
--
>> drivers/gpu/drm/i915/gvt/display.c:214:22: error: call to undeclared function 'BXT_PORT_PLL_ENABLE'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     214 |                         vgpu_vreg_t(vgpu, BXT_PORT_PLL_ENABLE(port)) &=
         |                                           ^
>> drivers/gpu/drm/i915/gvt/display.c:214:4: error: member reference base type 'int' is not a structure or union
     214 |                         vgpu_vreg_t(vgpu, BXT_PORT_PLL_ENABLE(port)) &=
         |                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gvt/gvt.h:458:30: note: expanded from macro 'vgpu_vreg_t'
     458 |         (*(u32 *)(vgpu->mmio.vreg + i915_mmio_reg_offset(reg)))
         |                                     ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:283:31: note: expanded from macro 'i915_mmio_reg_offset'
     283 |         _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
         |                                   ~~~^~~~
>> drivers/gpu/drm/i915/gvt/display.c:214:4: error: member reference base type 'int' is not a structure or union
     214 |                         vgpu_vreg_t(vgpu, BXT_PORT_PLL_ENABLE(port)) &=
         |                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gvt/gvt.h:458:30: note: expanded from macro 'vgpu_vreg_t'
     458 |         (*(u32 *)(vgpu->mmio.vreg + i915_mmio_reg_offset(reg)))
         |                                     ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:283:56: note: expanded from macro 'i915_mmio_reg_offset'
     283 |         _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
         |                                                            ~~~^~~~
>> drivers/gpu/drm/i915/gvt/display.c:214:22: error: controlling expression type 'int' not compatible with any generic association type
     214 |                         vgpu_vreg_t(vgpu, BXT_PORT_PLL_ENABLE(port)) &=
         |                                           ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gvt/gvt.h:458:51: note: expanded from macro 'vgpu_vreg_t'
     458 |         (*(u32 *)(vgpu->mmio.vreg + i915_mmio_reg_offset(reg)))
         |                                                          ^~~
   drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: expanded from macro 'i915_mmio_reg_offset'
     283 |         _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
         |                   ^
>> drivers/gpu/drm/i915/gvt/display.c:215:7: error: use of undeclared identifier 'PORT_PLL_POWER_STATE'
     215 |                                 ~(PORT_PLL_POWER_STATE | PORT_PLL_POWER_ENABLE |
         |                                   ^
>> drivers/gpu/drm/i915/gvt/display.c:215:30: error: use of undeclared identifier 'PORT_PLL_POWER_ENABLE'
     215 |                                 ~(PORT_PLL_POWER_STATE | PORT_PLL_POWER_ENABLE |
         |                                                          ^
>> drivers/gpu/drm/i915/gvt/display.c:216:7: error: use of undeclared identifier 'PORT_PLL_REF_SEL'
     216 |                                   PORT_PLL_REF_SEL | PORT_PLL_LOCK |
         |                                   ^
>> drivers/gpu/drm/i915/gvt/display.c:216:26: error: use of undeclared identifier 'PORT_PLL_LOCK'
     216 |                                   PORT_PLL_REF_SEL | PORT_PLL_LOCK |
         |                                                      ^
>> drivers/gpu/drm/i915/gvt/display.c:217:7: error: use of undeclared identifier 'PORT_PLL_ENABLE'
     217 |                                   PORT_PLL_ENABLE);
         |                                   ^
>> drivers/gpu/drm/i915/gvt/display.c:235:21: error: call to undeclared function 'BXT_PORT_CL1CM_DW0'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     235 |                 vgpu_vreg_t(vgpu, BXT_PORT_CL1CM_DW0(DPIO_PHY0)) &=
         |                                   ^
   drivers/gpu/drm/i915/gvt/display.c:235:3: error: member reference base type 'int' is not a structure or union
     235 |                 vgpu_vreg_t(vgpu, BXT_PORT_CL1CM_DW0(DPIO_PHY0)) &=
         |                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gvt/gvt.h:458:30: note: expanded from macro 'vgpu_vreg_t'
     458 |         (*(u32 *)(vgpu->mmio.vreg + i915_mmio_reg_offset(reg)))
         |                                     ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:283:31: note: expanded from macro 'i915_mmio_reg_offset'
     283 |         _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
         |                                   ~~~^~~~
   drivers/gpu/drm/i915/gvt/display.c:235:3: error: member reference base type 'int' is not a structure or union
     235 |                 vgpu_vreg_t(vgpu, BXT_PORT_CL1CM_DW0(DPIO_PHY0)) &=
         |                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gvt/gvt.h:458:30: note: expanded from macro 'vgpu_vreg_t'
     458 |         (*(u32 *)(vgpu->mmio.vreg + i915_mmio_reg_offset(reg)))
         |                                     ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:283:56: note: expanded from macro 'i915_mmio_reg_offset'
     283 |         _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
         |                                                            ~~~^~~~
   drivers/gpu/drm/i915/gvt/display.c:235:21: error: controlling expression type 'int' not compatible with any generic association type
     235 |                 vgpu_vreg_t(vgpu, BXT_PORT_CL1CM_DW0(DPIO_PHY0)) &=
         |                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gvt/gvt.h:458:51: note: expanded from macro 'vgpu_vreg_t'
     458 |         (*(u32 *)(vgpu->mmio.vreg + i915_mmio_reg_offset(reg)))
         |                                                          ^~~
   drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: expanded from macro 'i915_mmio_reg_offset'
     283 |         _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
         |                   ^
>> drivers/gpu/drm/i915/gvt/display.c:236:5: error: use of undeclared identifier 'PHY_POWER_GOOD'
     236 |                         ~PHY_POWER_GOOD;
         |                          ^
   drivers/gpu/drm/i915/gvt/display.c:237:3: error: member reference base type 'int' is not a structure or union
     237 |                 vgpu_vreg_t(vgpu, BXT_PORT_CL1CM_DW0(DPIO_PHY1)) &=
         |                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gvt/gvt.h:458:30: note: expanded from macro 'vgpu_vreg_t'
     458 |         (*(u32 *)(vgpu->mmio.vreg + i915_mmio_reg_offset(reg)))
         |                                     ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:283:31: note: expanded from macro 'i915_mmio_reg_offset'
     283 |         _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
         |                                   ~~~^~~~
   drivers/gpu/drm/i915/gvt/display.c:237:3: error: member reference base type 'int' is not a structure or union
     237 |                 vgpu_vreg_t(vgpu, BXT_PORT_CL1CM_DW0(DPIO_PHY1)) &=
         |                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gvt/gvt.h:458:30: note: expanded from macro 'vgpu_vreg_t'
     458 |         (*(u32 *)(vgpu->mmio.vreg + i915_mmio_reg_offset(reg)))
         |                                     ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:283:56: note: expanded from macro 'i915_mmio_reg_offset'
     283 |         _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
         |                                                            ~~~^~~~
   drivers/gpu/drm/i915/gvt/display.c:237:21: error: controlling expression type 'int' not compatible with any generic association type
     237 |                 vgpu_vreg_t(vgpu, BXT_PORT_CL1CM_DW0(DPIO_PHY1)) &=
         |                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gvt/gvt.h:458:51: note: expanded from macro 'vgpu_vreg_t'
     458 |         (*(u32 *)(vgpu->mmio.vreg + i915_mmio_reg_offset(reg)))
         |                                                          ^~~
   drivers/gpu/drm/i915/i915_reg_defs.h:283:12: note: expanded from macro 'i915_mmio_reg_offset'
     283 |         _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
         |                   ^
   drivers/gpu/drm/i915/gvt/display.c:238:5: error: use of undeclared identifier 'PHY_POWER_GOOD'
     238 |                         ~PHY_POWER_GOOD;
         |                          ^
   drivers/gpu/drm/i915/gvt/display.c:269:4: error: member reference base type 'int' is not a structure or union
     269 |                         vgpu_vreg_t(vgpu, BXT_PORT_CL1CM_DW0(DPIO_PHY1)) |=
         |                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gvt/gvt.h:458:30: note: expanded from macro 'vgpu_vreg_t'
     458 |         (*(u32 *)(vgpu->mmio.vreg + i915_mmio_reg_offset(reg)))
         |                                     ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:283:31: note: expanded from macro 'i915_mmio_reg_offset'
     283 |         _Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
         |                                   ~~~^~~~
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   20 errors generated.
..


vim +/BXT_PORT_PLL_ENABLE +1130 drivers/gpu/drm/i915/intel_gvt_mmio_table.c

e0f74ed4634d6d Zhi Wang 2022-04-07  1097  
e0f74ed4634d6d Zhi Wang 2022-04-07  1098  static int iterate_bxt_mmio(struct intel_gvt_mmio_table_iter *iter)
e0f74ed4634d6d Zhi Wang 2022-04-07  1099  {
e0f74ed4634d6d Zhi Wang 2022-04-07  1100  	struct drm_i915_private *dev_priv = iter->i915;
e0f74ed4634d6d Zhi Wang 2022-04-07  1101  
e0f74ed4634d6d Zhi Wang 2022-04-07  1102  	MMIO_F(_MMIO(0x80000), 0x3000);
e0f74ed4634d6d Zhi Wang 2022-04-07  1103  	MMIO_D(GEN7_SAMPLER_INSTDONE);
e0f74ed4634d6d Zhi Wang 2022-04-07  1104  	MMIO_D(GEN7_ROW_INSTDONE);
e0f74ed4634d6d Zhi Wang 2022-04-07  1105  	MMIO_D(GEN8_FAULT_TLB_DATA0);
e0f74ed4634d6d Zhi Wang 2022-04-07  1106  	MMIO_D(GEN8_FAULT_TLB_DATA1);
e0f74ed4634d6d Zhi Wang 2022-04-07  1107  	MMIO_D(ERROR_GEN6);
e0f74ed4634d6d Zhi Wang 2022-04-07  1108  	MMIO_D(DONE_REG);
e0f74ed4634d6d Zhi Wang 2022-04-07  1109  	MMIO_D(EIR);
e0f74ed4634d6d Zhi Wang 2022-04-07  1110  	MMIO_D(PGTBL_ER);
e0f74ed4634d6d Zhi Wang 2022-04-07  1111  	MMIO_D(_MMIO(0x4194));
e0f74ed4634d6d Zhi Wang 2022-04-07  1112  	MMIO_D(_MMIO(0x4294));
e0f74ed4634d6d Zhi Wang 2022-04-07  1113  	MMIO_D(_MMIO(0x4494));
e0f74ed4634d6d Zhi Wang 2022-04-07  1114  	MMIO_RING_D(RING_PSMI_CTL);
e0f74ed4634d6d Zhi Wang 2022-04-07  1115  	MMIO_RING_D(RING_DMA_FADD);
e0f74ed4634d6d Zhi Wang 2022-04-07  1116  	MMIO_RING_D(RING_DMA_FADD_UDW);
e0f74ed4634d6d Zhi Wang 2022-04-07  1117  	MMIO_RING_D(RING_IPEHR);
e0f74ed4634d6d Zhi Wang 2022-04-07  1118  	MMIO_RING_D(RING_INSTPS);
e0f74ed4634d6d Zhi Wang 2022-04-07  1119  	MMIO_RING_D(RING_BBADDR_UDW);
e0f74ed4634d6d Zhi Wang 2022-04-07  1120  	MMIO_RING_D(RING_BBSTATE);
e0f74ed4634d6d Zhi Wang 2022-04-07  1121  	MMIO_RING_D(RING_IPEIR);
e0f74ed4634d6d Zhi Wang 2022-04-07  1122  	MMIO_F(SOFT_SCRATCH(0), 16 * 4);
e0f74ed4634d6d Zhi Wang 2022-04-07  1123  	MMIO_D(BXT_P_CR_GT_DISP_PWRON);
e0f74ed4634d6d Zhi Wang 2022-04-07  1124  	MMIO_D(BXT_RP_STATE_CAP);
e0f74ed4634d6d Zhi Wang 2022-04-07  1125  	MMIO_D(BXT_PHY_CTL_FAMILY(DPIO_PHY0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1126  	MMIO_D(BXT_PHY_CTL_FAMILY(DPIO_PHY1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1127  	MMIO_D(BXT_PHY_CTL(PORT_A));
e0f74ed4634d6d Zhi Wang 2022-04-07  1128  	MMIO_D(BXT_PHY_CTL(PORT_B));
e0f74ed4634d6d Zhi Wang 2022-04-07  1129  	MMIO_D(BXT_PHY_CTL(PORT_C));
e0f74ed4634d6d Zhi Wang 2022-04-07 @1130  	MMIO_D(BXT_PORT_PLL_ENABLE(PORT_A));
e0f74ed4634d6d Zhi Wang 2022-04-07  1131  	MMIO_D(BXT_PORT_PLL_ENABLE(PORT_B));
e0f74ed4634d6d Zhi Wang 2022-04-07  1132  	MMIO_D(BXT_PORT_PLL_ENABLE(PORT_C));
e0f74ed4634d6d Zhi Wang 2022-04-07 @1133  	MMIO_D(BXT_PORT_CL1CM_DW0(DPIO_PHY0));
e0f74ed4634d6d Zhi Wang 2022-04-07 @1134  	MMIO_D(BXT_PORT_CL1CM_DW9(DPIO_PHY0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1135  	MMIO_D(BXT_PORT_CL1CM_DW10(DPIO_PHY0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1136  	MMIO_D(BXT_PORT_CL1CM_DW28(DPIO_PHY0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1137  	MMIO_D(BXT_PORT_CL1CM_DW30(DPIO_PHY0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1138  	MMIO_D(BXT_PORT_CL2CM_DW6(DPIO_PHY0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1139  	MMIO_D(BXT_PORT_REF_DW3(DPIO_PHY0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1140  	MMIO_D(BXT_PORT_REF_DW6(DPIO_PHY0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1141  	MMIO_D(BXT_PORT_REF_DW8(DPIO_PHY0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1142  	MMIO_D(BXT_PORT_CL1CM_DW0(DPIO_PHY1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1143  	MMIO_D(BXT_PORT_CL1CM_DW9(DPIO_PHY1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1144  	MMIO_D(BXT_PORT_CL1CM_DW10(DPIO_PHY1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1145  	MMIO_D(BXT_PORT_CL1CM_DW28(DPIO_PHY1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1146  	MMIO_D(BXT_PORT_CL1CM_DW30(DPIO_PHY1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1147  	MMIO_D(BXT_PORT_CL2CM_DW6(DPIO_PHY1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1148  	MMIO_D(BXT_PORT_REF_DW3(DPIO_PHY1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1149  	MMIO_D(BXT_PORT_REF_DW6(DPIO_PHY1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1150  	MMIO_D(BXT_PORT_REF_DW8(DPIO_PHY1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1151  	MMIO_D(BXT_PORT_PLL_EBB_0(DPIO_PHY0, DPIO_CH0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1152  	MMIO_D(BXT_PORT_PLL_EBB_4(DPIO_PHY0, DPIO_CH0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1153  	MMIO_D(BXT_PORT_PCS_DW10_LN01(DPIO_PHY0, DPIO_CH0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1154  	MMIO_D(BXT_PORT_PCS_DW10_GRP(DPIO_PHY0, DPIO_CH0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1155  	MMIO_D(BXT_PORT_PCS_DW12_LN01(DPIO_PHY0, DPIO_CH0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1156  	MMIO_D(BXT_PORT_PCS_DW12_LN23(DPIO_PHY0, DPIO_CH0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1157  	MMIO_D(BXT_PORT_PCS_DW12_GRP(DPIO_PHY0, DPIO_CH0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1158  	MMIO_D(BXT_PORT_TX_DW2_LN0(DPIO_PHY0, DPIO_CH0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1159  	MMIO_D(BXT_PORT_TX_DW2_GRP(DPIO_PHY0, DPIO_CH0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1160  	MMIO_D(BXT_PORT_TX_DW3_LN0(DPIO_PHY0, DPIO_CH0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1161  	MMIO_D(BXT_PORT_TX_DW3_GRP(DPIO_PHY0, DPIO_CH0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1162  	MMIO_D(BXT_PORT_TX_DW4_LN0(DPIO_PHY0, DPIO_CH0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1163  	MMIO_D(BXT_PORT_TX_DW4_GRP(DPIO_PHY0, DPIO_CH0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1164  	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH0, 0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1165  	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH0, 1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1166  	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH0, 2));
e0f74ed4634d6d Zhi Wang 2022-04-07  1167  	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH0, 3));
e0f74ed4634d6d Zhi Wang 2022-04-07  1168  	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1169  	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1170  	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 2));
e0f74ed4634d6d Zhi Wang 2022-04-07  1171  	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 3));
e0f74ed4634d6d Zhi Wang 2022-04-07  1172  	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 6));
e0f74ed4634d6d Zhi Wang 2022-04-07  1173  	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 8));
e0f74ed4634d6d Zhi Wang 2022-04-07  1174  	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 9));
e0f74ed4634d6d Zhi Wang 2022-04-07  1175  	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 10));
e0f74ed4634d6d Zhi Wang 2022-04-07  1176  	MMIO_D(BXT_PORT_PLL_EBB_0(DPIO_PHY0, DPIO_CH1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1177  	MMIO_D(BXT_PORT_PLL_EBB_4(DPIO_PHY0, DPIO_CH1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1178  	MMIO_D(BXT_PORT_PCS_DW10_LN01(DPIO_PHY0, DPIO_CH1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1179  	MMIO_D(BXT_PORT_PCS_DW10_GRP(DPIO_PHY0, DPIO_CH1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1180  	MMIO_D(BXT_PORT_PCS_DW12_LN01(DPIO_PHY0, DPIO_CH1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1181  	MMIO_D(BXT_PORT_PCS_DW12_LN23(DPIO_PHY0, DPIO_CH1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1182  	MMIO_D(BXT_PORT_PCS_DW12_GRP(DPIO_PHY0, DPIO_CH1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1183  	MMIO_D(BXT_PORT_TX_DW2_LN0(DPIO_PHY0, DPIO_CH1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1184  	MMIO_D(BXT_PORT_TX_DW2_GRP(DPIO_PHY0, DPIO_CH1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1185  	MMIO_D(BXT_PORT_TX_DW3_LN0(DPIO_PHY0, DPIO_CH1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1186  	MMIO_D(BXT_PORT_TX_DW3_GRP(DPIO_PHY0, DPIO_CH1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1187  	MMIO_D(BXT_PORT_TX_DW4_LN0(DPIO_PHY0, DPIO_CH1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1188  	MMIO_D(BXT_PORT_TX_DW4_GRP(DPIO_PHY0, DPIO_CH1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1189  	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH1, 0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1190  	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH1, 1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1191  	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH1, 2));
e0f74ed4634d6d Zhi Wang 2022-04-07  1192  	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH1, 3));
e0f74ed4634d6d Zhi Wang 2022-04-07  1193  	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1194  	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1195  	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 2));
e0f74ed4634d6d Zhi Wang 2022-04-07  1196  	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 3));
e0f74ed4634d6d Zhi Wang 2022-04-07  1197  	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 6));
e0f74ed4634d6d Zhi Wang 2022-04-07  1198  	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 8));
e0f74ed4634d6d Zhi Wang 2022-04-07  1199  	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 9));
e0f74ed4634d6d Zhi Wang 2022-04-07  1200  	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 10));
e0f74ed4634d6d Zhi Wang 2022-04-07  1201  	MMIO_D(BXT_PORT_PLL_EBB_0(DPIO_PHY1, DPIO_CH0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1202  	MMIO_D(BXT_PORT_PLL_EBB_4(DPIO_PHY1, DPIO_CH0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1203  	MMIO_D(BXT_PORT_PCS_DW10_LN01(DPIO_PHY1, DPIO_CH0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1204  	MMIO_D(BXT_PORT_PCS_DW10_GRP(DPIO_PHY1, DPIO_CH0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1205  	MMIO_D(BXT_PORT_PCS_DW12_LN01(DPIO_PHY1, DPIO_CH0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1206  	MMIO_D(BXT_PORT_PCS_DW12_LN23(DPIO_PHY1, DPIO_CH0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1207  	MMIO_D(BXT_PORT_PCS_DW12_GRP(DPIO_PHY1, DPIO_CH0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1208  	MMIO_D(BXT_PORT_TX_DW2_LN0(DPIO_PHY1, DPIO_CH0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1209  	MMIO_D(BXT_PORT_TX_DW2_GRP(DPIO_PHY1, DPIO_CH0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1210  	MMIO_D(BXT_PORT_TX_DW3_LN0(DPIO_PHY1, DPIO_CH0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1211  	MMIO_D(BXT_PORT_TX_DW3_GRP(DPIO_PHY1, DPIO_CH0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1212  	MMIO_D(BXT_PORT_TX_DW4_LN0(DPIO_PHY1, DPIO_CH0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1213  	MMIO_D(BXT_PORT_TX_DW4_GRP(DPIO_PHY1, DPIO_CH0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1214  	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY1, DPIO_CH0, 0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1215  	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY1, DPIO_CH0, 1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1216  	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY1, DPIO_CH0, 2));
e0f74ed4634d6d Zhi Wang 2022-04-07  1217  	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY1, DPIO_CH0, 3));
e0f74ed4634d6d Zhi Wang 2022-04-07  1218  	MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 0));
e0f74ed4634d6d Zhi Wang 2022-04-07  1219  	MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 1));
e0f74ed4634d6d Zhi Wang 2022-04-07  1220  	MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 2));
e0f74ed4634d6d Zhi Wang 2022-04-07  1221  	MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 3));
e0f74ed4634d6d Zhi Wang 2022-04-07  1222  	MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 6));
e0f74ed4634d6d Zhi Wang 2022-04-07  1223  	MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 8));
e0f74ed4634d6d Zhi Wang 2022-04-07  1224  	MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 9));
e0f74ed4634d6d Zhi Wang 2022-04-07  1225  	MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 10));
e0f74ed4634d6d Zhi Wang 2022-04-07  1226  	MMIO_D(BXT_DE_PLL_CTL);
e0f74ed4634d6d Zhi Wang 2022-04-07  1227  	MMIO_D(BXT_DE_PLL_ENABLE);
e0f74ed4634d6d Zhi Wang 2022-04-07  1228  	MMIO_D(BXT_DSI_PLL_CTL);
e0f74ed4634d6d Zhi Wang 2022-04-07  1229  	MMIO_D(BXT_DSI_PLL_ENABLE);
e0f74ed4634d6d Zhi Wang 2022-04-07  1230  	MMIO_D(GEN9_CLKGATE_DIS_0);
e0f74ed4634d6d Zhi Wang 2022-04-07  1231  	MMIO_D(GEN9_CLKGATE_DIS_4);
e0f74ed4634d6d Zhi Wang 2022-04-07  1232  	MMIO_D(HSW_TVIDEO_DIP_GCP(TRANSCODER_A));
e0f74ed4634d6d Zhi Wang 2022-04-07  1233  	MMIO_D(HSW_TVIDEO_DIP_GCP(TRANSCODER_B));
e0f74ed4634d6d Zhi Wang 2022-04-07  1234  	MMIO_D(HSW_TVIDEO_DIP_GCP(TRANSCODER_C));
e0f74ed4634d6d Zhi Wang 2022-04-07  1235  	MMIO_D(RC6_CTX_BASE);
e0f74ed4634d6d Zhi Wang 2022-04-07  1236  	MMIO_D(GEN8_PUSHBUS_CONTROL);
e0f74ed4634d6d Zhi Wang 2022-04-07  1237  	MMIO_D(GEN8_PUSHBUS_ENABLE);
e0f74ed4634d6d Zhi Wang 2022-04-07  1238  	MMIO_D(GEN8_PUSHBUS_SHIFT);
e0f74ed4634d6d Zhi Wang 2022-04-07  1239  	MMIO_D(GEN6_GFXPAUSE);
e0f74ed4634d6d Zhi Wang 2022-04-07  1240  	MMIO_D(GEN8_L3SQCREG1);
e0f74ed4634d6d Zhi Wang 2022-04-07  1241  	MMIO_D(GEN8_L3CNTLREG);
e0f74ed4634d6d Zhi Wang 2022-04-07  1242  	MMIO_D(_MMIO(0x20D8));
e0f74ed4634d6d Zhi Wang 2022-04-07  1243  	MMIO_F(GEN8_RING_CS_GPR(RENDER_RING_BASE, 0), 0x40);
e0f74ed4634d6d Zhi Wang 2022-04-07  1244  	MMIO_F(GEN8_RING_CS_GPR(GEN6_BSD_RING_BASE, 0), 0x40);
e0f74ed4634d6d Zhi Wang 2022-04-07  1245  	MMIO_F(GEN8_RING_CS_GPR(BLT_RING_BASE, 0), 0x40);
e0f74ed4634d6d Zhi Wang 2022-04-07  1246  	MMIO_F(GEN8_RING_CS_GPR(VEBOX_RING_BASE, 0), 0x40);
e0f74ed4634d6d Zhi Wang 2022-04-07  1247  	MMIO_D(GEN9_CTX_PREEMPT_REG);
e0f74ed4634d6d Zhi Wang 2022-04-07  1248  	MMIO_D(GEN8_PRIVATE_PAT_LO);
e0f74ed4634d6d Zhi Wang 2022-04-07  1249  
e0f74ed4634d6d Zhi Wang 2022-04-07  1250  	return 0;
e0f74ed4634d6d Zhi Wang 2022-04-07  1251  }
e0f74ed4634d6d Zhi Wang 2022-04-07  1252  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
