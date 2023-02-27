Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE856A44D3
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 15:40:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA33710E41B;
	Mon, 27 Feb 2023 14:40:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF64B10E41B;
 Mon, 27 Feb 2023 14:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677508847; x=1709044847;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=vsrlIykIlhNt8INTh9Xfrak8sikEmtN6SYM/LJ2B0DU=;
 b=YkHbwLQDgC9skl7DFzbBzJbeZwGeFb9JkfzQHcsYZXRm32Ywql/v5uL3
 3pFvqm8L/y1WrEjpWeB/TdyxiCyxwS5IKkkQRgI0LCqxOrj5i7yNgzc5W
 9PIoLmysG80OUpV0sF8x2YoGiWSVg2U0gQIPBbdvMFO9kzVt6U0th8Dte
 X0gHKvRePJosuyutLyVB4JvhEDDjPLWrsvEYTdtNLyLYhsloJGUtoUawI
 LWbqs9sS8LwzD0oDBRmY/fAv5F6XGsExepuElKO/H5z07vvBs9/C5g2eA
 Rg1skomElolQ+b2AOz0g7naeHcvEJlleUhkdA/fm5IlcqQP+/96CcKOFm A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="335352092"
X-IronPort-AV: E=Sophos;i="5.98,219,1673942400"; d="scan'208";a="335352092"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 06:40:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="742591983"
X-IronPort-AV: E=Sophos;i="5.98,219,1673942400"; d="scan'208";a="742591983"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 27 Feb 2023 06:40:45 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pWegG-0004Uv-2N;
 Mon, 27 Feb 2023 14:40:44 +0000
Date: Mon, 27 Feb 2023 22:40:28 +0800
From: kernel test robot <lkp@intel.com>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.sourceforge.net
Message-ID: <202302272233.3LnnRKDf-lkp@intel.com>
References: <20230227103853.12666-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230227103853.12666-1-thomas.hellstrom@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/tests: Suballocator test
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
Cc: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Christian Koenig <christian.koenig@amd.com>, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Thomas,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Thomas-Hellstr-m/drm-tests-Suballocator-test/20230227-184044
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230227103853.12666-1-thomas.hellstrom%40linux.intel.com
patch subject: [Intel-gfx] [PATCH] drm/tests: Suballocator test
config: x86_64-allyesconfig (https://download.01.org/0day-ci/archive/20230227/202302272233.3LnnRKDf-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-8) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/bf605f8a4492ba34499541f58ad29cf56bd9d852
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Thomas-Hellstr-m/drm-tests-Suballocator-test/20230227-184044
        git checkout bf605f8a4492ba34499541f58ad29cf56bd9d852
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=x86_64 olddefconfig
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202302272233.3LnnRKDf-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/tests/drm_suballoc_test.c:16:10: fatal error: drm/drm_suballoc.h: No such file or directory
      16 | #include <drm/drm_suballoc.h>
         |          ^~~~~~~~~~~~~~~~~~~~
   compilation terminated.


vim +16 drivers/gpu/drm/tests/drm_suballoc_test.c

     8	
     9	#include <linux/dma-fence.h>
    10	#include <linux/ktime.h>
    11	#include <linux/hrtimer.h>
    12	#include <linux/sizes.h>
    13	#include <linux/slab.h>
    14	#include <linux/spinlock.h>
    15	#include <linux/delay.h>
  > 16	#include <drm/drm_suballoc.h>
    17	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
