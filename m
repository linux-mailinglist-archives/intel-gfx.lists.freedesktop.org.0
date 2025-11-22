Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3027C7D341
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Nov 2025 16:45:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 139A410E087;
	Sat, 22 Nov 2025 15:45:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PAk1Jkv+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54E7410E087;
 Sat, 22 Nov 2025 15:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763826298; x=1795362298;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=e5/XApYQnCyZ1UzlF0SJp/yzzutDs9g5rpZSdaaMHME=;
 b=PAk1Jkv+x+kQOLupTEpCuUas+hKTW1rLhKMCVPuwh5QbuY0WrEJiV5O6
 HkApJhB89RBKcvGAOAMkXsN09OZxWmMv/02sxEet8dXBbyATrMacoV5hU
 mC5kX+GsDGcKlkBhlPdLcQfoPGlFzPmyEMd7dGKyc28Q7fmgu/uF2zxm/
 em7o70zIFscrLNUZ9Zsm0epAFLp4DgFiAFmm0Wl+Bb+vlAcVeQKpPqxL/
 fdO0IjSV+Y3GduqkiawXTFOUv56oyt1ElodANI7a1AxO4yyH+RrYTF1IB
 F32GRh1m+4XwEr2wVPnDUir/0uYSW2yESgYbdkh9K9dFWSWWwR79k16u9 w==;
X-CSE-ConnectionGUID: +M2n83f6QUKPBCDyd0S99Q==
X-CSE-MsgGUID: yvCAbtKYQI+FwE2YztCm1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11621"; a="77257067"
X-IronPort-AV: E=Sophos;i="6.20,218,1758610800"; d="scan'208";a="77257067"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2025 07:44:58 -0800
X-CSE-ConnectionGUID: XgTI6IAeSzeh+Up0vEC+iQ==
X-CSE-MsgGUID: VlqsZCjlTRms8uElG3diSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,218,1758610800"; d="scan'208";a="196106438"
Received: from lkp-server01.sh.intel.com (HELO adf6d29aa8d9) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 22 Nov 2025 07:44:57 -0800
Received: from kbuild by adf6d29aa8d9 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vMpnB-0007dL-0i;
 Sat, 22 Nov 2025 15:44:53 +0000
Date: Sat, 22 Nov 2025 23:43:56 +0800
From: kernel test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev, jani.nikula@intel.com
Subject: Re: [PATCH 4/5] drm/i915/power: convert intel_wakeref_t to struct
 ref_tracker *
Message-ID: <202511222310.DfmWio5k-lkp@intel.com>
References: <dcbcf50f10aa2c2371b24859c55369dfda701b5c.1763729370.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <dcbcf50f10aa2c2371b24859c55369dfda701b5c.1763729370.git.jani.nikula@intel.com>
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

kernel test robot noticed the following build errors:

[auto build test ERROR on next-20251121]
[cannot apply to drm-xe/drm-xe-next drm-intel/for-linux-next drm-intel/for-linux-next-fixes drm-tip/drm-tip v6.18-rc6 v6.18-rc5 v6.18-rc4 linus/master v6.18-rc6]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jani-Nikula/drm-i915-pps-drop-wakeref-parameter-from-with_intel_pps_lock/20251121-205435
base:   next-20251121
patch link:    https://lore.kernel.org/r/dcbcf50f10aa2c2371b24859c55369dfda701b5c.1763729370.git.jani.nikula%40intel.com
patch subject: [PATCH 4/5] drm/i915/power: convert intel_wakeref_t to struct ref_tracker *
config: x86_64-defconfig (https://download.01.org/0day-ci/archive/20251122/202511222310.DfmWio5k-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251122/202511222310.DfmWio5k-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202511222310.DfmWio5k-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from drivers/gpu/drm/i915/i915_driver.c:58:
   drivers/gpu/drm/i915/display/intel_display_power.h: In function 'intel_display_power_put_async':
>> drivers/gpu/drm/i915/display/intel_display_power.h:236:58: error: 'INTEL_WAKEREF_DEF' undeclared (first use in this function)
     236 |         __intel_display_power_put_async(display, domain, INTEL_WAKEREF_DEF, -1);
         |                                                          ^~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_display_power.h:236:58: note: each undeclared identifier is reported only once for each function it appears in
   drivers/gpu/drm/i915/display/intel_display_power.h: In function 'intel_display_power_put_async_delay':
   drivers/gpu/drm/i915/display/intel_display_power.h:245:58: error: 'INTEL_WAKEREF_DEF' undeclared (first use in this function)
     245 |         __intel_display_power_put_async(display, domain, INTEL_WAKEREF_DEF, delay_ms);
         |                                                          ^~~~~~~~~~~~~~~~~
--
   In file included from drivers/gpu/drm/i915/soc/../display/intel_display_core.h:23,
                    from drivers/gpu/drm/i915/soc/intel_dram.c:11:
   drivers/gpu/drm/i915/soc/../display/intel_display_power.h: In function 'intel_display_power_put_async':
>> drivers/gpu/drm/i915/soc/../display/intel_display_power.h:236:58: error: 'INTEL_WAKEREF_DEF' undeclared (first use in this function)
     236 |         __intel_display_power_put_async(display, domain, INTEL_WAKEREF_DEF, -1);
         |                                                          ^~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/soc/../display/intel_display_power.h:236:58: note: each undeclared identifier is reported only once for each function it appears in
   drivers/gpu/drm/i915/soc/../display/intel_display_power.h: In function 'intel_display_power_put_async_delay':
   drivers/gpu/drm/i915/soc/../display/intel_display_power.h:245:58: error: 'INTEL_WAKEREF_DEF' undeclared (first use in this function)
     245 |         __intel_display_power_put_async(display, domain, INTEL_WAKEREF_DEF, delay_ms);
         |                                                          ^~~~~~~~~~~~~~~~~


vim +/INTEL_WAKEREF_DEF +236 drivers/gpu/drm/i915/display/intel_display_power.h

7645b19d9bdd13 drivers/gpu/drm/i915/intel_display_power.h         Daniele Ceraolo Spurio 2019-05-31  230  
7645b19d9bdd13 drivers/gpu/drm/i915/intel_display_power.h         Daniele Ceraolo Spurio 2019-05-31  231  static inline void
5dcfda5cfa4261 drivers/gpu/drm/i915/display/intel_display_power.h Ville Syrjälä          2025-02-06  232  intel_display_power_put_async(struct intel_display *display,
7645b19d9bdd13 drivers/gpu/drm/i915/intel_display_power.h         Daniele Ceraolo Spurio 2019-05-31  233  			      enum intel_display_power_domain domain,
86347573213953 drivers/gpu/drm/i915/display/intel_display_power.h Jani Nikula            2025-11-21  234  			      struct ref_tracker *wakeref)
7645b19d9bdd13 drivers/gpu/drm/i915/intel_display_power.h         Daniele Ceraolo Spurio 2019-05-31  235  {
5dcfda5cfa4261 drivers/gpu/drm/i915/display/intel_display_power.h Ville Syrjälä          2025-02-06 @236  	__intel_display_power_put_async(display, domain, INTEL_WAKEREF_DEF, -1);
caacfe31d64d78 drivers/gpu/drm/i915/display/intel_display_power.h Imre Deak              2023-06-16  237  }
caacfe31d64d78 drivers/gpu/drm/i915/display/intel_display_power.h Imre Deak              2023-06-16  238  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
