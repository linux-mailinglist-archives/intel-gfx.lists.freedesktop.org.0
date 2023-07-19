Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2C8759A28
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 17:49:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6A9210E0D1;
	Wed, 19 Jul 2023 15:49:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA07A10E0D1
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jul 2023 15:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689781761; x=1721317761;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=YUKz5tVD3SuPHreH9FlqNNcW5l0aApRLFlsFhiMTH1I=;
 b=FrvW7xGIvhjr2rr2gm5bKa4YUVLemAvLzuKmHFFwupps68sl5ohAOCDo
 nXiYyZbhviVCwW9zkoxv+YIzJj5l8Y8+U5Cn0ipmtxteysO9WnNWgGZac
 3T7HXFgK/uKu0grb+ifri9EIQj4zEZhpUu/P8VK33Vj+BQ9ZKX0WK1Kyr
 eBeAVMpiESHdLrl/55hThmSLXLA0y7Tv5ihqnAQD2xn0jGLnAeXfZvEFz
 e+3I7Rs9cshs2M+qlwXJZKJcDjixvh8Czi0FQushWPvZDi4pszDVcldHU
 8KZZrDekwvith5ybqxP61f9cdLiBHovfE8xYWcTADSqZNnAym+W9U6/Sx w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="365382692"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="365382692"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 08:48:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="848095307"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="848095307"
Received: from lkp-server02.sh.intel.com (HELO 36946fcf73d7) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 19 Jul 2023 08:48:57 -0700
Received: from kbuild by 36946fcf73d7 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qM9Q3-00054t-0X;
 Wed, 19 Jul 2023 15:48:51 +0000
Date: Wed, 19 Jul 2023 23:48:27 +0800
From: kernel test robot <lkp@intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <202307192336.hHukzc8N-lkp@intel.com>
References: <20230719132822.305612-5-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230719132822.305612-5-luciano.coelho@intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/tc: remove "fia" from
 intel_tc_port_fia_max_lane_count()
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
Cc: oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Luca,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Luca-Coelho/drm-i915-tc-rename-mtl_tc_port_get_pin_assignment_mask/20230719-213204
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230719132822.305612-5-luciano.coelho%40intel.com
patch subject: [Intel-gfx] [PATCH 4/4] drm/i915/tc: remove "fia" from intel_tc_port_fia_max_lane_count()
config: x86_64-defconfig (https://download.01.org/0day-ci/archive/20230719/202307192336.hHukzc8N-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce: (https://download.01.org/0day-ci/archive/20230719/202307192336.hHukzc8N-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202307192336.hHukzc8N-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/gpu/drm/i915/display/intel_cx0_phy.c: In function 'intel_cx0_phy_lane_reset':
>> drivers/gpu/drm/i915/display/intel_cx0_phy.c:2537:28: error: implicit declaration of function 'intel_tc_port_fia_max_lane_count'; did you mean 'intel_tc_port_max_lane_count'? [-Werror=implicit-function-declaration]
    2537 |         bool both_lanes =  intel_tc_port_fia_max_lane_count(enc_to_dig_port(encoder)) > 2;
         |                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
         |                            intel_tc_port_max_lane_count
   cc1: all warnings being treated as errors


vim +2537 drivers/gpu/drm/i915/display/intel_cx0_phy.c

51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2530  
619a06dba6fa38 Mika Kahola          2023-06-01  2531  static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915,
619a06dba6fa38 Mika Kahola          2023-06-01  2532  				     struct intel_encoder *encoder,
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2533  				     bool lane_reversal)
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2534  {
619a06dba6fa38 Mika Kahola          2023-06-01  2535  	enum port port = encoder->port;
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2536  	enum phy phy = intel_port_to_phy(i915, port);
619a06dba6fa38 Mika Kahola          2023-06-01 @2537  	bool both_lanes =  intel_tc_port_fia_max_lane_count(enc_to_dig_port(encoder)) > 2;
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2538  	u8 lane_mask = lane_reversal ? INTEL_CX0_LANE1 :
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2539  				  INTEL_CX0_LANE0;
619a06dba6fa38 Mika Kahola          2023-06-01  2540  	u32 lane_pipe_reset = both_lanes ?
619a06dba6fa38 Mika Kahola          2023-06-01  2541  			      XELPDP_LANE_PIPE_RESET(0) |
619a06dba6fa38 Mika Kahola          2023-06-01  2542  			      XELPDP_LANE_PIPE_RESET(1) :
619a06dba6fa38 Mika Kahola          2023-06-01  2543  			      XELPDP_LANE_PIPE_RESET(0);
619a06dba6fa38 Mika Kahola          2023-06-01  2544  	u32 lane_phy_current_status = both_lanes ?
619a06dba6fa38 Mika Kahola          2023-06-01  2545  				      XELPDP_LANE_PHY_CURRENT_STATUS(0) |
619a06dba6fa38 Mika Kahola          2023-06-01  2546  				      XELPDP_LANE_PHY_CURRENT_STATUS(1) :
619a06dba6fa38 Mika Kahola          2023-06-01  2547  				      XELPDP_LANE_PHY_CURRENT_STATUS(0);
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2548  
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2549  	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL1(port),
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2550  					 XELPDP_PORT_BUF_SOC_PHY_READY,
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2551  					 XELPDP_PORT_BUF_SOC_PHY_READY,
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2552  					 XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US, 0, NULL))
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2553  		drm_warn(&i915->drm, "PHY %c failed to bring out of SOC reset after %dus.\n",
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2554  			 phy_name(phy), XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US);
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2555  
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2556  	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2557  		     XELPDP_LANE_PIPE_RESET(0) | XELPDP_LANE_PIPE_RESET(1),
619a06dba6fa38 Mika Kahola          2023-06-01  2558  		     lane_pipe_reset);
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2559  
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2560  	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(port),
619a06dba6fa38 Mika Kahola          2023-06-01  2561  					 lane_phy_current_status, lane_phy_current_status,
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2562  					 XELPDP_PORT_RESET_START_TIMEOUT_US, 0, NULL))
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2563  		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dus.\n",
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2564  			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2565  
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2566  	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(port),
619a06dba6fa38 Mika Kahola          2023-06-01  2567  		     intel_cx0_get_pclk_refclk_request(both_lanes ?
619a06dba6fa38 Mika Kahola          2023-06-01  2568  						       INTEL_CX0_BOTH_LANES :
619a06dba6fa38 Mika Kahola          2023-06-01  2569  						       INTEL_CX0_LANE0),
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2570  		     intel_cx0_get_pclk_refclk_request(lane_mask));
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2571  
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2572  	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(port),
619a06dba6fa38 Mika Kahola          2023-06-01  2573  					 intel_cx0_get_pclk_refclk_ack(both_lanes ?
619a06dba6fa38 Mika Kahola          2023-06-01  2574  								       INTEL_CX0_BOTH_LANES :
619a06dba6fa38 Mika Kahola          2023-06-01  2575  								       INTEL_CX0_LANE0),
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2576  					 intel_cx0_get_pclk_refclk_ack(lane_mask),
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2577  					 XELPDP_REFCLK_ENABLE_TIMEOUT_US, 0, NULL))
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2578  		drm_warn(&i915->drm, "PHY %c failed to request refclk after %dus.\n",
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2579  			 phy_name(phy), XELPDP_REFCLK_ENABLE_TIMEOUT_US);
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2580  
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2581  	intel_cx0_powerdown_change_sequence(i915, port, INTEL_CX0_BOTH_LANES,
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2582  					    CX0_P2_STATE_RESET);
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2583  	intel_cx0_setup_powerdown(i915, port);
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2584  
619a06dba6fa38 Mika Kahola          2023-06-01  2585  	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port), lane_pipe_reset, 0);
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2586  
619a06dba6fa38 Mika Kahola          2023-06-01  2587  	if (intel_de_wait_for_clear(i915, XELPDP_PORT_BUF_CTL2(port), lane_phy_current_status,
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2588  				    XELPDP_PORT_RESET_END_TIMEOUT))
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2589  		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dms.\n",
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2590  			 phy_name(phy), XELPDP_PORT_RESET_END_TIMEOUT);
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2591  }
51390cc0e00a37 Radhakrishna Sripada 2023-04-13  2592  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
