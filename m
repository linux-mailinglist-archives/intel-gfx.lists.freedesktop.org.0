Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5AE847D72
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Feb 2024 01:05:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 149ED10F1AA;
	Sat,  3 Feb 2024 00:05:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h/3E8a4+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Sat, 03 Feb 2024 00:05:47 UTC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6BF710F1AA
 for <intel-gfx@lists.freedesktop.org>; Sat,  3 Feb 2024 00:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706918748; x=1738454748;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=MVRIQWNEhJ6IvF2kCPeZP4p5KUrthvTq7J4fcJBUdHI=;
 b=h/3E8a4+tvv3E84gh234uD+BI1BcqJCrqicg5u4IUX99URUSxkmFEGny
 8wvi0YFBTqyxnFzBNCTje+VeCcb9ylCt1bsC/2uZnf0UiyYAbD9ayKpea
 xz9491DECBribxS3lYchujjsSuKDP01T2tNVYvR2pehD2vnI2CzL1tbdG
 AKajtOXLRxf5jSfIy11QCaBnbaXKPOY+3rs98o9ZqLXK5hoRXA1xzRllv
 t/HvDpL7MB4JiyzKI9hEa/wzYzjERZvKh6s53kSdUvshXoyd+sKKnMeaS
 e2bjWNOHtcpszDPAhJGGzRaeWysXZVoI/s+dulCoNctEfpUKkbFcjlu0H Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="172883"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="172883"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 15:58:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="932625978"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="932625978"
Received: from lkp-server02.sh.intel.com (HELO 59f4f4cd5935) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 02 Feb 2024 15:58:38 -0800
Received: from kbuild by 59f4f4cd5935 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rW3QZ-0004Q0-2Z;
 Fri, 02 Feb 2024 23:58:35 +0000
Date: Sat, 3 Feb 2024 07:58:35 +0800
From: kernel test robot <lkp@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 Andrzej Hajda <andrzej.hajda@intel.com>
Subject: Re: [PATCH v3 12/16] drm/i915: Simplify intel_initial_plane_config()
 calling convention
Message-ID: <202402030704.nGzOFDCt-lkp@intel.com>
References: <20240116075636.6121-13-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240116075636.6121-13-ville.syrjala@linux.intel.com>
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

Hi Ville,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-intel/for-linux-next]
[also build test ERROR on drm-intel/for-linux-next-fixes drm-tip/drm-tip linus/master v6.8-rc2 next-20240202]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Ville-Syrjala/drm-i915-Use-struct-resource-for-memory-region-IO-as-well/20240125-222947
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20240116075636.6121-13-ville.syrjala%40linux.intel.com
patch subject: [PATCH v3 12/16] drm/i915: Simplify intel_initial_plane_config() calling convention
config: x86_64-randconfig-076-20240202 (https://download.01.org/0day-ci/archive/20240203/202402030704.nGzOFDCt-lkp@intel.com/config)
compiler: clang version 17.0.6 (https://github.com/llvm/llvm-project 6009708b4367171ccdbf4b5905cb6a803753fe18)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240203/202402030704.nGzOFDCt-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202402030704.nGzOFDCt-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/xe/display/xe_plane_initial.c:270:6: error: no previous prototype for function 'intel_crtc_initial_plane_config' [-Werror,-Wmissing-prototypes]
     270 | void intel_crtc_initial_plane_config(struct intel_crtc *crtc)
         |      ^
   drivers/gpu/drm/xe/display/xe_plane_initial.c:270:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
     270 | void intel_crtc_initial_plane_config(struct intel_crtc *crtc)
         | ^
         | static 
   1 error generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for DRM_I915_DEBUG_GEM
   Depends on [n]: HAS_IOMEM [=y] && DRM_I915 [=m] && EXPERT [=y] && DRM_I915_WERROR [=n]
   Selected by [m]:
   - DRM_I915_DEBUG [=y] && HAS_IOMEM [=y] && DRM_I915 [=m] && EXPERT [=y] && !COMPILE_TEST [=n]


vim +/intel_crtc_initial_plane_config +270 drivers/gpu/drm/xe/display/xe_plane_initial.c

44e694958b9539 Maarten Lankhorst 2023-08-17  269  
44e694958b9539 Maarten Lankhorst 2023-08-17 @270  void intel_crtc_initial_plane_config(struct intel_crtc *crtc)

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
