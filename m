Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A769BFC03
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 02:54:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABA2E10E214;
	Thu,  7 Nov 2024 01:54:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="magZJ8ep";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8967910E0BF;
 Thu,  7 Nov 2024 01:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730944489; x=1762480489;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=w+Y6Lwf5JDYY0/xIq9e6Dah7/yW1euPbJSUJGLOOlIY=;
 b=magZJ8eprPjIkFKlOUO+CZ8Y4U/J2CwWPJ+PjfMMFyhnNnUqKJuthcUT
 Wf37dH40MBLSnvlcLlnbiUsV2Ac3rqi3VCsIxfxkdpo0RGB/G1/H9EV5P
 4bf+BPgDZGZrINFkihIWHjNc7W3Xh9Tez89o+zzbQp6Jv5VEpIOHdUIOR
 7mdwopcyVRAeT2H6oMy8XOOpog8L29QJ8sIGnn/h3qiiC/pBToVrwtBk2
 PCrvHdp54SoVM8V6zLw5ZxeYAwbVoGU54Acqi5n8tBQf//XHSA+3v0zAK
 B6JXMrGZhMDdKcCdcj1fnTN0JvrxSH6zun70UF/RVgUdJV2iv/l6wweGn g==;
X-CSE-ConnectionGUID: OoHz/2woRNqdBXIBtOUAHw==
X-CSE-MsgGUID: cwh2TuhIQr2m0mYk1286ZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="41392275"
X-IronPort-AV: E=Sophos;i="6.11,264,1725346800"; d="scan'208";a="41392275"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 17:54:49 -0800
X-CSE-ConnectionGUID: eJvCJw2rQre2GD14Rj2awQ==
X-CSE-MsgGUID: S6GF0vGjSoSiw853pHJvgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,264,1725346800"; d="scan'208";a="84823236"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 06 Nov 2024 17:54:46 -0800
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t8rjQ-000peU-1c;
 Thu, 07 Nov 2024 01:54:44 +0000
Date: Thu, 7 Nov 2024 09:54:24 +0800
From: kernel test robot <lkp@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 matthew.d.roper@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/hdcp: Handle HDCP Line Rekeying for HDCP 1.4
Message-ID: <202411070920.hut0uhH0-lkp@intel.com>
References: <20241106174041.860223-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241106174041.860223-1-suraj.kandpal@intel.com>
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

Hi Suraj,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on next-20241106]
[cannot apply to linus/master drm-intel/for-linux-next-fixes drm-tip/drm-tip v6.12-rc6]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Suraj-Kandpal/drm-i915-hdcp-Handle-HDCP-Line-Rekeying-for-HDCP-1-4/20241107-015848
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20241106174041.860223-1-suraj.kandpal%40intel.com
patch subject: [PATCH] drm/i915/hdcp: Handle HDCP Line Rekeying for HDCP 1.4
config: i386-defconfig (https://download.01.org/0day-ci/archive/20241107/202411070920.hut0uhH0-lkp@intel.com/config)
compiler: clang version 19.1.3 (https://github.com/llvm/llvm-project ab51eccf88f5321e7c60591c5546b254b6afab99)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241107/202411070920.hut0uhH0-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202411070920.hut0uhH0-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from drivers/gpu/drm/i915/display/intel_hdcp.c:12:
   In file included from include/linux/i2c.h:19:
   In file included from include/linux/regulator/consumer.h:35:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:21:
   In file included from include/linux/mm.h:2213:
   include/linux/vmstat.h:518:36: warning: arithmetic between different enumeration types ('enum node_stat_item' and 'enum lru_list') [-Wenum-enum-conversion]
     518 |         return node_stat_name(NR_LRU_BASE + lru) + 3; // skip "nr_"
         |                               ~~~~~~~~~~~ ^ ~~~
   drivers/gpu/drm/i915/display/intel_hdcp.c:54:13: warning: variable 'rekey_bit' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
      54 |         } else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER)) {
         |                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_display_device.h:211:2: note: expanded from macro 'IS_DISPLAY_VERx100_STEP'
     211 |         (IS_DISPLAY_VERx100((__i915), (ipver), (ipver)) && \
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     212 |          IS_DISPLAY_STEP((__i915), (from), (until)))
         |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_hdcp.c:59:35: note: uninitialized use occurs here
      59 |         intel_de_rmw(display, rekey_reg, rekey_bit, enable ? 0 : rekey_bit);
         |                                          ^~~~~~~~~
   drivers/gpu/drm/i915/display/intel_de.h:109:67: note: expanded from macro 'intel_de_rmw'
     109 | #define intel_de_rmw(p,...) __intel_de_rmw(__to_intel_display(p), __VA_ARGS__)
         |                                                                   ^~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_hdcp.c:54:9: note: remove the 'if' if its condition is always true
      54 |         } else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER)) {
         |                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_hdcp.c:54:13: warning: variable 'rekey_bit' is used uninitialized whenever '&&' condition is false [-Wsometimes-uninitialized]
      54 |         } else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER)) {
         |                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_display_device.h:211:3: note: expanded from macro 'IS_DISPLAY_VERx100_STEP'
     211 |         (IS_DISPLAY_VERx100((__i915), (ipver), (ipver)) && \
         |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_display_device.h:190:49: note: expanded from macro 'IS_DISPLAY_VERx100'
     190 | #define IS_DISPLAY_VERx100(__i915, from, until) ( \
         |                                                 ^~~
     191 |         BUILD_BUG_ON_ZERO((from) < 200) + \
         |         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     192 |         (DISPLAY_VERx100(__i915) >= (from) && \
         |         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     193 |          DISPLAY_VERx100(__i915) <= (until)))
         |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_hdcp.c:59:35: note: uninitialized use occurs here
      59 |         intel_de_rmw(display, rekey_reg, rekey_bit, enable ? 0 : rekey_bit);
         |                                          ^~~~~~~~~
   drivers/gpu/drm/i915/display/intel_de.h:109:67: note: expanded from macro 'intel_de_rmw'
     109 | #define intel_de_rmw(p,...) __intel_de_rmw(__to_intel_display(p), __VA_ARGS__)
         |                                                                   ^~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_hdcp.c:54:13: note: remove the '&&' if its condition is always true
      54 |         } else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER)) {
         |                    ^
   drivers/gpu/drm/i915/display/intel_display_device.h:211:3: note: expanded from macro 'IS_DISPLAY_VERx100_STEP'
     211 |         (IS_DISPLAY_VERx100((__i915), (ipver), (ipver)) && \
         |          ^
   drivers/gpu/drm/i915/display/intel_display_device.h:190:49: note: expanded from macro 'IS_DISPLAY_VERx100'
     190 | #define IS_DISPLAY_VERx100(__i915, from, until) ( \
         |                                                 ^
   drivers/gpu/drm/i915/display/intel_hdcp.c:41:15: note: initialize the variable 'rekey_bit' to silence this warning
      41 |         u32 rekey_bit;
         |                      ^
         |                       = 0
>> drivers/gpu/drm/i915/display/intel_hdcp.c:54:13: warning: variable 'rekey_reg' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
      54 |         } else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER)) {
         |                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_display_device.h:211:2: note: expanded from macro 'IS_DISPLAY_VERx100_STEP'
     211 |         (IS_DISPLAY_VERx100((__i915), (ipver), (ipver)) && \
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     212 |          IS_DISPLAY_STEP((__i915), (from), (until)))
         |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_hdcp.c:59:24: note: uninitialized use occurs here
      59 |         intel_de_rmw(display, rekey_reg, rekey_bit, enable ? 0 : rekey_bit);
         |                               ^~~~~~~~~
   drivers/gpu/drm/i915/display/intel_de.h:109:67: note: expanded from macro 'intel_de_rmw'
     109 | #define intel_de_rmw(p,...) __intel_de_rmw(__to_intel_display(p), __VA_ARGS__)
         |                                                                   ^~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_hdcp.c:54:9: note: remove the 'if' if its condition is always true
      54 |         } else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER)) {
         |                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/display/intel_hdcp.c:54:13: warning: variable 'rekey_reg' is used uninitialized whenever '&&' condition is false [-Wsometimes-uninitialized]
      54 |         } else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER)) {
         |                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_display_device.h:211:3: note: expanded from macro 'IS_DISPLAY_VERx100_STEP'
     211 |         (IS_DISPLAY_VERx100((__i915), (ipver), (ipver)) && \
         |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_display_device.h:190:49: note: expanded from macro 'IS_DISPLAY_VERx100'
     190 | #define IS_DISPLAY_VERx100(__i915, from, until) ( \
         |                                                 ^~~
     191 |         BUILD_BUG_ON_ZERO((from) < 200) + \
         |         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     192 |         (DISPLAY_VERx100(__i915) >= (from) && \
         |         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     193 |          DISPLAY_VERx100(__i915) <= (until)))
         |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_hdcp.c:59:24: note: uninitialized use occurs here
      59 |         intel_de_rmw(display, rekey_reg, rekey_bit, enable ? 0 : rekey_bit);
         |                               ^~~~~~~~~
   drivers/gpu/drm/i915/display/intel_de.h:109:67: note: expanded from macro 'intel_de_rmw'
     109 | #define intel_de_rmw(p,...) __intel_de_rmw(__to_intel_display(p), __VA_ARGS__)
         |                                                                   ^~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_hdcp.c:54:13: note: remove the '&&' if its condition is always true
      54 |         } else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER)) {
         |                    ^
   drivers/gpu/drm/i915/display/intel_display_device.h:211:3: note: expanded from macro 'IS_DISPLAY_VERx100_STEP'
     211 |         (IS_DISPLAY_VERx100((__i915), (ipver), (ipver)) && \
         |          ^
   drivers/gpu/drm/i915/display/intel_display_device.h:190:49: note: expanded from macro 'IS_DISPLAY_VERx100'
     190 | #define IS_DISPLAY_VERx100(__i915, from, until) ( \
         |                                                 ^
   drivers/gpu/drm/i915/display/intel_hdcp.c:40:2: note: variable 'rekey_reg' is declared here
      40 |         i915_reg_t rekey_reg;
         |         ^
   5 warnings generated.


vim +54 drivers/gpu/drm/i915/display/intel_hdcp.c

    33	
    34	static void
    35	intel_hdcp_adjust_hdcp_line_rekeying(struct intel_encoder *encoder,
    36					     struct intel_hdcp *hdcp,
    37					     bool enable)
    38	{
    39		struct intel_display *display = to_intel_display(encoder);
    40		i915_reg_t rekey_reg;
    41		u32 rekey_bit;
    42	
    43		/* Here we assume HDMI is in TMDS mode of operation */
    44		if (encoder->type != INTEL_OUTPUT_HDMI)
    45			return;
    46	
    47		if (DISPLAY_VER(display) >= 30) {
    48			rekey_reg = TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder);
    49			rekey_bit = XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE;
    50		} else if (IS_DISPLAY_VERx100_STEP(display, 1401, STEP_B0, STEP_FOREVER) ||
    51			   IS_DISPLAY_VERx100_STEP(display, 2000, STEP_B0, STEP_FOREVER)) {
    52			rekey_reg = TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder);
    53			rekey_bit = TRANS_DDI_HDCP_LINE_REKEY_DISABLE;
  > 54		} else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER)) {
    55			rekey_reg = MTL_CHICKEN_TRANS(hdcp->cpu_transcoder);
    56			rekey_bit = HDCP_LINE_REKEY_DISABLE;
    57		}
    58	
    59		intel_de_rmw(display, rekey_reg, rekey_bit, enable ? 0 : rekey_bit);
    60	}
    61	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
