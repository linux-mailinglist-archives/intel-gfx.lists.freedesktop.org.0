Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 704759EA20C
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 23:46:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A37F910E2C1;
	Mon,  9 Dec 2024 22:46:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ABPkJctr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2603610E2C1
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2024 22:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733784379; x=1765320379;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=lwqEzAUTR7fdaBRvzKp3BZmCiTQykOdIeY7HD7pXb74=;
 b=ABPkJctrTat3tB8ANlf+3PgzAIa6l1pthm+v7Lm8yRjoUDBzZTTkc1qb
 VyDLxKLL+qngZSx8h5mVPHTQVWfZ5Hxc4LCj+pzD+LTiaRNsBLqefPy9j
 dhnSlnym1wuJoPw2yvFZdvn1o2qqHf3htH5nZS4fYvh4/PBsvKvQ6XK8c
 ly3152G4B2Y8zDIFGjG4rpESANVL5EHfxqCATFfhUnA8pFY1aJzSR7kwN
 cH3M35zmbxCF4Lm0t1eXgUWg/3tA6iD4ClHNLjaSjC+0b2UVEo710rwgZ
 ymniyxiNw8843oXM9UGRApC0OfX7iu1O2Ez2ujYupXkrEMoH8ho2GhDow g==;
X-CSE-ConnectionGUID: TNd8OqqvSuybrQ6wtD+DPQ==
X-CSE-MsgGUID: 8cAUggPDQg2Efgc6m3lQ1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="44709636"
X-IronPort-AV: E=Sophos;i="6.12,220,1728975600"; d="scan'208";a="44709636"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 14:46:19 -0800
X-CSE-ConnectionGUID: fSnUhL5aQCGploCU/Fi5CQ==
X-CSE-MsgGUID: P5niC623SQiQrrUqw8LS1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,220,1728975600"; d="scan'208";a="126104955"
Received: from lkp-server01.sh.intel.com (HELO 82a3f569d0cb) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 09 Dec 2024 14:46:17 -0800
Received: from kbuild by 82a3f569d0cb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tKmW7-0004sL-0L;
 Mon, 09 Dec 2024 22:46:15 +0000
Date: Tue, 10 Dec 2024 06:46:12 +0800
From: kernel test robot <lkp@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: Re: [PATCH v2] drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value
Message-ID: <202412100658.ach3jkpF-lkp@intel.com>
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

kernel test robot noticed the following build warnings:

[auto build test WARNING on next-20241209]
[also build test WARNING on linus/master v6.13-rc2]
[cannot apply to drm-intel/for-linux-next drm-intel/for-linux-next-fixes drm-tip/drm-tip v6.13-rc2 v6.13-rc1 v6.12]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Dnyaneshwar-Bhadane/drm-i915-cx0_phy-Update-HDMI-TMDS-C20-algorithm-value/20241209-233928
base:   next-20241209
patch link:    https://lore.kernel.org/r/20241209153418.49580-1-dnyaneshwar.bhadane%40intel.com
patch subject: [PATCH v2] drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value
config: i386-buildonly-randconfig-005-20241210 (https://download.01.org/0day-ci/archive/20241210/202412100658.ach3jkpF-lkp@intel.com/config)
compiler: clang version 19.1.3 (https://github.com/llvm/llvm-project ab51eccf88f5321e7c60591c5546b254b6afab99)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241210/202412100658.ach3jkpF-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202412100658.ach3jkpF-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from drivers/gpu/drm/i915/display/intel_cx0_phy.c:13:
   In file included from drivers/gpu/drm/i915/display/intel_de.h:9:
   In file included from drivers/gpu/drm/i915/i915_drv.h:40:
   In file included from drivers/gpu/drm/i915/display/intel_display_core.h:16:
   In file included from include/drm/drm_connector.h:32:
   In file included from include/drm/drm_util.h:36:
   In file included from include/linux/kgdb.h:19:
   In file included from include/linux/kprobes.h:28:
   In file included from include/linux/ftrace.h:13:
   In file included from include/linux/kallsyms.h:13:
   In file included from include/linux/mm.h:2287:
   include/linux/vmstat.h:518:36: warning: arithmetic between different enumeration types ('enum node_stat_item' and 'enum lru_list') [-Wenum-enum-conversion]
     518 |         return node_stat_name(NR_LRU_BASE + lru) + 3; // skip "nr_"
         |                               ~~~~~~~~~~~ ^ ~~~
>> drivers/gpu/drm/i915/display/intel_cx0_phy.c:2193:13: warning: variable 'tx_misc' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
    2193 |         } else if (IS_METEORLAKE(to_i915(display->drm))) {
         |                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_drv.h:528:29: note: expanded from macro 'IS_METEORLAKE'
     528 | #define IS_METEORLAKE(i915) IS_PLATFORM(i915, INTEL_METEORLAKE)
         |                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_cx0_phy.c:2211:26: note: uninitialized use occurs here
    2211 |         return (C20_PHY_TX_MISC(tx_misc) |
         |                                 ^~~~~~~
   drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:291:73: note: expanded from macro 'C20_PHY_TX_MISC'
     291 | #define   C20_PHY_TX_MISC(val)          REG_FIELD_PREP16(C20_PHY_TX_MISC_MASK, (val))
         |                                                                                 ^~~
   drivers/gpu/drm/i915/i915_reg_defs.h:188:28: note: expanded from macro 'REG_FIELD_PREP16'
     188 |         ((u16)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +      \
         |                                   ^~~~~
   drivers/gpu/drm/i915/display/intel_cx0_phy.c:2193:9: note: remove the 'if' if its condition is always true
    2193 |         } else if (IS_METEORLAKE(to_i915(display->drm))) {
         |                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_cx0_phy.c:2182:13: note: initialize the variable 'tx_misc' to silence this warning
    2182 |         u16 tx_misc;
         |                    ^
         |                     = 0
>> drivers/gpu/drm/i915/display/intel_cx0_phy.c:2193:13: warning: variable 'tx_term_ctrl' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
    2193 |         } else if (IS_METEORLAKE(to_i915(display->drm))) {
         |                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_drv.h:528:29: note: expanded from macro 'IS_METEORLAKE'
     528 | #define IS_METEORLAKE(i915) IS_PLATFORM(i915, INTEL_METEORLAKE)
         |                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_cx0_phy.c:2213:47: note: uninitialized use occurs here
    2213 |                 C20_PHY_TX_DCC_BYPASS | C20_PHY_TX_TERM_CTL(tx_term_ctrl));
         |                                                             ^~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:297:80: note: expanded from macro 'C20_PHY_TX_TERM_CTL'
     297 | #define   C20_PHY_TX_TERM_CTL(val)      REG_FIELD_PREP16(C20_PHY_TX_TERM_CTL_MASK, (val))
         |                                                                                     ^~~
   drivers/gpu/drm/i915/i915_reg_defs.h:188:28: note: expanded from macro 'REG_FIELD_PREP16'
     188 |         ((u16)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +      \
         |                                   ^~~~~
   drivers/gpu/drm/i915/display/intel_cx0_phy.c:2193:9: note: remove the 'if' if its condition is always true
    2193 |         } else if (IS_METEORLAKE(to_i915(display->drm))) {
         |                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_cx0_phy.c:2184:18: note: initialize the variable 'tx_term_ctrl' to silence this warning
    2184 |         u16 tx_term_ctrl;
         |                         ^
         |                          = 0
   3 warnings generated.


vim +2193 drivers/gpu/drm/i915/display/intel_cx0_phy.c

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
> 2193		} else if (IS_METEORLAKE(to_i915(display->drm))) {
  2194			/*
  2195			 * Some SoCs have the same drm PCI IDs, so differentiate based
  2196			 * on the host bridge device ID to use the correct txx_mics value.
  2197			 */
  2198			while ((pdev = pci_get_class(PCI_CLASS_BRIDGE_HOST << 8, pdev)))
  2199				host_bridge_pci_dev_id = pdev->device;
  2200	
  2201			if (IS_METEORLAKE_U(to_i915(display->drm)) ||
  2202			    IS_ARROWLAKE_U(to_i915(display->drm)) ||
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
