Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EE6B190D7
	for <lists+intel-gfx@lfdr.de>; Sun,  3 Aug 2025 01:34:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D45AE10E04B;
	Sat,  2 Aug 2025 23:33:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BYO4GmSn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE71810E04B
 for <intel-gfx@lists.freedesktop.org>; Sat,  2 Aug 2025 23:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754177637; x=1785713637;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=0IT2dxWZ/svkXUAwtBh9cUZ1/e/5rkknPxei1ZaoA9U=;
 b=BYO4GmSndrfyL6IrQ5cDohxsgi9hFwf6WTBLzH3Ha7gPPrDkbnRBwnQP
 +uEW6Ln8vA1kBJAim7sJt8EOSXuqtKLJsFQNlxGrZGX/yferW8Zvs4gCN
 4advaOONHkgXRCJbNz4PscWivJBpbagPdC0xRKEfaY7qXFMFPjL6Rd0li
 feCoBAX4SKuKwPOUjv2WsoC+8s0Y5gfcFLtgZgotgpdfdFnWCAXVgDKmQ
 POLf2Uf049llEVtsJU76MeXLH84fl1st8KSEFtndO0liQ1ROFHRd6zyA8
 Yk0fcG+B5AvSJ5Hk1+F+2fKdU6YxShlMLv//S4EkZBL4fuDoFLn1p11Kh A==;
X-CSE-ConnectionGUID: x1MXyzvwT0K58sPpq08eeg==
X-CSE-MsgGUID: qWdOZ2gXTRqnn/02l7eUew==
X-IronPort-AV: E=McAfee;i="6800,10657,11510"; a="56414574"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="56414574"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2025 16:33:56 -0700
X-CSE-ConnectionGUID: Ta3OkJOPSMapU+qZl/qiTA==
X-CSE-MsgGUID: Lfq8Y0AsTDCqmJpRjgUF3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="164190838"
Received: from lkp-server01.sh.intel.com (HELO 160750d4a34c) ([10.239.97.150])
 by orviesa008.jf.intel.com with ESMTP; 02 Aug 2025 16:33:54 -0700
Received: from kbuild by 160750d4a34c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uiLjb-0005ea-2s;
 Sat, 02 Aug 2025 23:33:51 +0000
Date: Sun, 3 Aug 2025 07:33:04 +0800
From: kernel test robot <lkp@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 John Harrison <John.C.Harrison@intel.com>
Subject: Re: [PATCH] drm/i915/guc: Include the GuC registers in the error state
Message-ID: <202508030713.XyzPrUx7-lkp@intel.com>
References: <20250729233305.1246875-2-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250729233305.1246875-2-daniele.ceraolospurio@intel.com>
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

Hi Daniele,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on drm-intel/for-linux-next-fixes drm-tip/drm-tip linus/master v6.16 next-20250801]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Daniele-Ceraolo-Spurio/drm-i915-guc-Include-the-GuC-registers-in-the-error-state/20250730-073447
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20250729233305.1246875-2-daniele.ceraolospurio%40intel.com
patch subject: [PATCH] drm/i915/guc: Include the GuC registers in the error state
config: i386-randconfig-r112-20250803 (https://download.01.org/0day-ci/archive/20250803/202508030713.XyzPrUx7-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14+deb12u1) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250803/202508030713.XyzPrUx7-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202508030713.XyzPrUx7-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/gpu/drm/i915/i915_gpu_error.c:696:3: sparse: sparse: symbol 'guc_hw_reg_state' was not declared. Should it be static?

vim +/guc_hw_reg_state +696 drivers/gpu/drm/i915/i915_gpu_error.c

   687	
   688	/*
   689	 * This list includes registers that are useful in debugging GuC hangs. We
   690	 * include them in the error state so that we don't have to reproduce the
   691	 * issue locally to capture them.
   692	 */
   693	const struct {
   694		u32 start;
   695		u32 count;
 > 696	} guc_hw_reg_state[] = {
   697		{ 0xc0b0, 2 },
   698		{ 0xc000, 65 },
   699		{ 0xc140, 1 },
   700		{ 0xc180, 16 },
   701		{ 0xc1dc, 10 },
   702		{ 0xc300, 79 },
   703		{ 0xc4b4, 47 },
   704		{ 0xc574, 1 },
   705		{ 0xc57c, 1 },
   706		{ 0xc584, 23 },
   707		{ 0xc5e4, 105 },
   708		{ 0xc7c0, 1 },
   709		{ 0xc0b0, 2 }
   710	};
   711	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
