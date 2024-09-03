Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD777969624
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 09:52:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C509010E429;
	Tue,  3 Sep 2024 07:52:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NLvvQF0x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02A2D10E429
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 07:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725349970; x=1756885970;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=t9N/jlwW/ok+MM/Mta0kNwYGTnj3VNDdb++trM9lic0=;
 b=NLvvQF0xRdSSINY2jgxyJHOAAe82pJsJ+C7WGulfrAQIsaHp8XG/ltye
 ZRNLO/x87KXIQ2KuNiI3auGsbyVWbid/uFugiv0jh41iKbtIxOn+KVi64
 zeK4+cfNntxCEsrIKplCB3xUQiLjN1dWFKQSYYL2pUg3z1z6UmESCn/4f
 TNMk1j63uPR35Mybvyzv8+6M9N9JQKmOu0b8msan1MmNqxSOih17dQVhy
 dro0vA7CvcpwKEY58uAODAAhEslCRwpJMK4SWZe7crZL8JM3dyxmjaHN9
 RWj45+gr/1hBcShm15fklBigyL/hSweu672U+j8BQW5Ozh8X6yF1PFqsu g==;
X-CSE-ConnectionGUID: C0v7NEoUTHy2M8W3N8r1ug==
X-CSE-MsgGUID: S8r0st5VQTyHboev3lS2Sw==
X-IronPort-AV: E=McAfee;i="6700,10204,11183"; a="24085478"
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="24085478"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 00:52:50 -0700
X-CSE-ConnectionGUID: KgR/VfDuQTGrHzuBecpYnw==
X-CSE-MsgGUID: zll42YBsR3uoQUQ4fNhZOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="65017340"
Received: from lkp-server01.sh.intel.com (HELO 9c6b1c7d3b50) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 03 Sep 2024 00:52:47 -0700
Received: from kbuild by 9c6b1c7d3b50 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1slOLF-0006NK-2l;
 Tue, 03 Sep 2024 07:52:45 +0000
Date: Tue, 3 Sep 2024 15:52:22 +0800
From: kernel test robot <lkp@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 04/13] drm/i915/display: Enable MSA Ignore Timing PAR
 only when in not fixed_rr mode
Message-ID: <202409031530.5OEhhqKb-lkp@intel.com>
References: <20240902080635.2946858-5-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240902080635.2946858-5-ankit.k.nautiyal@intel.com>
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
[also build test ERROR on drm-tip/drm-tip next-20240902]
[cannot apply to drm-intel/for-linux-next-fixes linus/master v6.11-rc6]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Ankit-Nautiyal/drm-i915-dp-Avoid-vrr-compute-config-for-HDMI-sink/20240902-205135
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20240902080635.2946858-5-ankit.k.nautiyal%40intel.com
patch subject: [PATCH 04/13] drm/i915/display: Enable MSA Ignore Timing PAR only when in not fixed_rr mode
config: x86_64-randconfig-071-20240903 (https://download.01.org/0day-ci/archive/20240903/202409031530.5OEhhqKb-lkp@intel.com/config)
compiler: clang version 18.1.5 (https://github.com/llvm/llvm-project 617a15a9eac96088ae5e9134248d8236e34b91b1)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240903/202409031530.5OEhhqKb-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202409031530.5OEhhqKb-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_dp_link_training.c:724:6: error: variable 'enable_msa_timing_par_ignore' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
     724 |         if (crtc_state->vrr.enable && !crtc_state->vrr.fixed_rr)
         |             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_dp_link_training.c:728:30: note: uninitialized use occurs here
     728 |                                         crtc_state->port_clock, enable_msa_timing_par_ignore);
         |                                                                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_dp_link_training.c:724:2: note: remove the 'if' if its condition is always true
     724 |         if (crtc_state->vrr.enable && !crtc_state->vrr.fixed_rr)
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     725 |                 enable_msa_timing_par_ignore = true;
>> drivers/gpu/drm/i915/display/intel_dp_link_training.c:724:6: error: variable 'enable_msa_timing_par_ignore' is used uninitialized whenever '&&' condition is false [-Werror,-Wsometimes-uninitialized]
     724 |         if (crtc_state->vrr.enable && !crtc_state->vrr.fixed_rr)
         |             ^~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_dp_link_training.c:728:30: note: uninitialized use occurs here
     728 |                                         crtc_state->port_clock, enable_msa_timing_par_ignore);
         |                                                                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_dp_link_training.c:724:6: note: remove the '&&' if its condition is always true
     724 |         if (crtc_state->vrr.enable && !crtc_state->vrr.fixed_rr)
         |             ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_dp_link_training.c:721:35: note: initialize the variable 'enable_msa_timing_par_ignore' to silence this warning
     721 |         bool enable_msa_timing_par_ignore;
         |                                          ^
         |                                           = 0
   2 errors generated.


vim +724 drivers/gpu/drm/i915/display/intel_dp_link_training.c

   717	
   718	static void intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
   719						    const struct intel_crtc_state *crtc_state)
   720	{
   721		bool enable_msa_timing_par_ignore;
   722	
   723		/* Enable MSA TIMING PAR IGNORE only in non fixed_rr mode */
 > 724		if (crtc_state->vrr.enable && !crtc_state->vrr.fixed_rr)
   725			enable_msa_timing_par_ignore = true;
   726	
   727		intel_dp_link_training_set_mode(intel_dp,
   728						crtc_state->port_clock, enable_msa_timing_par_ignore);
   729	}
   730	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
