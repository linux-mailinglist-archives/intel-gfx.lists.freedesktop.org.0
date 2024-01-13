Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5BE82C87A
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jan 2024 01:55:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF82410E021;
	Sat, 13 Jan 2024 00:55:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2AEC10E021
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jan 2024 00:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705107328; x=1736643328;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=kR5kxUGyi4v0IXzo2nMiWalnKEyHQ7edJMGt7yb9jaU=;
 b=GO3omQGoDJmpCdx2ko/RpLD4PJB7h3ROQB0x4nnFAAtfYwxeOYwIKsOM
 BAoIwOJ2/CND31/iDLVqY6boasSR3o1jZMJE5TJY5+gCFWPmAiEnIwBWx
 rLJHI5ZtvMpeNnjxAzIKYIi49JoIhHtMKH+XmV7tBJJZo6eIEGLzVKmGk
 I8o8Q7dwkDfrWZHJJ+41+xy24VnROH8XMahY/pn2MXI42XSG3VasS81oh
 uZC9Ht/ripKegHSga1JxF8MtIUGwHynNlSf+UfpvEGM1YGQLQoSjSB/j4
 H0xvIATuegzjbDS3CflDRDccAAYvGSzNbAN0I52/5AWR8in1sQ9YLX5vZ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="396468294"
X-IronPort-AV: E=Sophos;i="6.04,191,1695711600"; d="scan'208";a="396468294"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 16:55:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="783209796"
X-IronPort-AV: E=Sophos;i="6.04,191,1695711600"; d="scan'208";a="783209796"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 12 Jan 2024 16:55:26 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rOSJ2-0009wq-1w;
 Sat, 13 Jan 2024 00:55:24 +0000
Date: Sat, 13 Jan 2024 08:55:08 +0800
From: kernel test robot <lkp@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 12/15] drm/i915: Simplify intel_initial_plane_config()
 calling convention
Message-ID: <202401130812.FuCMw99v-lkp@intel.com>
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
Cc: oe-kbuild-all@lists.linux.dev
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
config: arm64-randconfig-004-20240113 (https://download.01.org/0day-ci/archive/20240113/202401130812.FuCMw99v-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240113/202401130812.FuCMw99v-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202401130812.FuCMw99v-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/xe/display/xe_plane_initial.c:270:6: warning: no previous prototype for 'intel_crtc_initial_plane_config' [-Wmissing-prototypes]
     270 | void intel_crtc_initial_plane_config(struct intel_crtc *crtc)
         |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for FB_IOMEM_HELPERS
   Depends on [n]: HAS_IOMEM [=y] && FB_CORE [=n]
   Selected by [m]:
   - DRM_XE_DISPLAY [=y] && HAS_IOMEM [=y] && DRM_XE [=m] && EXPERT [=y] && DRM_XE [=m]=m


vim +/intel_crtc_initial_plane_config +270 drivers/gpu/drm/xe/display/xe_plane_initial.c

44e694958b9539 Maarten Lankhorst 2023-08-17  269  
44e694958b9539 Maarten Lankhorst 2023-08-17 @270  void intel_crtc_initial_plane_config(struct intel_crtc *crtc)

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
