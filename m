Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0CF73557E
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jun 2023 13:08:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BB1B10E1E8;
	Mon, 19 Jun 2023 11:08:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31F1A10E1E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jun 2023 11:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687172929; x=1718708929;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=okOfQ7TFH07LUWTKYohGJ++SAtc5N9Pev0k4SpJIIiE=;
 b=G6ivkKUVTTjmPEj4foxly0+KyvfD2wx/YFiXm+SCrt/lt+ScJpfO8flk
 Hx+QHRiYZGBblfAH3eAyrntnJEURPeB/KA34vvixIhtlxZicswwWPfvTq
 mQ5ZLiRzJXoPUX/EsysjF34i6rWd/lQouceeglvQtNE8GjupN3v231rCz
 GNfj8JbyYm1yLTpNU4+JRrHMv5pGnR5B5cxbWUGTU/OOYapIcGRsmq61p
 5BwdCqO8jH6ak6gS5ZRdZasdqr7AMZsflqy+xlJt0MDp7fSR2NoYVYqc0
 tcdWrp6uQazEgOpLs9C1IZ+g1sYR+b8Sj88IXK7XDJG9e031HXi4PtYUQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="339943456"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="339943456"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 04:08:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="707862448"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="707862448"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 19 Jun 2023 04:08:24 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qBCkB-0004ep-3D;
 Mon, 19 Jun 2023 11:08:24 +0000
Date: Mon, 19 Jun 2023 19:08:09 +0800
From: kernel test robot <lkp@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>,
	intel-gfx@lists.freedesktop.org
Message-ID: <202306191845.yMTzbDgG-lkp@intel.com>
References: <20230619082715.922094-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230619082715.922094-1-arun.r.murthy@intel.com>
Subject: Re: [Intel-gfx] [PATCHv4] drm/i915/display/dp: On AUX xfer timeout
 restart freshly
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
Cc: jani.nikula@intel.com, llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Arun,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Arun-R-Murthy/drm-i915-display-dp-On-AUX-xfer-timeout-restart-freshly/20230619-163622
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230619082715.922094-1-arun.r.murthy%40intel.com
patch subject: [Intel-gfx] [PATCHv4] drm/i915/display/dp: On AUX xfer timeout restart freshly
config: x86_64-rhel-8.3-rust (https://download.01.org/0day-ci/archive/20230619/202306191845.yMTzbDgG-lkp@intel.com/config)
compiler: clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)
reproduce: (https://download.01.org/0day-ci/archive/20230619/202306191845.yMTzbDgG-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202306191845.yMTzbDgG-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_dp_aux.c:284:12: warning: variable 'aux_clock_divider' is uninitialized when used here [-Wuninitialized]
                                                 aux_clock_divider);
                                                 ^~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_dp_aux.c:222:23: note: initialize the variable 'aux_clock_divider' to silence this warning
           u32 aux_clock_divider;
                                ^
                                 = 0
   1 warning generated.


vim +/aux_clock_divider +284 drivers/gpu/drm/i915/display/intel_dp_aux.c

   209	
   210	static int
   211	intel_dp_aux_xfer(struct intel_dp *intel_dp,
   212			  const u8 *send, int send_bytes,
   213			  u8 *recv, int recv_size,
   214			  u32 aux_send_ctl_flags)
   215	{
   216		struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
   217		struct drm_i915_private *i915 =
   218				to_i915(dig_port->base.base.dev);
   219		enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
   220		bool is_tc_port = intel_phy_is_tc(i915, phy);
   221		i915_reg_t ch_ctl, ch_data[5];
   222		u32 aux_clock_divider;
   223		enum intel_display_power_domain aux_domain;
   224		intel_wakeref_t aux_wakeref;
   225		intel_wakeref_t pps_wakeref;
   226		int i, ret, recv_bytes;
   227		int try, clock = 0;
   228		u32 status;
   229		u32 send_ctl;
   230		bool vdd;
   231	
   232		ch_ctl = intel_dp->aux_ch_ctl_reg(intel_dp);
   233		for (i = 0; i < ARRAY_SIZE(ch_data); i++)
   234			ch_data[i] = intel_dp->aux_ch_data_reg(intel_dp, i);
   235	
   236		if (is_tc_port) {
   237			intel_tc_port_lock(dig_port);
   238			/*
   239			 * Abort transfers on a disconnected port as required by
   240			 * DP 1.4a link CTS 4.2.1.5, also avoiding the long AUX
   241			 * timeouts that would otherwise happen.
   242			 * TODO: abort the transfer on non-TC ports as well.
   243			 */
   244			if (!intel_tc_port_connected_locked(&dig_port->base)) {
   245				ret = -ENXIO;
   246				goto out_unlock;
   247			}
   248		}
   249	
   250		aux_domain = intel_aux_power_domain(dig_port);
   251	
   252		aux_wakeref = intel_display_power_get(i915, aux_domain);
   253		pps_wakeref = intel_pps_lock(intel_dp);
   254	
   255		/*
   256		 * We will be called with VDD already enabled for dpcd/edid/oui reads.
   257		 * In such cases we want to leave VDD enabled and it's up to upper layers
   258		 * to turn it off. But for eg. i2c-dev access we need to turn it on/off
   259		 * ourselves.
   260		 */
   261		vdd = intel_pps_vdd_on_unlocked(intel_dp);
   262	
   263		/*
   264		 * dp aux is extremely sensitive to irq latency, hence request the
   265		 * lowest possible wakeup latency and so prevent the cpu from going into
   266		 * deep sleep states.
   267		 */
   268		cpu_latency_qos_update_request(&intel_dp->pm_qos, 0);
   269	
   270		intel_pps_check_power_unlocked(intel_dp);
   271	
   272		/*
   273		 * FIXME PSR should be disabled here to prevent
   274		 * it using the same AUX CH simultaneously
   275		 */
   276	
   277		/* Only 5 data registers! */
   278		if (drm_WARN_ON(&i915->drm, send_bytes > 20 || recv_size > 20)) {
   279			ret = -E2BIG;
   280			goto out;
   281		}
   282		send_ctl = intel_dp->get_aux_send_ctl(intel_dp,
   283						      send_bytes,
 > 284						      aux_clock_divider);
   285		send_ctl |= aux_send_ctl_flags;
   286	
   287		while ((aux_clock_divider = intel_dp->get_aux_clock_divider(intel_dp, clock++))) {
   288			/* Re-visit : Must try at least 3 times according to DP spec */
   289			for (try = 0; try < 5; try++) {
   290				/* Try to wait for any previous AUX channel activity */
   291				status = intel_dp_aux_wait_done(intel_dp);
   292				/* just trace the final value */
   293				trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
   294	
   295				if (status & DP_AUX_CH_CTL_SEND_BUSY) {
   296					drm_WARN(&i915->drm, 1,
   297						 "%s: not started, previous Tx still in process (status 0x%08x)\n",
   298						 intel_dp->aux.name, status);
   299					intel_dp->aux_busy_last_status = status;
   300					if (try > 3) {
   301						ret = -EBUSY;
   302						goto out;
   303					} else
   304						continue;
   305				}
   306	
   307				/* Load the send data into the aux channel data registers */
   308				for (i = 0; i < send_bytes; i += 4)
   309					intel_de_write(i915, ch_data[i >> 2],
   310						       intel_dp_aux_pack(send + i,
   311									 send_bytes - i));
   312	
   313				/* Send the command and wait for it to complete */
   314				intel_de_write(i915, ch_ctl, send_ctl);
   315	
   316				/* TODO: if typeC then 4.2ms else 800us. For DG2 add 1.5ms for both cases */
   317				status = intel_dp_aux_wait_done(intel_dp);
   318	
   319				/* Clear done status and any errors */
   320				intel_de_write(i915, ch_ctl,
   321					       status | DP_AUX_CH_CTL_DONE |
   322					       DP_AUX_CH_CTL_TIME_OUT_ERROR |
   323					       DP_AUX_CH_CTL_RECEIVE_ERROR);
   324	
   325				/*
   326				 * DP CTS 1.2 Core Rev 1.1, 4.2.1.1 & 4.2.1.2
   327				 *   400us delay required for errors and timeouts
   328				 *   Timeout errors from the HW already meet this
   329				 *   requirement so skip to next iteration
   330				 */
   331				if (status & (DP_AUX_CH_CTL_TIME_OUT_ERROR |
   332							DP_AUX_CH_CTL_SEND_BUSY))
   333					continue;
   334	
   335				if (status & DP_AUX_CH_CTL_RECEIVE_ERROR) {
   336					usleep_range(400, 500);
   337					continue;
   338				}
   339				if (status & DP_AUX_CH_CTL_DONE)
   340					goto done;
   341			}
   342		}
   343	
   344		if ((status & DP_AUX_CH_CTL_DONE) == 0) {
   345			drm_err(&i915->drm, "%s: not done (status 0x%08x)\n",
   346				intel_dp->aux.name, status);
   347			ret = -EBUSY;
   348			goto out;
   349		}
   350	
   351	done:
   352		/*
   353		 * Check for timeout or receive error. Timeouts occur when the sink is
   354		 * not connected.
   355		 */
   356		if (status & DP_AUX_CH_CTL_RECEIVE_ERROR) {
   357			drm_err(&i915->drm, "%s: receive error (status 0x%08x)\n",
   358				intel_dp->aux.name, status);
   359			ret = -EIO;
   360			goto out;
   361		}
   362	
   363		/*
   364		 * Timeouts occur when the device isn't connected, so they're "normal"
   365		 * -- don't fill the kernel log with these
   366		 */
   367		if (status & DP_AUX_CH_CTL_TIME_OUT_ERROR) {
   368			drm_dbg_kms(&i915->drm, "%s: timeout (status 0x%08x)\n",
   369				    intel_dp->aux.name, status);
   370			ret = -ETIMEDOUT;
   371			goto out;
   372		}
   373	
   374		/* Unload any bytes sent back from the other side */
   375		recv_bytes = REG_FIELD_GET(DP_AUX_CH_CTL_MESSAGE_SIZE_MASK, status);
   376	
   377		/*
   378		 * By BSpec: "Message sizes of 0 or >20 are not allowed."
   379		 * We have no idea of what happened so we return -EBUSY so
   380		 * drm layer takes care for the necessary retries.
   381		 */
   382		if (recv_bytes == 0 || recv_bytes > 20) {
   383			drm_dbg_kms(&i915->drm,
   384				    "%s: Forbidden recv_bytes = %d on aux transaction\n",
   385				    intel_dp->aux.name, recv_bytes);
   386			ret = -EBUSY;
   387			goto out;
   388		}
   389	
   390		if (recv_bytes > recv_size)
   391			recv_bytes = recv_size;
   392	
   393		for (i = 0; i < recv_bytes; i += 4)
   394			intel_dp_aux_unpack(intel_de_read(i915, ch_data[i >> 2]),
   395					    recv + i, recv_bytes - i);
   396	
   397		ret = recv_bytes;
   398	out:
   399		cpu_latency_qos_update_request(&intel_dp->pm_qos, PM_QOS_DEFAULT_VALUE);
   400	
   401		if (vdd)
   402			intel_pps_vdd_off_unlocked(intel_dp, false);
   403	
   404		intel_pps_unlock(intel_dp, pps_wakeref);
   405		intel_display_power_put_async(i915, aux_domain, aux_wakeref);
   406	out_unlock:
   407		if (is_tc_port)
   408			intel_tc_port_unlock(dig_port);
   409	
   410		return ret;
   411	}
   412	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
