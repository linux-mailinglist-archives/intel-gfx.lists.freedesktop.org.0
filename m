Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C2A6A8798
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 18:14:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D65F110E27E;
	Thu,  2 Mar 2023 17:14:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CBAA10E075;
 Thu,  2 Mar 2023 17:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677777269; x=1709313269;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=4b2XstH8uXdbwvIssJz5qF/F9JTmZHrqNDeP7JLmvdA=;
 b=RhGhhmc+hWigwxFuQA5TGZUUtlJwFBpz82dC0LXfxpN5klEQ7gQzhwKN
 HGUxpYyTfP4THsmZf8uxRxwddzs/jqs8MYWjWk390bBO8xV9Hl7X0VJ4Z
 WFMVGUJ6uMhHwo3Olj/9Ztl9c7rww9beDqqxGlnde47/9g3LCxTDlS+xm
 xXLowRR/CoPD+jKOigaVMd3X0CoYs+I7FR+YXWLUH1j54i98qgKzBn+mH
 TY0WmA+FDVd7ctH7Hd+qT3y/UU+3KOq70uEZqnqEi0Vl7rv/Huvr8pXRO
 dOewYeMSHFpx6qXsXxdi4cORC7T1PHLmLRbVyQ02tt1eHEYpMr0lSSFgY g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="336304893"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="336304893"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 09:14:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="707485304"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="707485304"
Received: from lkp-server01.sh.intel.com (HELO 776573491cc5) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 02 Mar 2023 09:14:27 -0800
Received: from kbuild by 776573491cc5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pXmVe-0000iu-0g;
 Thu, 02 Mar 2023 17:14:26 +0000
Date: Fri, 3 Mar 2023 01:13:28 +0800
From: kernel test robot <lkp@intel.com>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org
Message-ID: <202303030052.ybIikXrN-lkp@intel.com>
References: <20230302083422.76608-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230302083422.76608-1-thomas.hellstrom@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH RESEND] drm/tests: Suballocator test
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

url:    https://github.com/intel-lab-lkp/linux/commits/Thomas-Hellstr-m/drm-tests-Suballocator-test/20230302-163704
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230302083422.76608-1-thomas.hellstrom%40linux.intel.com
patch subject: [Intel-gfx] [PATCH RESEND] drm/tests: Suballocator test
config: arm-allmodconfig (https://download.01.org/0day-ci/archive/20230303/202303030052.ybIikXrN-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/e970911bccf3145b76cd755e2d78c0c0f7f22ca1
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Thomas-Hellstr-m/drm-tests-Suballocator-test/20230302-163704
        git checkout e970911bccf3145b76cd755e2d78c0c0f7f22ca1
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=arm olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=arm SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303030052.ybIikXrN-lkp@intel.com/

All errors (new ones prefixed by >>, old ones prefixed by <<):

>> ERROR: modpost: "__aeabi_uldivmod" [drivers/gpu/drm/tests/drm_suballoc_test.ko] undefined!

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
