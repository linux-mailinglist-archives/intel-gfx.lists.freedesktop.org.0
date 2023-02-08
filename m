Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1F468EF1C
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 13:38:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C8A310E76C;
	Wed,  8 Feb 2023 12:38:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB2A310E776
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 12:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675859885; x=1707395885;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=9MTIc1tdFbH0n1cBv/CkzSH7Uc8zTFL+pAKK3lgOxOQ=;
 b=c71CcvurjayvPKLJ1OHFpMI3JgWCZEBhoFeOg91KuqXBDZ86neOg2mVi
 greH5IUE9tEIr8xW2gcaREL6OxAElIzvsvH2jG7BF9+CUBUBU9WKNzkyH
 sZc6/bX2IzALOn2iyO+q1YsCqlbEBHZ9lq/7EucA9WJ7LUbdDIBEireCi
 CX/UqYmc3CWzAppW4fALl17EY976lQ0mVmCrVYDT464Vwgg8VtPYdlNvn
 ACHCOBxJ6oHDsCBvJ7s0ZolNP4T22hwRMtaTcGXdbI46bPVJGC1yUCKNJ
 t3lktC5xZmRdm06Dazz+WtAxaXlX+KoSrWwQd8aoBeG+9FtVg022O120M Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="394379188"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="394379188"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 04:38:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="756036674"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="756036674"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Feb 2023 04:38:04 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pPji7-0004RW-1E;
 Wed, 08 Feb 2023 12:38:03 +0000
Date: Wed, 8 Feb 2023 20:37:21 +0800
From: kernel test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <202302082023.fQH3CQDb-lkp@intel.com>
References: <6fc335ec79f163b7a612af012ce07be6d98f2ef9.1675849634.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6fc335ec79f163b7a612af012ce07be6d98f2ef9.1675849634.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 04/10] drm/i915/wm: add .get_hw_state to
 watermark funcs
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
Cc: jani.nikula@intel.com, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

I love your patch! Yet something to improve:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Jani-Nikula/drm-i915-move-memory-frequency-detection-to-intel_dram-c/20230208-175057
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/6fc335ec79f163b7a612af012ce07be6d98f2ef9.1675849634.git.jani.nikula%40intel.com
patch subject: [Intel-gfx] [PATCH 04/10] drm/i915/wm: add .get_hw_state to watermark funcs
config: i386-defconfig (https://download.01.org/0day-ci/archive/20230208/202302082023.fQH3CQDb-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-8) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/3be1dad7406a8c767260601b10af82797025aae3
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Jani-Nikula/drm-i915-move-memory-frequency-detection-to-intel_dram-c/20230208-175057
        git checkout 3be1dad7406a8c767260601b10af82797025aae3
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=i386 olddefconfig
        make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/i9xx_wm.c:3824:6: error: no previous prototype for 'ilk_wm_get_hw_state' [-Werror=missing-prototypes]
    3824 | void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv)
         |      ^~~~~~~~~~~~~~~~~~~
   cc1: all warnings being treated as errors


vim +/ilk_wm_get_hw_state +3824 drivers/gpu/drm/i915/display/i9xx_wm.c

f21b5d6fc26440 Jani Nikula 2023-02-08  3823  
f21b5d6fc26440 Jani Nikula 2023-02-08 @3824  void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv)
f21b5d6fc26440 Jani Nikula 2023-02-08  3825  {
f21b5d6fc26440 Jani Nikula 2023-02-08  3826  	struct ilk_wm_values *hw = &dev_priv->display.wm.hw;
f21b5d6fc26440 Jani Nikula 2023-02-08  3827  	struct intel_crtc *crtc;
f21b5d6fc26440 Jani Nikula 2023-02-08  3828  
f21b5d6fc26440 Jani Nikula 2023-02-08  3829  	ilk_init_lp_watermarks(dev_priv);
f21b5d6fc26440 Jani Nikula 2023-02-08  3830  
f21b5d6fc26440 Jani Nikula 2023-02-08  3831  	for_each_intel_crtc(&dev_priv->drm, crtc)
f21b5d6fc26440 Jani Nikula 2023-02-08  3832  		ilk_pipe_wm_get_hw_state(crtc);
f21b5d6fc26440 Jani Nikula 2023-02-08  3833  
f21b5d6fc26440 Jani Nikula 2023-02-08  3834  	hw->wm_lp[0] = intel_uncore_read(&dev_priv->uncore, WM1_LP_ILK);
f21b5d6fc26440 Jani Nikula 2023-02-08  3835  	hw->wm_lp[1] = intel_uncore_read(&dev_priv->uncore, WM2_LP_ILK);
f21b5d6fc26440 Jani Nikula 2023-02-08  3836  	hw->wm_lp[2] = intel_uncore_read(&dev_priv->uncore, WM3_LP_ILK);
f21b5d6fc26440 Jani Nikula 2023-02-08  3837  
f21b5d6fc26440 Jani Nikula 2023-02-08  3838  	hw->wm_lp_spr[0] = intel_uncore_read(&dev_priv->uncore, WM1S_LP_ILK);
f21b5d6fc26440 Jani Nikula 2023-02-08  3839  	if (DISPLAY_VER(dev_priv) >= 7) {
f21b5d6fc26440 Jani Nikula 2023-02-08  3840  		hw->wm_lp_spr[1] = intel_uncore_read(&dev_priv->uncore, WM2S_LP_IVB);
f21b5d6fc26440 Jani Nikula 2023-02-08  3841  		hw->wm_lp_spr[2] = intel_uncore_read(&dev_priv->uncore, WM3S_LP_IVB);
f21b5d6fc26440 Jani Nikula 2023-02-08  3842  	}
f21b5d6fc26440 Jani Nikula 2023-02-08  3843  
f21b5d6fc26440 Jani Nikula 2023-02-08  3844  	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
f21b5d6fc26440 Jani Nikula 2023-02-08  3845  		hw->partitioning = (intel_uncore_read(&dev_priv->uncore, WM_MISC) &
f21b5d6fc26440 Jani Nikula 2023-02-08  3846  				    WM_MISC_DATA_PARTITION_5_6) ?
f21b5d6fc26440 Jani Nikula 2023-02-08  3847  			INTEL_DDB_PART_5_6 : INTEL_DDB_PART_1_2;
f21b5d6fc26440 Jani Nikula 2023-02-08  3848  	else if (IS_IVYBRIDGE(dev_priv))
f21b5d6fc26440 Jani Nikula 2023-02-08  3849  		hw->partitioning = (intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL2) &
f21b5d6fc26440 Jani Nikula 2023-02-08  3850  				    DISP_DATA_PARTITION_5_6) ?
f21b5d6fc26440 Jani Nikula 2023-02-08  3851  			INTEL_DDB_PART_5_6 : INTEL_DDB_PART_1_2;
f21b5d6fc26440 Jani Nikula 2023-02-08  3852  
f21b5d6fc26440 Jani Nikula 2023-02-08  3853  	hw->enable_fbc_wm =
f21b5d6fc26440 Jani Nikula 2023-02-08  3854  		!(intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) & DISP_FBC_WM_DIS);
f21b5d6fc26440 Jani Nikula 2023-02-08  3855  }
f21b5d6fc26440 Jani Nikula 2023-02-08  3856  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
