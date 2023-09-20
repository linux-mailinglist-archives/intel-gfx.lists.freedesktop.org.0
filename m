Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B38627A7306
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 08:42:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAD8910E440;
	Wed, 20 Sep 2023 06:42:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44B3110E440
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 06:42:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695192162; x=1726728162;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=9i027jUkyqey9CRdwOplbHHSW6lvTcmlSYzdxiPS1wk=;
 b=HbHtilAaH7COoVL43bg3PHWojDJdQJlYR5YksOQHeZ0DyOhM5LsRQ4qm
 yMrrgTuGMMmT8mYesI4ThknlXWkiS/mfmrVELA6lUEn8VcduhqoAzBOM9
 D5k1Cd9ZQim6yHYdF4kvEhDDwOTRCMms6yc79SROU810fO/1YHHY9YzQj
 imuI+EdO62LuFFDCr2EFcsL4sv6LT1EK4I2mv6CEK4tWMBvHhe0OjaepF
 RpnJZkc77exqhnM3YFNS0XkgxokbImnIVh+ppLNoa5bLN3+SLGWMxPK5c
 fFsKBhygVf310jNf6NVCgYmuGgmbMNJYOnKVfETxKtr1wzw2g0/aXgayZ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="411076872"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="411076872"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 23:42:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="861859153"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="861859153"
Received: from lkp-server02.sh.intel.com (HELO 9ef86b2655e5) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 19 Sep 2023 23:42:32 -0700
Received: from kbuild by 9ef86b2655e5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qiqus-0008Po-2q;
 Wed, 20 Sep 2023 06:42:30 +0000
Date: Wed, 20 Sep 2023 14:42:01 +0800
From: kernel test robot <lkp@intel.com>
To: Shekhar Chauhan <shekhar.chauhan@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202309201405.PF0VVCts-lkp@intel.com>
References: <20230920040547.181861-1-shekhar.chauhan@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230920040547.181861-1-shekhar.chauhan@intel.com>
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

url:    https://github.com/intel-lab-lkp/linux/commits/Shekhar-Chauhan/drm-i915-Add-Wa_18028616096/20230920-121417
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230920040547.181861-1-shekhar.chauhan%40intel.com
patch subject: [Intel-gfx] [PATCH] drm/i915: Add Wa_18028616096
config: x86_64-randconfig-003-20230920 (https://download.01.org/0day-ci/archive/20230920/202309201405.PF0VVCts-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20230920/202309201405.PF0VVCts-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202309201405.PF0VVCts-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from include/linux/container_of.h:5,
                    from include/linux/plist.h:76,
                    from include/linux/pm_qos.h:15,
                    from drivers/gpu/drm/i915/i915_drv.h:35,
                    from drivers/gpu/drm/i915/gt/intel_workarounds.c:6:
   drivers/gpu/drm/i915/gt/intel_workarounds.c: In function 'general_render_compute_wa_init':
>> include/linux/build_bug.h:16:51: error: negative width in bit-field '<anonymous>'
      16 | #define BUILD_BUG_ON_ZERO(e) ((int)(sizeof(struct { int:(-!!(e)); })))
         |                                                   ^
   drivers/gpu/drm/i915/i915_reg_defs.h:22:16: note: in expansion of macro 'BUILD_BUG_ON_ZERO'
      22 |                BUILD_BUG_ON_ZERO(__is_constexpr(__n) &&         \
         |                ^~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/intel_gt_regs.h:1232:49: note: in expansion of macro 'REG_BIT'
    1232 | #define   UGM_FRAGMENT_THRESHOLD_TO_3           REG_BIT(58)
         |                                                 ^~~~~~~
   drivers/gpu/drm/i915/gt/intel_workarounds.c:2919:57: note: in expansion of macro 'UGM_FRAGMENT_THRESHOLD_TO_3'
    2919 |                 wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, UGM_FRAGMENT_THRESHOLD_TO_3);
         |                                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~


vim +16 include/linux/build_bug.h

bc6245e5efd70c Ian Abbott       2017-07-10   6  
bc6245e5efd70c Ian Abbott       2017-07-10   7  #ifdef __CHECKER__
bc6245e5efd70c Ian Abbott       2017-07-10   8  #define BUILD_BUG_ON_ZERO(e) (0)
bc6245e5efd70c Ian Abbott       2017-07-10   9  #else /* __CHECKER__ */
bc6245e5efd70c Ian Abbott       2017-07-10  10  /*
bc6245e5efd70c Ian Abbott       2017-07-10  11   * Force a compilation error if condition is true, but also produce a
8788994376d84d Rikard Falkeborn 2019-12-04  12   * result (of value 0 and type int), so the expression can be used
bc6245e5efd70c Ian Abbott       2017-07-10  13   * e.g. in a structure initializer (or where-ever else comma expressions
bc6245e5efd70c Ian Abbott       2017-07-10  14   * aren't permitted).
bc6245e5efd70c Ian Abbott       2017-07-10  15   */
8788994376d84d Rikard Falkeborn 2019-12-04 @16  #define BUILD_BUG_ON_ZERO(e) ((int)(sizeof(struct { int:(-!!(e)); })))
527edbc18a70e7 Masahiro Yamada  2019-01-03  17  #endif /* __CHECKER__ */
527edbc18a70e7 Masahiro Yamada  2019-01-03  18  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
