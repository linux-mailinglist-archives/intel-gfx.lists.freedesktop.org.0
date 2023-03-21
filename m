Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9AE6C31C1
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Mar 2023 13:34:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CEF310E0AE;
	Tue, 21 Mar 2023 12:34:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C506310E0AE
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Mar 2023 12:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679402070; x=1710938070;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/3dnn/40tEEoIbk/vepy6ODI8Bj1yWd43WocgOBe+8g=;
 b=LG/wzFLBcPd+XxkovIYUmwlx7UQSK4WDYVNU9jvuWYDq60IQItKCCfAi
 0cMo6NdCbrO7thL3lZ+tYRCvT0/bFO6/nPMcsjvFBhGamgL3hCzVbDFFP
 NRPtvLYUKxB+2UgS4NruLE+52Fbur2Nhc6ixXnlEFspSGKu61SVPCyaHf
 7FCoA4DaTdiEytdpqTBMzYhXQSlrMhWV4jY+UMbbFtjP6JT0dbLoSqiqL
 ACPHvTd2RZiCNPkTPZqXOM9Y1KYqEPFTyFjJ+eSIJMO5TYfSmF26H0ph4
 DFVYDohhW5MdCuJdZP45aXOfiV4KQeZSlASlbWRR01VtzcOyHWMlcDURy Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="401495608"
X-IronPort-AV: E=Sophos;i="5.98,278,1673942400"; d="scan'208";a="401495608"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 05:34:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="683863151"
X-IronPort-AV: E=Sophos;i="5.98,278,1673942400"; d="scan'208";a="683863151"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 21 Mar 2023 05:34:28 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pebC7-000Buc-1k;
 Tue, 21 Mar 2023 12:34:27 +0000
Date: Tue, 21 Mar 2023 20:33:46 +0800
From: kernel test robot <lkp@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202303212045.4ONidwhT-lkp@intel.com>
References: <20230318005852.2303937-2-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230318005852.2303937-2-radhakrishna.sripada@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/mtl: Squashed Phy Support
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
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Radhakrishna,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Radhakrishna-Sripada/drm-i915-mtl-Squashed-Phy-Support/20230318-090025
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230318005852.2303937-2-radhakrishna.sripada%40intel.com
patch subject: [Intel-gfx] [PATCH 1/4] drm/i915/mtl: Squashed Phy Support
config: x86_64-randconfig-a004-20230320 (https://download.01.org/0day-ci/archive/20230321/202303212045.4ONidwhT-lkp@intel.com/config)
compiler: clang version 14.0.6 (https://github.com/llvm/llvm-project f28c006a5895fc0e329fe15fead81e37457cb1d1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/09eaa092cb75c3ac2a82dbf3b83bff437be2abfa
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Radhakrishna-Sripada/drm-i915-mtl-Squashed-Phy-Support/20230318-090025
        git checkout 09eaa092cb75c3ac2a82dbf3b83bff437be2abfa
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=x86_64 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303212045.4ONidwhT-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_cx0_phy.c:2174:13: error: variable 'multiplier' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
           } else if (pll_state->mplla[6] & C20_MPLLA_FRACEN) {
                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_cx0_phy.c:2184:10: note: uninitialized use occurs here
           tmp2 = (multiplier << 15) + frac_quot + DIV_ROUND_CLOSEST(frac_rem,frac_den);
                   ^~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_cx0_phy.c:2174:9: note: remove the 'if' if its condition is always true
           } else if (pll_state->mplla[6] & C20_MPLLA_FRACEN) {
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_cx0_phy.c:2162:25: note: initialize the variable 'multiplier' to silence this warning
           unsigned int multiplier, refclk = 38400;
                                  ^
                                   = 0
   1 error generated.


vim +2174 drivers/gpu/drm/i915/display/intel_cx0_phy.c

  2157	
  2158	int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
  2159					 const struct intel_c20pll_state *pll_state)
  2160	{
  2161		unsigned int frac_quot = 0, frac_rem = 0, frac_den = 1;
  2162		unsigned int multiplier, refclk = 38400;
  2163		unsigned ref_clk_mpllb_div = 0;
  2164		unsigned fb_clk_div4_en = 0;
  2165		unsigned long tmp1, tmp2;
  2166	
  2167		if (pll_state->mpllb[6] & C20_MPLLB_FRACEN) {
  2168			multiplier = REG_FIELD_GET(C20_MULTIPLIER_MASK, pll_state->mpllb[0]);
  2169			ref_clk_mpllb_div = REG_FIELD_GET(C20_REF_CLK_MPLLB_DIV_MASK, pll_state->mpllb[6]);
  2170			fb_clk_div4_en = REG_FIELD_GET(C20_FB_CLK_DIV4_EN, pll_state->mpllb[6]);
  2171			frac_den = pll_state->mpllb[7];
  2172			frac_quot = pll_state->mpllb[8];
  2173			frac_rem = pll_state->mpllb[9];
> 2174		} else if (pll_state->mplla[6] & C20_MPLLA_FRACEN) {
  2175			multiplier = REG_FIELD_GET(C20_MULTIPLIER_MASK, pll_state->mplla[0]);
  2176			ref_clk_mpllb_div = REG_FIELD_GET(C20_REF_CLK_MPLLB_DIV_MASK, pll_state->mpllb[6]);
  2177			fb_clk_div4_en = REG_FIELD_GET(C20_FB_CLK_DIV4_EN, pll_state->mpllb[6]);
  2178			frac_den = pll_state->mpllb[7];
  2179			frac_quot = pll_state->mplla[8];
  2180			frac_rem = pll_state->mplla[9];
  2181		}
  2182	
  2183		tmp1 = DIV_ROUND_CLOSEST(refclk * (1 << (1 + fb_clk_div4_en)), 1 << ref_clk_mpllb_div);
  2184		tmp2 = (multiplier << 15) + frac_quot + DIV_ROUND_CLOSEST(frac_rem,frac_den);
  2185	
  2186		return DIV_ROUND_CLOSEST((tmp1 * tmp2) >> 17, 10);
  2187	}
  2188	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
