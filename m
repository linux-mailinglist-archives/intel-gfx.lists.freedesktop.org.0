Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC9A54E61B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 17:31:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C4F510E2DA;
	Thu, 16 Jun 2022 15:31:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9633410E2DA
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 15:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655393466; x=1686929466;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=CkOkmvakkR/54sZr67BOlkJ5OkjjV4adwTsOrzUzY08=;
 b=XrM2czb4Q3VNGuXiInXMgSKE4WTRo005lDU7cqsPYBSjhsq5r5b1hxVc
 qgUN6A5ZGkdRAvG8pH/WIcTL0OpGBZn0t9A1PIgTQyI90O5w3uwtt7lMA
 /5DE0xrBlq84oEftyAhv97ib1JYP8UQGRouXTUOKMHP/1ErN2N+xJOg/O
 pgc2aBnHs7pbn12eRx9uc2taqHL+14ILmwgdZeGBr+uZK7WWk9Dwp1T9o
 RlBCKAGSvNS1prJbqTZpd3bjo46dOgSx+ZaS4Bh5D1Yg6S1LGOyTsjJXl
 3hSiKwnb/OJB4B+XqCTH5thTwQ3NGnUJ5NqpAvBg+2coFDMDCtx5Ze8Nu w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="279989355"
X-IronPort-AV: E=Sophos;i="5.92,305,1650956400"; d="scan'208";a="279989355"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 08:31:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,305,1650956400"; d="scan'208";a="653204654"
Received: from lkp-server01.sh.intel.com (HELO 60dabacc1df6) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 16 Jun 2022 08:31:04 -0700
Received: from kbuild by 60dabacc1df6 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o1rSZ-000OUl-Rw;
 Thu, 16 Jun 2022 15:31:03 +0000
Date: Thu, 16 Jun 2022 23:30:21 +0800
From: kernel test robot <lkp@intel.com>
To: Adrian Larumbe <adrian.larumbe@collabora.com>, daniel@ffwll.ch,
 intel-gfx@lists.freedesktop.org
Message-ID: <202206162323.1Npq58gH-lkp@intel.com>
References: <20220614011350.122168-4-adrian.larumbe@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220614011350.122168-4-adrian.larumbe@collabora.com>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/ttm: remove shmem memory
 region and gem object backend
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
Cc: adrian.larumbe@collabora.com, llvm@lists.linux.dev, kbuild-all@lists.01.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Adrian,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Adrian-Larumbe/remove-shmem-backend-and-region-and-unify-them-with-TTM/20220614-091628
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
config: i386-randconfig-a004 (https://download.01.org/0day-ci/archive/20220616/202206162323.1Npq58gH-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project f0e608de27b3d568000046eebf3712ab542979d6)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/c04ba9928dafe2d5889457af0f770e96da5798e1
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Adrian-Larumbe/remove-shmem-backend-and-region-and-unify-them-with-TTM/20220614-091628
        git checkout c04ba9928dafe2d5889457af0f770e96da5798e1
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/gem/i915_gem_ttm.c:1398: warning: expecting prototype for intel_region_ttm_shmem_init(). Prototype was for intel_region_ttm_init_shmem() instead
   drivers/gpu/drm/i915/gem/i915_gem_ttm.c:1419: warning: Function parameter or member 'offset' not described in '__i915_gem_ttm_object_init'
   drivers/gpu/drm/i915/gem/i915_gem_ttm.c:1419: warning: Function parameter or member 'page_size' not described in '__i915_gem_ttm_object_init'


vim +1398 drivers/gpu/drm/i915/gem/i915_gem_ttm.c

  1390	
  1391	/**
  1392	 * intel_region_ttm_shmem_init - Initialize a memory region for TTM.
  1393	 * @mem: The region to initialize.
  1394	 *
  1395	 * Return: 0 on success, negative error code on failure.
  1396	 */
  1397	static int intel_region_ttm_init_shmem(struct intel_memory_region *mem)
> 1398	{
  1399		i915_gemfs_init(mem->i915);
  1400	
  1401		return 0; /* Don't error, we can simply fallback to the kernel mnt */
  1402	}
  1403	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
