Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B73D918ECB
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 20:47:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78E8810E9A4;
	Wed, 26 Jun 2024 18:47:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XIxKIjo2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3664910E9A3;
 Wed, 26 Jun 2024 18:47:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719427647; x=1750963647;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=jLrj4xSB9+9tpvGMkgkltWa9FqBWZDGfVPaSflhqoug=;
 b=XIxKIjo2oY5zkI48tZup89uAPchw43wFfRBLCDDAXwvunFVpfk9Y2tXD
 kd6/SJ27UJwN1XFs8Elio1PU+Wioo+QzJjvjhRDWPdl2JIbLlOQ6v9+eu
 O1YbUjEQLtXKcL6Mz02ZCh5603VJ1jdlk9SwTZxQw9c53lDgi0zMjKRtV
 lFa4stuRbPiqFT/8aOVFJus0o/qJ52uujqNAohskSJk/6eUX1R9/XbD4c
 xfiUz6fMhxzhIO8u9xY/0CBixriU6kYDEITGJCdEjGau2Jf0dgTCpDI+A
 OIw3p29RJNpq/jzux2tOOvDXXTOT/ssP7AI/G48ruZYfUs+qz2+mNvzRP g==;
X-CSE-ConnectionGUID: RfCtuDeqRqyK5oHV9Ggiqg==
X-CSE-MsgGUID: cftE2eUSRxalFjsAN0r9iw==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="16405064"
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="16405064"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 11:47:27 -0700
X-CSE-ConnectionGUID: 3sUXBsicTJqp3X441e1Vzw==
X-CSE-MsgGUID: 3Yzs8byHTZG/5SFN5ueH9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="44738725"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 26 Jun 2024 11:47:24 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sMXft-000FUI-30;
 Wed, 26 Jun 2024 18:47:21 +0000
Date: Thu, 27 Jun 2024 02:46:57 +0800
From: kernel test robot <lkp@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mika.kahola@intel.com, matthew.d.roper@intel.com
Subject: Re: [PATCH 1/5] drm/i915/display: Add support for SNPS PHY HDMI PLL
 algorithm for DG2
Message-ID: <202406270253.GoXTAfRN-lkp@intel.com>
References: <20240626050056.3996349-2-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240626050056.3996349-2-ankit.k.nautiyal@intel.com>
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
[also build test ERROR on drm-intel/for-linux-next-fixes drm-tip/drm-tip drm-xe/drm-xe-next linus/master v6.10-rc5 next-20240625]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Ankit-Nautiyal/drm-i915-display-Add-support-for-SNPS-PHY-HDMI-PLL-algorithm-for-DG2/20240626-131209
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20240626050056.3996349-2-ankit.k.nautiyal%40intel.com
patch subject: [PATCH 1/5] drm/i915/display: Add support for SNPS PHY HDMI PLL algorithm for DG2
config: i386-randconfig-011-20240626 (https://download.01.org/0day-ci/archive/20240627/202406270253.GoXTAfRN-lkp@intel.com/config)
compiler: clang version 18.1.5 (https://github.com/llvm/llvm-project 617a15a9eac96088ae5e9134248d8236e34b91b1)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240627/202406270253.GoXTAfRN-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406270253.GoXTAfRN-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_pll_algorithm.c:153:14: error: variable 'a' is used uninitialized whenever 'for' loop exits because its condition is false [-Werror,-Wsometimes-uninitialized]
     153 |         for (j = 0; j < 8; j += 2) {
         |                     ^~~~~
   drivers/gpu/drm/i915/display/intel_pll_algorithm.c:161:67: note: uninitialized use occurs here
     161 |         get_ana_cp_int_prop(vco_clk, refclk_postscalar, mpll_ana_v2i, c, a,
         |                                                                          ^
   drivers/gpu/drm/i915/display/intel_pll_algorithm.c:153:14: note: remove the condition if it is always true
     153 |         for (j = 0; j < 8; j += 2) {
         |                     ^~~~~
   drivers/gpu/drm/i915/display/intel_pll_algorithm.c:124:10: note: initialize the variable 'a' to silence this warning
     124 |         int c, a, j;
         |                 ^
         |                  = 0
>> drivers/gpu/drm/i915/display/intel_pll_algorithm.c:153:14: error: variable 'ana_freq_vco' is used uninitialized whenever 'for' loop exits because its condition is false [-Werror,-Wsometimes-uninitialized]
     153 |         for (j = 0; j < 8; j += 2) {
         |                     ^~~~~
   drivers/gpu/drm/i915/display/intel_pll_algorithm.c:179:29: note: uninitialized use occurs here
     179 |         pll_params->ana_freq_vco = ana_freq_vco;
         |                                    ^~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_pll_algorithm.c:153:14: note: remove the condition if it is always true
     153 |         for (j = 0; j < 8; j += 2) {
         |                     ^~~~~
   drivers/gpu/drm/i915/display/intel_pll_algorithm.c:123:18: note: initialize the variable 'ana_freq_vco' to silence this warning
     123 |         int ana_freq_vco;
         |                         ^
         |                          = 0
   2 errors generated.


vim +153 drivers/gpu/drm/i915/display/intel_pll_algorithm.c

    92	
    93	static int _intel_phy_compute_hdmi_tmds_pll(u64 pixel_clock, u32 refclk,
    94						    u32 ref_range,
    95						    u32 ana_cp_int_gs,
    96						    u32 ana_cp_prop_gs,
    97						    const u64 curve_freq_hz[2][8],
    98						    const u64 curve_0[2][8],
    99						    const u64 curve_1[2][8],
   100						    const u64 curve_2[2][8],
   101						    u32 prescaler_divider,
   102						    struct pll_output_params *pll_params)
   103	{
   104		/*datarate 10khz */
   105		u64 datarate = pixel_clock * 10000;
   106		u32 ssc_up_spread = 1;
   107		u32 mpll_div5_en = 1;
   108		u32 hdmi_div = 1;
   109		u32 ana_cp_int;
   110		u32 ana_cp_prop;
   111		u32 refclk_postscalar = refclk >> prescaler_divider;
   112		u32 tx_clk_div;
   113		u64 vco_clk;
   114		u32 vco_div_refclk_integer;
   115		u32 vco_div_refclk_fracn;
   116		u32 fracn_quot;
   117		u32 fracn_rem;
   118		u32 fracn_den;
   119		u32 fracn_en;
   120		u32 pmix_en;
   121		u32 multiplier;
   122		int mpll_ana_v2i;
   123		int ana_freq_vco;
   124		int c, a, j;
   125	
   126		if (pixel_clock < 25175 || pixel_clock > 600000)
   127			return -EINVAL;
   128	
   129		/* Select appropriate v2i point */
   130		if (datarate <= INTEL_SNPS_PHY_HDMI_9999MHZ) {
   131			mpll_ana_v2i = 2;
   132			tx_clk_div = ilog2(INTEL_SNPS_PHY_HDMI_9999MHZ / datarate);
   133		} else {
   134			mpll_ana_v2i = 3;
   135			tx_clk_div = ilog2(INTEL_SNPS_PHY_HDMI_16GHZ / datarate);
   136		}
   137		vco_clk = (datarate << tx_clk_div) >> 1;
   138	
   139		/* Highly accurate division, calculate fraction to 32 bits of precision */
   140		vco_div_refclk_integer = vco_clk / refclk_postscalar;
   141		vco_div_refclk_fracn = ((vco_clk % refclk_postscalar) << 32) / refclk_postscalar;
   142		fracn_quot = vco_div_refclk_fracn >> 16;
   143		fracn_rem = vco_div_refclk_fracn & 0xffff;
   144		fracn_rem = fracn_rem - (fracn_rem >> 15);
   145		fracn_den = 0xffff;
   146		fracn_en = (fracn_quot != 0 || fracn_rem != 0) ? 1 : 0;
   147		pmix_en = fracn_en;
   148		multiplier = (vco_div_refclk_integer - 16) * 2;
   149		/* Curve selection for ana_cp_* calculations. One curve hardcoded per v2i range */
   150		c = mpll_ana_v2i - 2;
   151	
   152		/* Find the right segment of the table */
 > 153		for (j = 0; j < 8; j += 2) {
   154			if (vco_clk <= curve_freq_hz[c][j + 1]) {
   155				a = j;
   156				ana_freq_vco = 3 - (a >> 1);
   157				break;
   158			}
   159		}
   160	
   161		get_ana_cp_int_prop(vco_clk, refclk_postscalar, mpll_ana_v2i, c, a,
   162				    curve_freq_hz, curve_0, curve_1, curve_2,
   163				    &ana_cp_int, &ana_cp_prop);
   164	
   165		pll_params->ssc_up_spread = ssc_up_spread;
   166		pll_params->mpll_div5_en = mpll_div5_en;
   167		pll_params->hdmi_div = hdmi_div;
   168		pll_params->ana_cp_int = ana_cp_int;
   169		pll_params->refclk_postscalar = refclk_postscalar;
   170		pll_params->tx_clk_div = tx_clk_div;
   171		pll_params->fracn_quot = fracn_quot;
   172		pll_params->fracn_rem = fracn_rem;
   173		pll_params->fracn_den = fracn_den;
   174		pll_params->fracn_en = fracn_en;
   175		pll_params->pmix_en = pmix_en;
   176		pll_params->multiplier = multiplier;
   177		pll_params->ana_cp_prop = ana_cp_prop;
   178		pll_params->mpll_ana_v2i = mpll_ana_v2i;
   179		pll_params->ana_freq_vco = ana_freq_vco;
   180	
   181		return 0;
   182	}
   183	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
