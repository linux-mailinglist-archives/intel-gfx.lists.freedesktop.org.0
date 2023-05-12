Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C97B07001B6
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 09:49:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34B1610E61C;
	Fri, 12 May 2023 07:49:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13F6710E61C
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 07:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683877788; x=1715413788;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=vSWai5yvn4XBtWqajWXxkcAPVAYheX1l74DihYv3xFw=;
 b=hrCUB8RVNxbVQTvYNnfjq8ylEB2iDFxTjyfDeVNv4kJNBulnKbqR2dr2
 kDlsAdIBVjQovlm7B+ybo2a/DNo9UqOArvVsXncIsn7aPNDo9gr5SiBpL
 CG+g0Jo+5BokjtKnEYdkOU911sr56dhRhkBGcC+LuI61PWNXtH2y0b1/x
 AmPkj+nQRaZ/lEnXnn3eOv/HMgHbcBcrPOG7Jd1GnX3RuA8yR/VbWsg2C
 vFCWo5kuqekbJnTCKhzajEooabpLOIeoa/q3P73ycBkP0VA/d0gVDDVhv
 tOIAUcvzu6qB5exQAaB1Wlz7gDCrwE4L2rRfQeQhnTzxOtwDjRLHbkRSg Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="378865300"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="378865300"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 00:49:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="811970352"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="811970352"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 12 May 2023 00:49:41 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pxNX2-0004em-3D;
 Fri, 12 May 2023 07:49:40 +0000
Date: Fri, 12 May 2023 15:49:16 +0800
From: kernel test robot <lkp@intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <202305121525.3EWdGoBY-lkp@intel.com>
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
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tejas,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Tejas-Upadhyay/drm-i915-gt-Add-workaround-14016712196/20230512-132314
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230512052744.778113-1-tejas.upadhyay%40intel.com
patch subject: [Intel-gfx] [PATCH] drm/i915/gt: Add workaround 14016712196
config: i386-randconfig-a004 (https://download.01.org/0day-ci/archive/20230512/202305121525.3EWdGoBY-lkp@intel.com/config)
compiler: clang version 14.0.6 (https://github.com/llvm/llvm-project f28c006a5895fc0e329fe15fead81e37457cb1d1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/429038a73fb0b1cbcfa5b41e17d70e48d835d347
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Tejas-Upadhyay/drm-i915-gt-Add-workaround-14016712196/20230512-132314
        git checkout 429038a73fb0b1cbcfa5b41e17d70e48d835d347
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202305121525.3EWdGoBY-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/gt/gen8_engine_cs.c:180:5: warning: no previous prototype for function 'mtl_dummy_pipe_control' [-Wmissing-prototypes]
   int mtl_dummy_pipe_control(struct i915_request *rq, u32 *cs)
       ^
   drivers/gpu/drm/i915/gt/gen8_engine_cs.c:180:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int mtl_dummy_pipe_control(struct i915_request *rq, u32 *cs)
   ^
   static 
>> drivers/gpu/drm/i915/gt/gen8_engine_cs.c:248:36: warning: variable 'cs' is uninitialized when used here [-Wuninitialized]
                   err = mtl_dummy_pipe_control(rq, cs);
                                                    ^~
   drivers/gpu/drm/i915/gt/gen8_engine_cs.c:245:10: note: initialize the variable 'cs' to silence this warning
                   u32 *cs, count;
                          ^
                           = NULL
   drivers/gpu/drm/i915/gt/gen8_engine_cs.c:210:36: warning: variable 'cs' is uninitialized when used here [-Wuninitialized]
                   err = mtl_dummy_pipe_control(rq, cs);
                                                    ^~
   drivers/gpu/drm/i915/gt/gen8_engine_cs.c:207:10: note: initialize the variable 'cs' to silence this warning
                   u32 *cs;
                          ^
                           = NULL
   3 warnings generated.


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
   200	int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
   201	{
   202		struct intel_engine_cs *engine = rq->engine;
   203		int err;
   204	
   205		if (mode & EMIT_FLUSH) {
   206			u32 flags = 0;
   207			u32 *cs;
   208	
   209			/* Wa_14016712196 */
   210			err = mtl_dummy_pipe_control(rq, cs);
   211			if (err)
   212				return err;
   213	
   214			flags |= PIPE_CONTROL_TILE_CACHE_FLUSH;
   215			flags |= PIPE_CONTROL_FLUSH_L3;
   216			flags |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
   217			flags |= PIPE_CONTROL_DEPTH_CACHE_FLUSH;
   218			/* Wa_1409600907:tgl,adl-p */
   219			flags |= PIPE_CONTROL_DEPTH_STALL;
   220			flags |= PIPE_CONTROL_DC_FLUSH_ENABLE;
   221			flags |= PIPE_CONTROL_FLUSH_ENABLE;
   222	
   223			flags |= PIPE_CONTROL_STORE_DATA_INDEX;
   224			flags |= PIPE_CONTROL_QW_WRITE;
   225	
   226			flags |= PIPE_CONTROL_CS_STALL;
   227	
   228			if (!HAS_3D_PIPELINE(engine->i915))
   229				flags &= ~PIPE_CONTROL_3D_ARCH_FLAGS;
   230			else if (engine->class == COMPUTE_CLASS)
   231				flags &= ~PIPE_CONTROL_3D_ENGINE_FLAGS;
   232	
   233			cs = intel_ring_begin(rq, 6);
   234			if (IS_ERR(cs))
   235				return PTR_ERR(cs);
   236	
   237			cs = gen12_emit_pipe_control(cs,
   238						     PIPE_CONTROL0_HDC_PIPELINE_FLUSH,
   239						     flags, LRC_PPHWSP_SCRATCH_ADDR);
   240			intel_ring_advance(rq, cs);
   241		}
   242	
   243		if (mode & EMIT_INVALIDATE) {
   244			u32 flags = 0;
   245			u32 *cs, count;
   246	
   247			/* Wa_14016712196 */
 > 248			err = mtl_dummy_pipe_control(rq, cs);
   249			if (err)
   250				return err;
   251	
   252			flags |= PIPE_CONTROL_COMMAND_CACHE_INVALIDATE;
   253			flags |= PIPE_CONTROL_TLB_INVALIDATE;
   254			flags |= PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE;
   255			flags |= PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE;
   256			flags |= PIPE_CONTROL_VF_CACHE_INVALIDATE;
   257			flags |= PIPE_CONTROL_CONST_CACHE_INVALIDATE;
   258			flags |= PIPE_CONTROL_STATE_CACHE_INVALIDATE;
   259	
   260			flags |= PIPE_CONTROL_STORE_DATA_INDEX;
   261			flags |= PIPE_CONTROL_QW_WRITE;
   262	
   263			flags |= PIPE_CONTROL_CS_STALL;
   264	
   265			if (!HAS_3D_PIPELINE(engine->i915))
   266				flags &= ~PIPE_CONTROL_3D_ARCH_FLAGS;
   267			else if (engine->class == COMPUTE_CLASS)
   268				flags &= ~PIPE_CONTROL_3D_ENGINE_FLAGS;
   269	
   270			if (!HAS_FLAT_CCS(rq->engine->i915))
   271				count = 8 + 4;
   272			else
   273				count = 8;
   274	
   275			cs = intel_ring_begin(rq, count);
   276			if (IS_ERR(cs))
   277				return PTR_ERR(cs);
   278	
   279			/*
   280			 * Prevent the pre-parser from skipping past the TLB
   281			 * invalidate and loading a stale page for the batch
   282			 * buffer / request payload.
   283			 */
   284			*cs++ = preparser_disable(true);
   285	
   286			cs = gen8_emit_pipe_control(cs, flags, LRC_PPHWSP_SCRATCH_ADDR);
   287	
   288			if (!HAS_FLAT_CCS(rq->engine->i915)) {
   289				/* hsdes: 1809175790 */
   290				cs = gen12_emit_aux_table_inv(rq->engine->gt,
   291							      cs, GEN12_GFX_CCS_AUX_NV);
   292			}
   293	
   294			*cs++ = preparser_disable(false);
   295			intel_ring_advance(rq, cs);
   296		}
   297	
   298		return 0;
   299	}
   300	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
