Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3859BD739
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 21:48:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A2E710E17A;
	Tue,  5 Nov 2024 20:48:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aoKJ7YiE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E73710E17A;
 Tue,  5 Nov 2024 20:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730839731; x=1762375731;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=O+UCtqG1h9LcdLR0ShAEQ4c+93aZzXDmoLnxRFGQ5qY=;
 b=aoKJ7YiEKPixxNUGEuBy33rGgWemu+eS8sHJP5HSe5DpgtnSLx6UEfzW
 ux29pJSnd2il5CpSM6tatVHorfQHS1M5YYvOt5/il7Eo1kPZEuq/klYtE
 xxKZeiq7PM7bZiACi35p3K4GJDEJ1TOWnUDncv8T2EVQv1lCGv9nr2CIV
 CC6sjZN9gAL0CNjdfImdyugQN4QV/9jXQOEgtOjCAWu3hlyqYtojpRe9D
 nOTA0TwIaay0/9HKet7RGDcd0qttktdSj/U2Drhqg5N56+1QyxvtAj1cz
 mgPAg5mgpN0YQmB9+EvU4BX6t75mNKF9Gc0g3FOLhPvmzz+LZmqpmUs6b A==;
X-CSE-ConnectionGUID: h/HonsrMQ5OxtYZ6rv3QDg==
X-CSE-MsgGUID: epbU6q/8TfSisWT2AcmNwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="34307224"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="34307224"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 12:48:51 -0800
X-CSE-ConnectionGUID: rz0DLgUaTTW4UAXUGcXSng==
X-CSE-MsgGUID: LL8cV2+kRiaEZXd/rUVePA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="88117725"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa003.fm.intel.com with ESMTP; 05 Nov 2024 12:48:48 -0800
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t8QTl-000mSH-2m;
 Tue, 05 Nov 2024 20:48:45 +0000
Date: Wed, 6 Nov 2024 04:48:17 +0800
From: kernel test robot <lkp@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-xe@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH 2/9] drm/xe/display: Add intel_plane_initial_vblank_wait
Message-ID: <202411060402.TB3RmJ09-lkp@intel.com>
References: <20241105121857.17389-2-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241105121857.17389-2-maarten.lankhorst@linux.intel.com>
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

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-xe/drm-xe-next]
[also build test ERROR on next-20241105]
[cannot apply to linus/master drm-intel/for-linux-next drm-intel/for-linux-next-fixes drm-tip/drm-tip v6.12-rc6]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Maarten-Lankhorst/drm-xe-display-Add-intel_plane_initial_vblank_wait/20241105-202047
base:   https://gitlab.freedesktop.org/drm/xe/kernel.git drm-xe-next
patch link:    https://lore.kernel.org/r/20241105121857.17389-2-maarten.lankhorst%40linux.intel.com
patch subject: [PATCH 2/9] drm/xe/display: Add intel_plane_initial_vblank_wait
config: i386-defconfig (https://download.01.org/0day-ci/archive/20241106/202411060402.TB3RmJ09-lkp@intel.com/config)
compiler: clang version 19.1.3 (https://github.com/llvm/llvm-project ab51eccf88f5321e7c60591c5546b254b6afab99)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241106/202411060402.TB3RmJ09-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202411060402.TB3RmJ09-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from drivers/gpu/drm/i915/display/intel_plane_initial.c:8:
   In file included from drivers/gpu/drm/i915/i915_drv.h:40:
   In file included from drivers/gpu/drm/i915/display/intel_display_core.h:16:
   In file included from include/drm/drm_connector.h:32:
   In file included from include/drm/drm_util.h:36:
   In file included from include/linux/kgdb.h:19:
   In file included from include/linux/kprobes.h:28:
   In file included from include/linux/ftrace.h:13:
   In file included from include/linux/kallsyms.h:13:
   In file included from include/linux/mm.h:2213:
   include/linux/vmstat.h:518:36: warning: arithmetic between different enumeration types ('enum node_stat_item' and 'enum lru_list') [-Wenum-enum-conversion]
     518 |         return node_stat_name(NR_LRU_BASE + lru) + 3; // skip "nr_"
         |                               ~~~~~~~~~~~ ^ ~~~
>> drivers/gpu/drm/i915/display/intel_plane_initial.c:17:38: error: a parameter list without types is only allowed in a function definition
      17 | void intel_plane_initial_vblank_wait(plane);(struct intel_plane *plane)
         |                                      ^
>> drivers/gpu/drm/i915/display/intel_plane_initial.c:17:46: error: expected identifier or '('
      17 | void intel_plane_initial_vblank_wait(plane);(struct intel_plane *plane)
         |                                              ^
>> drivers/gpu/drm/i915/display/intel_plane_initial.c:17:46: error: expected ')'
   drivers/gpu/drm/i915/display/intel_plane_initial.c:17:45: note: to match this '('
      17 | void intel_plane_initial_vblank_wait(plane);(struct intel_plane *plane)
         |                                             ^
>> drivers/gpu/drm/i915/display/intel_plane_initial.c:448:4: error: call to undeclared function 'intel_initial_vblank_wait'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     448 |                         intel_initial_vblank_wait(crtc);
         |                         ^
   drivers/gpu/drm/i915/display/intel_plane_initial.c:448:4: note: did you mean 'intel_plane_initial_vblank_wait'?
   drivers/gpu/drm/i915/display/intel_plane_initial.h:11:6: note: 'intel_plane_initial_vblank_wait' declared here
      11 | void intel_plane_initial_vblank_wait(struct intel_plane *plane);
         |      ^
   1 warning and 4 errors generated.


vim +17 drivers/gpu/drm/i915/display/intel_plane_initial.c

    16	
  > 17	void intel_plane_initial_vblank_wait(plane);(struct intel_plane *plane)
    18	{
    19		struct intel_crtc *crtc = intel_crtc_for_pipe(to_intel_display(plane), plane->pipe);
    20	
    21		intel_crtc_wait_for_next_vblank(crtc);
    22	}
    23	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
