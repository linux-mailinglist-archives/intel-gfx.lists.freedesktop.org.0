Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E77E954907
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2024 14:45:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3369B10E518;
	Fri, 16 Aug 2024 12:44:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YXrCV9Fy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2F6C10E518;
 Fri, 16 Aug 2024 12:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723812297; x=1755348297;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=5hhvYxKh/BWJATt7lMINORYJsEBOxQn25RjDu5y93w0=;
 b=YXrCV9Fy0QlDPr/w3+TWuBVcBCmJr8lFH/Et/eWCMMlsZ3AlQ6oAK36p
 ij8B3ol/fsalqQMuu63Feh1ePamV9zaeAfyYIqiKzoE2bx8wVipQuNa5q
 QeailUINJdM4SVSsKS6MZNEpqtR3ss5gfvc8hZ+bczYC2JpDAHXmvfkwi
 29dovjGqZyd/fmNy1kCPTD6phfXO01vHoeqVg0KVQb9PAc43sDdKulG8z
 5utJvU4gpd74OgFEN+cIUvgmPi8Lbq3QlJ8kjNb8f+h4wBRQcSIlx4v7Q
 O30dOPJeEZABjxuLJ+7kwBqB/Axe4FGEwpkg1eYka9faQrgoTPgFaKv69 g==;
X-CSE-ConnectionGUID: 2CFuE0WQSeObq9oiI6ijQQ==
X-CSE-MsgGUID: 5niL1R5lQWif+3Bsj4lNJQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11166"; a="21919029"
X-IronPort-AV: E=Sophos;i="6.10,151,1719903600"; d="scan'208";a="21919029"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2024 05:44:56 -0700
X-CSE-ConnectionGUID: KOV7HugPTwejVBHvqNw6HQ==
X-CSE-MsgGUID: 8WqK5PkWSZG0r/HuKk10Kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,151,1719903600"; d="scan'208";a="60221339"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 16 Aug 2024 05:44:55 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sewK4-0006QI-1D;
 Fri, 16 Aug 2024 12:44:52 +0000
Date: Fri, 16 Aug 2024 20:44:26 +0800
From: kernel test robot <lkp@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev, jani.nikula@linux.intel.com
Subject: Re: [PATCH 1/5] drm/i915/display: Add support for SNPS PHY HDMI PLL
 algorithm for DG2
Message-ID: <202408162056.qbWTZcLT-lkp@intel.com>
References: <20240813031941.3553574-2-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240813031941.3553574-2-ankit.k.nautiyal@intel.com>
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

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on drm-intel/for-linux-next-fixes drm-tip/drm-tip drm-xe/drm-xe-next linus/master v6.11-rc3 next-20240816]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Ankit-Nautiyal/drm-i915-display-Add-support-for-SNPS-PHY-HDMI-PLL-algorithm-for-DG2/20240814-222404
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20240813031941.3553574-2-ankit.k.nautiyal%40intel.com
patch subject: [PATCH 1/5] drm/i915/display: Add support for SNPS PHY HDMI PLL algorithm for DG2
config: i386-randconfig-061-20240816 (https://download.01.org/0day-ci/archive/20240816/202408162056.qbWTZcLT-lkp@intel.com/config)
compiler: clang version 18.1.5 (https://github.com/llvm/llvm-project 617a15a9eac96088ae5e9134248d8236e34b91b1)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240816/202408162056.qbWTZcLT-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202408162056.qbWTZcLT-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
   drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c: note: in included file (through include/linux/mmzone.h, include/linux/gfp.h, include/linux/slab.h, ...):
   include/linux/page-flags.h:235:46: sparse: sparse: self-comparison always evaluates to false
   include/linux/page-flags.h:235:46: sparse: sparse: self-comparison always evaluates to false
>> drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c:103:23: sparse: sparse: cast truncates bits from constant value (e8d4a51000 becomes d4a51000)

vim +103 drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c

    47	
    48	static void get_ana_cp_int_prop(u32 vco_clk,
    49					u32 refclk_postscalar,
    50					int mpll_ana_v2i,
    51					int c, int a,
    52					const u64 curve_freq_hz[2][8],
    53					const u64 curve_0[2][8],
    54					const u64 curve_1[2][8],
    55					const u64 curve_2[2][8],
    56					u32 *ana_cp_int,
    57					u32 *ana_cp_prop)
    58	{
    59		u64 vco_div_refclk_float;
    60		u64 curve_0_interpolated;
    61		u64 curve_2_interpolated;
    62		u64 curve_1_interpolated;
    63		u64 curve_2_scaled1;
    64		u64 curve_2_scaled2;
    65		u64 adjusted_vco_clk1;
    66		u64 adjusted_vco_clk2;
    67		u64 curve_2_scaled_int;
    68		u64 interpolated_product;
    69		u64 scaled_interpolated_sqrt;
    70		u64 scaled_vco_div_refclk1;
    71		u64 scaled_vco_div_refclk2;
    72		u64 temp;
    73	
    74		vco_div_refclk_float = vco_clk * DIV_ROUND_DOWN_ULL(1000000000000ULL, refclk_postscalar);
    75	
    76		/* Interpolate curve values at the target vco_clk frequency */
    77		curve_0_interpolated = interp(vco_clk, curve_freq_hz[c][a], curve_freq_hz[c][a + 1],
    78					      curve_0[c][a], curve_0[c][a + 1]);
    79	
    80		curve_2_interpolated = interp(vco_clk, curve_freq_hz[c][a], curve_freq_hz[c][a + 1],
    81					      curve_2[c][a], curve_2[c][a + 1]);
    82	
    83		curve_1_interpolated = interp(vco_clk, curve_freq_hz[c][a], curve_freq_hz[c][a + 1],
    84					      curve_1[c][a], curve_1[c][a + 1]);
    85	
    86		curve_1_interpolated = DIV_ROUND_DOWN_ULL(curve_1_interpolated, CURVE1_MULTIPLIER);
    87	
    88		/*
    89		 * Scale curve_2_interpolated based on mpll_ana_v2i, for integer part
    90		 * ana_cp_int and for the proportional part ana_cp_prop
    91		 */
    92		temp = curve_2_interpolated * (4 - mpll_ana_v2i);
    93		curve_2_scaled1 = DIV_ROUND_DOWN_ULL(temp, 16000);
    94		curve_2_scaled2 = DIV_ROUND_DOWN_ULL(temp, 160);
    95	
    96		/* Scale vco_div_refclk for ana_cp_int */
    97		scaled_vco_div_refclk1 = 112008301 * DIV_ROUND_DOWN_ULL(vco_div_refclk_float, 100000);
    98	
    99		adjusted_vco_clk1 = CURVE2_MULTIPLIER *
   100				    DIV_ROUND_DOWN_ULL(scaled_vco_div_refclk1, (curve_0_interpolated *
   101				    DIV_ROUND_DOWN_ULL(curve_1_interpolated, CURVE0_MULTIPLIER)));
   102	
 > 103		*ana_cp_int = DIV_ROUND_CLOSEST_ULL(DIV_ROUND_DOWN_ULL(adjusted_vco_clk1, curve_2_scaled1),
   104						    CURVE2_MULTIPLIER);
   105		*ana_cp_int = max(1, min(*ana_cp_int, 127));
   106	
   107		curve_2_scaled_int = curve_2_scaled1 * (*ana_cp_int);
   108	
   109		interpolated_product = curve_1_interpolated *
   110				       (curve_2_scaled_int * DIV_ROUND_DOWN_ULL(curve_0_interpolated,
   111									      CURVE0_MULTIPLIER));
   112	
   113		scaled_interpolated_sqrt =
   114				int_sqrt(DIV_ROUND_UP_ULL(interpolated_product, vco_div_refclk_float) *
   115				DIV_ROUND_DOWN_ULL(1000000000000ULL, 55));
   116	
   117		/* Scale vco_div_refclk for ana_cp_int */
   118		scaled_vco_div_refclk2 = DIV_ROUND_UP_ULL(vco_div_refclk_float, 1000000);
   119		adjusted_vco_clk2 = 1460281 * DIV_ROUND_UP_ULL(scaled_interpolated_sqrt *
   120							       scaled_vco_div_refclk2,
   121							       curve_1_interpolated);
   122	
   123		*ana_cp_prop = DIV_ROUND_UP_ULL(adjusted_vco_clk2, curve_2_scaled2);
   124		*ana_cp_prop = max(1, min(*ana_cp_prop, 127));
   125	}
   126	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
