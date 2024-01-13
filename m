Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4D382CA39
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jan 2024 07:27:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 231D810E048;
	Sat, 13 Jan 2024 06:27:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAD6810E048
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jan 2024 06:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705127257; x=1736663257;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=j98s5NZ8fEGR+sOr/XDd4Ut/ZG0+myZ3kkI1NCOFYos=;
 b=kZ5YpGn9TymYkbZOc/UBJ8PrMk2u1T8UsjzdgQo6GZf+dCuN6eNm/E7K
 kUUb7SEs0oKiUNXD1e5CCkaTkSEQMWfPp76GlyECaNv3Rh8/TU1/B/QgS
 GSCcLcVoE5+vmAN6K8nbXvDZOVe9fRPXElqKIGystIbTc3or9JKrZrt4r
 PkbgVB+n3pNBA8NlHbJP8p+DeCfxlXs6uKtPOm1p0z6EJ168+HuXo7b/e
 TZWalN+Gu6dmivf9qErSIiq8RQj5zH2ZeLPkxXvTIRilqNvlwkMIXpOwq
 YAzYylNEQdevOApca/W23eCZhkCb1wNkC7ygAa2m7lR5l1kzMY+ZjSClw Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="399034841"
X-IronPort-AV: E=Sophos;i="6.04,191,1695711600"; d="scan'208";a="399034841"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 22:27:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,191,1695711600"; d="scan'208";a="31611499"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by orviesa001.jf.intel.com with ESMTP; 12 Jan 2024 22:27:35 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rOXUS-000AAp-38;
 Sat, 13 Jan 2024 06:27:32 +0000
Date: Sat, 13 Jan 2024 14:27:13 +0800
From: kernel test robot <lkp@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 12/15] drm/i915: Simplify intel_initial_plane_config()
 calling convention
Message-ID: <202401131457.PbfNaUDC-lkp@intel.com>
References: <20231215105929.29568-13-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231215105929.29568-13-ville.syrjala@linux.intel.com>
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
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ville,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on drm-tip/drm-tip linus/master next-20240112]
[cannot apply to drm-intel/for-linux-next-fixes v6.7]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Ville-Syrjala/drm-i915-Use-struct-resource-for-memory-region-IO-as-well/20240112-020958
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20231215105929.29568-13-ville.syrjala%40linux.intel.com
patch subject: [PATCH v2 12/15] drm/i915: Simplify intel_initial_plane_config() calling convention
config: arm64-allmodconfig (https://download.01.org/0day-ci/archive/20240113/202401131457.PbfNaUDC-lkp@intel.com/config)
compiler: clang version 18.0.0git (https://github.com/llvm/llvm-project 9bde5becb44ea071f5e1fa1f5d4071dc8788b18c)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240113/202401131457.PbfNaUDC-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202401131457.PbfNaUDC-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/xe/display/xe_plane_initial.c:270:6: warning: no previous prototype for function 'intel_crtc_initial_plane_config' [-Wmissing-prototypes]
     270 | void intel_crtc_initial_plane_config(struct intel_crtc *crtc)
         |      ^
   drivers/gpu/drm/xe/display/xe_plane_initial.c:270:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
     270 | void intel_crtc_initial_plane_config(struct intel_crtc *crtc)
         | ^
         | static 
   1 warning generated.


vim +/intel_crtc_initial_plane_config +270 drivers/gpu/drm/xe/display/xe_plane_initial.c

44e694958b9539 Maarten Lankhorst 2023-08-17  269  
44e694958b9539 Maarten Lankhorst 2023-08-17 @270  void intel_crtc_initial_plane_config(struct intel_crtc *crtc)

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
