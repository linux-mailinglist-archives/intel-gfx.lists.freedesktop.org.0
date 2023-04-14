Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D41436E1F64
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 11:35:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9173010E0D5;
	Fri, 14 Apr 2023 09:35:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBFDB10E0D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 09:35:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681464926; x=1713000926;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=lJECwI/xn3ND7L3KX71lz22fTErWwZkFR/Ik3G/h9lc=;
 b=fimQxAgfeBLdHbu96rlR2vpUiqQmau98e4rSbEwfdOAuOFjkBr8Xme9x
 i/Jhqfie/FxJaAnLU7gsAjDUN3P/vXJyMyM1NriK5KUtswQ3V1YZ24hst
 nCtTTeShnC95NvL1YD5k3GH6YRlU/lgKJNqj6T5CBYzzo4qaSJ+c3Uamc
 my79zMUHHBRZfBBU8IgvXPUxS8w+/bB8mELBJalHxjHbnbh16l8vbIhg6
 s72Wvn3ed7LOg9xcvvwB8j4/TPI+XM9IeUcrjCmDFO/FMO74napXEDeR4
 nAIT1KQp6/BMWL8dP+WcHvbcRZX3A5FAWFL1ESDa3m7wG792HlkRTsMHQ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="409625824"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="409625824"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:35:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="759055966"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="759055966"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 14 Apr 2023 02:35:24 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pnFpz-000ZP5-1w;
 Fri, 14 Apr 2023 09:35:23 +0000
Date: Fri, 14 Apr 2023 17:35:04 +0800
From: kernel test robot <lkp@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>,
	intel-gfx@lists.freedesktop.org
Message-ID: <202304141732.MFJIclz0-lkp@intel.com>
References: <20230414072345.1041605-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230414072345.1041605-1-suraj.kandpal@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: PCH display HPD IRQ is
 not detected with default filter value
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

Hi Suraj,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Suraj-Kandpal/drm-i915-display-PCH-display-HPD-IRQ-is-not-detected-with-default-filter-value/20230414-152733
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230414072345.1041605-1-suraj.kandpal%40intel.com
patch subject: [Intel-gfx] [PATCH] drm/i915/display: PCH display HPD IRQ is not detected with default filter value
config: x86_64-randconfig-a016-20230410 (https://download.01.org/0day-ci/archive/20230414/202304141732.MFJIclz0-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-8) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/bf0d69db2e4066bb221d69355d2a1b27cb3a0f57
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Suraj-Kandpal/drm-i915-display-PCH-display-HPD-IRQ-is-not-detected-with-default-filter-value/20230414-152733
        git checkout bf0d69db2e4066bb221d69355d2a1b27cb3a0f57
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=x86_64 olddefconfig
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202304141732.MFJIclz0-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/gpu/drm/i915/display/intel_dp.c: In function 'intel_dp_detect':
>> drivers/gpu/drm/i915/display/intel_dp.c:4856:30: error: 'PANEL_POWER_ON' undeclared (first use in this function); did you mean 'MIPI_SEQ_POWER_ON'?
    4856 |                         pp = PANEL_POWER_ON;
         |                              ^~~~~~~~~~~~~~
         |                              MIPI_SEQ_POWER_ON
   drivers/gpu/drm/i915/display/intel_dp.c:4856:30: note: each undeclared identifier is reported only once for each function it appears in
   In file included from drivers/gpu/drm/i915/display/g4x_dp.h:11,
                    from drivers/gpu/drm/i915/display/intel_dp.c:46:
>> drivers/gpu/drm/i915/display/intel_dp.c:4860:46: error: 'PCH_PPS_BASE' undeclared (first use in this function); did you mean 'PCI_IO_BASE'?
    4860 |                 intel_de_rmw(dev_priv, _MMIO(PCH_PPS_BASE + 4), 1, pp);
         |                                              ^~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:162:47: note: in definition of macro '_MMIO'
     162 | #define _MMIO(r) ((const i915_reg_t){ .reg = (r) })
         |                                               ^


vim +4856 drivers/gpu/drm/i915/display/intel_dp.c

  4732	
  4733	static int
  4734	intel_dp_detect(struct drm_connector *connector,
  4735			struct drm_modeset_acquire_ctx *ctx,
  4736			bool force)
  4737	{
  4738		struct drm_i915_private *dev_priv = to_i915(connector->dev);
  4739		struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
  4740		struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
  4741		struct intel_encoder *encoder = &dig_port->base;
  4742		enum drm_connector_status status;
  4743		int32_t pp;
  4744	
  4745		drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
  4746			    connector->base.id, connector->name);
  4747		drm_WARN_ON(&dev_priv->drm,
  4748			    !drm_modeset_is_locked(&dev_priv->drm.mode_config.connection_mutex));
  4749	
  4750		if (!INTEL_DISPLAY_ENABLED(dev_priv))
  4751			return connector_status_disconnected;
  4752	
  4753		/* Can't disconnect eDP */
  4754		if (intel_dp_is_edp(intel_dp))
  4755			status = edp_detect(intel_dp);
  4756		else if (intel_digital_port_connected(encoder))
  4757			status = intel_dp_detect_dpcd(intel_dp);
  4758		else
  4759			status = connector_status_disconnected;
  4760	
  4761		if (status == connector_status_disconnected) {
  4762			memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
  4763			memset(intel_dp->dsc_dpcd, 0, sizeof(intel_dp->dsc_dpcd));
  4764	
  4765			if (intel_dp->is_mst) {
  4766				drm_dbg_kms(&dev_priv->drm,
  4767					    "MST device may have disappeared %d vs %d\n",
  4768					    intel_dp->is_mst,
  4769					    intel_dp->mst_mgr.mst_state);
  4770				intel_dp->is_mst = false;
  4771				drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
  4772								intel_dp->is_mst);
  4773			}
  4774	
  4775			goto out;
  4776		}
  4777	
  4778		/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
  4779		if (HAS_DSC(dev_priv))
  4780			intel_dp_get_dsc_sink_cap(intel_dp);
  4781	
  4782		intel_dp_configure_mst(intel_dp);
  4783	
  4784		/*
  4785		 * TODO: Reset link params when switching to MST mode, until MST
  4786		 * supports link training fallback params.
  4787		 */
  4788		if (intel_dp->reset_link_params || intel_dp->is_mst) {
  4789			intel_dp_reset_max_link_params(intel_dp);
  4790			intel_dp->reset_link_params = false;
  4791		}
  4792	
  4793		intel_dp_print_rates(intel_dp);
  4794	
  4795		if (intel_dp->is_mst) {
  4796			/*
  4797			 * If we are in MST mode then this connector
  4798			 * won't appear connected or have anything
  4799			 * with EDID on it
  4800			 */
  4801			status = connector_status_disconnected;
  4802			goto out;
  4803		}
  4804	
  4805		/*
  4806		 * Some external monitors do not signal loss of link synchronization
  4807		 * with an IRQ_HPD, so force a link status check.
  4808		 */
  4809		if (!intel_dp_is_edp(intel_dp)) {
  4810			int ret;
  4811	
  4812			ret = intel_dp_retrain_link(encoder, ctx);
  4813			if (ret)
  4814				return ret;
  4815		}
  4816	
  4817		/*
  4818		 * Clearing NACK and defer counts to get their exact values
  4819		 * while reading EDID which are required by Compliance tests
  4820		 * 4.2.2.4 and 4.2.2.5
  4821		 */
  4822		intel_dp->aux.i2c_nack_count = 0;
  4823		intel_dp->aux.i2c_defer_count = 0;
  4824	
  4825		intel_dp_set_edid(intel_dp);
  4826		if (intel_dp_is_edp(intel_dp) ||
  4827		    to_intel_connector(connector)->detect_edid)
  4828			status = connector_status_connected;
  4829	
  4830		intel_dp_check_device_service_irq(intel_dp);
  4831	
  4832	out:
  4833		if (status != connector_status_connected && !intel_dp->is_mst)
  4834			intel_dp_unset_edid(intel_dp);
  4835	
  4836		/*
  4837		 * Make sure the refs for power wells enabled during detect are
  4838		 * dropped to avoid a new detect cycle triggered by HPD polling.
  4839		 */
  4840		intel_display_power_flush_work(dev_priv);
  4841	
  4842		if (!intel_dp_is_edp(intel_dp))
  4843			drm_dp_set_subconnector_property(connector,
  4844							 status,
  4845							 intel_dp->dpcd,
  4846							 intel_dp->downstream_ports);
  4847	
  4848		/*
  4849		 * WA_150879661:adls
  4850		 * Driver shall enable this WA when external display is connected
  4851		 * and remove WA when display is unplugged
  4852		 */
  4853		if (IS_ALDERLAKE_S(dev_priv)) {
  4854			if (status == connector_status_connected &&
  4855			    !dev_priv->edp_present)
> 4856				pp = PANEL_POWER_ON;
  4857			else if (status == connector_status_disconnected)
  4858				pp = 0;
  4859	
> 4860			intel_de_rmw(dev_priv, _MMIO(PCH_PPS_BASE + 4), 1, pp);
  4861		}
  4862	
  4863		return status;
  4864	}
  4865	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
