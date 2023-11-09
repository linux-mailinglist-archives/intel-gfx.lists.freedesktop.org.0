Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA70B7E6855
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Nov 2023 11:37:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1DDA10E8A7;
	Thu,  9 Nov 2023 10:37:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C0D110E8A7
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Nov 2023 10:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699526255; x=1731062255;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=+JdNMcsV/YWtRNNN+2L1nCPCt/sckzWDNWX0QlGRq8g=;
 b=NIMSbHXuj+Yzt+ovCjiODAOAXI9b6HWUWNWRhUtlEpUQkQ7tcznpISwu
 aF6i42s1FCdaaSUVuE2aX/a+e7e5g4BFiUDImQPjT6NWQrybcjZVTeXTs
 RZfDzYlksDFIx+aVg1BiduG6u9vtYlDGBUNN/O3dpEKtTJAt2cAbkfNDE
 AjWHnuEPnEPvFWMAwIFJ7O65AdAHLywATD8fA6beitj/RTiT8eQJ+I0Pf
 p1prtvM9V5ZUGSK8BmZgdPtMy+kgO1thtKHwXikRVHd0L/XeYFfHyNFec
 43X/nf1/CAEaKED0T7HBH2eqsR1hMWGqofhWlxXJzro6A3rg6xzmuupDQ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="389763615"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="389763615"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 02:37:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="792499829"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="792499829"
Received: from lkp-server01.sh.intel.com (HELO 17d9e85e5079) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 09 Nov 2023 02:37:32 -0800
Received: from kbuild by 17d9e85e5079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r12Ph-0008fE-2A;
 Thu, 09 Nov 2023 10:37:29 +0000
Date: Thu, 9 Nov 2023 18:36:17 +0800
From: kernel test robot <lkp@intel.com>
To: Somalapuram Amaranath <Amaranath.Somalapuram@amd.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202311091846.P6fN32iP-lkp@intel.com>
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

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Somalapuram-Amaranath/drm-ttm-replace-busy-placement-with-flags-v2/20231109-104055
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20231109023843.32326-1-Amaranath.Somalapuram%40amd.com
patch subject: [Intel-gfx] [PATCH] drm/ttm: replace busy placement with flags v2
config: i386-buildonly-randconfig-001-20231109 (https://download.01.org/0day-ci/archive/20231109/202311091846.P6fN32iP-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231109/202311091846.P6fN32iP-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202311091846.P6fN32iP-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In function 'i915_ttm_placement_from_obj',
       inlined from 'i915_ttm_get_pages' at drivers/gpu/drm/i915/gem/i915_gem_ttm.c:847:2:
>> drivers/gpu/drm/i915/gem/i915_gem_ttm.c:165:18: warning: 'places[0].flags' is used uninitialized [-Wuninitialized]
     165 |         places[0].flags |= TTM_PL_FLAG_IDLE;
         |         ~~~~~~~~~^~~~~~
   drivers/gpu/drm/i915/gem/i915_gem_ttm.c: In function 'i915_ttm_get_pages':
   drivers/gpu/drm/i915/gem/i915_gem_ttm.c:837:26: note: 'places' declared here
     837 |         struct ttm_place places[I915_TTM_MAX_PLACEMENTS + 1];
         |                          ^~~~~~


vim +165 drivers/gpu/drm/i915/gem/i915_gem_ttm.c

   155	
   156	static void
   157	i915_ttm_placement_from_obj(const struct drm_i915_gem_object *obj,
   158				    struct ttm_place *places,
   159				    struct ttm_placement *placement)
   160	{
   161		unsigned int num_allowed = obj->mm.n_placements;
   162		unsigned int flags = obj->flags;
   163		unsigned int i;
   164	
 > 165		places[0].flags |= TTM_PL_FLAG_IDLE;
   166		i915_ttm_place_from_region(num_allowed ? obj->mm.placements[0] :
   167					   obj->mm.region, &places[0], obj->bo_offset,
   168					   obj->base.size, flags);
   169	
   170		/* Cache this on object? */
   171		for (i = 0; i < num_allowed; ++i) {
   172			i915_ttm_place_from_region(obj->mm.placements[i],
   173						   &places[i + 1], obj->bo_offset,
   174						   obj->base.size, flags);
   175			places[i + 1].flags |= TTM_PL_FLAG_BUSY;
   176		}
   177	
   178		placement->num_placement = num_allowed + 1;
   179		placement->placement = places;
   180	}
   181	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
