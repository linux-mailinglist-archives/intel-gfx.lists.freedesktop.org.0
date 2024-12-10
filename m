Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 757549EA6D8
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 04:56:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D06F10E5C1;
	Tue, 10 Dec 2024 03:56:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OBhanGiD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8321310E5C1
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 03:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733802999; x=1765338999;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=37peDWf5PtoAcVOi9daNtGQ6x4xa+e43EhTMSWQsdZA=;
 b=OBhanGiDeuOVMwlq794FW+v8QiJSaWr0+I9mK1+Tda9PirdBLn4kW9ub
 EJPZqujp6c1S/ZTE+jqmp89kwPKoLO1dFOVVOT97bq3BGJVkSK3QeHEQ5
 ND2bVXCFegfmIyTben5s2jbJVlhjzc4bcWa8aWBckVCvVec0hNYRGNdbn
 +wdw5B/deYKc1TRcqBNRyKfYg1g+O8bHrhX/yldABa15aSp5IzUB8dwfD
 oIWiaZ2cFBdbQtq4ijKfqrAAPXpERce83yZUodanuj3VLGIt+blzmQQwF
 PzYhx72asPQ0HHJTAsdrVh4SEKfOhRGqZ/TR0xfFZ+p3hQwBNFg+gzYj7 w==;
X-CSE-ConnectionGUID: eCHcIomtTiuCtYvPYuFikg==
X-CSE-MsgGUID: 20xkdy6OSieiphweInNwzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="44732099"
X-IronPort-AV: E=Sophos;i="6.12,221,1728975600"; d="scan'208";a="44732099"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 19:56:38 -0800
X-CSE-ConnectionGUID: /dNNpP07QvWrfZBJlmabWw==
X-CSE-MsgGUID: 3+H/8MPqSeOR+lrPR7BLkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,221,1728975600"; d="scan'208";a="100327636"
Received: from lkp-server01.sh.intel.com (HELO 82a3f569d0cb) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 09 Dec 2024 19:56:37 -0800
Received: from kbuild by 82a3f569d0cb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tKrMQ-000553-0j;
 Tue, 10 Dec 2024 03:56:34 +0000
Date: Tue, 10 Dec 2024 11:55:37 +0800
From: kernel test robot <lkp@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: Re: [PATCH v2] drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value
Message-ID: <202412101146.DQgw8n8S-lkp@intel.com>
References: <20241209153418.49580-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241209153418.49580-1-dnyaneshwar.bhadane@intel.com>
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

Hi Dnyaneshwar,

kernel test robot noticed the following build errors:

[auto build test ERROR on next-20241209]
[also build test ERROR on linus/master v6.13-rc2]
[cannot apply to drm-intel/for-linux-next drm-intel/for-linux-next-fixes drm-tip/drm-tip v6.13-rc2 v6.13-rc1 v6.12]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Dnyaneshwar-Bhadane/drm-i915-cx0_phy-Update-HDMI-TMDS-C20-algorithm-value/20241209-233928
base:   next-20241209
patch link:    https://lore.kernel.org/r/20241209153418.49580-1-dnyaneshwar.bhadane%40intel.com
patch subject: [PATCH v2] drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value
config: sparc-allmodconfig (https://download.01.org/0day-ci/archive/20241210/202412101146.DQgw8n8S-lkp@intel.com/config)
compiler: sparc64-linux-gcc (GCC) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241210/202412101146.DQgw8n8S-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202412101146.DQgw8n8S-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/gpu/drm/i915/display/intel_cx0_phy.c: In function 'intel_c20_hdmi_tmds_tx_cgf_1':
>> drivers/gpu/drm/i915/display/intel_cx0_phy.c:2201:21: error: implicit declaration of function 'IS_METEORLAKE_U'; did you mean 'IS_METEORLAKE'? [-Wimplicit-function-declaration]
    2201 |                 if (IS_METEORLAKE_U(to_i915(display->drm)) ||
         |                     ^~~~~~~~~~~~~~~
         |                     IS_METEORLAKE
>> drivers/gpu/drm/i915/display/intel_cx0_phy.c:2202:21: error: implicit declaration of function 'IS_ARROWLAKE_U'; did you mean 'IS_RAPTORLAKE_U'? [-Wimplicit-function-declaration]
    2202 |                     IS_ARROWLAKE_U(to_i915(display->drm)) ||
         |                     ^~~~~~~~~~~~~~
         |                     IS_RAPTORLAKE_U


vim +2201 drivers/gpu/drm/i915/display/intel_cx0_phy.c

  2177	
  2178	static u16 intel_c20_hdmi_tmds_tx_cgf_1(struct intel_crtc_state *crtc_state)
  2179	{
  2180		struct intel_display *display = to_intel_display(crtc_state);
  2181		struct pci_dev *pdev = NULL;
  2182		u16 tx_misc;
  2183		u16 tx_dcc_cal_dac_ctrl_range = 8;
  2184		u16 tx_term_ctrl;
  2185		u16 host_bridge_pci_dev_id;
  2186	
  2187		if (IS_BATTLEMAGE(to_i915(display->drm))) {
  2188			tx_misc = 0;
  2189			tx_term_ctrl = 2;
  2190		} else if (DISPLAY_VER(display) >= 20) {
  2191			tx_misc = 5;
  2192			tx_term_ctrl = 4;
  2193		} else if (IS_METEORLAKE(to_i915(display->drm))) {
  2194			/*
  2195			 * Some SoCs have the same drm PCI IDs, so differentiate based
  2196			 * on the host bridge device ID to use the correct txx_mics value.
  2197			 */
  2198			while ((pdev = pci_get_class(PCI_CLASS_BRIDGE_HOST << 8, pdev)))
  2199				host_bridge_pci_dev_id = pdev->device;
  2200	
> 2201			if (IS_METEORLAKE_U(to_i915(display->drm)) ||
> 2202			    IS_ARROWLAKE_U(to_i915(display->drm)) ||
  2203			    (pdev && IS_ARROWLAKE_S_BY_HOST_BRIDGE_ID(host_bridge_pci_dev_id))) {
  2204				tx_misc = 3;
  2205			} else {
  2206				tx_misc = 7;
  2207			}
  2208	
  2209			tx_term_ctrl = 2;
  2210		}
  2211		return (C20_PHY_TX_MISC(tx_misc) |
  2212			C20_PHY_TX_DCC_CAL_RANGE(tx_dcc_cal_dac_ctrl_range) |
  2213			C20_PHY_TX_DCC_BYPASS | C20_PHY_TX_TERM_CTL(tx_term_ctrl));
  2214	}
  2215	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
