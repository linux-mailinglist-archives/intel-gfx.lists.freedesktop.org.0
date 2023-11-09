Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D58C7E64D7
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Nov 2023 09:00:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A142710E1D9;
	Thu,  9 Nov 2023 08:00:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71DEC10E1D9
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Nov 2023 07:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699516798; x=1731052798;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=zT7KEdtC37s2+Fs2E6lNUOOoGgqjI4o609lJeidkuQg=;
 b=Rkb8NQVVk4MYqSvatvdkmRC77Y+S29KWiQnghF+KltkNE6dQl5ndsCas
 s5yrbjuRDAtDnH++3zA/38oFgQnI/rnU1S60zPomAKCLH/3tiuymD+2SX
 SpKPdbKizQxhDeGwLflupaDvO2x+6JFtXI3n9ER/KOTkHlg01+K4O50OE
 7sAYFHko4ArKFC1APqeM3QK8hKYmPQjVbE72SB3WhfIuJSGsWegEKmQ/+
 /KzHhj1hk6BIZ153H3OoL5spXHeWAiAowZ/Tgqaq3aTxXExZowoBNuruJ
 cBmTxuGpocVKvgPGpd7llCiFLmOIbhj4kIogKyumk4IA6RyuhCx8bFB96 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="374977182"
X-IronPort-AV: E=Sophos;i="6.03,288,1694761200"; d="scan'208";a="374977182"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 23:59:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="907052515"
X-IronPort-AV: E=Sophos;i="6.03,288,1694761200"; d="scan'208";a="907052515"
Received: from lkp-server01.sh.intel.com (HELO 17d9e85e5079) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 08 Nov 2023 23:59:55 -0800
Received: from kbuild by 17d9e85e5079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r0zxB-0008ZQ-16;
 Thu, 09 Nov 2023 07:59:53 +0000
Date: Thu, 9 Nov 2023 15:57:20 +0800
From: kernel test robot <lkp@intel.com>
To: Somalapuram Amaranath <Amaranath.Somalapuram@amd.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202311091529.KIl0H6z5-lkp@intel.com>
References: <20231109023843.32326-1-Amaranath.Somalapuram@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231109023843.32326-1-Amaranath.Somalapuram@amd.com>
Subject: Re: [Intel-gfx] [PATCH] drm/ttm: replace busy placement with flags
 v2
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

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Somalapuram-Amaranath/drm-ttm-replace-busy-placement-with-flags-v2/20231109-104055
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20231109023843.32326-1-Amaranath.Somalapuram%40amd.com
patch subject: [Intel-gfx] [PATCH] drm/ttm: replace busy placement with flags v2
config: arc-randconfig-001-20231109 (https://download.01.org/0day-ci/archive/20231109/202311091529.KIl0H6z5-lkp@intel.com/config)
compiler: arc-elf-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231109/202311091529.KIl0H6z5-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202311091529.KIl0H6z5-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/gpu/drm/loongson/lsdc_ttm.c: In function 'lsdc_bo_set_placement':
>> drivers/gpu/drm/loongson/lsdc_ttm.c:57:24: error: 'struct ttm_placement' has no member named 'busy_placement'; did you mean 'num_placement'?
      57 |         lbo->placement.busy_placement = lbo->placements;
         |                        ^~~~~~~~~~~~~~
         |                        num_placement
>> drivers/gpu/drm/loongson/lsdc_ttm.c:80:24: error: 'struct ttm_placement' has no member named 'num_busy_placement'; did you mean 'num_placement'?
      80 |         lbo->placement.num_busy_placement = c;
         |                        ^~~~~~~~~~~~~~~~~~
         |                        num_placement


vim +57 drivers/gpu/drm/loongson/lsdc_ttm.c

f39db26c54281d Sui Jingfeng 2023-06-15  46  
f39db26c54281d Sui Jingfeng 2023-06-15  47  static void lsdc_bo_set_placement(struct lsdc_bo *lbo, u32 domain)
f39db26c54281d Sui Jingfeng 2023-06-15  48  {
f39db26c54281d Sui Jingfeng 2023-06-15  49  	u32 c = 0;
f39db26c54281d Sui Jingfeng 2023-06-15  50  	u32 pflags = 0;
f39db26c54281d Sui Jingfeng 2023-06-15  51  	u32 i;
f39db26c54281d Sui Jingfeng 2023-06-15  52  
f39db26c54281d Sui Jingfeng 2023-06-15  53  	if (lbo->tbo.base.size <= PAGE_SIZE)
f39db26c54281d Sui Jingfeng 2023-06-15  54  		pflags |= TTM_PL_FLAG_TOPDOWN;
f39db26c54281d Sui Jingfeng 2023-06-15  55  
f39db26c54281d Sui Jingfeng 2023-06-15  56  	lbo->placement.placement = lbo->placements;
f39db26c54281d Sui Jingfeng 2023-06-15 @57  	lbo->placement.busy_placement = lbo->placements;
f39db26c54281d Sui Jingfeng 2023-06-15  58  
f39db26c54281d Sui Jingfeng 2023-06-15  59  	if (domain & LSDC_GEM_DOMAIN_VRAM) {
f39db26c54281d Sui Jingfeng 2023-06-15  60  		lbo->placements[c].mem_type = TTM_PL_VRAM;
f39db26c54281d Sui Jingfeng 2023-06-15  61  		lbo->placements[c++].flags = pflags;
f39db26c54281d Sui Jingfeng 2023-06-15  62  	}
f39db26c54281d Sui Jingfeng 2023-06-15  63  
f39db26c54281d Sui Jingfeng 2023-06-15  64  	if (domain & LSDC_GEM_DOMAIN_GTT) {
f39db26c54281d Sui Jingfeng 2023-06-15  65  		lbo->placements[c].mem_type = TTM_PL_TT;
f39db26c54281d Sui Jingfeng 2023-06-15  66  		lbo->placements[c++].flags = pflags;
f39db26c54281d Sui Jingfeng 2023-06-15  67  	}
f39db26c54281d Sui Jingfeng 2023-06-15  68  
f39db26c54281d Sui Jingfeng 2023-06-15  69  	if (domain & LSDC_GEM_DOMAIN_SYSTEM) {
f39db26c54281d Sui Jingfeng 2023-06-15  70  		lbo->placements[c].mem_type = TTM_PL_SYSTEM;
f39db26c54281d Sui Jingfeng 2023-06-15  71  		lbo->placements[c++].flags = 0;
f39db26c54281d Sui Jingfeng 2023-06-15  72  	}
f39db26c54281d Sui Jingfeng 2023-06-15  73  
f39db26c54281d Sui Jingfeng 2023-06-15  74  	if (!c) {
f39db26c54281d Sui Jingfeng 2023-06-15  75  		lbo->placements[c].mem_type = TTM_PL_SYSTEM;
f39db26c54281d Sui Jingfeng 2023-06-15  76  		lbo->placements[c++].flags = 0;
f39db26c54281d Sui Jingfeng 2023-06-15  77  	}
f39db26c54281d Sui Jingfeng 2023-06-15  78  
f39db26c54281d Sui Jingfeng 2023-06-15  79  	lbo->placement.num_placement = c;
f39db26c54281d Sui Jingfeng 2023-06-15 @80  	lbo->placement.num_busy_placement = c;
f39db26c54281d Sui Jingfeng 2023-06-15  81  
f39db26c54281d Sui Jingfeng 2023-06-15  82  	for (i = 0; i < c; ++i) {
f39db26c54281d Sui Jingfeng 2023-06-15  83  		lbo->placements[i].fpfn = 0;
f39db26c54281d Sui Jingfeng 2023-06-15  84  		lbo->placements[i].lpfn = 0;
f39db26c54281d Sui Jingfeng 2023-06-15  85  	}
f39db26c54281d Sui Jingfeng 2023-06-15  86  }
f39db26c54281d Sui Jingfeng 2023-06-15  87  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
