Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80379682D55
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 14:08:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE82110E34D;
	Tue, 31 Jan 2023 13:08:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2250710E356
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 13:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675170497; x=1706706497;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=mD8r3+fVNKe8Ndn0hyY+3k5+gHYLHphYebsYm2ZS3xE=;
 b=LF1gvnxrHJE5RQlzBYeDRAl1bBe0ZTgiVgK5tgV6GMNaeENblePzfElt
 RwSdhqVwwOzo94I3ToMaUMh8GGdjBdmYtHxetzfjd2JrV9MVUY/Kv1jHH
 dEuv4LoyXgBfCs5L0tCvlGUdDybHoqv4QvVkYWGSjBKgBCMXrFYpCv/ge
 7eIqy5ZPRn8kSLr1lHkgA7Kijhc2WafnVYZxQRhyRzVxylxcGK8HqKevo
 ANfppRaA5tRTN0x1rFvGvGl7mNCvdx5L3ELpLXTI2z/xGh11QG40Dd2ne
 6sibaKckMwkevA28yC3iWuRmxoTN0RfgBswCh9KiLH5bu+TGiVI6eJmRU w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="307490592"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="307490592"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 05:05:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="807118322"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="807118322"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 31 Jan 2023 05:05:53 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pMqKe-0004RW-2q;
 Tue, 31 Jan 2023 13:05:52 +0000
Date: Tue, 31 Jan 2023 21:05:29 +0800
From: kernel test robot <lkp@intel.com>
To: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202301312135.zxf6axNP-lkp@intel.com>
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

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Sujaritha-Sundaresan/drm-i915-gt-Add-sysfs-RAPL-PL1-interface/20230131-152446
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230131062550.11901-1-sujaritha.sundaresan%40intel.com
patch subject: [Intel-gfx] [PATCH v2] drm/i915/gt: Add sysfs RAPL PL1 interface
config: i386-randconfig-a012-20230130 (https://download.01.org/0day-ci/archive/20230131/202301312135.zxf6axNP-lkp@intel.com/config)
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
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/gt/intel_rps.c:2217:6: error: variable 'rapl' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
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
   1 error generated.


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
