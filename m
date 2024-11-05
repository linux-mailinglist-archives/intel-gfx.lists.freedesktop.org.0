Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7E89BD0FD
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 16:48:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2055C10E5D1;
	Tue,  5 Nov 2024 15:48:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l6x7tVcy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44B8F10E5D1;
 Tue,  5 Nov 2024 15:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730821716; x=1762357716;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=YT2JKa3kkPwuB0xLRZSA+kBWJ8dFFCSXUhXIgwTnLYg=;
 b=l6x7tVcy0ak/w4te1gkSeoV9PIVAN7C55MIpYuOqTZ/6TZIBz0zGohX1
 JEEeFqnEwktNyKb2CHpET1ljThUvJ1gmdv7M0WcwCEWDl/SjYQeOL3kIj
 EebVl8lhJXNHtAsxygeF8YNeU9+LiydxKCuXDTkFoh30lzSaBGqwuil2j
 ps5vIwudXXIYoAC2UrUmg81jxbRW3mU7V3VvvMeryIqDUH8FMpFmG0pwt
 Ls44TbPQrt0T/GAkOzIn/j+CwJzfbPYAYE0xsCTqIqp++f4nH6wB34OAX
 m7oFmI8VRAPQsxAyE6hQMOO6T5eyWxPky8IYimpoD0BOt106qezShijMv w==;
X-CSE-ConnectionGUID: /8+YMI4JSw2CrpwR4IPsoQ==
X-CSE-MsgGUID: 9IYO+dVWTC+nE3do026h1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="41171351"
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="41171351"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 07:48:36 -0800
X-CSE-ConnectionGUID: mg9MxA7gQzqkUGtbGoL4pg==
X-CSE-MsgGUID: CWHrvgKFT9WCa6N7Egz2Pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="83955804"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 05 Nov 2024 07:48:34 -0800
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t8LnE-000mBv-18;
 Tue, 05 Nov 2024 15:48:32 +0000
Date: Tue, 5 Nov 2024 23:47:37 +0800
From: kernel test robot <lkp@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-xe@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev, intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH 2/9] drm/xe/display: Add intel_plane_initial_vblank_wait
Message-ID: <202411052327.1vYXqtrV-lkp@intel.com>
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
config: x86_64-rhel-8.3 (https://download.01.org/0day-ci/archive/20241105/202411052327.1vYXqtrV-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241105/202411052327.1vYXqtrV-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202411052327.1vYXqtrV-lkp@intel.com/

All error/warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_plane_initial.c:17:1: warning: parameter names (without types) in function declaration
      17 | void intel_plane_initial_vblank_wait(plane);(struct intel_plane *plane)
         | ^~~~
>> drivers/gpu/drm/i915/display/intel_plane_initial.c:17:46: error: expected identifier or '(' before 'struct'
      17 | void intel_plane_initial_vblank_wait(plane);(struct intel_plane *plane)
         |                                              ^~~~~~
   drivers/gpu/drm/i915/display/intel_plane_initial.c: In function 'intel_initial_plane_config':
>> drivers/gpu/drm/i915/display/intel_plane_initial.c:448:25: error: implicit declaration of function 'intel_initial_vblank_wait'; did you mean 'intel_plane_initial_vblank_wait'? [-Werror=implicit-function-declaration]
     448 |                         intel_initial_vblank_wait(crtc);
         |                         ^~~~~~~~~~~~~~~~~~~~~~~~~
         |                         intel_plane_initial_vblank_wait
   cc1: some warnings being treated as errors


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
