Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A0ACBA6E6
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Dec 2025 08:55:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D18CE10E127;
	Sat, 13 Dec 2025 07:55:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GdUTkX00";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E026C10E0E3;
 Sat, 13 Dec 2025 07:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765612517; x=1797148517;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=NeoYkpU2X9NvwGHugzR2oZV2mJPEPfPPIJHrbOTzf9A=;
 b=GdUTkX004SDyErXO0wa0VlCmtSI0+A/9gNBdmi+a7zbWZVt3a7FiBrWW
 cHAUJDcfsp4VW4mcun3lKXEwEX6qmRcBmAcuuWDEtRaG/03DjGLTg8gdN
 eQcQUUw5CD9cOIhVVbLQbsb2OQuD3z3TC++nxK6PTj78pb10XHsX5KNH1
 rsbV6uj3DWT/vcxh+ldQG560I3GiC/jHwf042jVEfFBtdehXKOgUTs2wB
 z6IEUv4owsEB46S6jJ2V4PfOdEi6NV0Q7v9Wm0pO02sI2hvt2HPRiMXaD
 2zqA2RhQ2SorRvKnHJhIqj/N+QOliA/fgV/59dJ1Ihd83baNokByUev4Z A==;
X-CSE-ConnectionGUID: Cx3oEZs+TjyMxtGo7bqvtg==
X-CSE-MsgGUID: 4uSJxSD3SaelQc5AB3hkeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="78243588"
X-IronPort-AV: E=Sophos;i="6.21,145,1763452800"; d="scan'208";a="78243588"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 23:55:16 -0800
X-CSE-ConnectionGUID: 6hMPXRPPT7mdAMLKFq1AlA==
X-CSE-MsgGUID: /OLBs6agSwmsPIInGK1Rkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,145,1763452800"; d="scan'208";a="227935856"
Received: from lkp-server01.sh.intel.com (HELO d335e3c6db51) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 12 Dec 2025 23:55:14 -0800
Received: from kbuild by d335e3c6db51 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vUKT9-000000007G1-3sYW;
 Sat, 13 Dec 2025 07:55:11 +0000
Date: Sat, 13 Dec 2025 15:54:22 +0800
From: kernel test robot <lkp@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, intel-xe@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev, intel-gfx@lists.freedesktop.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Maarten Lankhorst <dev@lankhorst.se>
Subject: Re: [CI-ONLY PATCH v2 11/12] PREEMPT_RT injection
Message-ID: <202512131535.uNC5btt9-lkp@intel.com>
References: <20251212143504.973839-25-dev@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251212143504.973839-25-dev@lankhorst.se>
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

Hi Maarten,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-tip/drm-tip]
[also build test WARNING on linus/master next-20251212]
[cannot apply to drm-i915/for-linux-next drm-i915/for-linux-next-fixes drm-xe/drm-xe-next v6.18]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Maarten-Lankhorst/drm-i915-display-Fix-intel_lpe_audio_irq_handler-for-PREEMPT-RT/20251213-023952
base:   https://gitlab.freedesktop.org/drm/tip.git drm-tip
patch link:    https://lore.kernel.org/r/20251212143504.973839-25-dev%40lankhorst.se
patch subject: [CI-ONLY PATCH v2 11/12] PREEMPT_RT injection
config: i386-randconfig-002-20251213 (https://download.01.org/0day-ci/archive/20251213/202512131535.uNC5btt9-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251213/202512131535.uNC5btt9-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202512131535.uNC5btt9-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from arch/x86/include/asm/uprobes.h:13,
                    from include/linux/uprobes.h:66,
                    from include/linux/mm_types.h:16,
                    from include/linux/mmzone.h:22,
                    from include/linux/gfp.h:7,
                    from include/linux/slab.h:16,
                    from include/linux/resource_ext.h:11,
                    from include/linux/acpi.h:13,
                    from drivers/platform/x86/lenovo/wmi-gamezone.c:11:
>> drivers/platform/x86/lenovo/wmi-gamezone.c:34:31: warning: 'gz_chain_head' defined but not used [-Wunused-variable]
      34 | static BLOCKING_NOTIFIER_HEAD(gz_chain_head);
         |                               ^~~~~~~~~~~~~
   include/linux/notifier.h:119:39: note: in definition of macro 'BLOCKING_NOTIFIER_HEAD'
     119 |         struct blocking_notifier_head name =                    \
         |                                       ^~~~


vim +/gz_chain_head +34 drivers/platform/x86/lenovo/wmi-gamezone.c

22024ac5366f06 Derek J. Clark 2025-07-01  33  
22024ac5366f06 Derek J. Clark 2025-07-01 @34  static BLOCKING_NOTIFIER_HEAD(gz_chain_head);
22024ac5366f06 Derek J. Clark 2025-07-01  35  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
