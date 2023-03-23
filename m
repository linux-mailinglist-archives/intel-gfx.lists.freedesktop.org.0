Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F746C6E22
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 17:51:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CC6E10EADC;
	Thu, 23 Mar 2023 16:51:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9003F10EADC
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 16:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679590297; x=1711126297;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=gol4GFX54FO4WNeKu+XTxoaVCDKBpq4J47Q+uJRsF4M=;
 b=Ak641kH+u9BYtoXxcuaeAScBPo6n9y7L5Y2p9YCvb/oZu0uYPnwj9uCr
 URLhWkroNidOlY4LvP7FIFiUk2dSfvgdAfp5JRSC1jQWzA7R0APZBst7M
 fiTle+cYmnDjRJsurei13GSUDdCk4XA+VQABxUIjKRHG/vkc3hIz73V42
 dseW+ce0FS6jflemY6+Vh6u1KvvWnG7vgIN3Ov2Uh3PJ6oNxCuaukucGx
 eDH44aIINGvkeFvgf7XYQ4/2bG571BY+341yjHo+YEwq4YHAZ6fy+BEnX
 eFzt9R25twEPhG3lf2AB9n0ERPDQFIJ43jtTd4Hr45gqtqlrnF5eVfdYq A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="339588635"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="339588635"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 09:51:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="682374288"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="682374288"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 23 Mar 2023 09:51:35 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pfOA2-000EY4-2l;
 Thu, 23 Mar 2023 16:51:34 +0000
Date: Fri, 24 Mar 2023 00:50:45 +0800
From: kernel test robot <lkp@intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <202303240020.UQr6flaJ-lkp@intel.com>
References: <20230323142035.1432621-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230323142035.1432621-2-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 01/29] drm/i915/tc: Group the TC PHY
 setup/query functions per platform
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

Hi Imre,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Imre-Deak/drm-i915-tc-Group-the-TC-PHY-setup-query-functions-per-platform/20230323-222328
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230323142035.1432621-2-imre.deak%40intel.com
patch subject: [Intel-gfx] [PATCH 01/29] drm/i915/tc: Group the TC PHY setup/query functions per platform
config: i386-randconfig-a004 (https://download.01.org/0day-ci/archive/20230324/202303240020.UQr6flaJ-lkp@intel.com/config)
compiler: clang version 14.0.6 (https://github.com/llvm/llvm-project f28c006a5895fc0e329fe15fead81e37457cb1d1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/7b85ed1627f7c16b7ff080b604d35d729c70313f
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Imre-Deak/drm-i915-tc-Group-the-TC-PHY-setup-query-functions-per-platform/20230323-222328
        git checkout 7b85ed1627f7c16b7ff080b604d35d729c70313f
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303240020.UQr6flaJ-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_tc.c:264: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * ICL TC PHY handlers
   drivers/gpu/drm/i915/display/intel_tc.c:457: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * ADLP TC PHY handlers
   drivers/gpu/drm/i915/display/intel_tc.c:535: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * Generic TC PHY handlers
   drivers/gpu/drm/i915/display/intel_tc.c:1026: warning: Function parameter or member 'work' not described in 'intel_tc_port_disconnect_phy_work'
   drivers/gpu/drm/i915/display/intel_tc.c:1026: warning: Excess function parameter 'dig_port' description in 'intel_tc_port_disconnect_phy_work'


vim +264 drivers/gpu/drm/i915/display/intel_tc.c

   262	
   263	/**
 > 264	 * ICL TC PHY handlers
   265	 * -------------------
   266	 */
   267	static u32 icl_tc_port_live_status_mask(struct intel_digital_port *dig_port)
   268	{
   269		struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
   270		u32 isr_bit = i915->display.hotplug.pch_hpd[dig_port->base.hpd_pin];
   271		u32 mask = 0;
   272		u32 val;
   273	
   274		val = intel_de_read(i915, PORT_TX_DFLEXDPSP(dig_port->tc_phy_fia));
   275	
   276		if (val == 0xffffffff) {
   277			drm_dbg_kms(&i915->drm,
   278				    "Port %s: PHY in TCCOLD, nothing connected\n",
   279				    dig_port->tc_port_name);
   280			return mask;
   281		}
   282	
   283		if (val & TC_LIVE_STATE_TBT(dig_port->tc_phy_fia_idx))
   284			mask |= BIT(TC_PORT_TBT_ALT);
   285		if (val & TC_LIVE_STATE_TC(dig_port->tc_phy_fia_idx))
   286			mask |= BIT(TC_PORT_DP_ALT);
   287	
   288		if (intel_de_read(i915, SDEISR) & isr_bit)
   289			mask |= BIT(TC_PORT_LEGACY);
   290	
   291		/* The sink can be connected only in a single mode. */
   292		if (!drm_WARN_ON_ONCE(&i915->drm, hweight32(mask) > 1))
   293			tc_port_fixup_legacy_flag(dig_port, mask);
   294	
   295		return mask;
   296	}
   297	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
