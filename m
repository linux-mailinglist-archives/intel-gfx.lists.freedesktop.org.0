Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1ADF6F5821
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 14:47:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95B5410E027;
	Wed,  3 May 2023 12:47:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E713910E027
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 12:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683118040; x=1714654040;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=i8pXxmEfDiaZVyqzSTb/wH3QW9N5nijTtgqFWqkWLMg=;
 b=Dmd9/s32Xx/q00MP4HPw4SqYooThKYmU6Kr01a8E8OQVmsDLotr00Ceu
 +b+bRt2n4qqIeL1ZVERk0sB9ZGOFAP4mGxFlYIfU9Zx9JTGGxFJr/L6oa
 UK26LkcERTS/MYqd9vCl10r7Kxm33SrSuuEGBw7rfcRD3oyh7ETTZo2DS
 GOkm5eqBw1SeWqf42Y2ZEHf+Ac0crV/BtoBOuNX2yZf2hVvlSPNXhFBfU
 zRUn1hsE4gQWN9iYsZuRXwAKX0bu8TSkX37JQ/qP6SJmrbNKA/2+G7zvd
 TWGifsXmqBzU9sVcZptbIuUaM/pIBvZ98RnVxSTjlMivrqM0J5j3Ooqwg w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="337783854"
X-IronPort-AV: E=Sophos;i="5.99,247,1677571200"; d="scan'208";a="337783854"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 05:47:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="942830424"
X-IronPort-AV: E=Sophos;i="5.99,247,1677571200"; d="scan'208";a="942830424"
Received: from lkp-server01.sh.intel.com (HELO e3434d64424d) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 03 May 2023 05:47:17 -0700
Received: from kbuild by e3434d64424d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1puBt7-00020e-00;
 Wed, 03 May 2023 12:47:17 +0000
Date: Wed, 3 May 2023 20:46:27 +0800
From: kernel test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <202305032030.b8qjbkdv-lkp@intel.com>
References: <20230503094826.1467208-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230503094826.1467208-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: taint kernel when force probing
 unsupported devices
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
Cc: jani.nikula@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Jani-Nikula/drm-i915-taint-kernel-when-force-probing-unsupported-devices/20230503-175009
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230503094826.1467208-1-jani.nikula%40intel.com
patch subject: [Intel-gfx] [PATCH] drm/i915: taint kernel when force probing unsupported devices
config: x86_64-rhel-8.3 (https://download.01.org/0day-ci/archive/20230503/202305032030.b8qjbkdv-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-12) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/ad183c591dae931a7242f95f3cd5888502e38ab5
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Jani-Nikula/drm-i915-taint-kernel-when-force-probing-unsupported-devices/20230503-175009
        git checkout ad183c591dae931a7242f95f3cd5888502e38ab5
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=x86_64 olddefconfig
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/gpu/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202305032030.b8qjbkdv-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/i915_params.h:77:36: error: 'CONFIG_DRM_I915_FORCE_PROBE' undeclared here (not in a function); did you mean 'CONFIG_DRM_I915_FENCE_TIMEOUT'?
      77 |         param(char *, force_probe, CONFIG_DRM_I915_FORCE_PROBE, 0400) \
         |                                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_params.c:52:50: note: in definition of macro 'MEMBER'
      52 | #define MEMBER(T, member, value, ...) .member = (value),
         |                                                  ^~~~~
   drivers/gpu/drm/i915/i915_params.c:53:9: note: in expansion of macro 'I915_PARAMS_FOR_EACH'
      53 |         I915_PARAMS_FOR_EACH(MEMBER)
         |         ^~~~~~~~~~~~~~~~~~~~


vim +77 drivers/gpu/drm/i915/i915_params.h

121981fafe699d Michal Wajdeczko       2017-12-06  36  
7012033033dafc Jani Nikula            2018-12-27  37  /*
7012033033dafc Jani Nikula            2018-12-27  38   * Invoke param, a function-like macro, for each i915 param, with arguments:
7012033033dafc Jani Nikula            2018-12-27  39   *
c43c5a8818d4c3 Jani Nikula            2019-12-05  40   * param(type, name, value, mode)
7012033033dafc Jani Nikula            2018-12-27  41   *
c43c5a8818d4c3 Jani Nikula            2019-12-05  42   * type: parameter type, one of {bool, int, unsigned int, unsigned long, char *}
7012033033dafc Jani Nikula            2018-12-27  43   * name: name of the parameter
7012033033dafc Jani Nikula            2018-12-27  44   * value: initial/default value of the parameter
c43c5a8818d4c3 Jani Nikula            2019-12-05  45   * mode: debugfs file permissions, one of {0400, 0600, 0}, use 0 to not create
c43c5a8818d4c3 Jani Nikula            2019-12-05  46   *       debugfs file
7012033033dafc Jani Nikula            2018-12-27  47   */
54fea2b974a076 Michal Wajdeczko       2017-09-25  48  #define I915_PARAMS_FOR_EACH(param) \
c43c5a8818d4c3 Jani Nikula            2019-12-05  49  	param(char *, vbt_firmware, NULL, 0400) \
c43c5a8818d4c3 Jani Nikula            2019-12-05  50  	param(int, modeset, -1, 0400) \
c43c5a8818d4c3 Jani Nikula            2019-12-05  51  	param(int, lvds_channel_mode, 0, 0400) \
c43c5a8818d4c3 Jani Nikula            2019-12-05  52  	param(int, panel_use_ssc, -1, 0600) \
c43c5a8818d4c3 Jani Nikula            2019-12-05  53  	param(int, vbt_sdvo_panel_type, -1, 0400) \
c43c5a8818d4c3 Jani Nikula            2019-12-05  54  	param(int, enable_dc, -1, 0400) \
c43c5a8818d4c3 Jani Nikula            2019-12-05  55  	param(int, enable_fbc, -1, 0600) \
c43c5a8818d4c3 Jani Nikula            2019-12-05  56  	param(int, enable_psr, -1, 0600) \
c5de248484afeb Ville Syrjälä          2023-03-20  57  	param(bool, enable_dpt, true, 0400) \
64218f91ab49a8 José Roberto de Souza  2021-02-04  58  	param(bool, psr_safest_params, false, 0400) \
7f6002e58025cf José Roberto de Souza  2021-09-29  59  	param(bool, enable_psr2_sel_fetch, true, 0400) \
419e505dab203b Ville Syrjälä          2023-03-22  60  	param(bool, enable_sagv, true, 0600) \
c43c5a8818d4c3 Jani Nikula            2019-12-05  61  	param(int, disable_power_well, -1, 0400) \
c43c5a8818d4c3 Jani Nikula            2019-12-05  62  	param(int, enable_ips, 1, 0600) \
c43c5a8818d4c3 Jani Nikula            2019-12-05  63  	param(int, invert_brightness, 0, 0600) \
47c65b3853f88d John Harrison          2021-06-03  64  	param(int, enable_guc, -1, 0400) \
c43c5a8818d4c3 Jani Nikula            2019-12-05  65  	param(int, guc_log_level, -1, 0400) \
c43c5a8818d4c3 Jani Nikula            2019-12-05  66  	param(char *, guc_firmware_path, NULL, 0400) \
c43c5a8818d4c3 Jani Nikula            2019-12-05  67  	param(char *, huc_firmware_path, NULL, 0400) \
c43c5a8818d4c3 Jani Nikula            2019-12-05  68  	param(char *, dmc_firmware_path, NULL, 0400) \
242c4b91cd35b6 Daniele Ceraolo Spurio 2022-12-08  69  	param(char *, gsc_firmware_path, NULL, 0400) \
bd56c63ca1d953 Chris Wilson           2021-12-08  70  	param(bool, memtest, false, 0400) \
c43c5a8818d4c3 Jani Nikula            2019-12-05  71  	param(int, mmio_debug, -IS_ENABLED(CONFIG_DRM_I915_DEBUG_MMIO), 0600) \
c43c5a8818d4c3 Jani Nikula            2019-12-05  72  	param(int, edp_vswing, 0, 0400) \
aae970d8454bb9 Chris Wilson           2020-02-05  73  	param(unsigned int, reset, 3, 0600) \
dbf4081ffb68c0 Jani Nikula            2020-06-02  74  	param(unsigned int, inject_probe_failure, 0, 0) \
c43c5a8818d4c3 Jani Nikula            2019-12-05  75  	param(int, fastboot, -1, 0600) \
9ac7d53d70a2b4 Lyude Paul             2020-01-16  76  	param(int, enable_dpcd_backlight, -1, 0600) \
c43c5a8818d4c3 Jani Nikula            2019-12-05 @77  	param(char *, force_probe, CONFIG_DRM_I915_FORCE_PROBE, 0400) \
615160334f3f09 Tvrtko Ursulin         2021-05-26  78  	param(unsigned int, request_timeout_ms, CONFIG_DRM_I915_REQUEST_TIMEOUT, CONFIG_DRM_I915_REQUEST_TIMEOUT ? 0600 : 0) \
be658e705d08d1 CQ Tang                2022-03-24  79  	param(unsigned int, lmem_size, 0, 0400) \
17cd10a44a8962 Priyanka Dandamudi     2022-07-13  80  	param(unsigned int, lmem_bar_size, 0, 0400) \
b8cf691e28fa48 Chris Wilson           2017-02-06  81  	/* leave bools at the end to not create holes */ \
c43c5a8818d4c3 Jani Nikula            2019-12-05  82  	param(bool, enable_hangcheck, true, 0600) \
c43c5a8818d4c3 Jani Nikula            2019-12-05  83  	param(bool, load_detect_test, false, 0600) \
c43c5a8818d4c3 Jani Nikula            2019-12-05  84  	param(bool, force_reset_modeset_test, false, 0600) \
615160334f3f09 Tvrtko Ursulin         2021-05-26  85  	param(bool, error_capture, true, IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR) ? 0600 : 0) \
c43c5a8818d4c3 Jani Nikula            2019-12-05  86  	param(bool, disable_display, false, 0400) \
c43c5a8818d4c3 Jani Nikula            2019-12-05  87  	param(bool, verbose_state_checks, true, 0) \
c43c5a8818d4c3 Jani Nikula            2019-12-05  88  	param(bool, nuclear_pageflip, false, 0400) \
c43c5a8818d4c3 Jani Nikula            2019-12-05  89  	param(bool, enable_dp_mst, true, 0600) \
615160334f3f09 Tvrtko Ursulin         2021-05-26  90  	param(bool, enable_gvt, false, IS_ENABLED(CONFIG_DRM_I915_GVT) ? 0400 : 0)
b8cf691e28fa48 Chris Wilson           2017-02-06  91  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
