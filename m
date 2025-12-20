Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C10CD318D
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Dec 2025 16:21:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75F9D10E264;
	Sat, 20 Dec 2025 15:21:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NPpRGuPL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C335E10E1F4;
 Sat, 20 Dec 2025 15:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766244105; x=1797780105;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/VSpkD0HUqmQ7ywPno+NDDxNEtOXIamRkFsc4W/V2CM=;
 b=NPpRGuPLm35f+lYNL0nwHoRx/ugVYdqYiENZ6LZFaNL/BxOZzQP925R2
 cXez9ZbFLhVkr7y8Oso3FEPFr6gmJb8o3U86+5KwshCzhn7KlUbARi16x
 H+fh+ckpzV5kD1xhaW8aeMp1nPKnZwLCzCJoQrCFgeEHHmzSVVRjKmw2N
 2Tc6S8M5yKe054Pdfx619c2y+diBsMNSL/L4FGyfLhVN/sodSb/724maH
 PPRN2pPDUrvRg4fDnM/VZIe8AvyCERQHkma58CONBYpdZ37L+OVgbL9HZ
 2Tw1KdKKPsbZHGAxCcSBPXimMtv72kp6j3o0Voc53yDIRs+7+Ucfu8IAy Q==;
X-CSE-ConnectionGUID: EtKOIWMDR1mb3rO2Is7veg==
X-CSE-MsgGUID: Xd3hZYkeR+OAeWquOPgQaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11648"; a="68153721"
X-IronPort-AV: E=Sophos;i="6.21,164,1763452800"; d="scan'208";a="68153721"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2025 07:21:44 -0800
X-CSE-ConnectionGUID: 3De7O1SbQ4KoIQc0h2oQ0w==
X-CSE-MsgGUID: TOEMPmDaRc2HCtJ+NzV4AQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,164,1763452800"; d="scan'208";a="204053588"
Received: from igk-lkp-server01.igk.intel.com (HELO 8a0c053bdd2a)
 ([10.211.93.152])
 by fmviesa004.fm.intel.com with ESMTP; 20 Dec 2025 07:21:42 -0800
Received: from kbuild by 8a0c053bdd2a with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vWym4-000000004fO-03ip;
 Sat, 20 Dec 2025 15:21:40 +0000
Date: Sat, 20 Dec 2025 16:20:46 +0100
From: kernel test robot <lkp@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev
Subject: Re: [i915-rt v4 19/20] drm/i915/display: Do not take uncore lock in
 i915_get_vblank_counter
Message-ID: <202512201653.RtK7HcqE-lkp@intel.com>
References: <20251218163408.97508-20-dev@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251218163408.97508-20-dev@lankhorst.se>
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

Hi Maarten,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-i915/for-linux-next]
[also build test ERROR on drm-i915/for-linux-next-fixes drm-xe/drm-xe-next drm-tip/drm-tip linus/master v6.19-rc1 next-20251219]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Maarten-Lankhorst/drm-i915-display-Fix-intel_lpe_audio_irq_handler-for-PREEMPT-RT/20251219-044020
base:   https://gitlab.freedesktop.org/drm/i915/kernel.git for-linux-next
patch link:    https://lore.kernel.org/r/20251218163408.97508-20-dev%40lankhorst.se
patch subject: [i915-rt v4 19/20] drm/i915/display: Do not take uncore lock in i915_get_vblank_counter
config: x86_64-rhel-9.4 (https://download.01.org/0day-ci/archive/20251220/202512201653.RtK7HcqE-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251220/202512201653.RtK7HcqE-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202512201653.RtK7HcqE-lkp@intel.com/

All error/warnings (new ones prefixed by >>):

   In file included from drivers/gpu/drm/i915/gt/intel_engine_types.h:26,
                    from drivers/gpu/drm/i915/gt/intel_context_types.h:17,
                    from drivers/gpu/drm/i915/gem/i915_gem_context_types.h:19,
                    from drivers/gpu/drm/i915/gem/i915_gem_context.h:9,
                    from drivers/gpu/drm/i915/i915_driver.c:75:
   drivers/gpu/drm/i915/intel_uncore.h: In function 'intel_uncore_read64_2x32_fw':
>> drivers/gpu/drm/i915/intel_uncore.h:455:19: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'lower'
     455 |         u32 upper lower, old_upper, loop = 0;
         |                   ^~~~~
>> drivers/gpu/drm/i915/intel_uncore.h:455:19: error: 'lower' undeclared (first use in this function); did you mean 'tolower'?
     455 |         u32 upper lower, old_upper, loop = 0;
         |                   ^~~~~
         |                   tolower
   drivers/gpu/drm/i915/intel_uncore.h:455:19: note: each undeclared identifier is reported only once for each function it appears in
>> drivers/gpu/drm/i915/intel_uncore.h:455:26: error: 'old_upper' undeclared (first use in this function); did you mean 'si_upper'?
     455 |         u32 upper lower, old_upper, loop = 0;
         |                          ^~~~~~~~~
         |                          si_upper
>> drivers/gpu/drm/i915/intel_uncore.h:455:24: warning: left-hand operand of comma expression has no effect [-Wunused-value]
     455 |         u32 upper lower, old_upper, loop = 0;
         |                        ^
>> drivers/gpu/drm/i915/intel_uncore.h:455:37: error: 'loop' undeclared (first use in this function)
     455 |         u32 upper lower, old_upper, loop = 0;
         |                                     ^~~~
   drivers/gpu/drm/i915/intel_uncore.h:455:35: warning: left-hand operand of comma expression has no effect [-Wunused-value]
     455 |         u32 upper lower, old_upper, loop = 0;
         |                                   ^
>> drivers/gpu/drm/i915/intel_uncore.h:456:9: error: 'upper' undeclared (first use in this function)
     456 |         upper = intel_uncore_read_fw(uncoree, upper_reg);
         |         ^~~~~
>> drivers/gpu/drm/i915/intel_uncore.h:456:38: error: 'uncoree' undeclared (first use in this function); did you mean 'uncore'?
     456 |         upper = intel_uncore_read_fw(uncoree, upper_reg);
         |                                      ^~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:425:55: note: in definition of macro 'intel_uncore_read_fw'
     425 | #define intel_uncore_read_fw(...) __raw_uncore_read32(__VA_ARGS__)
         |                                                       ^~~~~~~~~~~
>> drivers/gpu/drm/i915/intel_uncore.h:456:47: error: 'upper_reg' undeclared (first use in this function)
     456 |         upper = intel_uncore_read_fw(uncoree, upper_reg);
         |                                               ^~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:425:55: note: in definition of macro 'intel_uncore_read_fw'
     425 | #define intel_uncore_read_fw(...) __raw_uncore_read32(__VA_ARGS__)
         |                                                       ^~~~~~~~~~~
>> drivers/gpu/drm/i915/intel_uncore.h:459:54: error: 'lower_reg' undeclared (first use in this function)
     459 |                 lower = intel_uncore_read_fw(uncore, lower_reg);
         |                                                      ^~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:425:55: note: in definition of macro 'intel_uncore_read_fw'
     425 | #define intel_uncore_read_fw(...) __raw_uncore_read32(__VA_ARGS__)
         |                                                       ^~~~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h: In function 'intel_uncore_read64_2x32':
>> drivers/gpu/drm/i915/intel_uncore.h:483:15: error: too many arguments to function 'intel_uncore_read64_2x32_fw'
     483 |         ret = intel_uncore_read64_2x32_fw(uncore, lower_reg, upper_reg);
         |               ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:453:1: note: declared here
     453 | intel_uncore_read64_2x32_fw(struct intel_uncore *uncore)
         | ^~~~~~~~~~~~~~~~~~~~~~~~~~~
--
   In file included from drivers/gpu/drm/i915/gt/intel_engine_types.h:26,
                    from drivers/gpu/drm/i915/gt/intel_context_types.h:17,
                    from drivers/gpu/drm/i915/gem/i915_gem_context_types.h:19,
                    from drivers/gpu/drm/i915/gem/i915_gem_context.h:9,
                    from drivers/gpu/drm/i915/i915_drm_client.c:14:
   drivers/gpu/drm/i915/intel_uncore.h: In function 'intel_uncore_read64_2x32_fw':
>> drivers/gpu/drm/i915/intel_uncore.h:455:19: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'lower'
     455 |         u32 upper lower, old_upper, loop = 0;
         |                   ^~~~~
   drivers/gpu/drm/i915/intel_uncore.h:455:19: error: 'lower' undeclared (first use in this function); did you mean 'islower'?
     455 |         u32 upper lower, old_upper, loop = 0;
         |                   ^~~~~
         |                   islower
   drivers/gpu/drm/i915/intel_uncore.h:455:19: note: each undeclared identifier is reported only once for each function it appears in
>> drivers/gpu/drm/i915/intel_uncore.h:455:26: error: 'old_upper' undeclared (first use in this function); did you mean 'si_upper'?
     455 |         u32 upper lower, old_upper, loop = 0;
         |                          ^~~~~~~~~
         |                          si_upper
>> drivers/gpu/drm/i915/intel_uncore.h:455:24: warning: left-hand operand of comma expression has no effect [-Wunused-value]
     455 |         u32 upper lower, old_upper, loop = 0;
         |                        ^
>> drivers/gpu/drm/i915/intel_uncore.h:455:37: error: 'loop' undeclared (first use in this function)
     455 |         u32 upper lower, old_upper, loop = 0;
         |                                     ^~~~
   drivers/gpu/drm/i915/intel_uncore.h:455:35: warning: left-hand operand of comma expression has no effect [-Wunused-value]
     455 |         u32 upper lower, old_upper, loop = 0;
         |                                   ^
>> drivers/gpu/drm/i915/intel_uncore.h:456:9: error: 'upper' undeclared (first use in this function)
     456 |         upper = intel_uncore_read_fw(uncoree, upper_reg);
         |         ^~~~~
>> drivers/gpu/drm/i915/intel_uncore.h:456:38: error: 'uncoree' undeclared (first use in this function); did you mean 'uncore'?
     456 |         upper = intel_uncore_read_fw(uncoree, upper_reg);
         |                                      ^~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:425:55: note: in definition of macro 'intel_uncore_read_fw'
     425 | #define intel_uncore_read_fw(...) __raw_uncore_read32(__VA_ARGS__)
         |                                                       ^~~~~~~~~~~
>> drivers/gpu/drm/i915/intel_uncore.h:456:47: error: 'upper_reg' undeclared (first use in this function)
     456 |         upper = intel_uncore_read_fw(uncoree, upper_reg);
         |                                               ^~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:425:55: note: in definition of macro 'intel_uncore_read_fw'
     425 | #define intel_uncore_read_fw(...) __raw_uncore_read32(__VA_ARGS__)
         |                                                       ^~~~~~~~~~~
>> drivers/gpu/drm/i915/intel_uncore.h:459:54: error: 'lower_reg' undeclared (first use in this function)
     459 |                 lower = intel_uncore_read_fw(uncore, lower_reg);
         |                                                      ^~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:425:55: note: in definition of macro 'intel_uncore_read_fw'
     425 | #define intel_uncore_read_fw(...) __raw_uncore_read32(__VA_ARGS__)
         |                                                       ^~~~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h: In function 'intel_uncore_read64_2x32':
>> drivers/gpu/drm/i915/intel_uncore.h:483:15: error: too many arguments to function 'intel_uncore_read64_2x32_fw'
     483 |         ret = intel_uncore_read64_2x32_fw(uncore, lower_reg, upper_reg);
         |               ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:453:1: note: declared here
     453 | intel_uncore_read64_2x32_fw(struct intel_uncore *uncore)
         | ^~~~~~~~~~~~~~~~~~~~~~~~~~~
--
   In file included from drivers/gpu/drm/i915/gt/intel_engine_types.h:26,
                    from drivers/gpu/drm/i915/gt/intel_context_types.h:17,
                    from drivers/gpu/drm/i915/gem/i915_gem_context_types.h:19,
                    from drivers/gpu/drm/i915/i915_drv.h:40,
                    from drivers/gpu/drm/i915/i915_ioctl.c:8:
   drivers/gpu/drm/i915/intel_uncore.h: In function 'intel_uncore_read64_2x32_fw':
>> drivers/gpu/drm/i915/intel_uncore.h:455:19: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'lower'
     455 |         u32 upper lower, old_upper, loop = 0;
         |                   ^~~~~
   drivers/gpu/drm/i915/intel_uncore.h:455:19: error: 'lower' undeclared (first use in this function); did you mean 'islower'?
     455 |         u32 upper lower, old_upper, loop = 0;
         |                   ^~~~~
         |                   islower
   drivers/gpu/drm/i915/intel_uncore.h:455:19: note: each undeclared identifier is reported only once for each function it appears in
>> drivers/gpu/drm/i915/intel_uncore.h:455:26: error: 'old_upper' undeclared (first use in this function); did you mean 'si_upper'?
     455 |         u32 upper lower, old_upper, loop = 0;
         |                          ^~~~~~~~~
         |                          si_upper
>> drivers/gpu/drm/i915/intel_uncore.h:455:24: warning: left-hand operand of comma expression has no effect [-Wunused-value]
     455 |         u32 upper lower, old_upper, loop = 0;
         |                        ^
>> drivers/gpu/drm/i915/intel_uncore.h:455:37: error: 'loop' undeclared (first use in this function)
     455 |         u32 upper lower, old_upper, loop = 0;
         |                                     ^~~~
   drivers/gpu/drm/i915/intel_uncore.h:455:35: warning: left-hand operand of comma expression has no effect [-Wunused-value]
     455 |         u32 upper lower, old_upper, loop = 0;
         |                                   ^
>> drivers/gpu/drm/i915/intel_uncore.h:456:9: error: 'upper' undeclared (first use in this function)
     456 |         upper = intel_uncore_read_fw(uncoree, upper_reg);
         |         ^~~~~
>> drivers/gpu/drm/i915/intel_uncore.h:456:38: error: 'uncoree' undeclared (first use in this function); did you mean 'uncore'?
     456 |         upper = intel_uncore_read_fw(uncoree, upper_reg);
         |                                      ^~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:425:55: note: in definition of macro 'intel_uncore_read_fw'
     425 | #define intel_uncore_read_fw(...) __raw_uncore_read32(__VA_ARGS__)
         |                                                       ^~~~~~~~~~~
>> drivers/gpu/drm/i915/intel_uncore.h:456:47: error: 'upper_reg' undeclared (first use in this function)
     456 |         upper = intel_uncore_read_fw(uncoree, upper_reg);
         |                                               ^~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:425:55: note: in definition of macro 'intel_uncore_read_fw'
     425 | #define intel_uncore_read_fw(...) __raw_uncore_read32(__VA_ARGS__)
         |                                                       ^~~~~~~~~~~
>> drivers/gpu/drm/i915/intel_uncore.h:459:54: error: 'lower_reg' undeclared (first use in this function)
     459 |                 lower = intel_uncore_read_fw(uncore, lower_reg);
         |                                                      ^~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:425:55: note: in definition of macro 'intel_uncore_read_fw'
     425 | #define intel_uncore_read_fw(...) __raw_uncore_read32(__VA_ARGS__)
         |                                                       ^~~~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h: In function 'intel_uncore_read64_2x32':
>> drivers/gpu/drm/i915/intel_uncore.h:483:15: error: too many arguments to function 'intel_uncore_read64_2x32_fw'
     483 |         ret = intel_uncore_read64_2x32_fw(uncore, lower_reg, upper_reg);
         |               ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:453:1: note: declared here
     453 | intel_uncore_read64_2x32_fw(struct intel_uncore *uncore)
         | ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h: In function 'intel_uncore_read64_2x32_fw':
>> drivers/gpu/drm/i915/intel_uncore.h:464:1: warning: control reaches end of non-void function [-Wreturn-type]
     464 | }
         | ^
--
   In file included from drivers/gpu/drm/i915/display/intel_de.h:12,
                    from drivers/gpu/drm/i915/display/hsw_ips.c:13:
   drivers/gpu/drm/i915/intel_uncore.h: In function 'intel_uncore_read64_2x32_fw':
>> drivers/gpu/drm/i915/intel_uncore.h:455:19: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'lower'
     455 |         u32 upper lower, old_upper, loop = 0;
         |                   ^~~~~
>> drivers/gpu/drm/i915/intel_uncore.h:455:19: error: 'lower' undeclared (first use in this function); did you mean 'tolower'?
     455 |         u32 upper lower, old_upper, loop = 0;
         |                   ^~~~~
         |                   tolower
   drivers/gpu/drm/i915/intel_uncore.h:455:19: note: each undeclared identifier is reported only once for each function it appears in
>> drivers/gpu/drm/i915/intel_uncore.h:455:26: error: 'old_upper' undeclared (first use in this function); did you mean 'si_upper'?
     455 |         u32 upper lower, old_upper, loop = 0;
         |                          ^~~~~~~~~
         |                          si_upper
>> drivers/gpu/drm/i915/intel_uncore.h:455:24: warning: left-hand operand of comma expression has no effect [-Wunused-value]
     455 |         u32 upper lower, old_upper, loop = 0;
         |                        ^
>> drivers/gpu/drm/i915/intel_uncore.h:455:37: error: 'loop' undeclared (first use in this function)
     455 |         u32 upper lower, old_upper, loop = 0;
         |                                     ^~~~
   drivers/gpu/drm/i915/intel_uncore.h:455:35: warning: left-hand operand of comma expression has no effect [-Wunused-value]
     455 |         u32 upper lower, old_upper, loop = 0;
         |                                   ^
>> drivers/gpu/drm/i915/intel_uncore.h:456:9: error: 'upper' undeclared (first use in this function)
     456 |         upper = intel_uncore_read_fw(uncoree, upper_reg);
         |         ^~~~~
>> drivers/gpu/drm/i915/intel_uncore.h:456:38: error: 'uncoree' undeclared (first use in this function); did you mean 'uncore'?
     456 |         upper = intel_uncore_read_fw(uncoree, upper_reg);
         |                                      ^~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:425:55: note: in definition of macro 'intel_uncore_read_fw'
     425 | #define intel_uncore_read_fw(...) __raw_uncore_read32(__VA_ARGS__)
         |                                                       ^~~~~~~~~~~
>> drivers/gpu/drm/i915/intel_uncore.h:456:47: error: 'upper_reg' undeclared (first use in this function)
     456 |         upper = intel_uncore_read_fw(uncoree, upper_reg);
         |                                               ^~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:425:55: note: in definition of macro 'intel_uncore_read_fw'
     425 | #define intel_uncore_read_fw(...) __raw_uncore_read32(__VA_ARGS__)
         |                                                       ^~~~~~~~~~~
>> drivers/gpu/drm/i915/intel_uncore.h:459:54: error: 'lower_reg' undeclared (first use in this function)
     459 |                 lower = intel_uncore_read_fw(uncore, lower_reg);
         |                                                      ^~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:425:55: note: in definition of macro 'intel_uncore_read_fw'
     425 | #define intel_uncore_read_fw(...) __raw_uncore_read32(__VA_ARGS__)
         |                                                       ^~~~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h: In function 'intel_uncore_read64_2x32':
>> drivers/gpu/drm/i915/intel_uncore.h:483:15: error: too many arguments to function 'intel_uncore_read64_2x32_fw'
     483 |         ret = intel_uncore_read64_2x32_fw(uncore, lower_reg, upper_reg);
         |               ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:453:1: note: declared here
     453 | intel_uncore_read64_2x32_fw(struct intel_uncore *uncore)
         | ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_de.h: In function 'intel_de_read64_2x32_fw':
>> drivers/gpu/drm/i915/display/intel_de.h:70:16: error: too many arguments to function 'intel_uncore_read64_2x32_fw'
      70 |         return intel_uncore_read64_2x32_fw(__to_uncore(display),
         |                ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:453:1: note: declared here
     453 | intel_uncore_read64_2x32_fw(struct intel_uncore *uncore)
         | ^~~~~~~~~~~~~~~~~~~~~~~~~~~
--
   In file included from drivers/gpu/drm/i915/gt/intel_engine_types.h:26,
                    from drivers/gpu/drm/i915/gt/intel_context_types.h:17,
                    from drivers/gpu/drm/i915/gem/i915_gem_context_types.h:19,
                    from drivers/gpu/drm/i915/i915_drv.h:40,
                    from drivers/gpu/drm/i915/display/i9xx_wm.c:10:
   drivers/gpu/drm/i915/intel_uncore.h: In function 'intel_uncore_read64_2x32_fw':
>> drivers/gpu/drm/i915/intel_uncore.h:455:19: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'lower'
     455 |         u32 upper lower, old_upper, loop = 0;
         |                   ^~~~~
   drivers/gpu/drm/i915/intel_uncore.h:455:19: error: 'lower' undeclared (first use in this function); did you mean 'islower'?
     455 |         u32 upper lower, old_upper, loop = 0;
         |                   ^~~~~
         |                   islower
   drivers/gpu/drm/i915/intel_uncore.h:455:19: note: each undeclared identifier is reported only once for each function it appears in
>> drivers/gpu/drm/i915/intel_uncore.h:455:26: error: 'old_upper' undeclared (first use in this function); did you mean 'si_upper'?
     455 |         u32 upper lower, old_upper, loop = 0;
         |                          ^~~~~~~~~
         |                          si_upper
>> drivers/gpu/drm/i915/intel_uncore.h:455:24: warning: left-hand operand of comma expression has no effect [-Wunused-value]
     455 |         u32 upper lower, old_upper, loop = 0;
         |                        ^
>> drivers/gpu/drm/i915/intel_uncore.h:455:37: error: 'loop' undeclared (first use in this function)
     455 |         u32 upper lower, old_upper, loop = 0;
         |                                     ^~~~
   drivers/gpu/drm/i915/intel_uncore.h:455:35: warning: left-hand operand of comma expression has no effect [-Wunused-value]
     455 |         u32 upper lower, old_upper, loop = 0;
         |                                   ^
>> drivers/gpu/drm/i915/intel_uncore.h:456:9: error: 'upper' undeclared (first use in this function)
     456 |         upper = intel_uncore_read_fw(uncoree, upper_reg);
         |         ^~~~~
>> drivers/gpu/drm/i915/intel_uncore.h:456:38: error: 'uncoree' undeclared (first use in this function); did you mean 'uncore'?
     456 |         upper = intel_uncore_read_fw(uncoree, upper_reg);
         |                                      ^~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:425:55: note: in definition of macro 'intel_uncore_read_fw'
     425 | #define intel_uncore_read_fw(...) __raw_uncore_read32(__VA_ARGS__)
         |                                                       ^~~~~~~~~~~
>> drivers/gpu/drm/i915/intel_uncore.h:456:47: error: 'upper_reg' undeclared (first use in this function)
     456 |         upper = intel_uncore_read_fw(uncoree, upper_reg);
         |                                               ^~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:425:55: note: in definition of macro 'intel_uncore_read_fw'
     425 | #define intel_uncore_read_fw(...) __raw_uncore_read32(__VA_ARGS__)
         |                                                       ^~~~~~~~~~~
>> drivers/gpu/drm/i915/intel_uncore.h:459:54: error: 'lower_reg' undeclared (first use in this function)
     459 |                 lower = intel_uncore_read_fw(uncore, lower_reg);
         |                                                      ^~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:425:55: note: in definition of macro 'intel_uncore_read_fw'
     425 | #define intel_uncore_read_fw(...) __raw_uncore_read32(__VA_ARGS__)
         |                                                       ^~~~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h: In function 'intel_uncore_read64_2x32':
>> drivers/gpu/drm/i915/intel_uncore.h:483:15: error: too many arguments to function 'intel_uncore_read64_2x32_fw'
     483 |         ret = intel_uncore_read64_2x32_fw(uncore, lower_reg, upper_reg);
         |               ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:453:1: note: declared here
     453 | intel_uncore_read64_2x32_fw(struct intel_uncore *uncore)
         | ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/gpu/drm/i915/display/i9xx_wm.c:16:
   drivers/gpu/drm/i915/display/intel_de.h: In function 'intel_de_read64_2x32_fw':
>> drivers/gpu/drm/i915/display/intel_de.h:70:16: error: too many arguments to function 'intel_uncore_read64_2x32_fw'
      70 |         return intel_uncore_read64_2x32_fw(__to_uncore(display),
         |                ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:453:1: note: declared here
     453 | intel_uncore_read64_2x32_fw(struct intel_uncore *uncore)
         | ^~~~~~~~~~~~~~~~~~~~~~~~~~~
--
   In file included from drivers/gpu/drm/i915/gt/intel_engine_types.h:26,
                    from drivers/gpu/drm/i915/gt/intel_context_types.h:17,
                    from drivers/gpu/drm/i915/gem/i915_gem_context_types.h:19,
                    from drivers/gpu/drm/i915/i915_drv.h:40,
                    from drivers/gpu/drm/i915/display/intel_vblank.c:11:
   drivers/gpu/drm/i915/intel_uncore.h: In function 'intel_uncore_read64_2x32_fw':
>> drivers/gpu/drm/i915/intel_uncore.h:455:19: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'lower'
     455 |         u32 upper lower, old_upper, loop = 0;
         |                   ^~~~~
   drivers/gpu/drm/i915/intel_uncore.h:455:19: error: 'lower' undeclared (first use in this function); did you mean 'islower'?
     455 |         u32 upper lower, old_upper, loop = 0;
         |                   ^~~~~
         |                   islower
   drivers/gpu/drm/i915/intel_uncore.h:455:19: note: each undeclared identifier is reported only once for each function it appears in
>> drivers/gpu/drm/i915/intel_uncore.h:455:26: error: 'old_upper' undeclared (first use in this function); did you mean 'si_upper'?
     455 |         u32 upper lower, old_upper, loop = 0;
         |                          ^~~~~~~~~
         |                          si_upper
>> drivers/gpu/drm/i915/intel_uncore.h:455:24: warning: left-hand operand of comma expression has no effect [-Wunused-value]
     455 |         u32 upper lower, old_upper, loop = 0;
         |                        ^
>> drivers/gpu/drm/i915/intel_uncore.h:455:37: error: 'loop' undeclared (first use in this function)
     455 |         u32 upper lower, old_upper, loop = 0;
         |                                     ^~~~
   drivers/gpu/drm/i915/intel_uncore.h:455:35: warning: left-hand operand of comma expression has no effect [-Wunused-value]
     455 |         u32 upper lower, old_upper, loop = 0;
         |                                   ^
>> drivers/gpu/drm/i915/intel_uncore.h:456:9: error: 'upper' undeclared (first use in this function)
     456 |         upper = intel_uncore_read_fw(uncoree, upper_reg);
         |         ^~~~~
>> drivers/gpu/drm/i915/intel_uncore.h:456:38: error: 'uncoree' undeclared (first use in this function); did you mean 'uncore'?
     456 |         upper = intel_uncore_read_fw(uncoree, upper_reg);
         |                                      ^~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:425:55: note: in definition of macro 'intel_uncore_read_fw'
     425 | #define intel_uncore_read_fw(...) __raw_uncore_read32(__VA_ARGS__)
         |                                                       ^~~~~~~~~~~
>> drivers/gpu/drm/i915/intel_uncore.h:456:47: error: 'upper_reg' undeclared (first use in this function)
     456 |         upper = intel_uncore_read_fw(uncoree, upper_reg);
         |                                               ^~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:425:55: note: in definition of macro 'intel_uncore_read_fw'
     425 | #define intel_uncore_read_fw(...) __raw_uncore_read32(__VA_ARGS__)
         |                                                       ^~~~~~~~~~~
>> drivers/gpu/drm/i915/intel_uncore.h:459:54: error: 'lower_reg' undeclared (first use in this function)
     459 |                 lower = intel_uncore_read_fw(uncore, lower_reg);
         |                                                      ^~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:425:55: note: in definition of macro 'intel_uncore_read_fw'
     425 | #define intel_uncore_read_fw(...) __raw_uncore_read32(__VA_ARGS__)
         |                                                       ^~~~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h: In function 'intel_uncore_read64_2x32':
>> drivers/gpu/drm/i915/intel_uncore.h:483:15: error: too many arguments to function 'intel_uncore_read64_2x32_fw'
     483 |         ret = intel_uncore_read64_2x32_fw(uncore, lower_reg, upper_reg);
         |               ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:453:1: note: declared here
     453 | intel_uncore_read64_2x32_fw(struct intel_uncore *uncore)
         | ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/gpu/drm/i915/display/intel_vblank.c:14:
   drivers/gpu/drm/i915/display/intel_de.h: In function 'intel_de_read64_2x32_fw':
>> drivers/gpu/drm/i915/display/intel_de.h:70:16: error: too many arguments to function 'intel_uncore_read64_2x32_fw'
      70 |         return intel_uncore_read64_2x32_fw(__to_uncore(display),
         |                ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:453:1: note: declared here
     453 | intel_uncore_read64_2x32_fw(struct intel_uncore *uncore)
         | ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h: In function 'intel_uncore_read64_2x32_fw':
>> drivers/gpu/drm/i915/intel_uncore.h:464:1: warning: control reaches end of non-void function [-Wreturn-type]
     464 | }
         | ^
..


vim +455 drivers/gpu/drm/i915/intel_uncore.h

   451	
   452	static inline u64
   453	intel_uncore_read64_2x32_fw(struct intel_uncore *uncore)
   454	{
 > 455		u32 upper lower, old_upper, loop = 0;
 > 456		upper = intel_uncore_read_fw(uncoree, upper_reg);
   457		do {
   458			old_upper = upper;
 > 459			lower = intel_uncore_read_fw(uncore, lower_reg);
   460			upper = intel_uncore_read_fw(uncore, upper_reg);
   461		} while (upper != old_upper && loop++ < 2);
   462	
   463		return (u64)upper << 32 | lower;
 > 464	}
   465	
   466	static inline u64
   467	intel_uncore_read64_2x32(struct intel_uncore *uncore,
   468				 i915_reg_t lower_reg, i915_reg_t upper_reg)
   469	{
   470		enum forcewake_domains fw_domains;
   471		unsigned long flags;
   472		u64 ret;
   473	
   474		fw_domains = intel_uncore_forcewake_for_reg(uncore, lower_reg,
   475							    FW_REG_READ);
   476	
   477		fw_domains |= intel_uncore_forcewake_for_reg(uncore, upper_reg,
   478							    FW_REG_READ);
   479	
   480		spin_lock_irqsave(&uncore->lock, flags);
   481		intel_uncore_forcewake_get__locked(uncore, fw_domains);
   482	
 > 483		ret = intel_uncore_read64_2x32_fw(uncore, lower_reg, upper_reg);
   484	
   485		intel_uncore_forcewake_put__locked(uncore, fw_domains);
   486		spin_unlock_irqrestore(&uncore->lock, flags);
   487	
   488		return ret;
   489	}
   490	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
