Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA90718875
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 19:28:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A17B10E065;
	Wed, 31 May 2023 17:28:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F9D710E065
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 17:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685554120; x=1717090120;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ssM4uvQ0z4A6iBH00zgcb5vAg5cdlbCf0UapUzvfXTI=;
 b=hc6Lw6N6jtemFhmznQAZjcrNnjNlMLwc/8v8xLSKJE6Lg6u8T/9iA1ds
 FR7gB+1jQYnB7d39OHad3LYtlQGO3Gha/SBNhrFn+VTMVJPWGOCRJEMzA
 MUy8VpWR0Ac5CMJNZmWOucQi42pwYgThkZu6v9Adp8T6aoaWVSVCMiYLN
 3Ty3ueCGe1b68nWZ/keqaCSPl34FtWDoF6YxiBkohBHKcyyYtZDKybFmT
 oFXIFm6AqJKYAz1o5lNLC0bMJuo8iNej8wBfxODfzQAf4bMk0gKLrE1PQ
 QG6NAp4tago+buX60kC4DB1DkzKwaXLCLrJtOpTDVwgBBmjttJDoLRcY2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="352810399"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="352810399"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 10:28:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="831289899"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="831289899"
Received: from lkp-server01.sh.intel.com (HELO fb1ced2c09fb) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 31 May 2023 10:28:34 -0700
Received: from kbuild by fb1ced2c09fb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q4Pcg-0001Vv-0N;
 Wed, 31 May 2023 17:28:34 +0000
Date: Thu, 1 Jun 2023 01:28:01 +0800
From: kernel test robot <lkp@intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <202306010101.NktWIqo7-lkp@intel.com>
References: <20230531143214.1650701-1-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230531143214.1650701-1-tejas.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH V3] drm/i915/gt: Add workaround 14016712196
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

Hi Tejas,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Tejas-Upadhyay/drm-i915-gt-Add-workaround-14016712196/20230531-222808
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230531143214.1650701-1-tejas.upadhyay%40intel.com
patch subject: [Intel-gfx] [PATCH V3] drm/i915/gt: Add workaround 14016712196
config: x86_64-randconfig-x052-20230531 (https://download.01.org/0day-ci/archive/20230601/202306010101.NktWIqo7-lkp@intel.com/config)
compiler: clang version 14.0.6 (https://github.com/llvm/llvm-project f28c006a5895fc0e329fe15fead81e37457cb1d1)
reproduce (this is a W=1 build):
        mkdir -p ~/bin
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/1ef791c16c322ffff65d4f14a0f4c09434d91884
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Tejas-Upadhyay/drm-i915-gt-Add-workaround-14016712196/20230531-222808
        git checkout 1ef791c16c322ffff65d4f14a0f4c09434d91884
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang ~/bin/make.cross W=1 O=build_dir ARCH=x86_64 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang ~/bin/make.cross W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202306010101.NktWIqo7-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/gt/gen8_engine_cs.c:185:6: warning: variable 'cs' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
           if (IS_MTL_GRAPHICS_STEP(rq->engine->i915, M, STEP_A0, STEP_B0) ||
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_drv.h:684:2: note: expanded from macro 'IS_MTL_GRAPHICS_STEP'
           (IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
           ^
   drivers/gpu/drm/i915/gt/gen8_engine_cs.c:201:9: note: uninitialized use occurs here
           return cs;
                  ^~
   drivers/gpu/drm/i915/gt/gen8_engine_cs.c:185:2: note: remove the 'if' if its condition is always true
           if (IS_MTL_GRAPHICS_STEP(rq->engine->i915, M, STEP_A0, STEP_B0) ||
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/gt/gen8_engine_cs.c:186:6: warning: variable 'cs' is used uninitialized whenever '&&' condition is false [-Wsometimes-uninitialized]
               IS_MTL_GRAPHICS_STEP(rq->engine->i915, P, STEP_A0, STEP_B0)) {
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_drv.h:684:3: note: expanded from macro 'IS_MTL_GRAPHICS_STEP'
           (IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/gen8_engine_cs.c:201:9: note: uninitialized use occurs here
           return cs;
                  ^~
   drivers/gpu/drm/i915/gt/gen8_engine_cs.c:186:6: note: remove the '&&' if its condition is always true
               IS_MTL_GRAPHICS_STEP(rq->engine->i915, P, STEP_A0, STEP_B0)) {
               ^
   drivers/gpu/drm/i915/i915_drv.h:684:3: note: expanded from macro 'IS_MTL_GRAPHICS_STEP'
           (IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
            ^
   drivers/gpu/drm/i915/gt/gen8_engine_cs.c:182:9: note: initialize the variable 'cs' to silence this warning
           u32 *cs;
                  ^
                   = NULL
   2 warnings generated.


vim +185 drivers/gpu/drm/i915/gt/gen8_engine_cs.c

   179	
   180	static u32 *mtl_dummy_pipe_control(struct i915_request *rq)
   181	{
   182		u32 *cs;
   183	
   184		/* Wa_14016712196 */
 > 185		if (IS_MTL_GRAPHICS_STEP(rq->engine->i915, M, STEP_A0, STEP_B0) ||
 > 186		    IS_MTL_GRAPHICS_STEP(rq->engine->i915, P, STEP_A0, STEP_B0)) {
   187			int ret;
   188	
   189			/* dummy PIPE_CONTROL + depth flush */
   190			cs = intel_ring_begin(rq, 6);
   191			ret = IS_ERR(cs);
   192			if (ret)
   193				return ERR_PTR(ret);
   194			cs = gen12_emit_pipe_control(cs,
   195						     0,
   196						     PIPE_CONTROL_DEPTH_CACHE_FLUSH,
   197						     LRC_PPHWSP_SCRATCH_ADDR);
   198			intel_ring_advance(rq, cs);
   199		}
   200	
 > 201		return cs;
   202	}
   203	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
