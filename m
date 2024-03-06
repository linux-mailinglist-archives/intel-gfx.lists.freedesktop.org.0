Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52053872DA1
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 04:47:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92251112E7C;
	Wed,  6 Mar 2024 03:47:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CNQ4QNoS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78956112E7C
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 03:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709696831; x=1741232831;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=2g9lpaJz+mN9jhADpSQIliscSIks4enWoICd6/ZJ3hw=;
 b=CNQ4QNoSUABzOrQeQewQKOMtRZ9Iw8viMCDGHarqp9onrulWYibTBYhj
 375i2vqGfNIvsQyTTxeWir+EKeMP2ewKJGqQ7oskwMKypf1qTQKOjdlRz
 EzJYNzPr6njm/BtEohWBPWPvhDhqpYHRkzK0h1Nnnd1Pcz9M8J5Cglin0
 B08J2wgCK56T5uf2FzrKs7d6UKMUguf7/iu6Cvv6Frs9FAdFWg+DfAEhV
 r8UEPvsQWiSkGbEKyFNXejWZ1El779YQmGFMThuPdA2vPczoaovlj4c7u
 uF2Ju+l1xuNMvjyRUA44+3wVt+PSK9ddNp2Hz5qbbCPuLuq9SkVpa7WYE A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="15701625"
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; d="scan'208";a="15701625"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 19:47:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; 
   d="scan'208";a="9585068"
Received: from lkp-server01.sh.intel.com (HELO b21307750695) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 05 Mar 2024 19:47:09 -0800
Received: from kbuild by b21307750695 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rhiFG-0003t3-0T;
 Wed, 06 Mar 2024 03:47:06 +0000
Date: Wed, 6 Mar 2024 11:46:27 +0800
From: kernel test robot <lkp@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH v3 3/5] drm/i915/psr: Calculate IO wake and fast wake
 lines for DISPLAY_VER < 12
Message-ID: <202403061144.nXW1e72o-lkp@intel.com>
References: <20240305120458.1275218-4-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240305120458.1275218-4-jouni.hogander@intel.com>
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

Hi Jouni,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on drm-tip/drm-tip next-20240305]
[cannot apply to drm-intel/for-linux-next-fixes linus/master v6.8-rc7]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jouni-H-gander/drm-i915-display-Make-intel_dp_aux_fw_sync_len-available-for-PSR-code/20240305-200753
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20240305120458.1275218-4-jouni.hogander%40intel.com
patch subject: [PATCH v3 3/5] drm/i915/psr: Calculate IO wake and fast wake lines for DISPLAY_VER < 12
config: s390-allmodconfig (https://download.01.org/0day-ci/archive/20240306/202403061144.nXW1e72o-lkp@intel.com/config)
compiler: clang version 19.0.0git (https://github.com/llvm/llvm-project 325f51237252e6dab8e4e1ea1fa7acbb4faee1cd)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240306/202403061144.nXW1e72o-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202403061144.nXW1e72o-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from include/linux/elf.h:6:
   In file included from arch/s390/include/asm/elf.h:173:
   In file included from arch/s390/include/asm/mmu_context.h:11:
   In file included from arch/s390/include/asm/pgalloc.h:18:
   In file included from include/linux/mm.h:2188:
   include/linux/vmstat.h:508:43: warning: arithmetic between different enumeration types ('enum zone_stat_item' and 'enum numa_stat_item') [-Wenum-enum-conversion]
     508 |         return vmstat_text[NR_VM_ZONE_STAT_ITEMS +
         |                            ~~~~~~~~~~~~~~~~~~~~~ ^
     509 |                            item];
         |                            ~~~~
   include/linux/vmstat.h:515:43: warning: arithmetic between different enumeration types ('enum zone_stat_item' and 'enum numa_stat_item') [-Wenum-enum-conversion]
     515 |         return vmstat_text[NR_VM_ZONE_STAT_ITEMS +
         |                            ~~~~~~~~~~~~~~~~~~~~~ ^
     516 |                            NR_VM_NUMA_EVENT_ITEMS +
         |                            ~~~~~~~~~~~~~~~~~~~~~~
   include/linux/vmstat.h:522:36: warning: arithmetic between different enumeration types ('enum node_stat_item' and 'enum lru_list') [-Wenum-enum-conversion]
     522 |         return node_stat_name(NR_LRU_BASE + lru) + 3; // skip "nr_"
         |                               ~~~~~~~~~~~ ^ ~~~
   include/linux/vmstat.h:527:43: warning: arithmetic between different enumeration types ('enum zone_stat_item' and 'enum numa_stat_item') [-Wenum-enum-conversion]
     527 |         return vmstat_text[NR_VM_ZONE_STAT_ITEMS +
         |                            ~~~~~~~~~~~~~~~~~~~~~ ^
     528 |                            NR_VM_NUMA_EVENT_ITEMS +
         |                            ~~~~~~~~~~~~~~~~~~~~~~
   include/linux/vmstat.h:536:43: warning: arithmetic between different enumeration types ('enum zone_stat_item' and 'enum numa_stat_item') [-Wenum-enum-conversion]
     536 |         return vmstat_text[NR_VM_ZONE_STAT_ITEMS +
         |                            ~~~~~~~~~~~~~~~~~~~~~ ^
     537 |                            NR_VM_NUMA_EVENT_ITEMS +
         |                            ~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/gpu/drm/i915/display/intel_psr.c:28:
   In file included from drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h:15:
   In file included from drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h:11:
   In file included from drivers/gpu/drm/xe/xe_bo.h:11:
   In file included from drivers/gpu/drm/xe/xe_bo_types.h:9:
   In file included from include/linux/iosys-map.h:10:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:78:
   include/asm-generic/io.h:547:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     547 |         val = __raw_readb(PCI_IOBASE + addr);
         |                           ~~~~~~~~~~ ^
   include/asm-generic/io.h:560:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     560 |         val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
         |                                                         ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:37:59: note: expanded from macro '__le16_to_cpu'
      37 | #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
         |                                                           ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
     102 | #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
         |                                                      ^
   In file included from drivers/gpu/drm/i915/display/intel_psr.c:28:
   In file included from drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h:15:
   In file included from drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h:11:
   In file included from drivers/gpu/drm/xe/xe_bo.h:11:
   In file included from drivers/gpu/drm/xe/xe_bo_types.h:9:
   In file included from include/linux/iosys-map.h:10:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:78:
   include/asm-generic/io.h:573:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     573 |         val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
         |                                                         ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:35:59: note: expanded from macro '__le32_to_cpu'
      35 | #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
         |                                                           ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
     115 | #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
         |                                                      ^
   In file included from drivers/gpu/drm/i915/display/intel_psr.c:28:
   In file included from drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h:15:
   In file included from drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h:11:
   In file included from drivers/gpu/drm/xe/xe_bo.h:11:
   In file included from drivers/gpu/drm/xe/xe_bo_types.h:9:
   In file included from include/linux/iosys-map.h:10:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:78:
   include/asm-generic/io.h:584:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     584 |         __raw_writeb(value, PCI_IOBASE + addr);
         |                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:594:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     594 |         __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
         |                                                       ~~~~~~~~~~ ^
   include/asm-generic/io.h:604:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     604 |         __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
         |                                                       ~~~~~~~~~~ ^
   include/asm-generic/io.h:692:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     692 |         readsb(PCI_IOBASE + addr, buffer, count);
         |                ~~~~~~~~~~ ^
   include/asm-generic/io.h:700:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     700 |         readsw(PCI_IOBASE + addr, buffer, count);
         |                ~~~~~~~~~~ ^
   include/asm-generic/io.h:708:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     708 |         readsl(PCI_IOBASE + addr, buffer, count);
         |                ~~~~~~~~~~ ^
   include/asm-generic/io.h:717:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     717 |         writesb(PCI_IOBASE + addr, buffer, count);
         |                 ~~~~~~~~~~ ^
   include/asm-generic/io.h:726:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     726 |         writesw(PCI_IOBASE + addr, buffer, count);
         |                 ~~~~~~~~~~ ^
   include/asm-generic/io.h:735:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     735 |         writesl(PCI_IOBASE + addr, buffer, count);
         |                 ~~~~~~~~~~ ^
>> drivers/gpu/drm/i915/display/intel_psr.c:1181:6: warning: variable 'io_wake_time' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
    1181 |         if (DISPLAY_VER(i915) >= 9) {
         |             ^~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_display_device.h:104:27: note: expanded from macro 'DISPLAY_VER'
     104 | #define DISPLAY_VER(i915)       (DISPLAY_RUNTIME_INFO(i915)->ip.ver)
         |                                 ^
   drivers/gpu/drm/i915/display/intel_psr.c:1201:34: note: uninitialized use occurs here
    1201 |                 &crtc_state->hw.adjusted_mode, io_wake_time);
         |                                                ^~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_psr.c:1181:2: note: remove the 'if' if its condition is always true
    1181 |         if (DISPLAY_VER(i915) >= 9) {
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_psr.c:1178:33: note: initialize the variable 'io_wake_time' to silence this warning
    1178 |         int io_wake_lines, io_wake_time, fast_wake_lines, fast_wake_time;
         |                                        ^
         |                                         = 0
>> drivers/gpu/drm/i915/display/intel_psr.c:1181:6: warning: variable 'fast_wake_time' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
    1181 |         if (DISPLAY_VER(i915) >= 9) {
         |             ^~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_display_device.h:104:27: note: expanded from macro 'DISPLAY_VER'
     104 | #define DISPLAY_VER(i915)       (DISPLAY_RUNTIME_INFO(i915)->ip.ver)
         |                                 ^
   drivers/gpu/drm/i915/display/intel_psr.c:1203:34: note: uninitialized use occurs here
    1203 |                 &crtc_state->hw.adjusted_mode, fast_wake_time);
         |                                                ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_psr.c:1181:2: note: remove the 'if' if its condition is always true
    1181 |         if (DISPLAY_VER(i915) >= 9) {
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_psr.c:1178:66: note: initialize the variable 'fast_wake_time' to silence this warning
    1178 |         int io_wake_lines, io_wake_time, fast_wake_lines, fast_wake_time;
         |                                                                         ^
         |                                                                          = 0
   19 warnings generated.


vim +1181 drivers/gpu/drm/i915/display/intel_psr.c

  1173	
  1174	static bool _compute_alpm_params(struct intel_dp *intel_dp,
  1175					 struct intel_crtc_state *crtc_state)
  1176	{
  1177		struct drm_i915_private *i915 = dp_to_i915(intel_dp);
  1178		int io_wake_lines, io_wake_time, fast_wake_lines, fast_wake_time;
  1179		u8 max_wake_lines;
  1180	
> 1181		if (DISPLAY_VER(i915) >= 9) {
  1182			int io_buffer_wake_time = get_io_buffer_wake_time(crtc_state);
  1183			int tfw_exit_latency = 20; /* eDP spec */
  1184			int phy_wake = 4;	   /* eDP spec */
  1185			int preamble = 8;	   /* eDP spec */
  1186			int precharge = intel_dp_aux_fw_sync_len() - preamble;
  1187	
  1188			io_wake_time = max(precharge, io_buffer_wake_time) + preamble +
  1189				phy_wake + tfw_exit_latency;
  1190			fast_wake_time = precharge + preamble + phy_wake +
  1191				tfw_exit_latency;
  1192		}
  1193	
  1194		if (DISPLAY_VER(i915) >= 12)
  1195			/* TODO: Check how we can use ALPM_CTL fast wake extended field */
  1196			max_wake_lines = 12;
  1197		else
  1198			max_wake_lines = 8;
  1199	
  1200		io_wake_lines = intel_usecs_to_scanlines(
  1201			&crtc_state->hw.adjusted_mode, io_wake_time);
  1202		fast_wake_lines = intel_usecs_to_scanlines(
  1203			&crtc_state->hw.adjusted_mode, fast_wake_time);
  1204	
  1205		if (io_wake_lines > max_wake_lines ||
  1206		    fast_wake_lines > max_wake_lines)
  1207			return false;
  1208	
  1209		if (!_lnl_compute_alpm_params(intel_dp, crtc_state))
  1210			return false;
  1211	
  1212		if (i915->display.params.psr_safest_params)
  1213			io_wake_lines = fast_wake_lines = max_wake_lines;
  1214	
  1215		/* According to Bspec lower limit should be set as 7 lines. */
  1216		intel_dp->psr.alpm_parameters.io_wake_lines = max(io_wake_lines, 7);
  1217		intel_dp->psr.alpm_parameters.fast_wake_lines = max(fast_wake_lines, 7);
  1218	
  1219		return true;
  1220	}
  1221	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
