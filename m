Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6916CD054
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 04:48:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0161C10E4BB;
	Wed, 29 Mar 2023 02:48:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6A8010E4BB
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 02:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680058115; x=1711594115;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=weuoNablgVL42p7piYNfbp72zEh5G7yzh+rfF25ARSM=;
 b=fCxqzDU/XjwCJfv+Kse/yPbkltVE3XXIr70IleOtDU7H8jZipiZmEMg4
 kSnkNveJRVn3yCkLimYlc13fWHV62fq8TURJFs/iObcRqTbv0KBDQnMW1
 o4rpq2+9rVQPn5o0QDdW7EYluiUhze9wYResvf2zKqEd80pg1NH08Sjnp
 p5QpOMrNu8WK/RYtj5YB4yuyXhf6dPxgGm+42seW1JqBofknS7MGaOM7J
 0yHYA4ra6CicX2xsgQY2sOB4QJjzDO0ovKR0c05HnKznncSYnt/5TSJi7
 pyb0xlw1OpcRSSEEtizRI77mtw72LrUxF93dSSqT63654lqUIbzZHt1t/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="403376128"
X-IronPort-AV: E=Sophos;i="5.98,299,1673942400"; d="scan'208";a="403376128"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 19:48:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="753412926"
X-IronPort-AV: E=Sophos;i="5.98,299,1673942400"; d="scan'208";a="753412926"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 28 Mar 2023 19:48:32 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1phLrT-000J7N-2W;
 Wed, 29 Mar 2023 02:48:31 +0000
Date: Wed, 29 Mar 2023 10:48:03 +0800
From: kernel test robot <lkp@intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202303291026.iRc2NXSy-lkp@intel.com>
References: <20230328143709.86644-5-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230328143709.86644-5-christian.koenig@amd.com>
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/debugfs: remove debugfs_root
 pointer from minor
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

Hi Christian,

I love your patch! Yet something to improve:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Christian-K-nig/drm-debugfs-rework-debugfs-directory-creation-v2/20230328-223907
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230328143709.86644-5-christian.koenig%40amd.com
patch subject: [Intel-gfx] [PATCH 5/5] drm/debugfs: remove debugfs_root pointer from minor
config: x86_64-defconfig (https://download.01.org/0day-ci/archive/20230329/202303291026.iRc2NXSy-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-8) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/a17b8a95102c9f2cf2b5cadadcf99c364dafed15
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Christian-K-nig/drm-debugfs-rework-debugfs-directory-creation-v2/20230328-223907
        git checkout a17b8a95102c9f2cf2b5cadadcf99c364dafed15
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=x86_64 olddefconfig
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303291026.iRc2NXSy-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/gpu/drm/i915/display/intel_hotplug.c: In function 'intel_hpd_debugfs_register':
>> drivers/gpu/drm/i915/display/intel_hotplug.c:950:64: error: 'struct drm_minor' has no member named 'debugfs_root'
     950 |         debugfs_create_bool("i915_ignore_long_hpd", 0644, minor->debugfs_root,
         |                                                                ^~
--
   drivers/gpu/drm/i915/display/intel_psr.c: In function 'intel_psr_debugfs_register':
>> drivers/gpu/drm/i915/display/intel_psr.c:2873:62: error: 'struct drm_minor' has no member named 'debugfs_root'
    2873 |         debugfs_create_file("i915_edp_psr_debug", 0644, minor->debugfs_root,
         |                                                              ^~
   drivers/gpu/drm/i915/display/intel_psr.c:2876:63: error: 'struct drm_minor' has no member named 'debugfs_root'
    2876 |         debugfs_create_file("i915_edp_psr_status", 0444, minor->debugfs_root,
         |                                                               ^~
--
   drivers/gpu/drm/i915/display/intel_wm.c: In function 'intel_wm_debugfs_register':
>> drivers/gpu/drm/i915/display/intel_wm.c:398:63: error: 'struct drm_minor' has no member named 'debugfs_root'
     398 |         debugfs_create_file("i915_pri_wm_latency", 0644, minor->debugfs_root,
         |                                                               ^~
   drivers/gpu/drm/i915/display/intel_wm.c:401:63: error: 'struct drm_minor' has no member named 'debugfs_root'
     401 |         debugfs_create_file("i915_spr_wm_latency", 0644, minor->debugfs_root,
         |                                                               ^~
   drivers/gpu/drm/i915/display/intel_wm.c:404:63: error: 'struct drm_minor' has no member named 'debugfs_root'
     404 |         debugfs_create_file("i915_cur_wm_latency", 0644, minor->debugfs_root,
         |                                                               ^~


vim +950 drivers/gpu/drm/i915/display/intel_hotplug.c

1bed8b07342069e Jani Nikula         2022-09-16  941  
1bed8b07342069e Jani Nikula         2022-09-16  942  void intel_hpd_debugfs_register(struct drm_i915_private *i915)
1bed8b07342069e Jani Nikula         2022-09-16  943  {
1bed8b07342069e Jani Nikula         2022-09-16  944  	struct drm_minor *minor = i915->drm.primary;
1bed8b07342069e Jani Nikula         2022-09-16  945  
a17b8a95102c9f2 Christian König     2023-03-28  946  	debugfs_create_file("i915_hpd_storm_ctl", 0644, minor->dev->debugfs_root,
1bed8b07342069e Jani Nikula         2022-09-16  947  			    i915, &i915_hpd_storm_ctl_fops);
a17b8a95102c9f2 Christian König     2023-03-28  948  	debugfs_create_file("i915_hpd_short_storm_ctl", 0644, minor->dev->debugfs_root,
1bed8b07342069e Jani Nikula         2022-09-16  949  			    i915, &i915_hpd_short_storm_ctl_fops);
b0fbef65e227ad4 Vinod Govindapillai 2023-02-15 @950  	debugfs_create_bool("i915_ignore_long_hpd", 0644, minor->debugfs_root,

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
