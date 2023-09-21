Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F11EF7A9205
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 09:24:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E837510E580;
	Thu, 21 Sep 2023 07:24:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D85D710E580
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 07:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695281056; x=1726817056;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=QSgx2Sw/K/nFgnJmZ5UKTC6+ilybkq/kjnQQ5WAzwnQ=;
 b=OvfYtp4DgHE1W3FjQ+JN4o37QWYN4cSsube4qO8zH8eZiJUoeXFuKGWC
 rPsRW4tKOEgeHTTCy2Fe0c0dKQmiZpHoEfrXFWg7R4d6xfYxUXr2tmsLg
 KB3zgh2b7JHxcaESdsY8RTDV7DR9cLB7O7YNuNqFXstVb+LUPOx/FODv3
 TfcowSSx1EpgozjWwIBRNC0jSSkVcNm87C/fO8++oj5Mu1xfSufRs9vXR
 cis4Fxx9siY+iqm/TBCV0n13pfaIONNpRJdifNKke02ngMdkIWU16QmqL
 bUxUlBxc1xUsaG9S/vdi6dqHnb+oxVF8UVlLfuFiXy3irVsQllpGjcbKJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="379326119"
X-IronPort-AV: E=Sophos;i="6.03,164,1694761200"; d="scan'208";a="379326119"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 00:20:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="862341338"
X-IronPort-AV: E=Sophos;i="6.03,164,1694761200"; d="scan'208";a="862341338"
Received: from lkp-server02.sh.intel.com (HELO 9ef86b2655e5) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 21 Sep 2023 00:18:12 -0700
Received: from kbuild by 9ef86b2655e5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qjDww-0009gu-1C;
 Thu, 21 Sep 2023 07:18:10 +0000
Date: Thu, 21 Sep 2023 15:17:17 +0800
From: kernel test robot <lkp@intel.com>
To: Shekhar Chauhan <shekhar.chauhan@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202309211509.sE4onxLs-lkp@intel.com>
References: <20230921042727.362710-1-shekhar.chauhan@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230921042727.362710-1-shekhar.chauhan@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add Wa_18028616096
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

Hi Shekhar,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Shekhar-Chauhan/drm-i915-Add-Wa_18028616096/20230921-122837
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230921042727.362710-1-shekhar.chauhan%40intel.com
patch subject: [Intel-gfx] [PATCH] drm/i915: Add Wa_18028616096
config: i386-randconfig-014-20230921 (https://download.01.org/0day-ci/archive/20230921/202309211509.sE4onxLs-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20230921/202309211509.sE4onxLs-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202309211509.sE4onxLs-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from drivers/gpu/drm/i915/intel_uncore.h:34,
                    from drivers/gpu/drm/i915/gt/intel_engine_types.h:26,
                    from drivers/gpu/drm/i915/gt/intel_context_types.h:18,
                    from drivers/gpu/drm/i915/gem/i915_gem_context_types.h:20,
                    from drivers/gpu/drm/i915/i915_drv.h:42,
                    from drivers/gpu/drm/i915/gt/intel_workarounds.c:6:
   drivers/gpu/drm/i915/gt/intel_workarounds.c: In function 'general_render_compute_wa_init':
>> drivers/gpu/drm/i915/i915_reg_defs.h:273:25: error: incompatible type for argument 3 of 'wa_mcr_write_or'
     273 | #define MCR_REG(offset) ((const i915_mcr_reg_t){ .reg = (offset) })
         |                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
         |                         |
         |                         i915_mcr_reg_t
   drivers/gpu/drm/i915/gt/intel_gt_regs.h:1235:49: note: in expansion of macro 'MCR_REG'
    1235 | #define   UGM_FRAGMENT_THRESHOLD_TO_3           MCR_REG(58 - 32)
         |                                                 ^~~~~~~
   drivers/gpu/drm/i915/gt/intel_workarounds.c:2919:61: note: in expansion of macro 'UGM_FRAGMENT_THRESHOLD_TO_3'
    2919 |                 wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, UGM_FRAGMENT_THRESHOLD_TO_3);
         |                                                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/intel_workarounds.c:272:67: note: expected 'u32' {aka 'unsigned int'} but argument is of type 'i915_mcr_reg_t'
     272 | wa_mcr_write_or(struct i915_wa_list *wal, i915_mcr_reg_t reg, u32 set)
         |                                                               ~~~~^~~


vim +/wa_mcr_write_or +273 drivers/gpu/drm/i915/i915_reg_defs.h

2b25a93bf07c6b Matt Roper      2022-01-10  272  
c6a53c90e3be8b Lucas De Marchi 2023-02-24 @273  #define MCR_REG(offset)	((const i915_mcr_reg_t){ .reg = (offset) })
c6a53c90e3be8b Lucas De Marchi 2023-02-24  274  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
