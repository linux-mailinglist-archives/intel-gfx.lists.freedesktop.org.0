Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B60B12A41
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Jul 2025 13:21:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DF9210E045;
	Sat, 26 Jul 2025 11:21:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XIWGTu60";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F44910E045;
 Sat, 26 Jul 2025 11:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753528895; x=1785064895;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=LUZE3bBwLHBN+StURfn0O/MoSYAuV5/vlhxfqbWfR9k=;
 b=XIWGTu60PgfFluJQIrzr9jkvPdoNSo+SeZQVVT/gQxKLkJu2v9jAhNEd
 JK/bQvTpT9dP+K/JdAjE2kxHGoZKcW1AJmr+bji3brKXZhRUKFWqbDt9U
 WYfwkJ1hJ0T+PVHdRoCNg+av059d1Ccy14oTXDWoq03hYdXolXM3cOfgo
 NUn8zxVZJOK3+l5KmiGPKPyOfNd3JeG6W91UX4XoXSXNbm10VXbjivm9p
 UIb+CFRnBu3cMTKt8KVGQj/kaYHJgDMX7SEa/67uzPo1BHa4lxjdaxMHB
 4iz531Wz17seW2o1Se1UiN02jqC9a/T6NbQ8H8wnT6rCGwT6RHNHX/FqN w==;
X-CSE-ConnectionGUID: by0/2wVTRt25oPQGVVgr/w==
X-CSE-MsgGUID: 9yDQm881TVWQXGmVBfe3WQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11503"; a="55997841"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="55997841"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2025 04:21:34 -0700
X-CSE-ConnectionGUID: Kr+G0yAFSdmC09F+O6NTDw==
X-CSE-MsgGUID: XP1aSgD7SaC1xNtFJbmcNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="192449999"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 26 Jul 2025 04:21:33 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ufcy2-000Lvb-0O;
 Sat, 26 Jul 2025 11:21:30 +0000
Date: Sat, 26 Jul 2025 19:20:40 +0800
From: kernel test robot <lkp@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH 2/3] drm/i915/bios: Add function to check if edp data
 override is needed
Message-ID: <202507261913.LoCL2yuM-lkp@intel.com>
References: <20250725061548.2704697-3-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250725061548.2704697-3-suraj.kandpal@intel.com>
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

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on linus/master v6.16-rc7 next-20250725]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Suraj-Kandpal/drm-i915-vbt-Add-eDP-Data-Overrride-field-in-VBT/20250725-141824
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20250725061548.2704697-3-suraj.kandpal%40intel.com
patch subject: [PATCH 2/3] drm/i915/bios: Add function to check if edp data override is needed
config: i386-buildonly-randconfig-006-20250725 (https://download.01.org/0day-ci/archive/20250726/202507261913.LoCL2yuM-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250726/202507261913.LoCL2yuM-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202507261913.LoCL2yuM-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_bios.c:2524:2: warning: variable 'val' is used uninitialized whenever switch default is taken [-Wsometimes-uninitialized]
    2524 |         default:
         |         ^~~~~~~
   drivers/gpu/drm/i915/display/intel_bios.c:2528:34: note: uninitialized use occurs here
    2528 |         return edp_data_override_mask & val;
         |                                         ^~~
   drivers/gpu/drm/i915/display/intel_bios.c:2485:9: note: initialize the variable 'val' to silence this warning
    2485 |         u32 val;
         |                ^
         |                 = 0
   1 warning generated.


vim +/val +2524 drivers/gpu/drm/i915/display/intel_bios.c

  2482	
  2483	static bool parse_bdb_263_edp_data_override(const u32 edp_data_override_mask, int rate)
  2484	{
  2485		u32 val;
  2486	
  2487		switch (rate) {
  2488		case 2000000:
  2489			val = BDB_263_VBT_EDP_LINK_RATE_20;
  2490			break;
  2491		case 1350000:
  2492			val = BDB_263_VBT_EDP_LINK_RATE_13_5;
  2493			break;
  2494		case 1000000:
  2495			val = BDB_263_VBT_EDP_LINK_RATE_10;
  2496			break;
  2497		case 810000:
  2498			val = BDB_263_VBT_EDP_LINK_RATE_8_1;
  2499			break;
  2500		case 675000:
  2501			val = BDB_263_VBT_EDP_LINK_RATE_6_75;
  2502			break;
  2503		case 540000:
  2504			val = BDB_263_VBT_EDP_LINK_RATE_5_4;
  2505			break;
  2506		case 432000:
  2507			val = BDB_263_VBT_EDP_LINK_RATE_4_32;
  2508			break;
  2509		case 324000:
  2510			val = BDB_263_VBT_EDP_LINK_RATE_3_24;
  2511			break;
  2512		case 270000:
  2513			val = BDB_263_VBT_EDP_LINK_RATE_2_7;
  2514			break;
  2515		case 243000:
  2516			val = BDB_263_VBT_EDP_LINK_RATE_2_43;
  2517			break;
  2518		case 216000:
  2519			val = BDB_263_VBT_EDP_LINK_RATE_2_16;
  2520			break;
  2521		case 162000:
  2522			val = BDB_263_VBT_EDP_LINK_RATE_1_62;
  2523			break;
> 2524		default:
  2525			break;
  2526		}
  2527	
  2528		return edp_data_override_mask & val;
  2529	}
  2530	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
