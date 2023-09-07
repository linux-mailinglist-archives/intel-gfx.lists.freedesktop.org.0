Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF36797257
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 14:33:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4377E10E7D3;
	Thu,  7 Sep 2023 12:33:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD68A10E7D3
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 12:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694089985; x=1725625985;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=+Egx+6JqN/biiJB89oOz9c+PS/68pbbOFL542+gdVGM=;
 b=d+Vakpzevv4wVeTnGsanPWdHBALgjr2DY83GTihZX6GG9HVQTjv+RJ3z
 UqXt8YtqjFkOPXM26lWFou8GcSv+wMITVIF41ILHyof6Osao0QDx0bSLp
 JTHxEYFeBshQg4xV0WE5G4gU14QnTtzoDrxQPyKyUcRQqE2eL78RJ/2q3
 t4hFp2Wr9vShQgSB2SZm6RZ2rzWX9o4ZrT89IEGCi0WPrdNum4M54QCAm
 K4VEDPEtKd8vqU7Srl6hmbzARhZKdCTiLifLehaI4Z61HszPlERthPTC1
 wrvgUyy1x9JSE0j+OmLqVuSE1BpSwEEyLTzgZS7b7lvr2wp5yjnh31EZh Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="441327069"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="441327069"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 05:33:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="1072878228"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="1072878228"
Received: from lkp-server01.sh.intel.com (HELO 59b3c6e06877) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 07 Sep 2023 05:33:03 -0700
Received: from kbuild by 59b3c6e06877 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qeEBx-0001Df-1I;
 Thu, 07 Sep 2023 12:33:01 +0000
Date: Thu, 7 Sep 2023 20:32:55 +0800
From: kernel test robot <lkp@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <202309072011.nQPrRcF6-lkp@intel.com>
References: <20230907101135.176326-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230907101135.176326-1-andi.shyti@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Run relevant bits of debugfs
 drop_caches per GT
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andi,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Andi-Shyti/drm-i915-Run-relevant-bits-of-debugfs-drop_caches-per-GT/20230907-181322
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230907101135.176326-1-andi.shyti%40linux.intel.com
patch subject: [Intel-gfx] [PATCH v2] drm/i915: Run relevant bits of debugfs drop_caches per GT
config: i386-debian-10.3 (https://download.01.org/0day-ci/archive/20230907/202309072011.nQPrRcF6-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20230907/202309072011.nQPrRcF6-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202309072011.nQPrRcF6-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from drivers/gpu/drm/i915/i915_debugfs.c:36:
   drivers/gpu/drm/i915/i915_debugfs.c: In function 'i915_drop_caches_set':
>> drivers/gpu/drm/i915/gt/intel_gt.h:170:21: warning: comparison between pointer and integer
     170 |              (id__) < I915_MAX_GT; \
         |                     ^
   drivers/gpu/drm/i915/i915_debugfs.c:751:9: note: in expansion of macro 'for_each_gt'
     751 |         for_each_gt(i915, i, gt) {
         |         ^~~~~~~~~~~
   In file included from include/drm/drm_connector.h:32,
                    from drivers/gpu/drm/i915/display/intel_display_core.h:16,
                    from drivers/gpu/drm/i915/i915_drv.h:40,
                    from drivers/gpu/drm/i915/gt/intel_context.h:14,
                    from drivers/gpu/drm/i915/gem/i915_gem_context.h:12,
                    from drivers/gpu/drm/i915/i915_debugfs.c:35:
   drivers/gpu/drm/i915/gt/intel_gt.h:172:47: error: invalid type argument of '->' (have 'unsigned int')
     172 |                 for_each_if(((gt__) = (i915__)->gt[(id__)]))
         |                                               ^~
   include/drm/drm_util.h:63:38: note: in definition of macro 'for_each_if'
      63 | #define for_each_if(condition) if (!(condition)) {} else
         |                                      ^~~~~~~~~
   drivers/gpu/drm/i915/i915_debugfs.c:751:9: note: in expansion of macro 'for_each_gt'
     751 |         for_each_gt(i915, i, gt) {
         |         ^~~~~~~~~~~


vim +170 drivers/gpu/drm/i915/gt/intel_gt.h

bec68cc9ea42d8 Tvrtko Ursulin 2022-03-19  167  
bec68cc9ea42d8 Tvrtko Ursulin 2022-03-19  168  #define for_each_gt(gt__, i915__, id__) \
bec68cc9ea42d8 Tvrtko Ursulin 2022-03-19  169  	for ((id__) = 0; \
bec68cc9ea42d8 Tvrtko Ursulin 2022-03-19 @170  	     (id__) < I915_MAX_GT; \
bec68cc9ea42d8 Tvrtko Ursulin 2022-03-19  171  	     (id__)++) \
bec68cc9ea42d8 Tvrtko Ursulin 2022-03-19  172  		for_each_if(((gt__) = (i915__)->gt[(id__)]))
bec68cc9ea42d8 Tvrtko Ursulin 2022-03-19  173  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
