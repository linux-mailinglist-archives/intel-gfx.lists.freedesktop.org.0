Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1345CEAB61
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Dec 2025 22:23:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4911F10E439;
	Tue, 30 Dec 2025 21:23:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JLRZIxM/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC22B10E242;
 Tue, 30 Dec 2025 21:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767129799; x=1798665799;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=7/SepoqWdjvk/U9ie5TprvDK+meEAIcqeIPVjqa6b/g=;
 b=JLRZIxM/Im6e5FOu33ETeJLLWXLUuHZ7uQApsKw5yVriY/jdW5A3V838
 gnRv3XQFBVAzb0qHyKqccUH/PpqU6N9+EniIia3yIBo9o1LsRqY7Q3tlJ
 K1bsxUXRY5d5a3izKWJ+4OBMQ5RdLSdrKWIsBUy2y5W/tTgn2FkjPn1jD
 KgbwhoOeG2vxd+kmkG7nOQcpbxJdkbd+5/WR/Oa/0e7XXamxAZPFPAU0+
 b4Dz9pLtUDCH6H80WIGPSmfnWMrpjpd1yIgpjglpLeLOrF1eahlNRBiTj
 tgEqPunkBDaFjZn6OByBxt53a4fhSlvgD5I1lHW7z++T33QTQyvAoUpNQ g==;
X-CSE-ConnectionGUID: rjGSjdukQICOW5zbyjblEQ==
X-CSE-MsgGUID: CMiCdxL4S7mxMhYix3F6Ig==
X-IronPort-AV: E=McAfee;i="6800,10657,11657"; a="67910045"
X-IronPort-AV: E=Sophos;i="6.21,189,1763452800"; d="scan'208";a="67910045"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2025 13:23:18 -0800
X-CSE-ConnectionGUID: iilGdmsuQUamLPLsbNRkZg==
X-CSE-MsgGUID: pg4unHMsTo2Ws+Xueu9rIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,189,1763452800"; d="scan'208";a="201546031"
Received: from igk-lkp-server01.igk.intel.com (HELO 8a0c053bdd2a)
 ([10.211.93.152])
 by fmviesa008.fm.intel.com with ESMTP; 30 Dec 2025 13:23:17 -0800
Received: from kbuild by 8a0c053bdd2a with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vahBS-0000000081c-4AWG;
 Tue, 30 Dec 2025 21:23:14 +0000
Date: Tue, 30 Dec 2025 22:23:00 +0100
From: kernel test robot <lkp@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev, ankit.k.nautiyal@intel.com,
 mika.kahola@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH 1/3] drm/i915/cx0: Split PLL enabling/disabling in two
 parts
Message-ID: <202512302233.vcqoghOz-lkp@intel.com>
References: <20251230083142.70064-2-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251230083142.70064-2-suraj.kandpal@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Suraj,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-i915/for-linux-next]
[also build test WARNING on drm-tip/drm-tip]
[cannot apply to drm-i915/for-linux-next-fixes linus/master v6.19-rc3 next-20251219]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Suraj-Kandpal/drm-i915-cx0-Split-PLL-enabling-disabling-in-two-parts/20251230-163308
base:   https://gitlab.freedesktop.org/drm/i915/kernel.git for-linux-next
patch link:    https://lore.kernel.org/r/20251230083142.70064-2-suraj.kandpal%40intel.com
patch subject: [PATCH 1/3] drm/i915/cx0: Split PLL enabling/disabling in two parts
config: x86_64-rhel-9.4-kunit (https://download.01.org/0day-ci/archive/20251230/202512302233.vcqoghOz-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251230/202512302233.vcqoghOz-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202512302233.vcqoghOz-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from include/linux/bits.h:5,
                    from include/linux/bitops.h:6,
                    from include/linux/log2.h:12,
                    from drivers/gpu/drm/i915/display/intel_cx0_phy.c:6:
   drivers/gpu/drm/i915/display/intel_cx0_phy.c: In function 'intel_cx0pll_enable_clock':
>> include/vdso/bits.h:7:33: warning: statement with no effect [-Wunused-value]
       7 | #define BIT(nr)                 (UL(1) << (nr))
         |                                 ^
   drivers/gpu/drm/i915/display/intel_cx0_phy.c:32:33: note: in expansion of macro 'BIT'
      32 | #define INTEL_CX0_LANE0         BIT(0)
         |                                 ^~~
   drivers/gpu/drm/i915/display/intel_cx0_phy.c:3388:43: note: in expansion of macro 'INTEL_CX0_LANE0'
    3388 |                                           INTEL_CX0_LANE0;
         |                                           ^~~~~~~~~~~~~~~
--
   In file included from include/linux/bits.h:5,
                    from include/linux/bitops.h:6,
                    from include/linux/log2.h:12,
                    from display/intel_cx0_phy.c:6:
   display/intel_cx0_phy.c: In function 'intel_cx0pll_enable_clock':
>> include/vdso/bits.h:7:33: warning: statement with no effect [-Wunused-value]
       7 | #define BIT(nr)                 (UL(1) << (nr))
         |                                 ^
   display/intel_cx0_phy.c:32:33: note: in expansion of macro 'BIT'
      32 | #define INTEL_CX0_LANE0         BIT(0)
         |                                 ^~~
   display/intel_cx0_phy.c:3388:43: note: in expansion of macro 'INTEL_CX0_LANE0'
    3388 |                                           INTEL_CX0_LANE0;
         |                                           ^~~~~~~~~~~~~~~


vim +7 include/vdso/bits.h

3945ff37d2f48d Vincenzo Frascino 2020-03-20  6  
3945ff37d2f48d Vincenzo Frascino 2020-03-20 @7  #define BIT(nr)			(UL(1) << (nr))
cbdb1f163af2bb Andy Shevchenko   2022-11-28  8  #define BIT_ULL(nr)		(ULL(1) << (nr))
3945ff37d2f48d Vincenzo Frascino 2020-03-20  9  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
