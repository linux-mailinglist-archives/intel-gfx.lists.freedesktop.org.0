Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EC557F796
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jul 2022 01:09:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10740112ED9;
	Sun, 24 Jul 2022 23:09:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B60AC112BC1
 for <intel-gfx@lists.freedesktop.org>; Sun, 24 Jul 2022 23:09:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658704177; x=1690240177;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=UoO33rNWcKPGpmIxJcLPjQiDV4wSQ4lWifOwAsFUS34=;
 b=XS1aFQHFJdhojIL0M6huN1dBGurwufyyF9Rqv+9cyOK4X8eXjbwnTtl4
 /8w2x6Sj9Bp8W6LGnEbpJTKmk+lt7zKZcAQcL0NMY7wrPtSOt9u7PgXpP
 vFEGB8Lkms4rJsptkyGSxXPVoqf/t1+bkAraJGkHNaFBeZbEZycJk+6pJ
 kSZCa+GlM3tR70YYBLxbS1u7+kNhJ2xUI+ZyE5tt908FQ257ZHcLKeovK
 aW4KpLaLYcYZy9Q5c01KdOudIrE699rbXbT/2df1xjsnm95MwP8ereH6g
 cz1LT90fTq2MgisjV3HIt0IlZ8At4EwUHE0aHl6o0jXh56/l9qNdK+y0/ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10418"; a="288335124"
X-IronPort-AV: E=Sophos;i="5.93,191,1654585200"; d="scan'208";a="288335124"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2022 16:09:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,191,1654585200"; d="scan'208";a="627220354"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 24 Jul 2022 16:09:33 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oFkj6-0004OD-3C;
 Sun, 24 Jul 2022 23:09:33 +0000
Date: Mon, 25 Jul 2022 07:08:38 +0800
From: kernel test robot <lkp@intel.com>
To: tilak.tangudu@intel.com, jon.ewins@intel.com,
 vinay.belgaumkar@intel.com, matthew.d.roper@intel.com,
 chris.p.wilson@intel.com, jani.nikula@intel.com,
 saurabhg.gupta@intel.com, rodrigo.vivi@intel.com,
 Anshuman.Gupta@intel.com, badal.nilawar@intel.com,
 imre.deak@intel.com, aravind.iddamsetty@intel.com,
 intel-gfx@lists.freedesktop.org
Message-ID: <202207250617.9oNZv0Uz-lkp@intel.com>
References: <20220721095955.3986943-2-tilak.tangudu@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220721095955.3986943-2-tilak.tangudu@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915: Added is_intel_rpm_allowed
 helper
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

url:    https://github.com/intel-lab-lkp/linux/commits/tilak-tangudu-intel-com/drm-i915-Add-D3Cold-Off-support-for-runtime-pm/20220721-174913
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
config: x86_64-randconfig-c002 (https://download.01.org/0day-ci/archive/20220725/202207250617.9oNZv0Uz-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-3) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/232683eebcfe8c5abd46d4caad082bea98f13687
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review tilak-tangudu-intel-com/drm-i915-Add-D3Cold-Off-support-for-runtime-pm/20220721-174913
        git checkout 232683eebcfe8c5abd46d4caad082bea98f13687
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/gpu/drm/i915/intel_runtime_pm.c: In function 'intel_runtime_pm_status':
>> drivers/gpu/drm/i915/intel_runtime_pm.c:325:32: error: 'struct dev_pm_info' has no member named 'runtime_status'
     325 |         return rpm->kdev->power.runtime_status;
         |                                ^
   drivers/gpu/drm/i915/intel_runtime_pm.c:326:1: error: control reaches end of non-void function [-Werror=return-type]
     326 | }
         | ^
   cc1: all warnings being treated as errors


vim +325 drivers/gpu/drm/i915/intel_runtime_pm.c

   321	
   322	#endif
   323	static int intel_runtime_pm_status(struct intel_runtime_pm *rpm)
   324	{
 > 325		return rpm->kdev->power.runtime_status;
   326	}
   327	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
