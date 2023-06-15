Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 702A57310E7
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 09:36:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE5C610E162;
	Thu, 15 Jun 2023 07:36:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02A5910E162
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 07:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686814578; x=1718350578;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=P/NO7uvVsryAgTIeqJrEd1/SK2kgiSqa1+h8wsy9WVI=;
 b=KK6gyV5Cps9BAE5zkeWESNCBIG/pUgkndoxztdh52OBlccwZjnojR4sy
 rcmU1lUIdaH8VdjOsPS+ghz5BDyS6RTIgqToJKqMPv+DWiGFbEaOTmTCk
 TEA+eoF4YXr/D6VntvsADqPxd17DjZjSR9V0mpDdWZuTmDwPl35O6WMj+
 vh/kxUZkqk5Z8yALUJnnRe7XucryQchc+jPzuUrl5P44qvvhdmDS77W02
 ldZUD3ZeF/MbB/qEPBdfDuk/s2MwsjGmHhOoZuKurxlYAAfO1ebNYRziW
 ZlF5G62tfWcUyooGXbAnVz4HGYfwsdydKePEAm1u5sx59buuQMImXX3+T w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="348509566"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="348509566"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 00:36:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="712355577"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="712355577"
Received: from lkp-server02.sh.intel.com (HELO d59cacf64e9e) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 15 Jun 2023 00:36:15 -0700
Received: from kbuild by d59cacf64e9e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q9hWg-0001cG-27;
 Thu, 15 Jun 2023 07:36:14 +0000
Date: Thu, 15 Jun 2023 15:35:27 +0800
From: kernel test robot <lkp@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202306151523.wIGn4dME-lkp@intel.com>
References: <20230615050015.3105902-8-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230615050015.3105902-8-dnyaneshwar.bhadane@intel.com>
Subject: Re: [Intel-gfx] [PATCH 07/11] drm/i915/adlp: s/ADLP/ALDERLAKE_P for
 display and graphics step
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
Cc: dnyaneshwar.bhadane@intel.com, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dnyaneshwar,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Dnyaneshwar-Bhadane/drm-i915-TGL-s-TGL-TIGERLAKE-for-platform-subplatform-defines/20230615-130242
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230615050015.3105902-8-dnyaneshwar.bhadane%40intel.com
patch subject: [Intel-gfx] [PATCH 07/11] drm/i915/adlp: s/ADLP/ALDERLAKE_P for display and graphics step
config: x86_64-defconfig (https://download.01.org/0day-ci/archive/20230615/202306151523.wIGn4dME-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build):
        git remote add drm-tip git://anongit.freedesktop.org/drm/drm-tip
        git fetch drm-tip drm-tip
        git checkout drm-tip/drm-tip
        b4 shazam https://lore.kernel.org/r/20230615050015.3105902-8-dnyaneshwar.bhadane@intel.com
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=x86_64 olddefconfig
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202306151523.wIGn4dME-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/gpu/drm/i915/display/intel_cdclk.c: In function 'intel_init_cdclk_hooks':
>> drivers/gpu/drm/i915/display/intel_cdclk.c:3562:17: error: this 'if' clause does not guard... [-Werror=misleading-indentation]
    3562 |                 if (IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
         |                 ^~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3564:25: note: ...this statement, but the latter is misleadingly indented as if it were guarded by the 'if'
    3564 |                         dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
         |                         ^~~~~~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c: At top level:
>> drivers/gpu/drm/i915/display/intel_cdclk.c:3572:11: error: expected identifier or '(' before 'else'
    3572 |         } else if (IS_ROCKETLAKE(dev_priv)) {
         |           ^~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3575:11: error: expected identifier or '(' before 'else'
    3575 |         } else if (DISPLAY_VER(dev_priv) >= 12) {
         |           ^~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3578:11: error: expected identifier or '(' before 'else'
    3578 |         } else if (IS_JASPERLAKE_EHL(dev_priv)) {
         |           ^~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3581:11: error: expected identifier or '(' before 'else'
    3581 |         } else if (DISPLAY_VER(dev_priv) >= 11) {
         |           ^~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3584:11: error: expected identifier or '(' before 'else'
    3584 |         } else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
         |           ^~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3590:11: error: expected identifier or '(' before 'else'
    3590 |         } else if (DISPLAY_VER(dev_priv) == 9) {
         |           ^~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3592:11: error: expected identifier or '(' before 'else'
    3592 |         } else if (IS_BROADWELL(dev_priv)) {
         |           ^~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3594:11: error: expected identifier or '(' before 'else'
    3594 |         } else if (IS_HASWELL(dev_priv)) {
         |           ^~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3596:11: error: expected identifier or '(' before 'else'
    3596 |         } else if (IS_CHERRYVIEW(dev_priv)) {
         |           ^~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3598:11: error: expected identifier or '(' before 'else'
    3598 |         } else if (IS_VALLEYVIEW(dev_priv)) {
         |           ^~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3600:11: error: expected identifier or '(' before 'else'
    3600 |         } else if (IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv)) {
         |           ^~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3602:11: error: expected identifier or '(' before 'else'
    3602 |         } else if (IS_IRONLAKE(dev_priv)) {
         |           ^~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3604:11: error: expected identifier or '(' before 'else'
    3604 |         } else if (IS_GM45(dev_priv)) {
         |           ^~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3606:11: error: expected identifier or '(' before 'else'
    3606 |         } else if (IS_G45(dev_priv)) {
         |           ^~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3608:11: error: expected identifier or '(' before 'else'
    3608 |         } else if (IS_I965GM(dev_priv)) {
         |           ^~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3610:11: error: expected identifier or '(' before 'else'
    3610 |         } else if (IS_I965G(dev_priv)) {
         |           ^~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3612:11: error: expected identifier or '(' before 'else'
    3612 |         } else if (IS_PINEVIEW(dev_priv)) {
         |           ^~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3614:11: error: expected identifier or '(' before 'else'
    3614 |         } else if (IS_G33(dev_priv)) {
         |           ^~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3616:11: error: expected identifier or '(' before 'else'
    3616 |         } else if (IS_I945GM(dev_priv)) {
         |           ^~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3618:11: error: expected identifier or '(' before 'else'
    3618 |         } else if (IS_I945G(dev_priv)) {
         |           ^~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3620:11: error: expected identifier or '(' before 'else'
    3620 |         } else if (IS_I915GM(dev_priv)) {
         |           ^~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3622:11: error: expected identifier or '(' before 'else'
    3622 |         } else if (IS_I915G(dev_priv)) {
         |           ^~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3624:11: error: expected identifier or '(' before 'else'
    3624 |         } else if (IS_I865G(dev_priv)) {
         |           ^~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3626:11: error: expected identifier or '(' before 'else'
    3626 |         } else if (IS_I85X(dev_priv)) {
         |           ^~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3628:11: error: expected identifier or '(' before 'else'
    3628 |         } else if (IS_I845G(dev_priv)) {
         |           ^~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3630:11: error: expected identifier or '(' before 'else'
    3630 |         } else if (IS_I830(dev_priv)) {
         |           ^~~~
>> drivers/gpu/drm/i915/display/intel_cdclk.c:3634:9: error: expected identifier or '(' before 'if'
    3634 |         if (drm_WARN(&dev_priv->drm, !dev_priv->display.funcs.cdclk,
         |         ^~
   In file included from arch/x86/include/asm/bug.h:87,
                    from include/linux/bug.h:5,
                    from include/linux/cpumask.h:14,
                    from arch/x86/include/asm/cpumask.h:5,
                    from arch/x86/include/asm/msr.h:11,
                    from arch/x86/include/asm/processor.h:23,
                    from arch/x86/include/asm/timex.h:5,
                    from include/linux/timex.h:67,
                    from include/linux/time32.h:13,
                    from include/linux/time.h:60,
                    from drivers/gpu/drm/i915/display/intel_cdclk.c:24:
>> include/asm-generic/bug.h:135:2: error: expected identifier or '(' before ')' token
     135 | })
         |  ^
   include/drm/drm_print.h:620:9: note: in expansion of macro 'WARN'
     620 |         WARN(condition, "%s %s: " format,                               \
         |         ^~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3634:13: note: in expansion of macro 'drm_WARN'
    3634 |         if (drm_WARN(&dev_priv->drm, !dev_priv->display.funcs.cdclk,
         |             ^~~~~~~~
>> drivers/gpu/drm/i915/display/intel_cdclk.c:3637:1: error: expected identifier or '(' before '}' token
    3637 | }
         | ^
>> drivers/gpu/drm/i915/display/intel_cdclk.c:3543:39: error: 'i830_cdclk_funcs' defined but not used [-Werror=unused-const-variable=]
    3543 | static const struct intel_cdclk_funcs i830_cdclk_funcs = {
         |                                       ^~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/display/intel_cdclk.c:3538:39: error: 'i845g_cdclk_funcs' defined but not used [-Werror=unused-const-variable=]
    3538 | static const struct intel_cdclk_funcs i845g_cdclk_funcs = {
         |                                       ^~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/display/intel_cdclk.c:3533:39: error: 'i85x_cdclk_funcs' defined but not used [-Werror=unused-const-variable=]
    3533 | static const struct intel_cdclk_funcs i85x_cdclk_funcs = {
         |                                       ^~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/display/intel_cdclk.c:3528:39: error: 'i865g_cdclk_funcs' defined but not used [-Werror=unused-const-variable=]
    3528 | static const struct intel_cdclk_funcs i865g_cdclk_funcs = {
         |                                       ^~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/display/intel_cdclk.c:3523:39: error: 'i915g_cdclk_funcs' defined but not used [-Werror=unused-const-variable=]
    3523 | static const struct intel_cdclk_funcs i915g_cdclk_funcs = {
         |                                       ^~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/display/intel_cdclk.c:3518:39: error: 'i915gm_cdclk_funcs' defined but not used [-Werror=unused-const-variable=]
    3518 | static const struct intel_cdclk_funcs i915gm_cdclk_funcs = {
         |                                       ^~~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/display/intel_cdclk.c:3511:39: error: 'i945gm_cdclk_funcs' defined but not used [-Werror=unused-const-variable=]
    3511 | static const struct intel_cdclk_funcs i945gm_cdclk_funcs = {
         |                                       ^~~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/display/intel_cdclk.c:3506:39: error: 'g33_cdclk_funcs' defined but not used [-Werror=unused-const-variable=]
    3506 | static const struct intel_cdclk_funcs g33_cdclk_funcs = {
         |                                       ^~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/display/intel_cdclk.c:3501:39: error: 'pnv_cdclk_funcs' defined but not used [-Werror=unused-const-variable=]
    3501 | static const struct intel_cdclk_funcs pnv_cdclk_funcs = {
         |                                       ^~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/display/intel_cdclk.c:3494:39: error: 'i965gm_cdclk_funcs' defined but not used [-Werror=unused-const-variable=]
    3494 | static const struct intel_cdclk_funcs i965gm_cdclk_funcs = {
         |                                       ^~~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/display/intel_cdclk.c:3487:39: error: 'gm45_cdclk_funcs' defined but not used [-Werror=unused-const-variable=]
    3487 | static const struct intel_cdclk_funcs gm45_cdclk_funcs = {
         |                                       ^~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/display/intel_cdclk.c:3482:39: error: 'ilk_cdclk_funcs' defined but not used [-Werror=unused-const-variable=]
    3482 | static const struct intel_cdclk_funcs ilk_cdclk_funcs = {
         |                                       ^~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/display/intel_cdclk.c:3477:39: error: 'fixed_400mhz_cdclk_funcs' defined but not used [-Werror=unused-const-variable=]
    3477 | static const struct intel_cdclk_funcs fixed_400mhz_cdclk_funcs = {
         |                                       ^~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/display/intel_cdclk.c:3471:39: error: 'hsw_cdclk_funcs' defined but not used [-Werror=unused-const-variable=]
    3471 | static const struct intel_cdclk_funcs hsw_cdclk_funcs = {
         |                                       ^~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/display/intel_cdclk.c:3465:39: error: 'vlv_cdclk_funcs' defined but not used [-Werror=unused-const-variable=]
    3465 | static const struct intel_cdclk_funcs vlv_cdclk_funcs = {
         |                                       ^~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3459:39: error: 'chv_cdclk_funcs' defined but not used [-Werror=unused-const-variable=]
    3459 | static const struct intel_cdclk_funcs chv_cdclk_funcs = {
         |                                       ^~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3453:39: error: 'bdw_cdclk_funcs' defined but not used [-Werror=unused-const-variable=]
    3453 | static const struct intel_cdclk_funcs bdw_cdclk_funcs = {
         |                                       ^~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3447:39: error: 'skl_cdclk_funcs' defined but not used [-Werror=unused-const-variable=]
    3447 | static const struct intel_cdclk_funcs skl_cdclk_funcs = {
         |                                       ^~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3440:39: error: 'bxt_cdclk_funcs' defined but not used [-Werror=unused-const-variable=]
    3440 | static const struct intel_cdclk_funcs bxt_cdclk_funcs = {
         |                                       ^~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3433:39: error: 'icl_cdclk_funcs' defined but not used [-Werror=unused-const-variable=]
    3433 | static const struct intel_cdclk_funcs icl_cdclk_funcs = {
         |                                       ^~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:3426:39: error: 'ehl_cdclk_funcs' defined but not used [-Werror=unused-const-variable=]
    3426 | static const struct intel_cdclk_funcs ehl_cdclk_funcs = {
         |                                       ^~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:1272:38: error: 'rkl_cdclk_table' defined but not used [-Werror=unused-const-variable=]
    1272 | static const struct intel_cdclk_vals rkl_cdclk_table[] = {
         |                                      ^~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:1248:38: error: 'icl_cdclk_table' defined but not used [-Werror=unused-const-variable=]
    1248 | static const struct intel_cdclk_vals icl_cdclk_table[] = {
         |                                      ^~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:1241:38: error: 'glk_cdclk_table' defined but not used [-Werror=unused-const-variable=]
    1241 | static const struct intel_cdclk_vals glk_cdclk_table[] = {
         |                                      ^~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:1232:38: error: 'bxt_cdclk_table' defined but not used [-Werror=unused-const-variable=]
    1232 | static const struct intel_cdclk_vals bxt_cdclk_table[] = {
         |                                      ^~~~~~~~~~~~~~~
   cc1: all warnings being treated as errors


vim +/if +3562 drivers/gpu/drm/i915/display/intel_cdclk.c

  3425	
> 3426	static const struct intel_cdclk_funcs ehl_cdclk_funcs = {
  3427		.get_cdclk = bxt_get_cdclk,
  3428		.set_cdclk = bxt_set_cdclk,
  3429		.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
  3430		.calc_voltage_level = ehl_calc_voltage_level,
  3431	};
  3432	
> 3433	static const struct intel_cdclk_funcs icl_cdclk_funcs = {
  3434		.get_cdclk = bxt_get_cdclk,
  3435		.set_cdclk = bxt_set_cdclk,
  3436		.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
  3437		.calc_voltage_level = icl_calc_voltage_level,
  3438	};
  3439	
> 3440	static const struct intel_cdclk_funcs bxt_cdclk_funcs = {
  3441		.get_cdclk = bxt_get_cdclk,
  3442		.set_cdclk = bxt_set_cdclk,
  3443		.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
  3444		.calc_voltage_level = bxt_calc_voltage_level,
  3445	};
  3446	
> 3447	static const struct intel_cdclk_funcs skl_cdclk_funcs = {
  3448		.get_cdclk = skl_get_cdclk,
  3449		.set_cdclk = skl_set_cdclk,
  3450		.modeset_calc_cdclk = skl_modeset_calc_cdclk,
  3451	};
  3452	
> 3453	static const struct intel_cdclk_funcs bdw_cdclk_funcs = {
  3454		.get_cdclk = bdw_get_cdclk,
  3455		.set_cdclk = bdw_set_cdclk,
  3456		.modeset_calc_cdclk = bdw_modeset_calc_cdclk,
  3457	};
  3458	
> 3459	static const struct intel_cdclk_funcs chv_cdclk_funcs = {
  3460		.get_cdclk = vlv_get_cdclk,
  3461		.set_cdclk = chv_set_cdclk,
  3462		.modeset_calc_cdclk = vlv_modeset_calc_cdclk,
  3463	};
  3464	
> 3465	static const struct intel_cdclk_funcs vlv_cdclk_funcs = {
  3466		.get_cdclk = vlv_get_cdclk,
  3467		.set_cdclk = vlv_set_cdclk,
  3468		.modeset_calc_cdclk = vlv_modeset_calc_cdclk,
  3469	};
  3470	
> 3471	static const struct intel_cdclk_funcs hsw_cdclk_funcs = {
  3472		.get_cdclk = hsw_get_cdclk,
  3473		.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
  3474	};
  3475	
  3476	/* SNB, IVB, 965G, 945G */
> 3477	static const struct intel_cdclk_funcs fixed_400mhz_cdclk_funcs = {
  3478		.get_cdclk = fixed_400mhz_get_cdclk,
  3479		.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
  3480	};
  3481	
> 3482	static const struct intel_cdclk_funcs ilk_cdclk_funcs = {
  3483		.get_cdclk = fixed_450mhz_get_cdclk,
  3484		.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
  3485	};
  3486	
> 3487	static const struct intel_cdclk_funcs gm45_cdclk_funcs = {
  3488		.get_cdclk = gm45_get_cdclk,
  3489		.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
  3490	};
  3491	
  3492	/* G45 uses G33 */
  3493	
> 3494	static const struct intel_cdclk_funcs i965gm_cdclk_funcs = {
  3495		.get_cdclk = i965gm_get_cdclk,
  3496		.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
  3497	};
  3498	
  3499	/* i965G uses fixed 400 */
  3500	
> 3501	static const struct intel_cdclk_funcs pnv_cdclk_funcs = {
  3502		.get_cdclk = pnv_get_cdclk,
  3503		.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
  3504	};
  3505	
> 3506	static const struct intel_cdclk_funcs g33_cdclk_funcs = {
  3507		.get_cdclk = g33_get_cdclk,
  3508		.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
  3509	};
  3510	
> 3511	static const struct intel_cdclk_funcs i945gm_cdclk_funcs = {
  3512		.get_cdclk = i945gm_get_cdclk,
  3513		.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
  3514	};
  3515	
  3516	/* i945G uses fixed 400 */
  3517	
> 3518	static const struct intel_cdclk_funcs i915gm_cdclk_funcs = {
  3519		.get_cdclk = i915gm_get_cdclk,
  3520		.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
  3521	};
  3522	
> 3523	static const struct intel_cdclk_funcs i915g_cdclk_funcs = {
  3524		.get_cdclk = fixed_333mhz_get_cdclk,
  3525		.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
  3526	};
  3527	
> 3528	static const struct intel_cdclk_funcs i865g_cdclk_funcs = {
  3529		.get_cdclk = fixed_266mhz_get_cdclk,
  3530		.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
  3531	};
  3532	
> 3533	static const struct intel_cdclk_funcs i85x_cdclk_funcs = {
  3534		.get_cdclk = i85x_get_cdclk,
  3535		.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
  3536	};
  3537	
> 3538	static const struct intel_cdclk_funcs i845g_cdclk_funcs = {
  3539		.get_cdclk = fixed_200mhz_get_cdclk,
  3540		.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
  3541	};
  3542	
> 3543	static const struct intel_cdclk_funcs i830_cdclk_funcs = {
  3544		.get_cdclk = fixed_133mhz_get_cdclk,
  3545		.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
  3546	};
  3547	
  3548	/**
  3549	 * intel_init_cdclk_hooks - Initialize CDCLK related modesetting hooks
  3550	 * @dev_priv: i915 device
  3551	 */
  3552	void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
  3553	{
  3554		if (IS_METEORLAKE(dev_priv)) {
  3555			dev_priv->display.funcs.cdclk = &mtl_cdclk_funcs;
  3556			dev_priv->display.cdclk.table = mtl_cdclk_table;
  3557		} else if (IS_DG2(dev_priv)) {
  3558			dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
  3559			dev_priv->display.cdclk.table = dg2_cdclk_table;
  3560		} else if (IS_ALDERLAKE_P(dev_priv)) {
  3561			/* Wa_22011320316:adl-p[a0] */
> 3562			if (IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
  3563				dev_priv->display.cdclk.table = adlp_a_step_cdclk_table;
  3564				dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
  3565			} else if (IS_ADLP_RPLU(dev_priv)) {
  3566				dev_priv->display.cdclk.table = rplu_cdclk_table;
  3567				dev_priv->display.funcs.cdclk = &rplu_cdclk_funcs;
  3568			} else {
  3569				dev_priv->display.cdclk.table = adlp_cdclk_table;
  3570				dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
  3571			}
> 3572		} else if (IS_ROCKETLAKE(dev_priv)) {
  3573			dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
  3574			dev_priv->display.cdclk.table = rkl_cdclk_table;
  3575		} else if (DISPLAY_VER(dev_priv) >= 12) {
  3576			dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
  3577			dev_priv->display.cdclk.table = icl_cdclk_table;
  3578		} else if (IS_JASPERLAKE_EHL(dev_priv)) {
  3579			dev_priv->display.funcs.cdclk = &ehl_cdclk_funcs;
  3580			dev_priv->display.cdclk.table = icl_cdclk_table;
  3581		} else if (DISPLAY_VER(dev_priv) >= 11) {
  3582			dev_priv->display.funcs.cdclk = &icl_cdclk_funcs;
  3583			dev_priv->display.cdclk.table = icl_cdclk_table;
  3584		} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
  3585			dev_priv->display.funcs.cdclk = &bxt_cdclk_funcs;
  3586			if (IS_GEMINILAKE(dev_priv))
  3587				dev_priv->display.cdclk.table = glk_cdclk_table;
  3588			else
  3589				dev_priv->display.cdclk.table = bxt_cdclk_table;
  3590		} else if (DISPLAY_VER(dev_priv) == 9) {
  3591			dev_priv->display.funcs.cdclk = &skl_cdclk_funcs;
  3592		} else if (IS_BROADWELL(dev_priv)) {
  3593			dev_priv->display.funcs.cdclk = &bdw_cdclk_funcs;
  3594		} else if (IS_HASWELL(dev_priv)) {
  3595			dev_priv->display.funcs.cdclk = &hsw_cdclk_funcs;
  3596		} else if (IS_CHERRYVIEW(dev_priv)) {
  3597			dev_priv->display.funcs.cdclk = &chv_cdclk_funcs;
  3598		} else if (IS_VALLEYVIEW(dev_priv)) {
  3599			dev_priv->display.funcs.cdclk = &vlv_cdclk_funcs;
  3600		} else if (IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv)) {
  3601			dev_priv->display.funcs.cdclk = &fixed_400mhz_cdclk_funcs;
  3602		} else if (IS_IRONLAKE(dev_priv)) {
  3603			dev_priv->display.funcs.cdclk = &ilk_cdclk_funcs;
  3604		} else if (IS_GM45(dev_priv)) {
  3605			dev_priv->display.funcs.cdclk = &gm45_cdclk_funcs;
  3606		} else if (IS_G45(dev_priv)) {
  3607			dev_priv->display.funcs.cdclk = &g33_cdclk_funcs;
  3608		} else if (IS_I965GM(dev_priv)) {
  3609			dev_priv->display.funcs.cdclk = &i965gm_cdclk_funcs;
  3610		} else if (IS_I965G(dev_priv)) {
  3611			dev_priv->display.funcs.cdclk = &fixed_400mhz_cdclk_funcs;
  3612		} else if (IS_PINEVIEW(dev_priv)) {
  3613			dev_priv->display.funcs.cdclk = &pnv_cdclk_funcs;
  3614		} else if (IS_G33(dev_priv)) {
  3615			dev_priv->display.funcs.cdclk = &g33_cdclk_funcs;
  3616		} else if (IS_I945GM(dev_priv)) {
  3617			dev_priv->display.funcs.cdclk = &i945gm_cdclk_funcs;
  3618		} else if (IS_I945G(dev_priv)) {
  3619			dev_priv->display.funcs.cdclk = &fixed_400mhz_cdclk_funcs;
  3620		} else if (IS_I915GM(dev_priv)) {
  3621			dev_priv->display.funcs.cdclk = &i915gm_cdclk_funcs;
  3622		} else if (IS_I915G(dev_priv)) {
  3623			dev_priv->display.funcs.cdclk = &i915g_cdclk_funcs;
  3624		} else if (IS_I865G(dev_priv)) {
  3625			dev_priv->display.funcs.cdclk = &i865g_cdclk_funcs;
  3626		} else if (IS_I85X(dev_priv)) {
  3627			dev_priv->display.funcs.cdclk = &i85x_cdclk_funcs;
  3628		} else if (IS_I845G(dev_priv)) {
  3629			dev_priv->display.funcs.cdclk = &i845g_cdclk_funcs;
  3630		} else if (IS_I830(dev_priv)) {
  3631			dev_priv->display.funcs.cdclk = &i830_cdclk_funcs;
  3632		}
  3633	
> 3634		if (drm_WARN(&dev_priv->drm, !dev_priv->display.funcs.cdclk,
  3635			     "Unknown platform. Assuming i830\n"))
  3636			dev_priv->display.funcs.cdclk = &i830_cdclk_funcs;
> 3637	}

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
