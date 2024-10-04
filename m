Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD1F99034B
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 14:49:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 297D810E266;
	Fri,  4 Oct 2024 12:49:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n+gO8Wzs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 487EE10E266;
 Fri,  4 Oct 2024 12:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728046161; x=1759582161;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=xdgsY0YDuDcng7CbNpryo4/J/L41PiaVwaZGfHmXK+I=;
 b=n+gO8WzsGHe/eHN5ZoKS/zMjzI8W67Lzm+tp2JXgcSjS6AklvouI7pzW
 JZ26pWuelahYAO4cI8F0Nj2f5mhmHU25mOFSaJfRBHfzQmrFFMWsnES2f
 CLolYbHFTvXVTJrSS5KwUqxaVQuqr8w16YSzVCPcbZa5JL6NxQahu1Cte
 whTqGSEKlZbNKVHthmT31zn85Mg9A4RIVv8DMGTApP9Ip56HADex8sJVL
 DyRq6eKvIx7Mz+3EXjllBFQ7YQ22AdvtgRgS+9qZG4NxLL6bhMa4ULYub
 EZlFP28BGbvjWsz1aOU0ufMyGZ1w+zjN2Z/+5NW6T53F9cgccieSAlzT3 Q==;
X-CSE-ConnectionGUID: /WO0UE0GQZm6ZLJ1kvzTSw==
X-CSE-MsgGUID: Lr6keODHSk2r35YFI4pAxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="37833779"
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="37833779"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2024 05:49:18 -0700
X-CSE-ConnectionGUID: ppB39njVRFKreHHoTE8YQw==
X-CSE-MsgGUID: PnoaQI93SwaIY7o85pFCtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="79122716"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 04 Oct 2024 05:49:16 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1swhkA-0001cy-2U;
 Fri, 04 Oct 2024 12:49:14 +0000
Date: Fri, 4 Oct 2024 20:48:36 +0800
From: kernel test robot <lkp@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-xe@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH v3 03/12] drm/i915/display: Use async flip when available
 for initial plane config
Message-ID: <202410042053.DCNgBMOr-lkp@intel.com>
References: <20241003154421.33805-4-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241003154421.33805-4-maarten.lankhorst@linux.intel.com>
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

Hi Maarten,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-xe/drm-xe-next]
[also build test ERROR on drm-intel/for-linux-next drm-intel/for-linux-next-fixes drm-tip/drm-tip linus/master v6.12-rc1]
[cannot apply to next-20241004]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Maarten-Lankhorst/drm-xe-display-Handle-stolen-bar-readout-in-the-same-way-as-lmem/20241004-000534
base:   https://gitlab.freedesktop.org/drm/xe/kernel.git drm-xe-next
patch link:    https://lore.kernel.org/r/20241003154421.33805-4-maarten.lankhorst%40linux.intel.com
patch subject: [PATCH v3 03/12] drm/i915/display: Use async flip when available for initial plane config
config: x86_64-rhel-8.3-rust (https://download.01.org/0day-ci/archive/20241004/202410042053.DCNgBMOr-lkp@intel.com/config)
compiler: clang version 18.1.8 (https://github.com/llvm/llvm-project 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241004/202410042053.DCNgBMOr-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202410042053.DCNgBMOr-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/skl_universal_plane.c:2814:14: error: call to undeclared function 'intel_read'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
    2814 |         plane_ctl = intel_read(i915, PLANE_CTL(pipe, plane_id));
         |                     ^
   1 error generated.


vim +/intel_read +2814 drivers/gpu/drm/i915/display/skl_universal_plane.c

  2789	
  2790	bool skl_fixup_initial_plane_config(struct intel_crtc *crtc,
  2791					    const struct intel_initial_plane_config *plane_config)
  2792	{
  2793		struct drm_i915_private *i915 = to_i915(crtc->base.dev);
  2794		struct intel_plane *plane = to_intel_plane(crtc->base.primary);
  2795		const struct intel_plane_state *plane_state =
  2796			to_intel_plane_state(plane->base.state);
  2797		enum plane_id plane_id = plane->id;
  2798		enum pipe pipe = crtc->pipe;
  2799		u32 base, plane_ctl;
  2800	
  2801		if (!plane_state->uapi.visible)
  2802			return false;
  2803	
  2804		base = intel_plane_ggtt_offset(plane_state);
  2805	
  2806		/*
  2807		 * We may have moved the surface to a different
  2808		 * part of ggtt, make the plane aware of that.
  2809		 */
  2810		if (plane_config->base == base)
  2811			return false;
  2812	
  2813		/* Perform an async flip to the new surface. */
> 2814		plane_ctl = intel_read(i915, PLANE_CTL(pipe, plane_id));

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
