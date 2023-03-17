Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AE16BED5F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 16:55:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0929C10E3CD;
	Fri, 17 Mar 2023 15:55:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C36510E39F
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 15:55:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679068515; x=1710604515;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=5II7/mhrwKYQPXFCb5HFE3rC/ipbVCKc/WkC0jh6K6k=;
 b=Iej4HZVf5rDqNJ+BkHLKhSlPfiA7aeIMyYRFPmiC1OzB9xiPitLj7/SZ
 +UgZTgRXkUV+kmb4pDabC3wigXoEY9cwxpVsk4KtjFb/6ChhFosSbzi1M
 sxV3OPsybjpRiFRS611uEE3+HI/7I7mT9iZAJT+nei7FFuAx9MbrKtZOW
 OAjR75nW42F5C+zS/Jl76mp6kw/CYyZP+4pSL+olAzyC3QHi9ywVLian+
 AO6DFVYaXh+iJKFHnGE3wnekcN8H3EUrarMB0iqWlwvXs5ZB5lyvRFsUw
 pEfwrnCf1GrfS0eiVHdeKgFOQ6i/CGUqNTv4isFJ7ytb/YzLqQUIrz0Ll A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="403159416"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="403159416"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 08:55:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="790757130"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="790757130"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 17 Mar 2023 08:55:13 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pdCQC-0009SO-2C;
 Fri, 17 Mar 2023 15:55:12 +0000
Date: Fri, 17 Mar 2023 23:54:30 +0800
From: kernel test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <202303172307.KAbTCHfP-lkp@intel.com>
References: <20230317125352.198042-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230317125352.198042-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/debugfs: switch crtc debugfs
 to struct intel_crtc
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

url:    https://github.com/intel-lab-lkp/linux/commits/Jani-Nikula/drm-i915-debugfs-add-crtc-i915_pipe-debugfs-file/20230317-205512
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230317125352.198042-1-jani.nikula%40intel.com
patch subject: [Intel-gfx] [PATCH 1/2] drm/i915/debugfs: switch crtc debugfs to struct intel_crtc
config: x86_64-allyesconfig (https://download.01.org/0day-ci/archive/20230317/202303172307.KAbTCHfP-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-8) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/506415b57ce52f43962e9e766ff8dd5410fe3051
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Jani-Nikula/drm-i915-debugfs-add-crtc-i915_pipe-debugfs-file/20230317-205512
        git checkout 506415b57ce52f43962e9e766ff8dd5410fe3051
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=x86_64 olddefconfig
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303172307.KAbTCHfP-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/gpu/drm/i915/display/intel_display_debugfs.c: In function 'crtc_updates_add':
>> drivers/gpu/drm/i915/display/intel_display_debugfs.c:810:59: error: 'struct intel_crtc' has no member named 'debugfs_entry'
     810 |         debugfs_create_file("i915_update_info", 0644, crtc->debugfs_entry,
         |                                                           ^~


vim +810 drivers/gpu/drm/i915/display/intel_display_debugfs.c

829270e4552e9e Chris Wilson 2020-12-02  807  
506415b57ce52f Jani Nikula  2023-03-17  808  static void crtc_updates_add(struct intel_crtc *crtc)
829270e4552e9e Chris Wilson 2020-12-02  809  {
829270e4552e9e Chris Wilson 2020-12-02 @810  	debugfs_create_file("i915_update_info", 0644, crtc->debugfs_entry,
506415b57ce52f Jani Nikula  2023-03-17  811  			    crtc, &crtc_updates_fops);
829270e4552e9e Chris Wilson 2020-12-02  812  }
829270e4552e9e Chris Wilson 2020-12-02  813  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
