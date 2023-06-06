Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F5F723AED
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 10:05:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0271510E2D6;
	Tue,  6 Jun 2023 08:05:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2E6110E229;
 Tue,  6 Jun 2023 08:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686038720; x=1717574720;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=YZ+BShNVcqwz22yCNfebC9mwpM3gDyllJShjKLtadC4=;
 b=FgkPo7c45OIUkWbAFvOXYIRy3QhzkNWTfKXMHGlm1XLex4ynkQyibADq
 1dzfaRUTrWgsoG1Q4EgtyezHgZg7bgVYT1hNUWO9YGnYAfyjpSlWovW4y
 k7WfSBQ3u4cypaMy0kuKfkACwmcWEBLWxuPB0M14bQdCAD/RXREbRQZed
 wXV8FPMbmW5fi/cBfZ5knl5T0KGkuolwlsWUVRX02qQrj1h1G9I0NNRx/
 ElNI0qJB8mDxT1T3lfpEXa83eRVgoU7ugT2W2XUue8Ya7+Ga5P6V2kkAo
 9UX0gn7Nm7PJOIofsbFnrDgHzMaCGEqHX9wWsBmhwUxexrMfe8DD5TYcg w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="355450689"
X-IronPort-AV: E=Sophos;i="6.00,219,1681196400"; d="scan'208";a="355450689"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 01:05:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="659421681"
X-IronPort-AV: E=Sophos;i="6.00,219,1681196400"; d="scan'208";a="659421681"
Received: from lkp-server01.sh.intel.com (HELO 15ab08e44a81) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 06 Jun 2023 01:05:06 -0700
Received: from kbuild by 15ab08e44a81 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q6Rgf-00050d-3B;
 Tue, 06 Jun 2023 08:05:05 +0000
Date: Tue, 6 Jun 2023 16:04:45 +0800
From: kernel test robot <lkp@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202306061545.foCGgcsF-lkp@intel.com>
References: <20230606022402.2048235-5-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230606022402.2048235-5-daniele.ceraolospurio@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 4/5] drm/i915/mtl/gsc: Add a gsc_info
 debugfs
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
Cc: llvm@lists.linux.dev, dri-devel@lists.freedesktop.org,
 Alan Previn <alan.previn.teres.alexis@intel.com>,
 oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Daniele,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Daniele-Ceraolo-Spurio/drm-i915-gsc-fixes-and-updates-for-GSC-memory-allocation/20230606-102510
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230606022402.2048235-5-daniele.ceraolospurio%40intel.com
patch subject: [Intel-gfx] [PATCH v2 4/5] drm/i915/mtl/gsc: Add a gsc_info debugfs
config: x86_64-randconfig-a014-20230606 (https://download.01.org/0day-ci/archive/20230606/202306061545.foCGgcsF-lkp@intel.com/config)
compiler: clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)
reproduce (this is a W=1 build):
        mkdir -p ~/bin
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git remote add drm-tip git://anongit.freedesktop.org/drm/drm-tip
        git fetch drm-tip drm-tip
        git checkout drm-tip/drm-tip
        b4 shazam https://lore.kernel.org/r/20230606022402.2048235-5-daniele.ceraolospurio@intel.com
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang ~/bin/make.cross W=1 O=build_dir ARCH=x86_64 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang ~/bin/make.cross W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202306061545.foCGgcsF-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.c:28:6: error: no previous prototype for function 'intel_gsc_uc_debugfs_register' [-Werror,-Wmissing-prototypes]
   void intel_gsc_uc_debugfs_register(struct intel_gsc_uc *gsc_uc, struct dentry *root)
        ^
   drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.c:28:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void intel_gsc_uc_debugfs_register(struct intel_gsc_uc *gsc_uc, struct dentry *root)
   ^
   static 
   1 error generated.


vim +/intel_gsc_uc_debugfs_register +28 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.c

    27	
  > 28	void intel_gsc_uc_debugfs_register(struct intel_gsc_uc *gsc_uc, struct dentry *root)

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
