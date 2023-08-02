Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A0776CD00
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Aug 2023 14:39:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A663510E0E1;
	Wed,  2 Aug 2023 12:39:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 720A410E0E1
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Aug 2023 12:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690979945; x=1722515945;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=n1m8qL3JLkVxK779dfb16Lcr8X3Rxm76d8UaFYlkENY=;
 b=fE3HI2bNrheY6rtJm66kwNTdSRaef7Zk6HZk2CXoAzVB5eCNQfnCgLON
 NZEOByrmonlOQIV5UtyT7H/XBZOwSBNaX59RAEFe9JkVv2oCRYYYwlcu6
 ookHpKWx9WKVmlGr6f7/r0Cr5qNtuu1Crd0GCcbWSEPts6VW6yJp1iwN4
 ieSM+98aIcZjjpmuGB2LLRsQuixIuh4vIlyafnVRxn9LqDUDUCkDMmbej
 8nV36xAudITej/koBy1wBx7BSxuU/nu9o06MDEyXY2wM7H7fxmzUCh+kI
 ZBN6jXSdD57H3xHwNFdN/MuUMA8LPD27k1a0ROzBQTp/OdPh3VQzGN7tU Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="359607789"
X-IronPort-AV: E=Sophos;i="6.01,249,1684825200"; d="scan'208";a="359607789"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 05:39:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="872473741"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 02 Aug 2023 05:39:05 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qRB82-0001CR-0T;
 Wed, 02 Aug 2023 12:39:02 +0000
Date: Wed, 2 Aug 2023 20:38:24 +0800
From: kernel test robot <lkp@intel.com>
To: William Tseng <william.tseng@intel.com>,
	intel-gfx@lists.freedesktop.org
Message-ID: <202308022035.wnMRWpdC-lkp@intel.com>
References: <20230802101541.10045-1-william.tseng@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230802101541.10045-1-william.tseng@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/xelpd: Calculate
 first_line_bpg_offset for DSC 1.1
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
Cc: Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>,
 William Tseng <william.tseng@intel.com>, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi William,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-intel/for-linux-next-fixes]
[also build test ERROR on linus/master v6.5-rc4 next-20230802]
[cannot apply to drm-tip/drm-tip drm-intel/for-linux-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/William-Tseng/drm-i915-xelpd-Calculate-first_line_bpg_offset-for-DSC-1-1/20230802-181626
base:   git://anongit.freedesktop.org/drm-intel for-linux-next-fixes
patch link:    https://lore.kernel.org/r/20230802101541.10045-1-william.tseng%40intel.com
patch subject: [Intel-gfx] [PATCH] drm/i915/xelpd: Calculate first_line_bpg_offset for DSC 1.1
config: x86_64-buildonly-randconfig-r002-20230731 (https://download.01.org/0day-ci/archive/20230802/202308022035.wnMRWpdC-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce: (https://download.01.org/0day-ci/archive/20230802/202308022035.wnMRWpdC-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202308022035.wnMRWpdC-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/gpu/drm/i915/display/intel_vdsc.c: In function 'calculate_rc_params':
>> drivers/gpu/drm/i915/display/intel_vdsc.c:83:25: error: 'rc' undeclared (first use in this function); did you mean 'rq'?
      83 |                         rc->first_line_bpg_offset = 12;
         |                         ^~
         |                         rq
   drivers/gpu/drm/i915/display/intel_vdsc.c:83:25: note: each undeclared identifier is reported only once for each function it appears in


vim +83 drivers/gpu/drm/i915/display/intel_vdsc.c

    54	
    55	static void
    56	calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
    57	{
    58		int bpc = vdsc_cfg->bits_per_component;
    59		int bpp = vdsc_cfg->bits_per_pixel >> 4;
    60		static const s8 ofs_und6[] = {
    61			0, -2, -2, -4, -6, -6, -8, -8, -8, -10, -10, -12, -12, -12, -12
    62		};
    63		static const s8 ofs_und8[] = {
    64			2, 0, 0, -2, -4, -6, -8, -8, -8, -10, -10, -10, -12, -12, -12
    65		};
    66		static const s8 ofs_und12[] = {
    67			2, 0, 0, -2, -4, -6, -8, -8, -8, -10, -10, -10, -12, -12, -12
    68		};
    69		static const s8 ofs_und15[] = {
    70			10, 8, 6, 4, 2, 0, -2, -4, -6, -8, -10, -10, -12, -12, -12
    71		};
    72		int qp_bpc_modifier = (bpc - 8) * 2;
    73		u32 res, buf_i, bpp_i;
    74	
    75		if (vdsc_cfg->dsc_version_minor == 2) {
    76			if (vdsc_cfg->slice_height >= 8)
    77				vdsc_cfg->first_line_bpg_offset =
    78					12 + DIV_ROUND_UP((9 * min(34, vdsc_cfg->slice_height - 8)), 100);
    79			else
    80				vdsc_cfg->first_line_bpg_offset = 2 * (vdsc_cfg->slice_height - 1);
    81		} else {
    82			if (bpp == 8)
  > 83				rc->first_line_bpg_offset = 12;
    84			else
    85				rc->first_line_bpg_offset = 15;
    86		}
    87	
    88		/* Our hw supports only 444 modes as of today */
    89		if (bpp >= 12)
    90			vdsc_cfg->initial_offset = 2048;
    91		else if (bpp >= 10)
    92			vdsc_cfg->initial_offset = 5632 - DIV_ROUND_UP(((bpp - 10) * 3584), 2);
    93		else if (bpp >= 8)
    94			vdsc_cfg->initial_offset = 6144 - DIV_ROUND_UP(((bpp - 8) * 512), 2);
    95		else
    96			vdsc_cfg->initial_offset = 6144;
    97	
    98		/* initial_xmit_delay = rc_model_size/2/compression_bpp */
    99		vdsc_cfg->initial_xmit_delay = DIV_ROUND_UP(DSC_RC_MODEL_SIZE_CONST, 2 * bpp);
   100	
   101		vdsc_cfg->flatness_min_qp = 3 + qp_bpc_modifier;
   102		vdsc_cfg->flatness_max_qp = 12 + qp_bpc_modifier;
   103	
   104		vdsc_cfg->rc_quant_incr_limit0 = 11 + qp_bpc_modifier;
   105		vdsc_cfg->rc_quant_incr_limit1 = 11 + qp_bpc_modifier;
   106	
   107		bpp_i  = (2 * (bpp - 6));
   108		for (buf_i = 0; buf_i < DSC_NUM_BUF_RANGES; buf_i++) {
   109			u8 range_bpg_offset;
   110	
   111			/* Read range_minqp and range_max_qp from qp tables */
   112			vdsc_cfg->rc_range_params[buf_i].range_min_qp =
   113				intel_lookup_range_min_qp(bpc, buf_i, bpp_i, vdsc_cfg->native_420);
   114			vdsc_cfg->rc_range_params[buf_i].range_max_qp =
   115				intel_lookup_range_max_qp(bpc, buf_i, bpp_i, vdsc_cfg->native_420);
   116	
   117			/* Calculate range_bpg_offset */
   118			if (bpp <= 6) {
   119				range_bpg_offset = ofs_und6[buf_i];
   120			} else if (bpp <= 8) {
   121				res = DIV_ROUND_UP(((bpp - 6) * (ofs_und8[buf_i] - ofs_und6[buf_i])), 2);
   122				range_bpg_offset = ofs_und6[buf_i] + res;
   123			} else if (bpp <= 12) {
   124				range_bpg_offset = ofs_und8[buf_i];
   125			} else if (bpp <= 15) {
   126				res = DIV_ROUND_UP(((bpp - 12) * (ofs_und15[buf_i] - ofs_und12[buf_i])), 3);
   127				range_bpg_offset = ofs_und12[buf_i] + res;
   128			} else {
   129				range_bpg_offset = ofs_und15[buf_i];
   130			}
   131	
   132			vdsc_cfg->rc_range_params[buf_i].range_bpg_offset =
   133				range_bpg_offset & DSC_RANGE_BPG_OFFSET_MASK;
   134		}
   135	}
   136	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
