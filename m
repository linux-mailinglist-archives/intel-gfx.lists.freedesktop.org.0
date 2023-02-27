Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9A76A4427
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 15:19:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 024EF10E410;
	Mon, 27 Feb 2023 14:19:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A59810E410;
 Mon, 27 Feb 2023 14:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677507587; x=1709043587;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=snzB4bkoNKqD7Lik1ptpnELkEKhxK5QY0yDRo6Xp0b4=;
 b=bBCRxruA/KHI/cdRn++nxMg/ypKVNVbx7vu11UToENFC1wTrnZyFtQNC
 bJjaQ/mmRIngy+muVBn/wxywm8d1RNV7kTPMUEtTR/h2cussi0lKq7t5r
 7Ls2pEp9E4sYoaDeEZg+qoR2TKVUj4y6khvm9i3BlpRFH+a4fJws3fmQ8
 fdvNRv5kCLJwqIlweYubKCdqwjXC9M7nUMwvsb8AJGG0zF90MQPgwQIEt
 ZMnaOhY/vC/uxnXfbLFE2euzxk4j259vPQxYEvowspJjt8EvusAaSCuEN
 jDBobIXaF1ANN1NT39sXebrnxfFLwIy6iV1lDCA8V2ZxG14wGRwUxf3sw g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="335346860"
X-IronPort-AV: E=Sophos;i="5.98,332,1673942400"; d="scan'208";a="335346860"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 06:19:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="919372153"
X-IronPort-AV: E=Sophos;i="5.98,332,1673942400"; d="scan'208";a="919372153"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 27 Feb 2023 06:19:44 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pWeLw-0004UJ-0s;
 Mon, 27 Feb 2023 14:19:44 +0000
Date: Mon, 27 Feb 2023 22:18:54 +0800
From: kernel test robot <lkp@intel.com>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.sourceforge.net
Message-ID: <202302272259.dbMIwSUR-lkp@intel.com>
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
 intel-gfx@lists.freedesktop.org, llvm@lists.linux.dev,
 Christian Koenig <christian.koenig@amd.com>, oe-kbuild-all@lists.linux.dev,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Thomas,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Thomas-Hellstr-m/drm-tests-Suballocator-test/20230227-184044
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230227103853.12666-1-thomas.hellstrom%40linux.intel.com
patch subject: [Intel-gfx] [PATCH] drm/tests: Suballocator test
config: x86_64-randconfig-a006-20230227 (https://download.01.org/0day-ci/archive/20230227/202302272259.dbMIwSUR-lkp@intel.com/config)
compiler: clang version 14.0.6 (https://github.com/llvm/llvm-project f28c006a5895fc0e329fe15fead81e37457cb1d1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/bf605f8a4492ba34499541f58ad29cf56bd9d852
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Thomas-Hellstr-m/drm-tests-Suballocator-test/20230227-184044
        git checkout bf605f8a4492ba34499541f58ad29cf56bd9d852
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=x86_64 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/gpu/drm/tests/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202302272259.dbMIwSUR-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/tests/drm_suballoc_test.c:16:10: fatal error: 'drm/drm_suballoc.h' file not found
   #include <drm/drm_suballoc.h>
            ^~~~~~~~~~~~~~~~~~~~
   1 error generated.


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
