Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B6878FE3A
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 15:20:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF28410E7C8;
	Fri,  1 Sep 2023 13:20:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 910EF10E7C8
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 13:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693574441; x=1725110441;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=JbTDPmnd2suG7JBlWdUaLInmJi6E8YkwQ+PG4LS3USI=;
 b=nvmM1sozwuozeFWFGcPoWVRNAuXD6g9Rio24TrFrPvoW9IhZ8VgxzhJE
 fFOia/v6ADkCVbZkFQuX3N/yVYli3HACMJkR0rVJYh9Qaxzzo5zow44x5
 MrpQTl0sPjGpxwbDAVuolFQim/J76FHBPoIW0x4No22VJuU6V4CBjZD9I
 Wvmq/ogod+E9VL4bzXXKos3BToGZ6PRr1LSPvWnYrEIhfs7iKNcKkvm9K
 t4EIRVuqXfLZZFlGewo17VHMINK9lXSonqNlw+WxObfczeX0RV820dTPp
 lKpSKh8BTqWl330bL6E8DGrXlxSGcfxW36VGmUMZIyEmsWsn3HT9UX51O g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="442612980"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="442612980"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 06:20:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="810077951"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="810077951"
Received: from lkp-server01.sh.intel.com (HELO 5d8055a4f6aa) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 01 Sep 2023 06:20:39 -0700
Received: from kbuild by 5d8055a4f6aa with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qc44j-0001Jl-0t;
 Fri, 01 Sep 2023 13:20:37 +0000
Date: Fri, 1 Sep 2023 21:19:39 +0800
From: kernel test robot <lkp@intel.com>
To: William Tseng <william.tseng@intel.com>,
	intel-gfx@lists.freedesktop.org
Message-ID: <202309012129.siE9g3DY-lkp@intel.com>
References: <20230901095100.3771188-1-william.tseng@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230901095100.3771188-1-william.tseng@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: let HW maintain HS-TRAIL and
 CLK_POST
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
Cc: William Tseng <william.tseng@intel.com>, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi William,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/William-Tseng/drm-i915-dsi-let-HW-maintain-HS-TRAIL-and-CLK_POST/20230901-175307
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230901095100.3771188-1-william.tseng%40intel.com
patch subject: [Intel-gfx] [PATCH] drm/i915/dsi: let HW maintain HS-TRAIL and CLK_POST
config: x86_64-defconfig (https://download.01.org/0day-ci/archive/20230901/202309012129.siE9g3DY-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-12) 11.3.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20230901/202309012129.siE9g3DY-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202309012129.siE9g3DY-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/gpu/drm/i915/display/icl_dsi.c: In function 'icl_dphy_param_init':
>> drivers/gpu/drm/i915/display/icl_dsi.c:1829:9: error: 'tclk_trail_ns' undeclared (first use in this function)
    1829 |         tclk_trail_ns = max(mipi_config->tclk_trail, mipi_config->ths_trail);
         |         ^~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/icl_dsi.c:1829:9: note: each undeclared identifier is reported only once for each function it appears in


vim +/tclk_trail_ns +1829 drivers/gpu/drm/i915/display/icl_dsi.c

2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1814  
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1815  static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1816  {
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1817  	struct drm_device *dev = intel_dsi->base.base.dev;
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1818  	struct drm_i915_private *dev_priv = to_i915(dev);
3cf050762534cc2 drivers/gpu/drm/i915/display/icl_dsi.c Ville Syrjälä 2022-05-10  1819  	struct intel_connector *connector = intel_dsi->attached_connector;
3cf050762534cc2 drivers/gpu/drm/i915/display/icl_dsi.c Ville Syrjälä 2022-05-10  1820  	struct mipi_config *mipi_config = connector->panel.vbt.dsi.config;
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1821  	u32 tlpx_ns;
78ef7b0ec18ccb2 drivers/gpu/drm/i915/display/icl_dsi.c William Tseng 2023-09-01  1822  	u32 prepare_cnt, exit_zero_cnt, clk_zero_cnt;
78ef7b0ec18ccb2 drivers/gpu/drm/i915/display/icl_dsi.c William Tseng 2023-09-01  1823  	u32 ths_prepare_ns;
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1824  	u32 hs_zero_cnt;
78ef7b0ec18ccb2 drivers/gpu/drm/i915/display/icl_dsi.c William Tseng 2023-09-01  1825  	u32 tclk_pre_cnt;
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1826  
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1827  	tlpx_ns = intel_dsi_tlpx_ns(intel_dsi);
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1828  
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05 @1829  	tclk_trail_ns = max(mipi_config->tclk_trail, mipi_config->ths_trail);
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1830  	ths_prepare_ns = max(mipi_config->ths_prepare,
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1831  			     mipi_config->tclk_prepare);
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1832  
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1833  	/*
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1834  	 * prepare cnt in escape clocks
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1835  	 * this field represents a hexadecimal value with a precision
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1836  	 * of 1.2 – i.e. the most significant bit is the integer
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1837  	 * and the least significant 2 bits are fraction bits.
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1838  	 * so, the field can represent a range of 0.25 to 1.75
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1839  	 */
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1840  	prepare_cnt = DIV_ROUND_UP(ths_prepare_ns * 4, tlpx_ns);
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1841  	if (prepare_cnt > ICL_PREPARE_CNT_MAX) {
b5280cd0bd2d680 drivers/gpu/drm/i915/display/icl_dsi.c Wambui Karuga 2020-01-22  1842  		drm_dbg_kms(&dev_priv->drm, "prepare_cnt out of range (%d)\n",
b5280cd0bd2d680 drivers/gpu/drm/i915/display/icl_dsi.c Wambui Karuga 2020-01-22  1843  			    prepare_cnt);
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1844  		prepare_cnt = ICL_PREPARE_CNT_MAX;
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1845  	}
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1846  
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1847  	/* clk zero count in escape clocks */
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1848  	clk_zero_cnt = DIV_ROUND_UP(mipi_config->tclk_prepare_clkzero -
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1849  				    ths_prepare_ns, tlpx_ns);
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1850  	if (clk_zero_cnt > ICL_CLK_ZERO_CNT_MAX) {
b5280cd0bd2d680 drivers/gpu/drm/i915/display/icl_dsi.c Wambui Karuga 2020-01-22  1851  		drm_dbg_kms(&dev_priv->drm,
b5280cd0bd2d680 drivers/gpu/drm/i915/display/icl_dsi.c Wambui Karuga 2020-01-22  1852  			    "clk_zero_cnt out of range (%d)\n", clk_zero_cnt);
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1853  		clk_zero_cnt = ICL_CLK_ZERO_CNT_MAX;
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1854  	}
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1855  
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1856  	/* tclk pre count in escape clocks */
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1857  	tclk_pre_cnt = DIV_ROUND_UP(mipi_config->tclk_pre, tlpx_ns);
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1858  	if (tclk_pre_cnt > ICL_TCLK_PRE_CNT_MAX) {
b5280cd0bd2d680 drivers/gpu/drm/i915/display/icl_dsi.c Wambui Karuga 2020-01-22  1859  		drm_dbg_kms(&dev_priv->drm,
b5280cd0bd2d680 drivers/gpu/drm/i915/display/icl_dsi.c Wambui Karuga 2020-01-22  1860  			    "tclk_pre_cnt out of range (%d)\n", tclk_pre_cnt);
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1861  		tclk_pre_cnt = ICL_TCLK_PRE_CNT_MAX;
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1862  	}
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1863  
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1864  	/* hs zero cnt in escape clocks */
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1865  	hs_zero_cnt = DIV_ROUND_UP(mipi_config->ths_prepare_hszero -
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1866  				   ths_prepare_ns, tlpx_ns);
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1867  	if (hs_zero_cnt > ICL_HS_ZERO_CNT_MAX) {
b5280cd0bd2d680 drivers/gpu/drm/i915/display/icl_dsi.c Wambui Karuga 2020-01-22  1868  		drm_dbg_kms(&dev_priv->drm, "hs_zero_cnt out of range (%d)\n",
b5280cd0bd2d680 drivers/gpu/drm/i915/display/icl_dsi.c Wambui Karuga 2020-01-22  1869  			    hs_zero_cnt);
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1870  		hs_zero_cnt = ICL_HS_ZERO_CNT_MAX;
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1871  	}
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1872  
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1873  	/* hs exit zero cnt in escape clocks */
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1874  	exit_zero_cnt = DIV_ROUND_UP(mipi_config->ths_exit, tlpx_ns);
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1875  	if (exit_zero_cnt > ICL_EXIT_ZERO_CNT_MAX) {
b5280cd0bd2d680 drivers/gpu/drm/i915/display/icl_dsi.c Wambui Karuga 2020-01-22  1876  		drm_dbg_kms(&dev_priv->drm,
b5280cd0bd2d680 drivers/gpu/drm/i915/display/icl_dsi.c Wambui Karuga 2020-01-22  1877  			    "exit_zero_cnt out of range (%d)\n",
b5280cd0bd2d680 drivers/gpu/drm/i915/display/icl_dsi.c Wambui Karuga 2020-01-22  1878  			    exit_zero_cnt);
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1879  		exit_zero_cnt = ICL_EXIT_ZERO_CNT_MAX;
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1880  	}
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1881  
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1882  	/* clock lane dphy timings */
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1883  	intel_dsi->dphy_reg = (CLK_PREPARE_OVERRIDE |
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1884  			       CLK_PREPARE(prepare_cnt) |
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1885  			       CLK_ZERO_OVERRIDE |
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1886  			       CLK_ZERO(clk_zero_cnt) |
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1887  			       CLK_PRE_OVERRIDE |
78ef7b0ec18ccb2 drivers/gpu/drm/i915/display/icl_dsi.c William Tseng 2023-09-01  1888  			       CLK_PRE(tclk_pre_cnt));
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1889  
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1890  	/* data lanes dphy timings */
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1891  	intel_dsi->dphy_data_lane_reg = (HS_PREPARE_OVERRIDE |
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1892  					 HS_PREPARE(prepare_cnt) |
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1893  					 HS_ZERO_OVERRIDE |
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1894  					 HS_ZERO(hs_zero_cnt) |
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1895  					 HS_EXIT_OVERRIDE |
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1896  					 HS_EXIT(exit_zero_cnt));
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1897  
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1898  	intel_dsi_log_params(intel_dsi);
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1899  }
2def5ae7d7fb857 drivers/gpu/drm/i915/icl_dsi.c         Hans de Goede 2019-06-05  1900  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
