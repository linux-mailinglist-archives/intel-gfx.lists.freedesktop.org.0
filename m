Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E64D69EC41B
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 05:51:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A3CA10E03D;
	Wed, 11 Dec 2024 04:51:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JDmrq9v+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55B1D10E03D
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 04:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733892704; x=1765428704;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=p4F6XJXcYkCbg1TF6HnIONvWETztV/yfLZMadBxVKe4=;
 b=JDmrq9v+uN+Bmb6TuKb81O0TvqnSjGLRzekQqVh8gU335CYMgG2dzUVE
 YJs6j60ZMBMms4uZNcyc4pXhzo6/V07O9CthqZVr8uYpuRO1FU/GvbLIq
 rxi8gQKFIPPEGxgRwWu4VQX43YKATx7gLe9zSWptPJlCEk7h+bKYJpWFo
 2pWU5zhStjgc6nL6d0p/RsoM54jMyzJxJGMjlc2zl3tVyhDtbRTJsIWxv
 bL1dWFptKMNp8yx42ClBrX0NZNc67bEBqtaJi4UcngzTm0SLOlhRioyE3
 9DPpZjIhZdQ5VFlS/UY/a7DY5pg5jwsfzT1SrhioYO87k0rDB0UKv8YJo w==;
X-CSE-ConnectionGUID: CYhnHJosSSqfNfI1e82RLg==
X-CSE-MsgGUID: tPSjVz2NQeaezJhdwfPeIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="34505869"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="34505869"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 20:51:44 -0800
X-CSE-ConnectionGUID: CEhRHMpXTb21b1GkyLNyGQ==
X-CSE-MsgGUID: b1qqTJDUSXmckIVd2mjm8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="96104741"
Received: from lkp-server01.sh.intel.com (HELO 82a3f569d0cb) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 10 Dec 2024 20:51:42 -0800
Received: from kbuild by 82a3f569d0cb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tLEhI-0006IN-0h;
 Wed, 11 Dec 2024 04:51:40 +0000
Date: Wed, 11 Dec 2024 12:50:49 +0800
From: kernel test robot <lkp@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: Re: [PATCH v2] drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value
Message-ID: <202412111422.EkKTeLIL-lkp@intel.com>
References: <20241209153418.49580-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241209153418.49580-1-dnyaneshwar.bhadane@intel.com>
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

Hi Dnyaneshwar,

kernel test robot noticed the following build errors:

[auto build test ERROR on next-20241209]
[also build test ERROR on linus/master v6.13-rc2]
[cannot apply to drm-intel/for-linux-next drm-intel/for-linux-next-fixes drm-tip/drm-tip v6.13-rc2 v6.13-rc1 v6.12]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Dnyaneshwar-Bhadane/drm-i915-cx0_phy-Update-HDMI-TMDS-C20-algorithm-value/20241209-233928
base:   next-20241209
patch link:    https://lore.kernel.org/r/20241209153418.49580-1-dnyaneshwar.bhadane%40intel.com
patch subject: [PATCH v2] drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value
config: riscv-allmodconfig (https://download.01.org/0day-ci/archive/20241211/202412111422.EkKTeLIL-lkp@intel.com/config)
compiler: clang version 20.0.0git (https://github.com/llvm/llvm-project 592c0fe55f6d9a811028b5f3507be91458ab2713)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241211/202412111422.EkKTeLIL-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202412111422.EkKTeLIL-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from drivers/gpu/drm/i915/display/intel_cx0_phy.c:13:
   In file included from drivers/gpu/drm/i915/display/intel_de.h:9:
   In file included from drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h:16:
   In file included from drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h:10:
   In file included from drivers/gpu/drm/xe/xe_device_types.h:9:
   In file included from include/linux/pci.h:38:
   In file included from include/linux/interrupt.h:22:
   In file included from arch/riscv/include/asm/sections.h:9:
   In file included from include/linux/mm.h:2287:
   include/linux/vmstat.h:504:43: warning: arithmetic between different enumeration types ('enum zone_stat_item' and 'enum numa_stat_item') [-Wenum-enum-conversion]
     504 |         return vmstat_text[NR_VM_ZONE_STAT_ITEMS +
         |                            ~~~~~~~~~~~~~~~~~~~~~ ^
     505 |                            item];
         |                            ~~~~
   include/linux/vmstat.h:511:43: warning: arithmetic between different enumeration types ('enum zone_stat_item' and 'enum numa_stat_item') [-Wenum-enum-conversion]
     511 |         return vmstat_text[NR_VM_ZONE_STAT_ITEMS +
         |                            ~~~~~~~~~~~~~~~~~~~~~ ^
     512 |                            NR_VM_NUMA_EVENT_ITEMS +
         |                            ~~~~~~~~~~~~~~~~~~~~~~
   include/linux/vmstat.h:518:36: warning: arithmetic between different enumeration types ('enum node_stat_item' and 'enum lru_list') [-Wenum-enum-conversion]
     518 |         return node_stat_name(NR_LRU_BASE + lru) + 3; // skip "nr_"
         |                               ~~~~~~~~~~~ ^ ~~~
   include/linux/vmstat.h:524:43: warning: arithmetic between different enumeration types ('enum zone_stat_item' and 'enum numa_stat_item') [-Wenum-enum-conversion]
     524 |         return vmstat_text[NR_VM_ZONE_STAT_ITEMS +
         |                            ~~~~~~~~~~~~~~~~~~~~~ ^
     525 |                            NR_VM_NUMA_EVENT_ITEMS +
         |                            ~~~~~~~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/display/intel_cx0_phy.c:2201:7: error: call to undeclared function 'IS_METEORLAKE_U'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
    2201 |                 if (IS_METEORLAKE_U(to_i915(display->drm)) ||
         |                     ^
>> drivers/gpu/drm/i915/display/intel_cx0_phy.c:2202:7: error: call to undeclared function 'IS_ARROWLAKE_U'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
    2202 |                     IS_ARROWLAKE_U(to_i915(display->drm)) ||
         |                     ^
   4 warnings and 2 errors generated.


vim +/IS_METEORLAKE_U +2201 drivers/gpu/drm/i915/display/intel_cx0_phy.c

  2177	
  2178	static u16 intel_c20_hdmi_tmds_tx_cgf_1(struct intel_crtc_state *crtc_state)
  2179	{
  2180		struct intel_display *display = to_intel_display(crtc_state);
  2181		struct pci_dev *pdev = NULL;
  2182		u16 tx_misc;
  2183		u16 tx_dcc_cal_dac_ctrl_range = 8;
  2184		u16 tx_term_ctrl;
  2185		u16 host_bridge_pci_dev_id;
  2186	
  2187		if (IS_BATTLEMAGE(to_i915(display->drm))) {
  2188			tx_misc = 0;
  2189			tx_term_ctrl = 2;
  2190		} else if (DISPLAY_VER(display) >= 20) {
  2191			tx_misc = 5;
  2192			tx_term_ctrl = 4;
  2193		} else if (IS_METEORLAKE(to_i915(display->drm))) {
  2194			/*
  2195			 * Some SoCs have the same drm PCI IDs, so differentiate based
  2196			 * on the host bridge device ID to use the correct txx_mics value.
  2197			 */
  2198			while ((pdev = pci_get_class(PCI_CLASS_BRIDGE_HOST << 8, pdev)))
  2199				host_bridge_pci_dev_id = pdev->device;
  2200	
> 2201			if (IS_METEORLAKE_U(to_i915(display->drm)) ||
> 2202			    IS_ARROWLAKE_U(to_i915(display->drm)) ||
  2203			    (pdev && IS_ARROWLAKE_S_BY_HOST_BRIDGE_ID(host_bridge_pci_dev_id))) {
  2204				tx_misc = 3;
  2205			} else {
  2206				tx_misc = 7;
  2207			}
  2208	
  2209			tx_term_ctrl = 2;
  2210		}
  2211		return (C20_PHY_TX_MISC(tx_misc) |
  2212			C20_PHY_TX_DCC_CAL_RANGE(tx_dcc_cal_dac_ctrl_range) |
  2213			C20_PHY_TX_DCC_BYPASS | C20_PHY_TX_TERM_CTL(tx_term_ctrl));
  2214	}
  2215	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
