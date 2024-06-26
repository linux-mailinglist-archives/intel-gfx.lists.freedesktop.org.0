Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9A1918E03
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 20:12:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5669710E0B7;
	Wed, 26 Jun 2024 18:12:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZlS91KCt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18CF010E0B6;
 Wed, 26 Jun 2024 18:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719425545; x=1750961545;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=uFcud2CNZ9VgFs2xDvdrQV4qo4b713G5ZCzzQsE/aM0=;
 b=ZlS91KCtvxeWJiiImBegVbcwQXREMv2LOyWQWaf2hiJnrtE7YjO7RJ3O
 B+TluxwSG+qrDiZzAECwpBXuO45Y5VMb10SUwwLlTSGIobMsr5cW/QGpi
 VDLmzMwXSLuyw/z3jMwwhfuPxXWCi4nVlY+YbAQajederWy6WWg0LRFXO
 3Ojmg/3I4ByJIzOJ7tWkUzoJqRRNYa9ru3GoU2FGtxU1peKu/LwHCrezf
 bJ1XbYOWAdkHHGZWv91fggfs4rd175v4QkhAKxU8uR0533AQqDFn79tzW
 wiPzSJOdZYQFWN3Mf/hYMk/z5LVIZZKDVjsYxeQCnMk6Hvn/GS+St3Onp A==;
X-CSE-ConnectionGUID: tbLPH3ZLRuSC2FyfCwKPng==
X-CSE-MsgGUID: C+lbNRTTT0Od5wVRqfqFnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="27915387"
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="27915387"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 11:12:24 -0700
X-CSE-ConnectionGUID: 6M8cDZT6TGiFuEBxvYqhZA==
X-CSE-MsgGUID: XZGthyPqT7aDqE3H5HnbLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="43970333"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 26 Jun 2024 11:12:22 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sMX80-000FTM-1H;
 Wed, 26 Jun 2024 18:12:20 +0000
Date: Thu, 27 Jun 2024 02:12:03 +0800
From: kernel test robot <lkp@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mika.kahola@intel.com,
 matthew.d.roper@intel.com
Subject: Re: [PATCH 1/5] drm/i915/display: Add support for SNPS PHY HDMI PLL
 algorithm for DG2
Message-ID: <202406270107.cweaZpry-lkp@intel.com>
References: <20240626050056.3996349-2-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240626050056.3996349-2-ankit.k.nautiyal@intel.com>
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

Hi Ankit,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-intel/for-linux-next]
[also build test ERROR on drm-intel/for-linux-next-fixes drm-tip/drm-tip drm-xe/drm-xe-next linus/master v6.10-rc5 next-20240625]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Ankit-Nautiyal/drm-i915-display-Add-support-for-SNPS-PHY-HDMI-PLL-algorithm-for-DG2/20240626-131209
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20240626050056.3996349-2-ankit.k.nautiyal%40intel.com
patch subject: [PATCH 1/5] drm/i915/display: Add support for SNPS PHY HDMI PLL algorithm for DG2
config: i386-buildonly-randconfig-006-20240626 (https://download.01.org/0day-ci/archive/20240627/202406270107.cweaZpry-lkp@intel.com/config)
compiler: gcc-13 (Ubuntu 13.2.0-4ubuntu3) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240627/202406270107.cweaZpry-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406270107.cweaZpry-lkp@intel.com/

All errors (new ones prefixed by >>):

   ld: drivers/gpu/drm/i915/display/intel_pll_algorithm.o: in function `get_ana_cp_int_prop.constprop.0':
>> intel_pll_algorithm.c:(.text+0x2b): undefined reference to `__divdi3'
>> ld: intel_pll_algorithm.c:(.text+0xc2): undefined reference to `__divdi3'
   ld: intel_pll_algorithm.c:(.text+0xef): undefined reference to `__divdi3'
   ld: intel_pll_algorithm.c:(.text+0x153): undefined reference to `__divdi3'
   ld: intel_pll_algorithm.c:(.text+0x180): undefined reference to `__divdi3'
   ld: drivers/gpu/drm/i915/display/intel_pll_algorithm.o:intel_pll_algorithm.c:(.text+0x235): more undefined references to `__divdi3' follow
   ld: drivers/gpu/drm/i915/display/intel_pll_algorithm.o: in function `get_ana_cp_int_prop.constprop.0':
>> intel_pll_algorithm.c:(.text+0x282): undefined reference to `__udivdi3'
>> ld: intel_pll_algorithm.c:(.text+0x2f2): undefined reference to `__udivdi3'
   ld: intel_pll_algorithm.c:(.text+0x31b): undefined reference to `__udivdi3'
   ld: intel_pll_algorithm.c:(.text+0x33e): undefined reference to `__udivdi3'
   ld: intel_pll_algorithm.c:(.text+0x36c): undefined reference to `__udivdi3'
   ld: drivers/gpu/drm/i915/display/intel_pll_algorithm.o:intel_pll_algorithm.c:(.text+0x384): more undefined references to `__udivdi3' follow
   ld: drivers/gpu/drm/i915/display/intel_pll_algorithm.o: in function `intel_snps_phy_compute_hdmi_tmds_pll':
>> intel_pll_algorithm.c:(.text+0x602): undefined reference to `__udivmoddi4'
   ld: intel_pll_algorithm.c:(.text+0x61e): undefined reference to `__udivdi3'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
