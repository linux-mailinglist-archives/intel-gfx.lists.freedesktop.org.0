Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CAA56D12E
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Jul 2022 22:01:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9889C18B26F;
	Sun, 10 Jul 2022 20:01:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61CD118B268
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 Jul 2022 20:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657483288; x=1689019288;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=JX8d9y5DJ0Zs242HwmBoM9ZCl4VYyrSflWTq0uDlh04=;
 b=Ojm3MKJ1Q0V9V09OYhSDnWADAZDrENuJN5qovJ2TCHCH3W7zwymGmYB9
 /jtgxADex147aX2WQp+edmJpMk04tZj0FdOz+odcZ2pl4PpIfWSuEWb6N
 SxJ9yF8W5RDsjrdKizjQwh1VOPxQG0Zu/upreUVID5/mr3SfxPVc8ArRk
 5499AnOhm7eqz4EnxEeY9enSjvGDwGztItmkVAqTyEuJRDR0GFXCRca+s
 /iA8xY5st3OSNRv0+VwlG6a0rzR8LZIq4qS+dNJ0Kyqktg8YLdu8+YKF3
 NrYjP2yesxOKPh7ChDmmcy6Y/FFvQPyMxGCJ+1/G8/xW+RYI9kUPxBnmw Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10404"; a="348518422"
X-IronPort-AV: E=Sophos;i="5.92,261,1650956400"; d="scan'208";a="348518422"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2022 13:01:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,261,1650956400"; d="scan'208";a="544779649"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 10 Jul 2022 13:01:26 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1oAd7N-000QAS-LN;
 Sun, 10 Jul 2022 20:01:25 +0000
Date: Mon, 11 Jul 2022 04:01:22 +0800
From: kernel test robot <lkp@intel.com>
To: priyanka.dandamudi@intel.com, matthew.auld@intel.com,
 nirmoy.das@intel.com, intel-gfx@lists.freedesktop.org
Message-ID: <202207110302.5acXv8AK-lkp@intel.com>
References: <20220710172925.2465158-3-priyanka.dandamudi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220710172925.2465158-3-priyanka.dandamudi@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915: Add lmem_bar_size modparam
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
Cc: kbuild-all@lists.01.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/priyanka-dandamudi-intel-com/Add-support-for-LMEM-PCIe-resizable-bar/20220711-014151
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
config: i386-defconfig (https://download.01.org/0day-ci/archive/20220711/202207110302.5acXv8AK-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-3) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/d47a4cf71ae8f491be93278f21adfec16dc00d5c
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review priyanka-dandamudi-intel-com/Add-support-for-LMEM-PCIe-resizable-bar/20220711-014151
        git checkout d47a4cf71ae8f491be93278f21adfec16dc00d5c
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from include/linux/device.h:15,
                    from include/linux/pm_qos.h:17,
                    from drivers/gpu/drm/i915/i915_drv.h:35,
                    from drivers/gpu/drm/i915/gt/intel_region_lmem.c:6:
   drivers/gpu/drm/i915/gt/intel_region_lmem.c: In function 'i915_resize_lmem_bar':
>> include/drm/drm_print.h:425:39: error: format '%llu' expects argument of type 'long long unsigned int', but argument 3 has type 'resource_size_t' {aka 'unsigned int'} [-Werror=format=]
     425 |         dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
         |                                       ^~~~~~~~
   include/linux/dev_printk.h:110:30: note: in definition of macro 'dev_printk_index_wrap'
     110 |                 _p_func(dev, fmt, ##__VA_ARGS__);                       \
         |                              ^~~
   include/linux/dev_printk.h:150:58: note: in expansion of macro 'dev_fmt'
     150 |         dev_printk_index_wrap(_dev_info, KERN_INFO, dev, dev_fmt(fmt), ##__VA_ARGS__)
         |                                                          ^~~~~~~
   include/drm/drm_print.h:425:9: note: in expansion of macro 'dev_info'
     425 |         dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
         |         ^~~~
   include/drm/drm_print.h:429:9: note: in expansion of macro '__drm_printk'
     429 |         __drm_printk((drm), info,, fmt, ##__VA_ARGS__)
         |         ^~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/intel_region_lmem.c:75:33: note: in expansion of macro 'drm_info'
      75 |                                 drm_info(&i915->drm, "Given bar size is not within supported size,"
         |                                 ^~~~~~~~
   cc1: all warnings being treated as errors


vim +425 include/drm/drm_print.h

02c9656b2f0d69 Haneen Mohammed       2017-10-17  385  
02c9656b2f0d69 Haneen Mohammed       2017-10-17  386  /**
b52817e9de06a3 Mauro Carvalho Chehab 2020-10-27  387   * DRM_DEV_DEBUG() - Debug output for generic drm code
02c9656b2f0d69 Haneen Mohammed       2017-10-17  388   *
306589856399e1 Douglas Anderson      2021-09-21  389   * NOTE: this is deprecated in favor of drm_dbg_core().
306589856399e1 Douglas Anderson      2021-09-21  390   *
091756bbb1a961 Haneen Mohammed       2017-10-17  391   * @dev: device pointer
091756bbb1a961 Haneen Mohammed       2017-10-17  392   * @fmt: printf() like format string.
02c9656b2f0d69 Haneen Mohammed       2017-10-17  393   */
db87086492581c Joe Perches           2018-03-16  394  #define DRM_DEV_DEBUG(dev, fmt, ...)					\
db87086492581c Joe Perches           2018-03-16  395  	drm_dev_dbg(dev, DRM_UT_CORE, fmt, ##__VA_ARGS__)
b52817e9de06a3 Mauro Carvalho Chehab 2020-10-27  396  /**
b52817e9de06a3 Mauro Carvalho Chehab 2020-10-27  397   * DRM_DEV_DEBUG_DRIVER() - Debug output for vendor specific part of the driver
b52817e9de06a3 Mauro Carvalho Chehab 2020-10-27  398   *
306589856399e1 Douglas Anderson      2021-09-21  399   * NOTE: this is deprecated in favor of drm_dbg() or dev_dbg().
306589856399e1 Douglas Anderson      2021-09-21  400   *
b52817e9de06a3 Mauro Carvalho Chehab 2020-10-27  401   * @dev: device pointer
b52817e9de06a3 Mauro Carvalho Chehab 2020-10-27  402   * @fmt: printf() like format string.
b52817e9de06a3 Mauro Carvalho Chehab 2020-10-27  403   */
db87086492581c Joe Perches           2018-03-16  404  #define DRM_DEV_DEBUG_DRIVER(dev, fmt, ...)				\
db87086492581c Joe Perches           2018-03-16  405  	drm_dev_dbg(dev, DRM_UT_DRIVER,	fmt, ##__VA_ARGS__)
b52817e9de06a3 Mauro Carvalho Chehab 2020-10-27  406  /**
b52817e9de06a3 Mauro Carvalho Chehab 2020-10-27  407   * DRM_DEV_DEBUG_KMS() - Debug output for modesetting code
b52817e9de06a3 Mauro Carvalho Chehab 2020-10-27  408   *
306589856399e1 Douglas Anderson      2021-09-21  409   * NOTE: this is deprecated in favor of drm_dbg_kms().
306589856399e1 Douglas Anderson      2021-09-21  410   *
b52817e9de06a3 Mauro Carvalho Chehab 2020-10-27  411   * @dev: device pointer
b52817e9de06a3 Mauro Carvalho Chehab 2020-10-27  412   * @fmt: printf() like format string.
b52817e9de06a3 Mauro Carvalho Chehab 2020-10-27  413   */
db87086492581c Joe Perches           2018-03-16  414  #define DRM_DEV_DEBUG_KMS(dev, fmt, ...)				\
db87086492581c Joe Perches           2018-03-16  415  	drm_dev_dbg(dev, DRM_UT_KMS, fmt, ##__VA_ARGS__)
a18b21929453af Lyude Paul            2018-07-16  416  
fb6c7ab8718eb2 Jani Nikula           2019-12-10  417  /*
fb6c7ab8718eb2 Jani Nikula           2019-12-10  418   * struct drm_device based logging
fb6c7ab8718eb2 Jani Nikula           2019-12-10  419   *
fb6c7ab8718eb2 Jani Nikula           2019-12-10  420   * Prefer drm_device based logging over device or prink based logging.
fb6c7ab8718eb2 Jani Nikula           2019-12-10  421   */
fb6c7ab8718eb2 Jani Nikula           2019-12-10  422  
fb6c7ab8718eb2 Jani Nikula           2019-12-10  423  /* Helper for struct drm_device based logging. */
fb6c7ab8718eb2 Jani Nikula           2019-12-10  424  #define __drm_printk(drm, level, type, fmt, ...)			\
fb6c7ab8718eb2 Jani Nikula           2019-12-10 @425  	dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
fb6c7ab8718eb2 Jani Nikula           2019-12-10  426  
fb6c7ab8718eb2 Jani Nikula           2019-12-10  427  

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
