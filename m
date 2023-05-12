Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0818B70028A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 10:33:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88E6610E11C;
	Fri, 12 May 2023 08:33:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CCD410E11C
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 08:33:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683880429; x=1715416429;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=zd3MKXuQS5MxA15kWVdbKYAMPwNv7AYfI6WDzwLp78Y=;
 b=JH8Nm3OyWOgabhVznuOKMrvwZvZAqmfl//v+vPJdzij6GWQjxGzu4Pzf
 jf9pnCM+VsNw8BtPxPsa0rCeoMFhwBfaAdnA7msGRXX4k/mYQ5OD5P0Qp
 pbPNB80DodAS/xIpofq5ySVutvW0IOHyYqshpmXkSJryKw8BWjCm8MZ4T
 nqmQVMppYx13I9df3xLuH90mDu6gu5hJnXRE9JATNtPNLunU8fu1k9lKX
 Ll9hQJRFlUNDjVVc8JT0O5XAQC7batU9XBqx/FT5BVdwGf9UQRYWKmbjt
 asjxtvgwipJDx4DjKyHLyQYsAxQ8x1VUGenJMjWyGn3b8Wu1jYySCGFmF g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="350763130"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="350763130"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 01:33:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="844339974"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="844339974"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 12 May 2023 01:33:43 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pxODe-0004i0-2O;
 Fri, 12 May 2023 08:33:42 +0000
Date: Fri, 12 May 2023 16:32:57 +0800
From: kernel test robot <lkp@intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <202305121641.r0X84703-lkp@intel.com>
References: <20230512052744.778113-1-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230512052744.778113-1-tejas.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Add workaround 14016712196
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
Cc: oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tejas,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Tejas-Upadhyay/drm-i915-gt-Add-workaround-14016712196/20230512-132314
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230512052744.778113-1-tejas.upadhyay%40intel.com
patch subject: [Intel-gfx] [PATCH] drm/i915/gt: Add workaround 14016712196
config: x86_64-defconfig (https://download.01.org/0day-ci/archive/20230512/202305121641.r0X84703-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-12) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/429038a73fb0b1cbcfa5b41e17d70e48d835d347
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Tejas-Upadhyay/drm-i915-gt-Add-workaround-14016712196/20230512-132314
        git checkout 429038a73fb0b1cbcfa5b41e17d70e48d835d347
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=x86_64 olddefconfig
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202305121641.r0X84703-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/gt/gen8_engine_cs.c:180:5: error: no previous prototype for 'mtl_dummy_pipe_control' [-Werror=missing-prototypes]
     180 | int mtl_dummy_pipe_control(struct i915_request *rq, u32 *cs)
         |     ^~~~~~~~~~~~~~~~~~~~~~
   cc1: all warnings being treated as errors


vim +/mtl_dummy_pipe_control +180 drivers/gpu/drm/i915/gt/gen8_engine_cs.c

   179	
 > 180	int mtl_dummy_pipe_control(struct i915_request *rq, u32 *cs)
   181	{
   182		struct intel_engine_cs *engine = rq->engine;
   183	
   184		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
   185		    IS_MTL_GRAPHICS_STEP(engine->i915, P, STEP_A0, STEP_B0)) {
   186			/* dummy PIPE_CONTROL + depth flush */
   187			cs = intel_ring_begin(rq, 6);
   188			if (IS_ERR(cs))
   189				return PTR_ERR(cs);
   190			cs = gen12_emit_pipe_control(cs,
   191						     0,
   192						     PIPE_CONTROL_DEPTH_CACHE_FLUSH,
   193						     LRC_PPHWSP_SCRATCH_ADDR);
   194			intel_ring_advance(rq, cs);
   195		}
   196	
   197		return 0;
   198	}
   199	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
