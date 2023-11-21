Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 017567F3712
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Nov 2023 21:05:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC97310E59B;
	Tue, 21 Nov 2023 20:05:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9FB110E03A
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Nov 2023 20:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700597114; x=1732133114;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=5gAvxm4/7KiptJjPowgP3EKHmQ+fF11sSqgWEbTteY8=;
 b=gMAaFVMoypd9DCGig878dkOHAIVAvLBmditjkJtUjFkewPIr65uAJ+Ms
 4h/6Acq17b4pZ7CROiDyUjYnCuceXCLTZEQT0Xj7CdiAx1J+zAYYivlwb
 EBZf1vrt6WxkzYjAUHltECDj6erPdnDBP6gzt1PeTpHisDnfksCRKdcbm
 rgWVpON70e2R/+oFv+6cdkWYrz3z3nXuDdNbQOG3frLSoPyXb8+6UN5UR
 PK0I9RmOjWzViKtiBP9g8rjRKu+amG1KeMR9UlE1yMt6EMiWx1bl4jUp/
 IuYDQgKPw/AohUlEdCmlkHu2Jps+uobOfWqI3RuXx0sTPmzcGOcL/H020 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="391691348"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="391691348"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 12:05:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="760214720"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="760214720"
Received: from lkp-server02.sh.intel.com (HELO b8de5498638e) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 21 Nov 2023 12:05:12 -0800
Received: from kbuild by b8de5498638e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r5Wzd-0008Cs-2k;
 Tue, 21 Nov 2023 20:05:09 +0000
Date: Wed, 22 Nov 2023 04:04:54 +0800
From: kernel test robot <lkp@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202311220315.YZAdz5tr-lkp@intel.com>
References: <20231121112729.4191245-5-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231121112729.4191245-5-jouni.hogander@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 4/4] drm/i915/display: Split i915
 specific code away from intel_fb.c
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

Hi Jouni,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Jouni-H-gander/drm-i915-display-use-intel_bo_to_drm_bo-in-intel_fb-c/20231121-193155
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20231121112729.4191245-5-jouni.hogander%40intel.com
patch subject: [Intel-gfx] [PATCH v5 4/4] drm/i915/display: Split i915 specific code away from intel_fb.c
config: x86_64-allyesconfig (https://download.01.org/0day-ci/archive/20231122/202311220315.YZAdz5tr-lkp@intel.com/config)
compiler: clang version 16.0.4 (https://github.com/llvm/llvm-project.git ae42196bc493ffe877a7e3dff8be32035dea4d07)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231122/202311220315.YZAdz5tr-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202311220315.YZAdz5tr-lkp@intel.com/

All errors (new ones prefixed by >>):

>> make[7]: *** No rule to make target 'drivers/gpu/drm/i915/display/intel_fb_bo.o', needed by 'drivers/gpu/drm/i915/built-in.a'.
   make[7]: *** [scripts/Makefile.build:243: drivers/gpu/drm/i915/display/intel_fb.o] Error 1
   make[7]: Target 'drivers/gpu/drm/i915/' not remade because of errors.
--
>> drivers/gpu/drm/i915/display/intel_fb.c:17:10: fatal error: 'intel_fb_bo.h' file not found
   #include "intel_fb_bo.h"
            ^~~~~~~~~~~~~~~
   1 error generated.


vim +17 drivers/gpu/drm/i915/display/intel_fb.c

    11	
    12	#include "i915_drv.h"
    13	#include "intel_display.h"
    14	#include "intel_display_types.h"
    15	#include "intel_dpt.h"
    16	#include "intel_fb.h"
  > 17	#include "intel_fb_bo.h"
    18	#include "intel_frontbuffer.h"
    19	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
