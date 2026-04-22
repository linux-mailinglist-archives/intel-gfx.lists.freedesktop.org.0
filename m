Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MNntMJ4s6GmYGQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 04:04:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0FD4413CF
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 04:04:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0D1B10E21C;
	Wed, 22 Apr 2026 02:04:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EVPCIVSo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EED510E1FF;
 Wed, 22 Apr 2026 02:04:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776823451; x=1808359451;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=owbnoBgN9t3MgD+RSb6tSpj4KLDuzRv1rAll+x/jScY=;
 b=EVPCIVSo8WSSmymP5XOHRh2oWs5MugEEtcSdl0ggXpmwrhoxqS1cr+No
 f+HT1Hj+WAoAyWYazb//Xrv6IK4M2EJ9b/7ErQgs6TMtAbuy81WOLi4Nb
 UpPMUDOPmPLVgRSUSWThyw41W3Es3He2ybnKCWjsBP4WsLPgjXmYVFPKr
 d8/ISVxKXfjsp4ntu5IH3ljf9pi3SxUV/fG9WGrxhGMTWHctGK3CkRk/1
 LIxmdv8R2B7j0ZcIXZaKPKvBQ73pv3fdq5PwUg7FmB6A91VQkKsTjKdgc
 xXs0as5A50ObV9quTdnaU+e36LKNe6z2c/gE0AY9Rn0bf+tQxlQittXHN w==;
X-CSE-ConnectionGUID: FJn3MUTpTF6Tk1w/7nuGBA==
X-CSE-MsgGUID: BYQcMprSTuGLMdyjEdoGXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11763"; a="88468953"
X-IronPort-AV: E=Sophos;i="6.23,192,1770624000"; d="scan'208";a="88468953"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2026 19:04:11 -0700
X-CSE-ConnectionGUID: JUEBHMB4SKOBR0KZMpVikA==
X-CSE-MsgGUID: 35PpWF/yRXWPrs1BFDOQkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,192,1770624000"; d="scan'208";a="270304429"
Received: from lkp-server01.sh.intel.com (HELO 7e48d0ff8e22) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 21 Apr 2026 19:04:09 -0700
Received: from kbuild by 7e48d0ff8e22 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wFMwg-000000004BY-1F5n;
 Wed, 22 Apr 2026 02:04:06 +0000
Date: Wed, 22 Apr 2026 10:03:31 +0800
From: kernel test robot <lkp@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-gfx-trybot@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 ankit.k.nautiyal@intel.com, swati2.sharma@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/dp: Ignore HPD when in DPLL enable/disable cycle
Message-ID: <202604220938.18Kkm7Pt-lkp@intel.com>
References: <20260417080118.2352283-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260417080118.2352283-1-suraj.kandpal@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 2E0FD4413CF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Suraj,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-i915/for-linux-next]
[also build test ERROR on drm-i915/for-linux-next-fixes drm-tip/drm-tip linus/master v7.0 next-20260421]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Suraj-Kandpal/drm-i915-dp-Ignore-HPD-when-in-DPLL-enable-disable-cycle/20260422-031647
base:   https://gitlab.freedesktop.org/drm/i915/kernel.git for-linux-next
patch link:    https://lore.kernel.org/r/20260417080118.2352283-1-suraj.kandpal%40intel.com
patch subject: [PATCH] drm/i915/dp: Ignore HPD when in DPLL enable/disable cycle
config: x86_64-rhel-9.4-rust (https://download.01.org/0day-ci/archive/20260422/202604220938.18Kkm7Pt-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
rustc: rustc 1.88.0 (6b00bc388 2025-06-23)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260422/202604220938.18Kkm7Pt-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202604220938.18Kkm7Pt-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_dp.c:6834:62: error: too few arguments provided to function-like macro invocation
    6834 |                 drm_dbg_kms("Ignoring HPD since DPLL is getting disabled\n");
         |                                                                            ^
   include/drm/drm_print.h:652:9: note: macro 'drm_dbg_kms' defined here
     652 | #define drm_dbg_kms(drm, fmt, ...)                                      \
         |         ^
>> drivers/gpu/drm/i915/display/intel_dp.c:6834:3: error: use of undeclared identifier 'drm_dbg_kms'
    6834 |                 drm_dbg_kms("Ignoring HPD since DPLL is getting disabled\n");
         |                 ^
   2 errors generated.


vim +6834 drivers/gpu/drm/i915/display/intel_dp.c

  6825	
  6826	enum irqreturn
  6827	intel_dp_hpd_pulse(struct intel_digital_port *dig_port, bool long_hpd)
  6828	{
  6829		struct intel_display *display = to_intel_display(dig_port);
  6830		struct intel_dp *intel_dp = &dig_port->dp;
  6831		u8 dpcd[DP_RECEIVER_CAP_SIZE];
  6832	
  6833		if (atomic_read(&dig_port->link_teardown)) {
> 6834			drm_dbg_kms("Ignoring HPD since DPLL is getting disabled\n");
  6835			return IRQ_NONE;
  6836		}
  6837	
  6838		if (dig_port->base.type == INTEL_OUTPUT_EDP &&
  6839		    (long_hpd ||
  6840		     intel_display_rpm_suspended(display) ||
  6841		     !intel_pps_have_panel_power_or_vdd(intel_dp))) {
  6842			/*
  6843			 * vdd off can generate a long/short pulse on eDP which
  6844			 * would require vdd on to handle it, and thus we
  6845			 * would end up in an endless cycle of
  6846			 * "vdd off -> long/short hpd -> vdd on -> detect -> vdd off -> ..."
  6847			 */
  6848			drm_dbg_kms(display->drm,
  6849				    "ignoring %s hpd on eDP [ENCODER:%d:%s]\n",
  6850				    long_hpd ? "long" : "short",
  6851				    dig_port->base.base.base.id,
  6852				    dig_port->base.base.name);
  6853			return IRQ_HANDLED;
  6854		}
  6855	
  6856		drm_dbg_kms(display->drm, "got hpd irq on [ENCODER:%d:%s] - %s\n",
  6857			    dig_port->base.base.base.id,
  6858			    dig_port->base.base.name,
  6859			    long_hpd ? "long" : "short");
  6860	
  6861		/*
  6862		 * TBT DP tunnels require the GFX driver to read out the DPRX caps in
  6863		 * response to long HPD pulses. The DP hotplug handler does that,
  6864		 * however the hotplug handler may be blocked by another
  6865		 * connector's/encoder's hotplug handler. Since the TBT CM may not
  6866		 * complete the DP tunnel BW request for the latter connector/encoder
  6867		 * waiting for this encoder's DPRX read, perform a dummy read here.
  6868		 */
  6869		if (long_hpd) {
  6870			intel_dp_dpcd_set_probe(intel_dp, true);
  6871	
  6872			intel_dp_read_dprx_caps(intel_dp, dpcd);
  6873	
  6874			intel_dp->reset_link_params = true;
  6875			intel_dp_invalidate_source_oui(intel_dp);
  6876	
  6877			return IRQ_NONE;
  6878		}
  6879	
  6880		if (intel_dp->is_mst) {
  6881			if (!intel_dp_check_mst_status(intel_dp))
  6882				return IRQ_NONE;
  6883		} else if (!intel_dp_short_pulse(intel_dp)) {
  6884			return IRQ_NONE;
  6885		}
  6886	
  6887		return IRQ_HANDLED;
  6888	}
  6889	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
