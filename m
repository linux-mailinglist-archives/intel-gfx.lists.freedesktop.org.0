Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A4185912E
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Feb 2024 17:46:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8EF310E388;
	Sat, 17 Feb 2024 16:46:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ctuY9ubF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B96610E388
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Feb 2024 16:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708188386; x=1739724386;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=6PI9C2RgxjhPtQNa4x+Pp7TbpLFrr6ObD0mpCDOcbAQ=;
 b=ctuY9ubFyq+OBSiHtmI0BGgt5yp9YUGVeVIAYQ+mfzaHpbPYl6zTFBOp
 53nsRFre05vADkU3/LNpT1QPnXbKVKfwLlqQH5YwHUb5HF3FeHXn2ILaB
 ArrF9pgxGGVu6Fz8JvMDz0+dlGUt/ku8G8BUrQwaHcT6MpT4eNk0i3ytQ
 8knTSWYrrYdAblj/3lettod6/PSFE1UL4EgKonIgMJOcde52OQB6JxX2V
 RgEDZ/wFJR8NLJpDL/ay9TOWzLLOCOVYcZS/hKzGpGfI8vM5gu3KyrMlx
 QB+CBT6z5TZhNnTPFpK/DFrHElwgcz39SbrwB11r3GdLwOuxtT0I/wg3G A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10987"; a="19830657"
X-IronPort-AV: E=Sophos;i="6.06,166,1705392000"; d="scan'208";a="19830657"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2024 08:46:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,166,1705392000"; 
   d="scan'208";a="4260197"
Received: from lkp-server02.sh.intel.com (HELO 3c78fa4d504c) ([10.239.97.151])
 by fmviesa008.fm.intel.com with ESMTP; 17 Feb 2024 08:46:24 -0800
Received: from kbuild by 3c78fa4d504c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rbNpV-0002He-2D;
 Sat, 17 Feb 2024 16:46:21 +0000
Date: Sun, 18 Feb 2024 00:45:30 +0800
From: kernel test robot <lkp@intel.com>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev
Subject: Re: [PATCH 3/4] drm/ttm: Consider hitch moves within bulk sublist
 moves
Message-ID: <202402180043.xVwOJQs2-lkp@intel.com>
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
config: x86_64-randconfig-121-20240217 (https://download.01.org/0day-ci/archive/20240218/202402180043.xVwOJQs2-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240218/202402180043.xVwOJQs2-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202402180043.xVwOJQs2-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/gpu/drm/ttm/ttm_resource.c:545:34: sparse: sparse: incorrect type in assignment (different base types) @@     expected unsigned long long [usertype] bulk_age @@     got unsigned long long * @@
   drivers/gpu/drm/ttm/ttm_resource.c:545:34: sparse:     expected unsigned long long [usertype] bulk_age
   drivers/gpu/drm/ttm/ttm_resource.c:545:34: sparse:     got unsigned long long *
>> drivers/gpu/drm/ttm/ttm_resource.c:551:30: sparse: sparse: incompatible types for operation (==):
   drivers/gpu/drm/ttm/ttm_resource.c:551:30: sparse:    unsigned long long [usertype] bulk_age
   drivers/gpu/drm/ttm/ttm_resource.c:551:30: sparse:    unsigned long long *
   drivers/gpu/drm/ttm/ttm_resource.c: note: in included file (through include/linux/fwnode.h, include/linux/logic_pio.h, include/asm-generic/io.h, ...):
   include/linux/list.h:83:21: sparse: sparse: self-comparison always evaluates to true
   include/linux/list.h:83:21: sparse: sparse: self-comparison always evaluates to true
   include/linux/list.h:83:21: sparse: sparse: self-comparison always evaluates to true
   include/linux/list.h:83:21: sparse: sparse: self-comparison always evaluates to true
   include/linux/list.h:83:21: sparse: sparse: self-comparison always evaluates to true
   include/linux/list.h:83:21: sparse: sparse: self-comparison always evaluates to true
   include/linux/list.h:83:21: sparse: sparse: self-comparison always evaluates to true
   include/linux/list.h:83:21: sparse: sparse: self-comparison always evaluates to true
   include/linux/list.h:83:21: sparse: sparse: self-comparison always evaluates to true
   include/linux/list.h:83:21: sparse: sparse: self-comparison always evaluates to true
   include/linux/list.h:83:21: sparse: sparse: self-comparison always evaluates to true

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
