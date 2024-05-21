Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2178CA755
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 06:29:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8D8210EACB;
	Tue, 21 May 2024 04:29:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rx4Dxm9R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC3D510EACB
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 04:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716265753; x=1747801753;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=4Gy4gB/zCAviIgFdojYJ0UEStP53F1zDLN56ot96yTg=;
 b=Rx4Dxm9R0/HLao80feC48ja5ZtI8IyQUA87ZKCk87PwvUxs0OXtLf2v+
 5xGL9JpxWaeJxyF1yEJnzWaylfYxnMS+/+UXvdy8zdIOmXOXDAF62M4DW
 LTKp89GiHQKZsrnCkp8u+ZtHznY0YtdvgSeCIJO3SHGnejbgfjpewzRtP
 n6YzhXc3QH9uUFHXdl6mxgIyzzSbeOpacEy2M4SZJ1tJH0zmXB5GS/ivG
 JaETtZfH0q5/hnPkbNKE5UvIRQfj5RWRPZwnscWKDW0IYdk7PU6iJCwlt
 MxBFAZBH1caZujWYgB5T7tDaiI2xh1Xfw4awsm7zcgUq/kSvfvEwD6HbA g==;
X-CSE-ConnectionGUID: a2a153rKS0q7iOJQwOVFRA==
X-CSE-MsgGUID: hWJrPK5pSoG5tCTksCYl6g==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="23572650"
X-IronPort-AV: E=Sophos;i="6.08,176,1712646000"; d="scan'208";a="23572650"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 21:29:13 -0700
X-CSE-ConnectionGUID: q0KNfTo9SvWOP+5agI/Gfg==
X-CSE-MsgGUID: jYt4k4Z2RE2h5QlwM3Y+Ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,176,1712646000"; d="scan'208";a="37610928"
Received: from unknown (HELO 108735ec233b) ([10.239.97.151])
 by orviesa005.jf.intel.com with ESMTP; 20 May 2024 21:29:11 -0700
Received: from kbuild by 108735ec233b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1s9H7c-0005hm-2Z;
 Tue, 21 May 2024 04:29:08 +0000
Date: Tue, 21 May 2024 12:28:36 +0800
From: kernel test robot <lkp@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: Re: [PATCH 4/5] drm/i915: Compute config and mode valid changes for
 ultrajoiner
Message-ID: <202405211228.a5iQwc2H-lkp@intel.com>
References: <20240520073839.23881-5-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240520073839.23881-5-stanislav.lisovskiy@intel.com>
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

Hi Stanislav,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on drm-tip/drm-tip linus/master next-20240520]
[cannot apply to drm-intel/for-linux-next-fixes v6.9]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Stanislav-Lisovskiy/drm-i915-Rename-all-bigjoiner-to-joiner/20240520-194208
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20240520073839.23881-5-stanislav.lisovskiy%40intel.com
patch subject: [PATCH 4/5] drm/i915: Compute config and mode valid changes for ultrajoiner
config: x86_64-randconfig-103-20240521 (https://download.01.org/0day-ci/archive/20240521/202405211228.a5iQwc2H-lkp@intel.com/config)
compiler: gcc-13 (Ubuntu 13.2.0-4ubuntu3) 13.2.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202405211228.a5iQwc2H-lkp@intel.com/

cocci warnings: (new ones prefixed by >>)
>> drivers/gpu/drm/i915/display/intel_vdsc.c:813:46-47: Unneeded semicolon

vim +813 drivers/gpu/drm/i915/display/intel_vdsc.c

   783	
   784	void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
   785	{
   786		struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
   787		struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
   788		u32 dss_ctl1_val = 0;
   789		u32 dss_ctl2_val = 0;
   790		int vdsc_instances_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
   791	
   792		if (!crtc_state->dsc.compression_enable)
   793			return;
   794	
   795		intel_dsc_pps_configure(crtc_state);
   796	
   797		dss_ctl2_val |= LEFT_BRANCH_VDSC_ENABLE;
   798		if (vdsc_instances_per_pipe > 1) {
   799			dss_ctl2_val |= RIGHT_BRANCH_VDSC_ENABLE;
   800			dss_ctl1_val |= JOINER_ENABLE;
   801		}
   802	
   803		if (crtc_state->joiner_pipes) {
   804			/*
   805			 * This bit doesn't seem to follow master/slave logic or
   806			 * any other logic, so lets just add helper function to
   807			 * at least hide this hassle..
   808			 */
   809			if (intel_crtc_ultrajoiner_enable_needed(crtc_state))
   810				dss_ctl1_val |= ULTRA_JOINER_ENABLE;
   811	
   812			if (intel_crtc_is_joiner_primary_master(crtc_state))
 > 813				dss_ctl1_val |= MASTER_ULTRA_JOINER_ENABLE;;
   814	
   815			dss_ctl1_val |= BIG_JOINER_ENABLE;
   816	
   817			if (intel_crtc_is_bigjoiner_master(crtc_state))
   818				dss_ctl1_val |= MASTER_BIG_JOINER_ENABLE;
   819		}
   820		intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
   821		intel_de_write(dev_priv, dss_ctl2_reg(crtc, crtc_state->cpu_transcoder), dss_ctl2_val);
   822	}
   823	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
