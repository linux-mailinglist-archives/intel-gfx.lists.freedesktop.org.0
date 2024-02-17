Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB477858D15
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Feb 2024 04:42:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DB5310E3AE;
	Sat, 17 Feb 2024 03:42:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZSf4ulRp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1945610E3AE
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Feb 2024 03:42:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708141330; x=1739677330;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=WKPs1tbxk6gIxG9rmJUjTlAi+Tsj+wKgjnfkHqq1kmk=;
 b=ZSf4ulRpb8QyrlQxFlzUhxc9Atj8Y9gy3cs+niF3DtxiLz9DSoGsXO6c
 k/4C59h6TajN4K+B8WtFLj47Z2yOLDSaje9tLThWP1IlaLZv52MLut/Tc
 v1SG/FjRNfxUQAw5UKL4vW5cvvor+pBhqhy1fhUrVFOWtrwkfvyvgvFBJ
 sxb1xOu7EN2GbdRC2Xs4pvSr+oNPIY5pz8g0t8PdhpMMaiTewi+y+H5xn
 2A2bPBMS0pj5WCkgSyjlA6KmfJLtsHOEpqxvLSO2fe+Vs1gI8IB7KSW7t
 JVsRi3zx7t3Q8G8nRBrA+jUOpva31StrQkiMJsNIB+1kGjjdBdvxrME5c Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10986"; a="2160996"
X-IronPort-AV: E=Sophos;i="6.06,165,1705392000"; 
   d="scan'208";a="2160996"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 19:42:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,165,1705392000"; 
   d="scan'208";a="4172854"
Received: from lkp-server02.sh.intel.com (HELO 3c78fa4d504c) ([10.239.97.151])
 by fmviesa008.fm.intel.com with ESMTP; 16 Feb 2024 19:42:08 -0800
Received: from kbuild by 3c78fa4d504c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rbBaX-0001nr-2D;
 Sat, 17 Feb 2024 03:42:05 +0000
Date: Sat, 17 Feb 2024 11:42:00 +0800
From: kernel test robot <lkp@intel.com>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev
Subject: Re: [PATCH 2/4] drm/ttm: Use LRU hitches
Message-ID: <202402171115.ELbaBdCa-lkp@intel.com>
References: <20240216131446.101961-3-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240216131446.101961-3-thomas.hellstrom@linux.intel.com>
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
[also build test WARNING on drm-intel/for-linux-next drm-intel/for-linux-next-fixes drm-tip/drm-tip linus/master v6.8-rc4 next-20240216]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Thomas-Hellstr-m/drm-ttm-Allow-TTM-LRU-list-nodes-of-different-types/20240216-211801
base:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
patch link:    https://lore.kernel.org/r/20240216131446.101961-3-thomas.hellstrom%40linux.intel.com
patch subject: [PATCH 2/4] drm/ttm: Use LRU hitches
config: m68k-allmodconfig (https://download.01.org/0day-ci/archive/20240217/202402171115.ELbaBdCa-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240217/202402171115.ELbaBdCa-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202402171115.ELbaBdCa-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/ttm/ttm_resource.c:58: warning: expecting prototype for ttm_resource_cursor_fini_locked(). Prototype was for ttm_resource_cursor_fini() instead


vim +58 drivers/gpu/drm/ttm/ttm_resource.c

    48	
    49	/**
    50	 * ttm_resource_cursor_fini_locked() - Finalize the LRU list cursor usage
    51	 * @cursor: The struct ttm_resource_cursor to finalize.
    52	 *
    53	 * The function pulls the LRU list cursor off any lists it was previusly
    54	 * attached to. Needs to be called without the LRU list lock held. The
    55	 * function can be called multiple times after eachother.
    56	 */
    57	void ttm_resource_cursor_fini(struct ttm_resource_cursor *cursor)
  > 58	{
    59		spinlock_t *lru_lock = &cursor->man->bdev->lru_lock;
    60	
    61		spin_lock(lru_lock);
    62		ttm_resource_cursor_fini_locked(cursor);
    63		spin_unlock(lru_lock);
    64	}
    65	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
