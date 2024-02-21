Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B56185E64E
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 19:36:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B06210E79F;
	Wed, 21 Feb 2024 18:36:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="amfDYwSU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C11110E79F
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 18:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708540586; x=1740076586;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=7N4L3Y3cAcWAplEGy0JO21LC6UAVz5g9p7ywNrvVMKI=;
 b=amfDYwSUOmvPLKyjK9w+NlggzSOuAKIbp962dBYMmSZLFtys4lTH7qWP
 WW4sGekcUdPE4knt8oxr1GTcIbZJqCx197jBTEobgjP6W1mfa3ZAkd3Cl
 WSZuMmc7RNAjcDvv3JyNyo7Q3GxPHUkJKB5rwn1VUsOsIZZQZ5DLQJ6hO
 dK3Chjvi7Wz8gA9UP7OwWhLaf8ccB0jTHDMttLxCzei0kIBdLqPbk5HFJ
 RCvMk+VKNYMVVlJHq6q3cUBRdSuP4IguzWCNs5EGovtdzYTDRUwXwDjcU
 yH612Ve0NtT3iGbV2e1/YRJxboqpCj4dmY6BqszpaMwODp9BK7SLZlNIg w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2869301"
X-IronPort-AV: E=Sophos;i="6.06,176,1705392000"; 
   d="scan'208";a="2869301"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 10:36:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,176,1705392000"; d="scan'208";a="36013256"
Received: from lkp-server02.sh.intel.com (HELO 3c78fa4d504c) ([10.239.97.151])
 by orviesa002.jf.intel.com with ESMTP; 21 Feb 2024 10:36:24 -0800
Received: from kbuild by 3c78fa4d504c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rcrRz-0005bE-1W;
 Wed, 21 Feb 2024 18:36:15 +0000
Date: Thu, 22 Feb 2024 02:35:48 +0800
From: kernel test robot <lkp@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH v2 5/6] drm/i915/psr: Enable ALPM for eDP Panel replay
Message-ID: <202402220225.2eViN531-lkp@intel.com>
References: <20240220121045.2156004-6-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240220121045.2156004-6-jouni.hogander@intel.com>
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

Hi Jouni,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on drm-tip/drm-tip drm/drm-next next-20240221]
[cannot apply to drm-intel/for-linux-next-fixes linus/master v6.8-rc5]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jouni-H-gander/drm-display-Add-missing-aux-less-alpm-wake-related-bits/20240220-201356
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20240220121045.2156004-6-jouni.hogander%40intel.com
patch subject: [PATCH v2 5/6] drm/i915/psr: Enable ALPM for eDP Panel replay
config: riscv-allmodconfig (https://download.01.org/0day-ci/archive/20240222/202402220225.2eViN531-lkp@intel.com/config)
compiler: clang version 19.0.0git (https://github.com/llvm/llvm-project 36adfec155de366d722f2bac8ff9162289dcf06c)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240222/202402220225.2eViN531-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202402220225.2eViN531-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_psr.c:1705:3: warning: variable 'alpm_ctl' is uninitialized when used here [-Wuninitialized]
    1705 |                 alpm_ctl |= ALPM_CTL_ALPM_ENABLE |
         |                 ^~~~~~~~
   drivers/gpu/drm/i915/display/intel_psr.c:1699:14: note: initialize the variable 'alpm_ctl' to silence this warning
    1699 |         u32 alpm_ctl;
         |                     ^
         |                      = 0
   1 warning generated.


vim +/alpm_ctl +1705 drivers/gpu/drm/i915/display/intel_psr.c

  1693	
  1694	static void lnl_alpm_configure(struct intel_dp *intel_dp)
  1695	{
  1696		struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
  1697		enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
  1698		struct intel_psr *psr = &intel_dp->psr;
  1699		u32 alpm_ctl;
  1700	
  1701		if (DISPLAY_VER(dev_priv) < 20)
  1702			return;
  1703	
  1704		if (intel_dp->psr.panel_replay_enabled && intel_dp_is_edp(intel_dp)) {
> 1705			alpm_ctl |= ALPM_CTL_ALPM_ENABLE |
  1706				ALPM_CTL_ALPM_AUX_LESS_ENABLE |
  1707				ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_50_SYMBOLS;
  1708	
  1709			intel_de_write(dev_priv, PORT_ALPM_CTL(cpu_transcoder),
  1710				       PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE |
  1711				       PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15) |
  1712				       PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(0) |
  1713				       PORT_ALPM_CTL_SILENCE_PERIOD(
  1714					       psr->alpm_parameters.silence_period_sym_clocks));
  1715	
  1716			intel_de_write(dev_priv, PORT_ALPM_LFPS_CTL(cpu_transcoder),
  1717				       PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(10) |
  1718				       PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(
  1719					       psr->alpm_parameters.lfps_half_cycle_num_of_syms) |
  1720				       PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(
  1721					       psr->alpm_parameters.lfps_half_cycle_num_of_syms) |
  1722				       PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(
  1723					       psr->alpm_parameters.lfps_half_cycle_num_of_syms));
  1724		} else {
  1725			alpm_ctl = ALPM_CTL_EXTENDED_FAST_WAKE_ENABLE |
  1726				ALPM_CTL_EXTENDED_FAST_WAKE_TIME(psr->alpm_parameters.fast_wake_lines);
  1727		}
  1728	
  1729		alpm_ctl |= ALPM_CTL_ALPM_ENTRY_CHECK(psr->alpm_parameters.check_entry_lines);
  1730	
  1731		intel_de_write(dev_priv, ALPM_CTL(cpu_transcoder), alpm_ctl);
  1732	}
  1733	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
