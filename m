Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52AADCA61E7
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Dec 2025 05:45:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E13710E0E7;
	Fri,  5 Dec 2025 04:45:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="muH+F3tx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E36A710E0E7;
 Fri,  5 Dec 2025 04:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764909899; x=1796445899;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=qhMCFBXZYfAQ1YzPVCa0uf16JHBx0R79cVDubR+LZKg=;
 b=muH+F3tx6zM7iB4FbGQJn+kOksRQLFuS1k3/iUz13+azq/ymP9lxL/fa
 9V54dhkVPERbMMHMmwJzmwCrlxfSUPdO62qSnlKLJjGEyVuz7vu/bVtlT
 ncMtHmUSr+4mGqAPu9HRGerrTVHgmEwOMvRKcX44XMjXcRRrGMzdb9Aiv
 yTqZvMSQHb6ex5E+8VZKO89e7f3CPc52q9nkuV0jzs6G8mYyZ0X0Q8mIA
 99eTJL/8x63VUbDQY07x0ZLcezbs4MPQgMuzvP0+MXngHthMvANM01iTB
 fxcYNn1o2YYYE0cxaeWyVLOjSmuWqA6VY/YSCjnbkq4a4Xzoo4AaITDTz Q==;
X-CSE-ConnectionGUID: kfL8ZNU+RqWfXHUTeuWiMA==
X-CSE-MsgGUID: J+gkOgr9QaKiYNWK5fBR3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="70791066"
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800"; d="scan'208";a="70791066"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 20:44:58 -0800
X-CSE-ConnectionGUID: ea7GKDgmT8mZTselO4mGNw==
X-CSE-MsgGUID: rdjnMboDSWybNHAlfQkJJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800"; d="scan'208";a="200321059"
Received: from lkp-server01.sh.intel.com (HELO 4664bbef4914) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 04 Dec 2025 20:44:56 -0800
Received: from kbuild by 4664bbef4914 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vRNgc-00000000Ebt-2I0Z;
 Fri, 05 Dec 2025 04:44:54 +0000
Date: Fri, 5 Dec 2025 12:44:29 +0800
From: kernel test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, jani.nikula@intel.com
Subject: Re: [PATCH 3/4] drm/{i915, xe}/stolen: move stolen memory handling
 to display parent interface
Message-ID: <202512051220.m3NhvHcT-lkp@intel.com>
References: <cc2125f57b98401ea47746ad4784bb4bc6b198c2.1764868989.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cc2125f57b98401ea47746ad4784bb4bc6b198c2.1764868989.git.jani.nikula@intel.com>
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

Hi Jani,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-tip/drm-tip]
[cannot apply to drm-i915/for-linux-next drm-i915/for-linux-next-fixes drm-xe/drm-xe-next linus/master v6.18 next-20251204]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jani-Nikula/drm-i915-fbc-let-to_intel_display-do-its-generic-magic/20251205-012659
base:   https://gitlab.freedesktop.org/drm/tip.git drm-tip
patch link:    https://lore.kernel.org/r/cc2125f57b98401ea47746ad4784bb4bc6b198c2.1764868989.git.jani.nikula%40intel.com
patch subject: [PATCH 3/4] drm/{i915, xe}/stolen: move stolen memory handling to display parent interface
config: x86_64-rhel-9.4-rust (https://download.01.org/0day-ci/archive/20251205/202512051220.m3NhvHcT-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
rustc: rustc 1.88.0 (6b00bc388 2025-06-23)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251205/202512051220.m3NhvHcT-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202512051220.m3NhvHcT-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_fbc.c:1011:11: error: call to undeclared function 'i915_gem_stolen_node_offset'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
    1011 |         offset = i915_gem_stolen_node_offset(fbc->compressed_fb) / (4 * 1024);
         |                  ^
   drivers/gpu/drm/i915/display/intel_fbc.c:1011:11: note: did you mean 'intel_parent_stolen_node_offset'?
   drivers/gpu/drm/i915/display/intel_parent.h:41:5: note: 'intel_parent_stolen_node_offset' declared here
      41 | u32 intel_parent_stolen_node_offset(struct intel_display *display, struct intel_stolen_node *node);
         |     ^
   1 error generated.


vim +/i915_gem_stolen_node_offset +1011 drivers/gpu/drm/i915/display/intel_fbc.c

0b806d62fd5f59 Vinod Govindapillai 2025-11-28   998  
0b806d62fd5f59 Vinod Govindapillai 2025-11-28   999  static void fbc_sys_cache_enable(const struct intel_fbc *fbc)
0b806d62fd5f59 Vinod Govindapillai 2025-11-28  1000  {
0b806d62fd5f59 Vinod Govindapillai 2025-11-28  1001  	struct intel_display *display = fbc->display;
0b806d62fd5f59 Vinod Govindapillai 2025-11-28  1002  	struct sys_cache_cfg *sys_cache = &display->fbc.sys_cache;
0b806d62fd5f59 Vinod Govindapillai 2025-11-28  1003  	int range, offset;
0b806d62fd5f59 Vinod Govindapillai 2025-11-28  1004  	u32 cfg;
0b806d62fd5f59 Vinod Govindapillai 2025-11-28  1005  
0b806d62fd5f59 Vinod Govindapillai 2025-11-28  1006  	if (!HAS_FBC_SYS_CACHE(display))
0b806d62fd5f59 Vinod Govindapillai 2025-11-28  1007  		return;
0b806d62fd5f59 Vinod Govindapillai 2025-11-28  1008  
0b806d62fd5f59 Vinod Govindapillai 2025-11-28  1009  	range = fbc_sys_cache_limit(display) / (64 * 1024);
0b806d62fd5f59 Vinod Govindapillai 2025-11-28  1010  
0b806d62fd5f59 Vinod Govindapillai 2025-11-28 @1011  	offset = i915_gem_stolen_node_offset(fbc->compressed_fb) / (4 * 1024);
0b806d62fd5f59 Vinod Govindapillai 2025-11-28  1012  
0b806d62fd5f59 Vinod Govindapillai 2025-11-28  1013  	cfg = FBC_SYS_CACHE_TAG_USE_RES_SPACE | FBC_SYS_CACHEABLE_RANGE(range) |
0b806d62fd5f59 Vinod Govindapillai 2025-11-28  1014  	      FBC_SYS_CACHE_START_BASE(offset);
0b806d62fd5f59 Vinod Govindapillai 2025-11-28  1015  
0b806d62fd5f59 Vinod Govindapillai 2025-11-28  1016  	mutex_lock(&sys_cache->lock);
0b806d62fd5f59 Vinod Govindapillai 2025-11-28  1017  	/* update sys cache config only if sys cache is unassigned */
0b806d62fd5f59 Vinod Govindapillai 2025-11-28  1018  	if (sys_cache->id == FBC_SYS_CACHE_ID_NONE)
0b806d62fd5f59 Vinod Govindapillai 2025-11-28  1019  		fbc_sys_cache_update_config(display, cfg, fbc->id);
0b806d62fd5f59 Vinod Govindapillai 2025-11-28  1020  	mutex_unlock(&sys_cache->lock);
0b806d62fd5f59 Vinod Govindapillai 2025-11-28  1021  }
0b806d62fd5f59 Vinod Govindapillai 2025-11-28  1022  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
