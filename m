Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FC746C291
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 19:19:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA3336E4D4;
	Tue,  7 Dec 2021 18:19:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94F986E4D4
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Dec 2021 18:19:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="261718321"
X-IronPort-AV: E=Sophos;i="5.87,295,1631602800"; d="scan'208";a="261718321"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 09:52:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="462395356"
Received: from lkp-server02.sh.intel.com (HELO 9e1e9f9b3bcb) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 07 Dec 2021 09:52:10 -0800
Received: from kbuild by 9e1e9f9b3bcb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1muedO-000MpR-1J; Tue, 07 Dec 2021 17:52:10 +0000
Date: Wed, 8 Dec 2021 01:52:02 +0800
From: kernel test robot <lkp@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202112080159.xgdgtsnI-lkp@intel.com>
References: <20211207110721.30409-3-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211207110721.30409-3-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Use wm0 only during async
 flips for DG2
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

Hi Stanislav,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on drm-tip/drm-tip v5.16-rc4 next-20211207]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Stanislav-Lisovskiy/drm-i915-Pass-plane-to-watermark-calculation-functions/20211207-190910
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: i386-randconfig-r035-20211207 (https://download.01.org/0day-ci/archive/20211208/202112080159.xgdgtsnI-lkp@intel.com/config)
compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
reproduce (this is a W=1 build):
        # https://github.com/0day-ci/linux/commit/8c7a53ddec5435d127040d03a1eb073ec71608dc
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Stanislav-Lisovskiy/drm-i915-Pass-plane-to-watermark-calculation-functions/20211207-190910
        git checkout 8c7a53ddec5435d127040d03a1eb073ec71608dc
        # save the config file to linux build tree
        mkdir build_dir
        make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/intel_pm.c:5500:6: warning: no previous prototype for 'dg2_async_flip_optimization' [-Wmissing-prototypes]
    5500 | bool dg2_async_flip_optimization(struct drm_i915_private *i915,
         |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~


vim +/dg2_async_flip_optimization +5500 drivers/gpu/drm/i915/intel_pm.c

  5499	
> 5500	bool dg2_async_flip_optimization(struct drm_i915_private *i915,
  5501					 const struct intel_crtc_state *crtc_state,
  5502					 const struct intel_plane *plane)
  5503	{
  5504		return DISPLAY_VER(i915) >= 13 &&
  5505		       crtc_state->uapi.async_flip &&
  5506		       plane->async_flip;
  5507	}
  5508	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
