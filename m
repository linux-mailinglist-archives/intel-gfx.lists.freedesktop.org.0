Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C208D7F56F3
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 04:17:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED75B10E083;
	Thu, 23 Nov 2023 03:17:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F28210E083
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 03:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700709437; x=1732245437;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=KwiMyloP3BOtD7RZzfS/9QrbbXi+bdvWaVOM2GzSc64=;
 b=L9viqYvIFr4lcwW+B0+FTAlAbvsWeZCkdpTwyIxSnhOqUHjU2QCVhQV1
 6jNJhmhx4EK90LlwhXhh4puijDa7dkTpXn/S8qnNqzED3gRNR78fjFtsF
 urIyB41uOwjjzXsudTPtADvGE8V8kiuszUUYtwh2eT6i58uAAEGTOt5Qa
 AQmsiU2NYEZD3+ifqXJw2P328d/sND5Q9xxMC6DuLGmKKulify53C155w
 0rF3KRd7A/x8ODsBDSL94JTAj0WmO45oTjOwd7xLSElhtJKAWA4Li5zbg
 /BZUMcnnGqVUUvQfAvUaahRBxf6rD4W68A79eO4DasUOhUn78vWbmuM36 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="5380200"
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; 
   d="scan'208";a="5380200"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 19:17:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="767083292"
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; d="scan'208";a="767083292"
Received: from lkp-server01.sh.intel.com (HELO d584ee6ebdcc) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 22 Nov 2023 19:17:14 -0800
Received: from kbuild by d584ee6ebdcc with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r60DI-0001Ao-0c;
 Thu, 23 Nov 2023 03:17:12 +0000
Date: Thu, 23 Nov 2023 11:17:07 +0800
From: kernel test robot <lkp@intel.com>
To: Somalapuram Amaranath <Amaranath.Somalapuram@amd.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202311231106.FulSZizp-lkp@intel.com>
References: <20231113110016.462621-1-Amaranath.Somalapuram@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231113110016.462621-1-Amaranath.Somalapuram@amd.com>
Subject: Re: [Intel-gfx] [PATCH] drm/ttm: replace busy placement with flags
 v3
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
Cc: Somalapuram Amaranath <Amaranath.Somalapuram@amd.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Somalapuram,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Somalapuram-Amaranath/drm-ttm-replace-busy-placement-with-flags-v3/20231113-190252
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20231113110016.462621-1-Amaranath.Somalapuram%40amd.com
patch subject: [Intel-gfx] [PATCH] drm/ttm: replace busy placement with flags v3
config: i386-randconfig-061-20231123 (https://download.01.org/0day-ci/archive/20231123/202311231106.FulSZizp-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231123/202311231106.FulSZizp-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202311231106.FulSZizp-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c:77:22: sparse: sparse: symbol 'vmw_vram_sys_placement' was not declared. Should it be static?
   drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c:101:22: sparse: sparse: symbol 'vmw_pt_sys_placement' was not declared. Should it be static?
>> drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c:120:22: sparse: sparse: symbol 'vmw_srf_placement' was not declared. Should it be static?
>> drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c:144:22: sparse: sparse: symbol 'vmw_nonfixed_placement' was not declared. Should it be static?

vim +/vmw_vram_sys_placement +77 drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c

    76	
  > 77	struct ttm_placement vmw_vram_sys_placement = {
    78		.num_placement = 2,
    79		.placement = vram_sys_placement_flags,
    80	};
    81	
    82	static const struct ttm_place sys_placement_flags = {
    83		.fpfn = 0,
    84		.lpfn = 0,
    85		.mem_type = TTM_PL_SYSTEM,
    86		.flags = 0
    87	};
    88	
    89	struct ttm_placement vmw_sys_placement = {
    90		.num_placement = 1,
    91		.placement = &sys_placement_flags,
    92	};
    93	
    94	static const struct ttm_place vmw_sys_placement_flags = {
    95		.fpfn = 0,
    96		.lpfn = 0,
    97		.mem_type = VMW_PL_SYSTEM,
    98		.flags = 0
    99	};
   100	
   101	struct ttm_placement vmw_pt_sys_placement = {
   102		.num_placement = 1,
   103		.placement = &vmw_sys_placement_flags,
   104	};
   105	
   106	static const struct ttm_place gmr_vram_placement_flags[] = {
   107		{
   108			.fpfn = 0,
   109			.lpfn = 0,
   110			.mem_type = VMW_PL_GMR,
   111			.flags = 0
   112		}, {
   113			.fpfn = 0,
   114			.lpfn = 0,
   115			.mem_type = TTM_PL_VRAM,
   116			.flags = TTM_PL_FLAG_BUSY
   117		}
   118	};
   119	
 > 120	struct ttm_placement vmw_srf_placement = {
   121		.num_placement = 2,
   122		.placement = gmr_vram_placement_flags
   123	};
   124	
   125	static const struct ttm_place nonfixed_placement_flags[] = {
   126		{
   127			.fpfn = 0,
   128			.lpfn = 0,
   129			.mem_type = TTM_PL_SYSTEM,
   130			.flags = 0
   131		}, {
   132			.fpfn = 0,
   133			.lpfn = 0,
   134			.mem_type = VMW_PL_GMR,
   135			.flags = TTM_PL_FLAG_IDLE
   136		}, {
   137			.fpfn = 0,
   138			.lpfn = 0,
   139			.mem_type = VMW_PL_MOB,
   140			.flags = TTM_PL_FLAG_IDLE
   141		}
   142	};
   143	
 > 144	struct ttm_placement vmw_nonfixed_placement = {
   145		.num_placement = 3,
   146		.placement = nonfixed_placement_flags,
   147	};
   148	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
