Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D114C533F
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Feb 2022 03:12:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1E7410E277;
	Sat, 26 Feb 2022 02:12:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 560FC10E277
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Feb 2022 02:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645841555; x=1677377555;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=kh/9vRAe+6sMDJj5qRL+ZnaKcTZ75FD5ND5I6N7S2uY=;
 b=fLsVj11RIQc6mk1bgWjKgeRXN7tNcaaBJgHlxb5hSTQynqbrPd/FUIUw
 ASC/+5DRMtSlYQ6daHxnmp0o1GSsUdNEeUtKH4MECW3MBiZjAiqvm7Uv1
 RlP7C9Xsz+0o2/5jnI72qJdT1KsrlRYJSvqAvRnun1HtB50Px3r2DAlz7
 mvxi3OjQW+rvdVVClDhe9Is2PmszHJMJYpVO6ewDjmZflkYGfPF/gL3hq
 2MZsoavveA5x1FdbTthl1j+uhf2/KXiGTLPy3rQMPndgfN6zwTOWYAFoJ
 rVsDIXg6+gFRaOL0Ltm+o4Fofx4VzjEWSHTxwgkADi4fSQGpxRwpb/voq Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10269"; a="277259701"
X-IronPort-AV: E=Sophos;i="5.90,138,1643702400"; d="scan'208";a="277259701"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 18:12:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,138,1643702400"; d="scan'208";a="549514219"
Received: from lkp-server01.sh.intel.com (HELO 788b1cd46f0d) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 25 Feb 2022 18:12:32 -0800
Received: from kbuild by 788b1cd46f0d with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nNmZU-0004xO-7V; Sat, 26 Feb 2022 02:12:32 +0000
Date: Sat, 26 Feb 2022 10:12:17 +0800
From: kernel test robot <lkp@intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202202261049.pxCmgeWV-lkp@intel.com>
References: <20220225215705.248707-2-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220225215705.248707-2-alan.previn.teres.alexis@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/reset: Fix error_state_read
 ptr + offset use
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
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Alan,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on drm-tip/drm-tip drm-exynos/exynos-drm-next drm/drm-next tegra-drm/drm/tegra/for-next v5.17-rc5 next-20220224]
[cannot apply to airlied/drm-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Alan-Previn/Fix-i915-error_state_read-ptr-use/20220226-055549
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: i386-randconfig-a011 (https://download.01.org/0day-ci/archive/20220226/202202261049.pxCmgeWV-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project d271fc04d5b97b12e6b797c6067d3c96a8d7470e)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/4ae08e2ae5d3ff4e465a35b05010e44d02b59aab
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Alan-Previn/Fix-i915-error_state_read-ptr-use/20220226-055549
        git checkout 4ae08e2ae5d3ff4e465a35b05010e44d02b59aab
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/i915_sysfs.c:447:3: warning: variable 'ret' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
                   if (off < len) {
                   ^~~~~~~~~~~~~~
   include/linux/compiler.h:56:28: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:30: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_sysfs.c:453:9: note: uninitialized use occurs here
           return ret;
                  ^~~
   drivers/gpu/drm/i915/i915_sysfs.c:447:3: note: remove the 'if' if its condition is always true
                   if (off < len) {
                   ^~~~~~~~~~~~~~~
   include/linux/compiler.h:56:23: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                         ^
   drivers/gpu/drm/i915/i915_sysfs.c:435:13: note: initialize the variable 'ret' to silence this warning
           ssize_t ret;
                      ^
                       = 0
   1 warning generated.


vim +447 drivers/gpu/drm/i915/i915_sysfs.c

   431	
   432		struct device *kdev = kobj_to_dev(kobj);
   433		struct drm_i915_private *i915 = kdev_minor_to_i915(kdev);
   434		struct i915_gpu_coredump *gpu;
   435		ssize_t ret;
   436	
   437		gpu = i915_first_error_state(i915);
   438		if (IS_ERR(gpu)) {
   439			ret = PTR_ERR(gpu);
   440		} else if (gpu) {
   441			ret = i915_gpu_coredump_copy_to_buffer(gpu, buf, off, count);
   442			i915_gpu_coredump_put(gpu);
   443		} else {
   444			const char *str = "No error state collected\n";
   445			size_t len = strlen(str);
   446	
 > 447			if (off < len) {
   448				ret = min_t(size_t, count, len - off);
   449				memcpy(buf, str + off, ret);
   450			}
   451		}
   452	
   453		return ret;
   454	}
   455	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
