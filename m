Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F90BA4340E
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 05:12:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 123AF10E107;
	Tue, 25 Feb 2025 04:12:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q4maLxxz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74B6810E107;
 Tue, 25 Feb 2025 04:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740456727; x=1771992727;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ZLzY6jJR2iW/mvCTxDia2AzxDqhnLWyHGRSliULurtE=;
 b=Q4maLxxzPiSg9l2My1JFtrBZTh9eQK5ACFvhSIssuSj/+aUIB8LBWLzY
 jkMzBfjYlk8qilONylq+6OPotbCvf/iFO0qRRPjOzyi2crR92kaXrDrUh
 IXB9gyz1kfrkCIajIztbReDvwPebN0IPg+xG3C9c07ggQCOg5Ux3aN3p8
 ShKNIogmnyRKwhKiew6wmFK47HkGfkxV56s5BaDdliUDQXboARoivuLXN
 Jbz1ON6q/ljzht/h1BSxD8y82IY8ZwwlY9umzsWw8PiS+1FM//aWd2qwQ
 6Th6HJlVskYZSqb5P1Hqsux4meNsFoi7llZdgaPIDyfnv7MrE87wXjvTj Q==;
X-CSE-ConnectionGUID: NsO+ls9cSTGL0ZF4W/E5Pw==
X-CSE-MsgGUID: Mv905X1oS+CxNbnMR9IKCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="40433087"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="40433087"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 20:12:05 -0800
X-CSE-ConnectionGUID: 9lDMY4qPRUaeUr+LEabMHQ==
X-CSE-MsgGUID: EtsmMYQxQ36HGWg0quwJrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121512863"
Received: from lkp-server02.sh.intel.com (HELO 76cde6cc1f07) ([10.239.97.151])
 by orviesa005.jf.intel.com with ESMTP; 24 Feb 2025 20:12:04 -0800
Received: from kbuild by 76cde6cc1f07 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tmmIB-0009jj-1D;
 Tue, 25 Feb 2025 04:11:58 +0000
Date: Tue, 25 Feb 2025 12:09:36 +0800
From: kernel test robot <lkp@intel.com>
To: Animesh Manna <animesh.manna@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev, jouni.hogander@intel.com,
 jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: Re: [PATCH v4 4/8] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Message-ID: <202502251108.hxPBVdqV-lkp@intel.com>
References: <20250224080847.326350-5-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250224080847.326350-5-animesh.manna@intel.com>
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

Hi Animesh,

kernel test robot noticed the following build warnings:

[auto build test WARNING on v6.14-rc4]
[also build test WARNING on linus/master next-20250224]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Animesh-Manna/drm-i915-lobf-Add-lobf-enablement-in-post-plane-update/20250224-221647
base:   v6.14-rc4
patch link:    https://lore.kernel.org/r/20250224080847.326350-5-animesh.manna%40intel.com
patch subject: [PATCH v4 4/8] drm/i915/lobf: Update lobf if any change in dependent parameters
compiler: clang version 19.1.7 (https://github.com/llvm/llvm-project cd708029e0b2869e80abe31ddb175f7c35361f90)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202502251108.hxPBVdqV-lkp@intel.com/

includecheck warnings: (new ones prefixed by >>)
>> drivers/gpu/drm/i915/display/intel_ddi.c: intel_alpm.h is included more than once.

vim +38 drivers/gpu/drm/i915/display/intel_ddi.c

    34	
    35	#include "i915_drv.h"
    36	#include "i915_reg.h"
    37	#include "icl_dsi.h"
  > 38	#include "intel_alpm.h"
    39	#include "intel_audio.h"
  > 40	#include "intel_alpm.h"
    41	#include "intel_audio_regs.h"
    42	#include "intel_backlight.h"
    43	#include "intel_combo_phy.h"
    44	#include "intel_combo_phy_regs.h"
    45	#include "intel_connector.h"
    46	#include "intel_crtc.h"
    47	#include "intel_cx0_phy.h"
    48	#include "intel_cx0_phy_regs.h"
    49	#include "intel_ddi.h"
    50	#include "intel_ddi_buf_trans.h"
    51	#include "intel_de.h"
    52	#include "intel_display_power.h"
    53	#include "intel_display_types.h"
    54	#include "intel_dkl_phy.h"
    55	#include "intel_dkl_phy_regs.h"
    56	#include "intel_dp.h"
    57	#include "intel_dp_aux.h"
    58	#include "intel_dp_link_training.h"
    59	#include "intel_dp_mst.h"
    60	#include "intel_dp_test.h"
    61	#include "intel_dp_tunnel.h"
    62	#include "intel_dpio_phy.h"
    63	#include "intel_dsi.h"
    64	#include "intel_encoder.h"
    65	#include "intel_fdi.h"
    66	#include "intel_fifo_underrun.h"
    67	#include "intel_gmbus.h"
    68	#include "intel_hdcp.h"
    69	#include "intel_hdmi.h"
    70	#include "intel_hotplug.h"
    71	#include "intel_hti.h"
    72	#include "intel_lspcon.h"
    73	#include "intel_mg_phy_regs.h"
    74	#include "intel_modeset_lock.h"
    75	#include "intel_pps.h"
    76	#include "intel_psr.h"
    77	#include "intel_quirks.h"
    78	#include "intel_snps_phy.h"
    79	#include "intel_tc.h"
    80	#include "intel_vdsc.h"
    81	#include "intel_vdsc_regs.h"
    82	#include "skl_scaler.h"
    83	#include "skl_universal_plane.h"
    84	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
