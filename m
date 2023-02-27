Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C29D56A41A0
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 13:20:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0062710E3E8;
	Mon, 27 Feb 2023 12:20:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E13DC10E3E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Feb 2023 12:20:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677500442; x=1709036442;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=mTLEw56BnzUEFaU8VBf09KRG2vovXSBhs4xU3dPAYos=;
 b=JbRkzfWSKZhC6KUkFfiCA5+BwvftJskwWE2MHxJR7A5I9STFMGpfhwx4
 f+UgNxxebqh8Tf4AGn1dOv/vrVeO8JDjW2fBPXmo8xtAzqo1GZSfjUwje
 FmDiIdsX59PFg1V8L5iqN1HczimJ3K/qAL4Pd2/0cv/eKcBuoAvIGNmW/
 6JeFYN1hrgd2+pj7aXuCgpyEl5ohoIbetmf91AbgfZUQJK7M4nQI1egrb
 GD8U8E3JE9WjCm2YbLJSguYEzXOwqM9Ma4tcU7J1okCEzxTLQQ/PprE00
 IfvmW7ed2hAaU6QRkmv8Kl4DDpRxirVIuGz9gO2iTP6ONTojo+3Hp+utO A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="361403184"
X-IronPort-AV: E=Sophos;i="5.97,331,1669104000"; d="scan'208";a="361403184"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 04:20:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="737676933"
X-IronPort-AV: E=Sophos;i="5.97,332,1669104000"; d="scan'208";a="737676933"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 27 Feb 2023 04:20:41 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pWcUi-0004Of-1i;
 Mon, 27 Feb 2023 12:20:40 +0000
Date: Mon, 27 Feb 2023 20:20:31 +0800
From: kernel test robot <lkp@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202302272011.1iLXtakR-lkp@intel.com>
References: <20230227095253.22415-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230227095253.22415-1-stanislav.lisovskiy@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Communicate display power
 demands to pcode more accurately
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
Cc: rodrigo.vivi@intel.com, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Stanislav,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Stanislav-Lisovskiy/drm-i915-display-Communicate-display-power-demands-to-pcode-more-accurately/20230227-175404
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230227095253.22415-1-stanislav.lisovskiy%40intel.com
patch subject: [Intel-gfx] [PATCH] drm/i915/display: Communicate display power demands to pcode more accurately
config: x86_64-rhel-8.3 (https://download.01.org/0day-ci/archive/20230227/202302272011.1iLXtakR-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-8) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/bc4de3b25bbf043f68ef862c45f975b79af938be
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Stanislav-Lisovskiy/drm-i915-display-Communicate-display-power-demands-to-pcode-more-accurately/20230227-175404
        git checkout bc4de3b25bbf043f68ef862c45f975b79af938be
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=x86_64 olddefconfig
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202302272011.1iLXtakR-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_cdclk.c:3006:6: warning: no previous prototype for 'intel_cdclk_need_serialize' [-Wmissing-prototypes]
    3006 | bool intel_cdclk_need_serialize(struct drm_i915_private *i915,
         |      ^~~~~~~~~~~~~~~~~~~~~~~~~~


vim +/intel_cdclk_need_serialize +3006 drivers/gpu/drm/i915/display/intel_cdclk.c

  3005	
> 3006	bool intel_cdclk_need_serialize(struct drm_i915_private *i915,
  3007					const struct intel_cdclk_state *old_cdclk_state,
  3008					const struct intel_cdclk_state *new_cdclk_state)
  3009	{
  3010		/*
  3011		 * We need to poke hw for gen >= 12, because we notify PCode if
  3012		 * pipe power well count changes.
  3013		 */
  3014		return intel_cdclk_changed(&old_cdclk_state->actual,
  3015					   &new_cdclk_state->actual) ||
  3016		       ((DISPLAY_VER(i915) >= 12 &&
  3017			 hweight8(old_cdclk_state->active_pipes) !=
  3018			 hweight8(new_cdclk_state->active_pipes)));
  3019	}
  3020	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
