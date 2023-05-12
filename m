Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22AFC7001BD
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 09:51:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2565F10E620;
	Fri, 12 May 2023 07:51:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C258710E620
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 07:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683877903; x=1715413903;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=x/VoZzz0opoFnpWBzUMWU0yekPu0168cocUjNJKaDhg=;
 b=UTCQklp+15rpa0fnjnV5FkUTqhGqiC0KgLU66a3/bTf+vW+MlYZg3ONW
 OteAmDLFlmAg1PSACtD3PBN1q9dvcZoBUOrxYyZOo5X8jBRMu13TmQrY9
 h1Mv9lgDph58oSnl16CJqzn8sopXoD61IaYNwSNgROtGU21sW/EbeEUlb
 dfph6xeo+Wz2tc6wSRPnGE/RDaUfAplF3h9XjyrEkR2yfibv8SF0lJmgU
 B6ZZaRMv5CI5gF4obHvW2/dlKlb7KbU7NEAjhb/CVmbZBky8P9jUhFUo/
 F962E7cdgbFHhteY4nzbBbqa2F25k2rGxQRaKrsPlfMReJtvn2MjSXzQg A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="340041131"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="340041131"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 00:51:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="650544388"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="650544388"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 12 May 2023 00:51:41 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pxNYz-0004eu-0B;
 Fri, 12 May 2023 07:51:41 +0000
Date: Fri, 12 May 2023 15:51:22 +0800
From: kernel test robot <lkp@intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <202305121555.i5dslJkI-lkp@intel.com>
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

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Tejas-Upadhyay/drm-i915-gt-Add-workaround-14016712196/20230512-132314
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230512052744.778113-1-tejas.upadhyay%40intel.com
patch subject: [Intel-gfx] [PATCH] drm/i915/gt: Add workaround 14016712196
config: x86_64-randconfig-a011 (https://download.01.org/0day-ci/archive/20230512/202305121555.i5dslJkI-lkp@intel.com/config)
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
| Link: https://lore.kernel.org/oe-kbuild-all/202305121555.i5dslJkI-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/gt/gen8_engine_cs.c:180:5: warning: no previous prototype for 'mtl_dummy_pipe_control' [-Wmissing-prototypes]
     180 | int mtl_dummy_pipe_control(struct i915_request *rq, u32 *cs)
         |     ^~~~~~~~~~~~~~~~~~~~~~


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
