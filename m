Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 773F06BF819
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Mar 2023 06:46:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4D5E10E179;
	Sat, 18 Mar 2023 05:46:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16EC510E179
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Mar 2023 05:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679118397; x=1710654397;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=gPlDmkRetIsrvxAqBSd4QrtZYIEN6q/reoC14Ax/+Gg=;
 b=JgnxXqRBLL7ISRKSSf+DO8xvBo7BrtZpYuxMpJewrFlFiG5HnNPPyw6g
 L1Qkom0O+FlKK4ipK+bvH0Ca3CVKEEHH2O0sOuiliME9Xa1BIMFX0cxSF
 Sv0TznSrITWsPYzAIPhbNOuR6LGNjVfR7TQKQZNxUTqWPxUOX0TKlGFs/
 OHJNZiSV+uQ7G5zJMj7BcSCWhS7fN/cHqbSp/KPEDgKBHW0UlE1xTi7Nz
 g8R02YIhvAt9oYfxhJKGIusxaw2XUOwhElmR9VsYuiKaqlsCHz/6ZA3Lw
 /8D39J2ypsJCMyv3rKf2/y9TNd90IXbMdBHy/rb6lnCvDLLqOsjDl68l8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="424685481"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; d="scan'208";a="424685481"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 22:46:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="790989679"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; d="scan'208";a="790989679"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 17 Mar 2023 22:46:35 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pdPOk-0009ps-1j;
 Sat, 18 Mar 2023 05:46:34 +0000
Date: Sat, 18 Mar 2023 13:46:19 +0800
From: kernel test robot <lkp@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202303181322.TIgxE4wA-lkp@intel.com>
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

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Radhakrishna-Sripada/drm-i915-mtl-Squashed-Phy-Support/20230318-090025
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230318005852.2303937-2-radhakrishna.sripada%40intel.com
patch subject: [Intel-gfx] [PATCH 1/4] drm/i915/mtl: Squashed Phy Support
config: x86_64-randconfig-a016-20230313 (https://download.01.org/0day-ci/archive/20230318/202303181322.TIgxE4wA-lkp@intel.com/config)
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
| Link: https://lore.kernel.org/oe-kbuild-all/202303181322.TIgxE4wA-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_cx0_phy.c:2174:13: warning: variable 'multiplier' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
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
   1 warning generated.


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
