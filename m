Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD0A68289A
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 10:21:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B023610E14A;
	Tue, 31 Jan 2023 09:21:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4022C10E14A
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 09:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675156910; x=1706692910;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=opn69J4iM1+P9WhjabZqaC6A/nQZgyY/XD8pHDrsmp0=;
 b=WewLkgh5IkP/4sOiXSHSY1sml3+ZCJsrQxj5DxABLwZFJe5NN4CYTJYw
 dd8s1BmwvCGR+bLUtOdsbriHFmiUyEt1bQiDhXjorFzxzxc7y/BI/OQGq
 I5tX7XUobdnDjHg0WjlKUF+4eS3KZI+vtUeVosrgFyn+amGRK+DyN5Z7N
 BGxjO2QVadbdvD13Mt7e4gZ4g1k7xQTWp/O4v4xlx8KAXQ4nNJEQWpxni
 0cS4HWuIQ4MbyQyg4tI4bpFsw6R9hwLZv73t529/rnY+1fNI4iOj95OcI
 MELF8WVZ6BbFB8P7qqPqqvaH4RBv8P8/GM3ZRAgSWJx6fT0dZRw6GqTsT g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="327809670"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="327809670"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 01:21:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="657807963"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="657807963"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 31 Jan 2023 01:21:47 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pMmpm-0004L0-2w;
 Tue, 31 Jan 2023 09:21:46 +0000
Date: Tue, 31 Jan 2023 17:21:15 +0800
From: kernel test robot <lkp@intel.com>
To: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202301311720.VOyrcus2-lkp@intel.com>
References: <20230131062550.11901-1-sujaritha.sundaresan@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230131062550.11901-1-sujaritha.sundaresan@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: Add sysfs RAPL PL1 interface
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
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Sujaritha,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Sujaritha-Sundaresan/drm-i915-gt-Add-sysfs-RAPL-PL1-interface/20230131-152446
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230131062550.11901-1-sujaritha.sundaresan%40intel.com
patch subject: [Intel-gfx] [PATCH v2] drm/i915/gt: Add sysfs RAPL PL1 interface
config: x86_64-rhel-8.3-rust (https://download.01.org/0day-ci/archive/20230131/202301311720.VOyrcus2-lkp@intel.com/config)
compiler: clang version 14.0.6 (https://github.com/llvm/llvm-project f28c006a5895fc0e329fe15fead81e37457cb1d1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/562c57549ee00ea298f9023380d44526d6d68921
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Sujaritha-Sundaresan/drm-i915-gt-Add-sysfs-RAPL-PL1-interface/20230131-152446
        git checkout 562c57549ee00ea298f9023380d44526d6d68921
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=x86_64 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/gt/intel_rps.c:2217:6: warning: variable 'rapl' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
           if (IS_METEORLAKE(i915) || IS_XEHPSDV(i915))
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_drv.h:565:33: note: expanded from macro 'IS_METEORLAKE'
   #define IS_METEORLAKE(dev_priv) IS_PLATFORM(dev_priv, INTEL_METEORLAKE)
                                   ^
   drivers/gpu/drm/i915/gt/intel_rps.c:2220:9: note: uninitialized use occurs here
           return rapl;
                  ^~~~
   drivers/gpu/drm/i915/gt/intel_rps.c:2217:2: note: remove the 'if' if its condition is always true
           if (IS_METEORLAKE(i915) || IS_XEHPSDV(i915))
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/intel_rps.c:2209:10: note: initialize the variable 'rapl' to silence this warning
           u32 rapl;
                   ^
                    = 0
   1 warning generated.


vim +2217 drivers/gpu/drm/i915/gt/intel_rps.c

  2204	
  2205	u32 intel_rps_read_rapl_pl1(struct intel_rps *rps)
  2206	{
  2207		struct drm_i915_private *i915 = rps_to_i915(rps);
  2208		u32 rapl_pl1;
  2209		u32 rapl;
  2210	
  2211		if (IS_METEORLAKE(i915))
  2212			rapl_pl1 = intel_uncore_read(rps_to_gt(rps)->uncore, MTL_RAPL_PL1_FREQ_LIMIT);
  2213		else if (IS_XEHPSDV(i915))
  2214			rapl_pl1  = intel_uncore_read(rps_to_gt(rps)->uncore, XEHPSDV_RAPL_PL1_FREQ_LIMIT);
  2215	
  2216	
> 2217		if (IS_METEORLAKE(i915) || IS_XEHPSDV(i915))
  2218			rapl = REG_FIELD_GET(RAPL_PL1_FREQ_LIMIT_MASK, rapl_pl1);
  2219	
  2220		return rapl;
  2221	}
  2222	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
