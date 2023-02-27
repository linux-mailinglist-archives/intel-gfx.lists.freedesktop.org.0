Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA666A420B
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 13:52:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 394A510E3FC;
	Mon, 27 Feb 2023 12:52:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56B6310E3FC
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Feb 2023 12:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677502364; x=1709038364;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Iv/bxCByHyLM3mCXzFYfEn60BlnvydEZ5bn3eVyA41Q=;
 b=h5zc4pSgsDbOoWaKNs/SD7hi1DtBB7OYKZE4Mx7mQM4TLWnwvVPbTsfg
 GPo3JMcKd1F/YAnXvTQx3iNMGs0yy6PJ+0EJj7IR6e0bDCkgTdHMEkY5j
 SEH0Lohsnpev5dzSiPH7b4xYa3G1BF8JkhY2OMHKXliFFm3lzlb/LIKBC
 8GBFkrlxlVhQd2YqKzfmAxizJXEU6KTduqQDwHswh5Jx3JN2lAfHAedsm
 WnEGfyhCjUtO7pWY3b/pPmKRdqfG8F6mHxNlGqW5ri2TvWtjJ75qZ4kcE
 bmbkxLt4H8wRBodbczg3m7L+hJtolS2Myptfg5FOcFJ/tcHT3QRSov1eU Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="322095432"
X-IronPort-AV: E=Sophos;i="5.97,332,1669104000"; d="scan'208";a="322095432"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 04:52:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="667020416"
X-IronPort-AV: E=Sophos;i="5.97,332,1669104000"; d="scan'208";a="667020416"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 27 Feb 2023 04:52:41 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pWczh-0004Ph-07;
 Mon, 27 Feb 2023 12:52:41 +0000
Date: Mon, 27 Feb 2023 20:51:50 +0800
From: kernel test robot <lkp@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202302272052.ZvLMGyJl-lkp@intel.com>
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
Cc: rodrigo.vivi@intel.com, llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Stanislav,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Stanislav-Lisovskiy/drm-i915-display-Communicate-display-power-demands-to-pcode-more-accurately/20230227-175404
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230227095253.22415-1-stanislav.lisovskiy%40intel.com
patch subject: [Intel-gfx] [PATCH] drm/i915/display: Communicate display power demands to pcode more accurately
config: i386-randconfig-r033-20230227 (https://download.01.org/0day-ci/archive/20230227/202302272052.ZvLMGyJl-lkp@intel.com/config)
compiler: clang version 14.0.6 (https://github.com/llvm/llvm-project f28c006a5895fc0e329fe15fead81e37457cb1d1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/bc4de3b25bbf043f68ef862c45f975b79af938be
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Stanislav-Lisovskiy/drm-i915-display-Communicate-display-power-demands-to-pcode-more-accurately/20230227-175404
        git checkout bc4de3b25bbf043f68ef862c45f975b79af938be
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202302272052.ZvLMGyJl-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_cdclk.c:3006:6: warning: no previous prototype for function 'intel_cdclk_need_serialize' [-Wmissing-prototypes]
   bool intel_cdclk_need_serialize(struct drm_i915_private *i915,
        ^
   drivers/gpu/drm/i915/display/intel_cdclk.c:3006:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   bool intel_cdclk_need_serialize(struct drm_i915_private *i915,
   ^
   static 
   1 warning generated.


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
