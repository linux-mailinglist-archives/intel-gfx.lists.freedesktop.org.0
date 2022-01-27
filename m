Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6959B49D92A
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 04:24:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1423A10EE24;
	Thu, 27 Jan 2022 03:24:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FB7110EE1F
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 03:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643253877; x=1674789877;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=e/v8s64guqdXkojPscprfdQG/JhCDFH+UEycaYua9uM=;
 b=Bo76bHs1h60wI4aQADVBy/GUjrVmhDxYT6Np876X2W99Fp5GpBRDo5Q3
 Wb3pMEedr6W1TejZyAg0snjY31qlR4HRqWp8MV4wlMZov1RLm7S4Ds/Kf
 fjvdav1BTblt6N91RRTLcBu4U34gDAtvJnls942kibZFcORp77GxgM4+S
 Z1UjuGKylaJnkCtfQ1uymTZJXHBMK+1SkkUshkaltO0EP5NX4IG71wbXE
 IBSznl5XIWulFc4DEwJbmGtTIPC6xTHw6pxvOlOD7DuTNfM+EpG3cISB/
 +Mb/OPD0XxQA4J3BMlzdGA93Ilngpr6PlHoyqM4ih9EuPfH2dOxp8Duzq A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="246955945"
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="246955945"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 19:24:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="480129864"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 26 Jan 2022 19:24:35 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nCvOk-000M2K-DO; Thu, 27 Jan 2022 03:24:34 +0000
Date: Thu, 27 Jan 2022 11:23:39 +0800
From: kernel test robot <lkp@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202201271109.UuklsWk3-lkp@intel.com>
References: <20220127001529.978596-2-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220127001529.978596-2-umesh.nerlige.ramappa@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/pmu: Use existing uncore
 helper to read gpm_timestamp
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

Hi Umesh,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-tip/drm-tip]
[cannot apply to linus/master drm-intel/for-linux-next v5.17-rc1 next-20220125]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Umesh-Nerlige-Ramappa/drm-i915-pmu-Fix-KMD-and-GuC-race-on-accessing-busyness/20220127-081651
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
config: i386-randconfig-m021-20220124 (https://download.01.org/0day-ci/archive/20220127/202201271109.UuklsWk3-lkp@intel.com/config)
compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
reproduce (this is a W=1 build):
        # https://github.com/0day-ci/linux/commit/2d74f201eae0c9ec06e6dc84b363089c0f190058
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Umesh-Nerlige-Ramappa/drm-i915-pmu-Fix-KMD-and-GuC-race-on-accessing-busyness/20220127-081651
        git checkout 2d74f201eae0c9ec06e6dc84b363089c0f190058
        # save the config file to linux build tree
        mkdir build_dir
        make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c: In function 'guc_update_pm_timestamp':
>> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1217:36: error: 'uncore' undeclared (first use in this function)
    1217 |  gpm_ts = intel_uncore_read64_2x32(uncore, MISC_STATUS0, MISC_STATUS1) >>
         |                                    ^~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1217:36: note: each undeclared identifier is reported only once for each function it appears in
   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1210:19: warning: unused variable 'gt' [-Wunused-variable]
    1210 |  struct intel_gt *gt = guc_to_gt(guc);
         |                   ^~


vim +/uncore +1217 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c

  1207	
  1208	static void guc_update_pm_timestamp(struct intel_guc *guc, ktime_t *now)
  1209	{
  1210		struct intel_gt *gt = guc_to_gt(guc);
  1211		u32 gt_stamp_lo, gt_stamp_hi;
  1212		u64 gpm_ts;
  1213	
  1214		lockdep_assert_held(&guc->timestamp.lock);
  1215	
  1216		gt_stamp_hi = upper_32_bits(guc->timestamp.gt_stamp);
> 1217		gpm_ts = intel_uncore_read64_2x32(uncore, MISC_STATUS0, MISC_STATUS1) >>
  1218			 guc->timestamp.shift;
  1219		gt_stamp_lo = lower_32_bits(gpm_ts);
  1220		*now = ktime_get();
  1221	
  1222		if (gt_stamp_lo < lower_32_bits(guc->timestamp.gt_stamp))
  1223			gt_stamp_hi++;
  1224	
  1225		guc->timestamp.gt_stamp = ((u64)gt_stamp_hi << 32) | gt_stamp_lo;
  1226	}
  1227	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
