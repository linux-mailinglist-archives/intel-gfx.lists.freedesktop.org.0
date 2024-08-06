Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EF3949567
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2024 18:17:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D598F10E3BD;
	Tue,  6 Aug 2024 16:17:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vst3L9da";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86D4A10E3BD;
 Tue,  6 Aug 2024 16:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722961050; x=1754497050;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=VBFqMyp0z0Fqbh+LSvutdD5ttwC1ITUFm1aAWojOAzc=;
 b=Vst3L9daxpaH//bkLdGfPx7xbopY4yyh6FwBnH1GPx//mlNW+1k+lYeZ
 xu4UCCM38om/qghfRelzw1ik6GGfIfE5Yg0X7mo4JNOhgvZVnVd8id5NQ
 ysPLoa11+BUy0fTyTUveefTtUOwLuFNf5oB3yUdBFYA6ZqV3x//Vseryl
 uEUU3Fpk0k9j5ndpFrsxh0zbuGoPuMZvbHHedZtwfY0d5TEePMf/HUdE2
 4KR4o/M4NaqQnxKKmppOcsjbwdFMSoBe7344cfIhsS+OmIFZeNxZCvVCm
 rwCTB9lJsaRHPiE3ySyoQNdfX4Nx/hB9/kjt03STY4pQ+2qrwjg5Q7TUr A==;
X-CSE-ConnectionGUID: kY6V7tbCRbeq9d+Twrb5ew==
X-CSE-MsgGUID: AXPDu+IXQrG8G26NC9GQ3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="20842311"
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="20842311"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 09:17:29 -0700
X-CSE-ConnectionGUID: WcThjglDRZqKLy8SIZI5nw==
X-CSE-MsgGUID: F0d1Qlo2RCSAUEF0jZJj6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="56264909"
Received: from unknown (HELO b6bf6c95bbab) ([10.239.97.151])
 by fmviesa007.fm.intel.com with ESMTP; 06 Aug 2024 09:17:27 -0700
Received: from kbuild by b6bf6c95bbab with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sbMsH-0004e6-1b;
 Tue, 06 Aug 2024 16:17:25 +0000
Date: Wed, 7 Aug 2024 00:17:07 +0800
From: kernel test robot <lkp@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev, Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCH] drm/xe/pm: Change HPD to polling on runtime suspend
Message-ID: <202408062332.8Cl1FjhB-lkp@intel.com>
References: <20240806085513.3051107-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240806085513.3051107-1-arun.r.murthy@intel.com>
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

Hi Arun,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-xe/drm-xe-next]
[also build test ERROR on drm-intel/for-linux-next drm-intel/for-linux-next-fixes drm-tip/drm-tip linus/master v6.11-rc2 next-20240806]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Arun-R-Murthy/drm-xe-pm-Change-HPD-to-polling-on-runtime-suspend/20240806-175155
base:   https://gitlab.freedesktop.org/drm/xe/kernel.git drm-xe-next
patch link:    https://lore.kernel.org/r/20240806085513.3051107-1-arun.r.murthy%40intel.com
patch subject: [PATCH] drm/xe/pm: Change HPD to polling on runtime suspend
config: i386-buildonly-randconfig-003-20240806 (https://download.01.org/0day-ci/archive/20240806/202408062332.8Cl1FjhB-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240806/202408062332.8Cl1FjhB-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202408062332.8Cl1FjhB-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/xe/xe_pm.c:25:10: fatal error: intel_hotplug.h: No such file or directory
      25 | #include "intel_hotplug.h"
         |          ^~~~~~~~~~~~~~~~~
   compilation terminated.


vim +25 drivers/gpu/drm/xe/xe_pm.c

    12	
    13	#include "display/xe_display.h"
    14	#include "xe_bo.h"
    15	#include "xe_bo_evict.h"
    16	#include "xe_device.h"
    17	#include "xe_device_sysfs.h"
    18	#include "xe_ggtt.h"
    19	#include "xe_gt.h"
    20	#include "xe_guc.h"
    21	#include "xe_irq.h"
    22	#include "xe_pcode.h"
    23	#include "xe_trace.h"
    24	#include "xe_wa.h"
  > 25	#include "intel_hotplug.h"
    26	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
