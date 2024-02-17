Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42968858A7B
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Feb 2024 01:03:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81F4E10E76F;
	Sat, 17 Feb 2024 00:03:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hkOUE6tr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0704910E76F
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Feb 2024 00:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708128188; x=1739664188;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=TWz44F2ZNw+AgUXqzS6iNm/VAQClI4R2NMSsnPODE9c=;
 b=hkOUE6trhsz5ftOveurOAUPlIKixg3OqQkqBG3Mw6ukXh6UUBTaNGTqv
 7y7jCl4JacqL38t8bXPYqKDU39Il1gZwpKcJb2LWIvHIG4Ke5h0Hzmomu
 gwRAranoMP110rX30bzajJncp2vs4ZktQLGlh8MvVPVRlBoGVvxBDhCLo
 gKTVp0rA+fY4vAfQY35X6ekXW1DBMbirIttEdoRiah9WO0yx3NDWH717o
 bilq5giFB3+U3NoggH1RI8aURVOOE42pJhyPSk5oyUfVgHSloyVynuIiK
 m+aZt23WQbn+eBLpRH4pyfI7zHCOj5bKEb5pTF0edkwgeWtfKNo9Wy1r6 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10986"; a="19695173"
X-IronPort-AV: E=Sophos;i="6.06,165,1705392000"; d="scan'208";a="19695173"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 16:02:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,165,1705392000"; d="scan'208";a="34764566"
Received: from lkp-server02.sh.intel.com (HELO 3c78fa4d504c) ([10.239.97.151])
 by orviesa002.jf.intel.com with ESMTP; 16 Feb 2024 16:02:50 -0800
Received: from kbuild by 3c78fa4d504c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rb8AK-0001hM-1f;
 Sat, 17 Feb 2024 00:02:48 +0000
Date: Sat, 17 Feb 2024 08:02:38 +0800
From: kernel test robot <lkp@intel.com>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev
Subject: Re: [PATCH 3/4] drm/ttm: Consider hitch moves within bulk sublist
 moves
Message-ID: <202402170714.cflOUDkj-lkp@intel.com>
References: <20240216131446.101961-4-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240216131446.101961-4-thomas.hellstrom@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Thomas,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-misc/drm-misc-next]
[also build test WARNING on drm-tip/drm-tip next-20240216]
[cannot apply to drm-intel/for-linux-next drm-intel/for-linux-next-fixes linus/master v6.8-rc4]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Thomas-Hellstr-m/drm-ttm-Allow-TTM-LRU-list-nodes-of-different-types/20240216-211801
base:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
patch link:    https://lore.kernel.org/r/20240216131446.101961-4-thomas.hellstrom%40linux.intel.com
patch subject: [PATCH 3/4] drm/ttm: Consider hitch moves within bulk sublist moves
config: arm-defconfig (https://download.01.org/0day-ci/archive/20240217/202402170714.cflOUDkj-lkp@intel.com/config)
compiler: clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240217/202402170714.cflOUDkj-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202402170714.cflOUDkj-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/ttm/ttm_resource.c:545:20: warning: incompatible pointer to integer conversion assigning to 'u64' (aka 'unsigned long long') from 'u64 *' (aka 'unsigned long long *'); remove & [-Wint-conversion]
                   cursor->bulk_age = &bulk->age;
                                    ^ ~~~~~~~~~~
>> drivers/gpu/drm/ttm/ttm_resource.c:551:23: warning: comparison between pointer and integer ('u64' (aka 'unsigned long long') and 'u64 *' (aka 'unsigned long long *')) [-Wpointer-integer-compare]
           if (cursor->bulk_age == &bulk->age)
               ~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~
   2 warnings generated.


vim +545 drivers/gpu/drm/ttm/ttm_resource.c

   517	
   518	/* Adjust to a bulk sublist being bumped while traversing it.*/
   519	static bool
   520	ttm_resource_cursor_check_bulk(struct ttm_resource_cursor *cursor,
   521				       struct ttm_lru_item *next_lru)
   522	{
   523		struct ttm_resource *next = ttm_lru_item_to_res(next_lru);
   524		struct ttm_lru_bulk_move *bulk = NULL;
   525		struct ttm_buffer_object *bo = next->bo;
   526	
   527		lockdep_assert_held(&cursor->man->bdev->lru_lock);
   528		if (bo && bo->resource == next)
   529			bulk = bo->bulk_move;
   530	
   531		if (!bulk) {
   532			ttm_resource_cursor_clear_bulk(cursor);
   533			return false;
   534		}
   535	
   536		/*
   537		 * We encountered a bulk sublist. Record its age and
   538		 * set a hitch after the sublist.
   539		 */
   540		if (cursor->bulk != bulk) {
   541			struct ttm_lru_bulk_move_pos *pos =
   542				ttm_lru_bulk_move_pos(bulk, next);
   543	
   544			cursor->bulk = bulk;
 > 545			cursor->bulk_age = &bulk->age;
   546			list_move(&cursor->bulk_hitch.link, &pos->last->lru.link);
   547			return false;
   548		}
   549	
   550		/* Continue iterating down the bulk sublist */
 > 551		if (cursor->bulk_age == &bulk->age)
   552			return false;
   553	
   554		/*
   555		 * The bulk sublist in which we had a hitch has moved and the
   556		 * hitch moved with it. Restart iteration from a previously
   557		 * set hitch after the bulk_move, and remove that backup
   558		 * hitch.
   559		 */
   560		list_move(&cursor->hitch.link, &cursor->bulk_hitch.link);
   561		ttm_resource_cursor_clear_bulk(cursor);
   562	
   563		return true;
   564	}
   565	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
