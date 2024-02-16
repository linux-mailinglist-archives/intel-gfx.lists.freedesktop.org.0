Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 284808573D4
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 03:48:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 576B410EA8D;
	Fri, 16 Feb 2024 02:48:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="It2nVp9N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 957E310EA8D
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 02:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708051692; x=1739587692;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=T+ZVcoirSKhJXq34TdBvn4l9qfLS2vOsjl6j/LpO8/w=;
 b=It2nVp9N5Nht1KRifn5TqLt4t10KvZuEmtRaeNDN2ci42oCXeN50fAlz
 5C/nT7G0nGniyv2Gr8lpEsANuWQZRur1PHuFrewpIvWocmVlMXp9mi14Y
 pkG53xRqk5T1nSm6b7xVfJiYkASApsw/AeT3bzMxxrjs3uZNcEi7wqZ1s
 RvQzhumxeuaNqaSmOWnyv1cHgR6MFLIixe1Ngo0wW4uXQyuuLSBS682aJ
 xbjCrW0txZR6CiPO/vh+4BlDuX87vya8875gifjhs+exJLcb48dy//yZh
 wwmjeEOUB4hpQmTQCklqAAWrP10jhHtUSvqJL66Qdl5Kw1gHjCmjXtqWR A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="24638396"
X-IronPort-AV: E=Sophos;i="6.06,163,1705392000"; d="scan'208";a="24638396"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 18:48:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,163,1705392000"; 
   d="scan'208";a="4015120"
Received: from lkp-server02.sh.intel.com (HELO 3c78fa4d504c) ([10.239.97.151])
 by fmviesa006.fm.intel.com with ESMTP; 15 Feb 2024 18:48:09 -0800
Received: from kbuild by 3c78fa4d504c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1raoGi-0000xM-2q;
 Fri, 16 Feb 2024 02:48:05 +0000
Date: Fri, 16 Feb 2024 10:47:55 +0800
From: kernel test robot <lkp@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 4/6] drm/i915/psr: Silence period and lfps half cycle
Message-ID: <202402161056.O7eY8Uvv-lkp@intel.com>
References: <20240215104934.2395239-5-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240215104934.2395239-5-jouni.hogander@intel.com>
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
[also build test WARNING on drm-tip/drm-tip next-20240215]
[cannot apply to drm-intel/for-linux-next-fixes drm/drm-next linus/master v6.8-rc4]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jouni-H-gander/drm-display-Add-missing-aux-less-alpm-wake-related-bits/20240215-185209
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20240215104934.2395239-5-jouni.hogander%40intel.com
patch subject: [PATCH 4/6] drm/i915/psr: Silence period and lfps half cycle
config: i386-buildonly-randconfig-004-20240215 (https://download.01.org/0day-ci/archive/20240216/202402161056.O7eY8Uvv-lkp@intel.com/config)
compiler: clang version 17.0.6 (https://github.com/llvm/llvm-project 6009708b4367171ccdbf4b5905cb6a803753fe18)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240216/202402161056.O7eY8Uvv-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202402161056.O7eY8Uvv-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_psr.c:1253:6: warning: variable 'silence_period' is uninitialized when used here [-Wuninitialized]
    1253 |             silence_period > 256 || silence_period < 0 ||
         |             ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_psr.c:1240:17: note: initialize the variable 'silence_period' to silence this warning
    1240 |                 silence_period, lfps_half_cycle;
         |                               ^
         |                                = 0
   1 warning generated.


vim +/silence_period +1253 drivers/gpu/drm/i915/display/intel_psr.c

  1234	
  1235	static int _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
  1236						     struct intel_crtc_state *crtc_state)
  1237	{
  1238		struct drm_i915_private *i915 = dp_to_i915(intel_dp);
  1239		int aux_less_wake_time, aux_less_wake_lines, switch_to_active_lines,
  1240			silence_period, lfps_half_cycle;
  1241	
  1242		aux_less_wake_time =
  1243			_lnl_compute_aux_less_wake_time(crtc_state->port_clock / 1000);
  1244		aux_less_wake_lines = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
  1245							       aux_less_wake_time);
  1246	
  1247		switch_to_active_lines =
  1248			intel_usecs_to_scanlines(
  1249				&crtc_state->hw.adjusted_mode,
  1250				_lnl_compute_switch_to_active_time(crtc_state->port_clock / 1000));
  1251	
  1252		if (aux_less_wake_lines > 32 || switch_to_active_lines > 32 ||
> 1253		    silence_period > 256 || silence_period < 0 ||
  1254		    !_lnl_get_silence_period_and_lfps_half_cycle(intel_dp->link_rate,
  1255								 &silence_period,
  1256								 &lfps_half_cycle))
  1257			return false;
  1258	
  1259		if (i915->display.params.psr_safest_params) {
  1260			aux_less_wake_lines = 32;
  1261			switch_to_active_lines = 32;
  1262		}
  1263	
  1264		intel_dp->psr.alpm_parameters.aux_less_wake_lines = aux_less_wake_lines;
  1265		intel_dp->psr.alpm_parameters.switch_to_active_lines = switch_to_active_lines;
  1266		intel_dp->psr.alpm_parameters.silence_period_sym_clocks = silence_period;
  1267		intel_dp->psr.alpm_parameters.lfps_half_cycle_num_of_syms = lfps_half_cycle;
  1268	
  1269		return true;
  1270	}
  1271	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
