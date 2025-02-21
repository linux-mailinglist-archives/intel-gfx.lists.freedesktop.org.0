Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29542A3EBD1
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2025 05:26:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2FF510E212;
	Fri, 21 Feb 2025 04:26:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZYHgqCGw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A45C310E211;
 Fri, 21 Feb 2025 04:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740111969; x=1771647969;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=syo3d7bvXoQZ1Do7oJJt+kB47y3Omr8QxkTUMYzdx68=;
 b=ZYHgqCGwTjfLkPwVTuaTY8rm1AHfPE8kckxzq75vHaJteKJ2nQ/u+fsx
 hAy+he4w/zJ+2VOb0TD2KsTJXFF4PWbeo3Rt/dleDDTzE9OakSbMr3mZ9
 M2/W0524zvOedVT6yy9Duc1YXf7VBklEAQXK5tle1yulQyRboIhCawYGt
 fJVbM6iWVGJzqesIgS11lX2Ne/8er2SOxPIgD4FSwuli7gtYcq8Z8cd3y
 K/+ib1vKR0nJ86RQWDelFVzzOPo5Xb/4yj6xCWwKtVG102qphqh9sYJlx
 3jtz/e26m5+6cWcDdk0vyIw27tq1mV3rzvKBOqzDBnk+ZtJzz529+SVN3 w==;
X-CSE-ConnectionGUID: 2nVI4bVsQketlUcUaeFHUQ==
X-CSE-MsgGUID: 9dQmKf3dS1ezN2wOzhMpzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="43751871"
X-IronPort-AV: E=Sophos;i="6.13,303,1732608000"; d="scan'208";a="43751871"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 20:26:09 -0800
X-CSE-ConnectionGUID: hs3wJB+dRrC4cKIlmbbA/Q==
X-CSE-MsgGUID: KRLS4/NLRca3eS1l1QkBuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,303,1732608000"; d="scan'208";a="114973185"
Received: from lkp-server02.sh.intel.com (HELO 76cde6cc1f07) ([10.239.97.151])
 by orviesa009.jf.intel.com with ESMTP; 20 Feb 2025 20:26:08 -0800
Received: from kbuild by 76cde6cc1f07 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tlKc1-00056j-1X;
 Fri, 21 Feb 2025 04:26:05 +0000
Date: Fri, 21 Feb 2025 12:25:43 +0800
From: kernel test robot <lkp@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev, matthew.d.roper@intel.com
Subject: Re: [PATCH 3/4] drm/xe: Drop usage of TIMESTAMP_OVERRIDE
Message-ID: <202502211245.wEClyBRb-lkp@intel.com>
References: <20250221003843.443559-9-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250221003843.443559-9-matthew.d.roper@intel.com>
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

Hi Matt,

kernel test robot noticed the following build warnings:

[auto build test WARNING on next-20250220]
[cannot apply to drm-xe/drm-xe-next v6.14-rc3 v6.14-rc2 v6.14-rc1 linus/master v6.14-rc3]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Matt-Roper/drm-i915-display-Make-refclk-fetching-logic-reusable/20250221-084058
base:   next-20250220
patch link:    https://lore.kernel.org/r/20250221003843.443559-9-matthew.d.roper%40intel.com
patch subject: [PATCH 3/4] drm/xe: Drop usage of TIMESTAMP_OVERRIDE
config: i386-buildonly-randconfig-003-20250221 (https://download.01.org/0day-ci/archive/20250221/202502211245.wEClyBRb-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250221/202502211245.wEClyBRb-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202502211245.wEClyBRb-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from drivers/gpu/drm/xe/xe_irq.c:12:
>> drivers/gpu/drm/xe/display/xe_display.h:77:12: warning: 'xe_display_get_refclk' defined but not used [-Wunused-function]
      77 | static u32 xe_display_get_refclk(struct xe_device *xe) { return 38400; }
         |            ^~~~~~~~~~~~~~~~~~~~~


vim +/xe_display_get_refclk +77 drivers/gpu/drm/xe/display/xe_display.h

    76	
  > 77	static u32 xe_display_get_refclk(struct xe_device *xe) { return 38400; }
    78	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
