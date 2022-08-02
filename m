Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4C45874BF
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 02:14:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E972E10E6C1;
	Tue,  2 Aug 2022 00:14:07 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D27F10E6DD
 for <Intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 00:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659399238; x=1690935238;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=vvBab0Z5kHavEUq0C/9ef5wfpWlL4kx3sJXElCyGUVI=;
 b=LQBAItap8PKo9m/DltxaKpV2hC51JXzu6fQWG+EWaqKL9946hCAeI/32
 rlZvAHK+iw/1gDbqiZ/JcfyrxJioQPLk6EvGTnhB6zgl9zLdNh2czgObR
 B7LBlb8v/nnOx+mKjDxYYW65OzZXHe3IWE6mrSQPi5w0OpFIfQx0KWZL2
 D1GPqnZBY4uzhP6vJPk6vp7zAtWV6+GxmAk44qKsNvU+7W+OdlURR/GLa
 rUlwI8zV019k0hg3uVVHmxZUOYrJ56Cmw0d+ot2V+c9SFT6MA8ObfVQ5Q
 Sil5IwNzDFksM7muZthOqhOzQXzsMwPclVUwvBJLb+aU/rbY47XdI5oHF g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="288037011"
X-IronPort-AV: E=Sophos;i="5.93,209,1654585200"; d="scan'208";a="288037011"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2022 17:13:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,209,1654585200"; d="scan'208";a="552711003"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 01 Aug 2022 17:13:56 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oIfXn-000FVN-37;
 Tue, 02 Aug 2022 00:13:55 +0000
Date: Tue, 2 Aug 2022 08:13:13 +0800
From: kernel test robot <lkp@intel.com>
To: "Taylor, Clinton A" <clinton.a.taylor@intel.com>,
 Intel-gfx@lists.freedesktop.org
Message-ID: <202208020808.1c3aqM8h-lkp@intel.com>
References: <20220801212200.2616054-1-clinton.a.taylor@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220801212200.2616054-1-clinton.a.taylor@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Add additional HDMI pixel
 clock frequencies
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
Cc: kbuild-all@lists.01.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Clinton,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Taylor-Clinton-A/drm-i915-dg2-Add-additional-HDMI-pixel-clock-frequencies/20220802-052426
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
config: i386-defconfig (https://download.01.org/0day-ci/archive/20220802/202208020808.1c3aqM8h-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-3) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/0f55e9fd0a3944ad3a0a17bdf7ccb64be62b433e
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Taylor-Clinton-A/drm-i915-dg2-Add-additional-HDMI-pixel-clock-frequencies/20220802-052426
        git checkout 0f55e9fd0a3944ad3a0a17bdf7ccb64be62b433e
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_snps_phy.c:1480:39: error: 'dg2_hdmi_297000' defined but not used [-Werror=unused-const-variable=]
    1480 | static const struct intel_mpllb_state dg2_hdmi_297000 = {
         |                                       ^~~~~~~~~~~~~~~
   cc1: all warnings being treated as errors


vim +/dg2_hdmi_297000 +1480 drivers/gpu/drm/i915/display/intel_snps_phy.c

  1479	
> 1480	static const struct intel_mpllb_state dg2_hdmi_297000 = {
  1481		.clock = 297000,
  1482		.ref_control =
  1483			REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
  1484		.mpllb_cp =
  1485			REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
  1486			REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
  1487			REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
  1488			REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
  1489		.mpllb_div =
  1490			REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
  1491			REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 1) |
  1492			REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
  1493			REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
  1494			REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 3),
  1495		.mpllb_div2 =
  1496			REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
  1497			REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 86) |
  1498			REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
  1499		.mpllb_fracn1 =
  1500			REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
  1501			REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
  1502			REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
  1503		.mpllb_fracn2 =
  1504			REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 26214) |
  1505			REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 26214),
  1506		.mpllb_sscen =
  1507			REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
  1508	};
  1509	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
