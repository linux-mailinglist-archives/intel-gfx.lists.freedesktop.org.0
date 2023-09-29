Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A34C07B2AFC
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 06:43:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C59EA10E0D9;
	Fri, 29 Sep 2023 04:43:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B321C10E0D9
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Sep 2023 04:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695962601; x=1727498601;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=C4v3pipGk5qr/WRlmrCTXrepolquMwStdfb36mUNM20=;
 b=Y6tHDqzn6bxlNAXH4Y5tbYgICqbULZgVK4pjUVw8hFUNZUjNcdhnC6eR
 5Io8oAMNErS98jMr4JijkG4qLYPzRyxf81oFLWv6jpDZd5ybyorC65yuv
 ruqYnhg08y3xsz1PDmHGUDp1CiTPx+GxKJEBrYUWpbQiD/9g19Wl+VIVN
 xcdsHj6/qUZ1i89j0RW2/xRZ3yOCGVLZxxf7XdExC8sXRZThnpSQPd6Yq
 vdkQkcdSnN5DRIJzFNCwBhH1sQWBQczSODsPJ4wpKMky1lsWSfy9UkPsH
 TNQXJ3iSg6ikuJOH7T+FG/Sg8Azx6kEY87D3o5h49yEfUd6MCB6FbCrL4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="468513895"
X-IronPort-AV: E=Sophos;i="6.03,186,1694761200"; d="scan'208";a="468513895"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 21:43:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="873548295"
X-IronPort-AV: E=Sophos;i="6.03,186,1694761200"; d="scan'208";a="873548295"
Received: from lkp-server02.sh.intel.com (HELO c3b01524d57c) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 28 Sep 2023 21:43:18 -0700
Received: from kbuild by c3b01524d57c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qm5LQ-0002Tv-1n;
 Fri, 29 Sep 2023 04:43:16 +0000
Date: Fri, 29 Sep 2023 12:42:28 +0800
From: kernel test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <202309291218.f8Nhsloo-lkp@intel.com>
References: <d5f8aab89835a70c0af741e7f5765fc2c4875bf7.1695924021.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d5f8aab89835a70c0af741e7f5765fc2c4875bf7.1695924021.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 09/15] drm/i915: do more in
 i915_gpu_coredump_alloc()
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

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Jani-Nikula/drm-i915-stop-including-i915_utils-h-from-intel_runtime_pm-h/20230929-021205
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/d5f8aab89835a70c0af741e7f5765fc2c4875bf7.1695924021.git.jani.nikula%40intel.com
patch subject: [Intel-gfx] [PATCH 09/15] drm/i915: do more in i915_gpu_coredump_alloc()
config: i386-buildonly-randconfig-005-20230929 (https://download.01.org/0day-ci/archive/20230929/202309291218.f8Nhsloo-lkp@intel.com/config)
compiler: gcc-7 (Ubuntu 7.5.0-6ubuntu2) 7.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20230929/202309291218.f8Nhsloo-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202309291218.f8Nhsloo-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/gpu/drm/i915/gt/intel_execlists_submission.c: In function 'capture_regs':
>> drivers/gpu/drm/i915/gt/intel_execlists_submission.c:2264:39: error: passing argument 1 of 'i915_gpu_coredump_alloc' from incompatible pointer type [-Werror=incompatible-pointer-types]
     cap->error = i915_gpu_coredump_alloc(engine, gfp);
                                          ^~~~~~
   In file included from drivers/gpu/drm/i915/i915_drv.h:56:0,
                    from drivers/gpu/drm/i915/gt/intel_execlists_submission.c:112:
   drivers/gpu/drm/i915/i915_gpu_error.h:329:1: note: expected 'struct drm_i915_private *' but argument is of type 'struct intel_engine_cs *'
    i915_gpu_coredump_alloc(struct drm_i915_private *i915, gfp_t gfp)
    ^~~~~~~~~~~~~~~~~~~~~~~
   cc1: some warnings being treated as errors


vim +/i915_gpu_coredump_alloc +2264 drivers/gpu/drm/i915/gt/intel_execlists_submission.c

  2254	
  2255	static struct execlists_capture *capture_regs(struct intel_engine_cs *engine)
  2256	{
  2257		const gfp_t gfp = GFP_ATOMIC | __GFP_NOWARN;
  2258		struct execlists_capture *cap;
  2259	
  2260		cap = kmalloc(sizeof(*cap), gfp);
  2261		if (!cap)
  2262			return NULL;
  2263	
> 2264		cap->error = i915_gpu_coredump_alloc(engine, gfp);
  2265		if (!cap->error)
  2266			goto err_cap;
  2267	
  2268		return cap;
  2269	
  2270	err_cap:
  2271		kfree(cap);
  2272		return NULL;
  2273	}
  2274	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
