Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF909AF537
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 00:19:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56F1710E3D5;
	Thu, 24 Oct 2024 22:19:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="akUyJVsE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABAA510E9A5;
 Thu, 24 Oct 2024 22:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729808368; x=1761344368;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=4vqycs1OgdzaLf8uoT9otDSHh6hPgAHfJINb55O+xlI=;
 b=akUyJVsEd1jX7E5bnJGr24MUeoQhCMc5t+aZ4vRJ9fm765hgKAkMCuoT
 wiJom3UMcBRwtNCmJowmQ0YB5JFdbm2HnDCPbFJ6mUUOk+MKHpQQE/y7K
 cnaNoUbLszWCu1UmE5jYVto+3KLJkom3p1Ze3bBKA7GmmDDrl6G8Gun3C
 sEWX/sYq6yGGF8nS9VQshDsYqscFxDZW3j+RguTMTF4tCWkFMd5K7bpGd
 3Oje9xMzC47UvjXZosgv3zEX5WFcIFSqLw9tiMzTpuJbCAFDJXpO3L8TN
 55Apul4tnQmDw4jRYx3zqgDDhp97ed1tNgsUOHWGYw/DTrx4iO2YBNrqu g==;
X-CSE-ConnectionGUID: 2FRC+FZXStW4cUYG+TvyVA==
X-CSE-MsgGUID: JZ5JwEJCQGmu0h8eSf4tYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="46948438"
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="46948438"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:19:27 -0700
X-CSE-ConnectionGUID: olAcCpmtTPa6GkVEf9xdZA==
X-CSE-MsgGUID: jMbbgSQvTcWAf+3qselSmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="80836135"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 24 Oct 2024 15:19:25 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t46As-000XDW-3D;
 Thu, 24 Oct 2024 22:19:22 +0000
Date: Fri, 25 Oct 2024 06:18:47 +0800
From: kernel test robot <lkp@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com
Subject: Re: [PATCH 06/10] drm/i915/display: Add DSC pixel replication
Message-ID: <202410250632.xdHuHbQW-lkp@intel.com>
References: <20241017082348.3413727-7-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241017082348.3413727-7-ankit.k.nautiyal@intel.com>
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

Hi Ankit,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-intel/for-linux-next]
[also build test ERROR on next-20241024]
[cannot apply to drm-intel/for-linux-next-fixes drm-tip/drm-tip linus/master v6.12-rc4]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Ankit-Nautiyal/drm-i915-display-Prepare-for-dsc-3-stream-splitter/20241017-162821
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20241017082348.3413727-7-ankit.k.nautiyal%40intel.com
patch subject: [PATCH 06/10] drm/i915/display: Add DSC pixel replication
config: i386-randconfig-006-20241024 (https://download.01.org/0day-ci/archive/20241025/202410250632.xdHuHbQW-lkp@intel.com/config)
compiler: clang version 19.1.2 (https://github.com/llvm/llvm-project 7ba7d8e2f7b6445b60679da826210cdde29eaf8b)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241025/202410250632.xdHuHbQW-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202410250632.xdHuHbQW-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from drivers/gpu/drm/i915/display/intel_vdsc.c:13:
   In file included from drivers/gpu/drm/i915/i915_drv.h:40:
   In file included from drivers/gpu/drm/i915/display/intel_display_core.h:16:
   In file included from include/drm/drm_connector.h:32:
   In file included from include/drm/drm_util.h:36:
   In file included from include/linux/kgdb.h:19:
   In file included from include/linux/kprobes.h:28:
   In file included from include/linux/ftrace.h:13:
   In file included from include/linux/kallsyms.h:13:
   In file included from include/linux/mm.h:2213:
   include/linux/vmstat.h:518:36: error: arithmetic between different enumeration types ('enum node_stat_item' and 'enum lru_list') [-Werror,-Wenum-enum-conversion]
     518 |         return node_stat_name(NR_LRU_BASE + lru) + 3; // skip "nr_"
         |                               ~~~~~~~~~~~ ^ ~~~
   drivers/gpu/drm/i915/display/intel_vdsc.c:375:10: error: arithmetic between different enumeration types ('enum pipe' and 'enum intel_display_power_domain') [-Werror,-Wenum-enum-conversion]
     375 |                 return POWER_DOMAIN_PIPE(pipe);
         |                        ^~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_display_power.h:120:41: note: expanded from macro 'POWER_DOMAIN_PIPE'
     120 | #define POWER_DOMAIN_PIPE(pipe) ((pipe) + POWER_DOMAIN_PIPE_A)
         |                                  ~~~~~~ ^ ~~~~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/display/intel_vdsc.c:817:11: error: arithmetic between different enumeration types ('const enum transcoder' and 'enum pipe') [-Werror,-Wenum-enum-conversion]
     816 |                 intel_de_write(dev_priv,
         |                 ~~~~~~~~~~~~~~~~~~~~~~~~
     817 |                                BMG_PIPE_DSS_CTL3(crtc_state->cpu_transcoder), dss_ctl3_val);
         |                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_vdsc_regs.h:57:53: note: expanded from macro 'BMG_PIPE_DSS_CTL3'
      57 | #define BMG_PIPE_DSS_CTL3(pipe)                 _MMIO_PIPE((pipe) - PIPE_B, \
         |                                                                   ^ ~~~~~~
   drivers/gpu/drm/i915/display/intel_display_reg_defs.h:25:45: note: expanded from macro '_MMIO_PIPE'
      25 | #define _MMIO_PIPE(pipe, a, b)          _MMIO(_PIPE(pipe, a, b))
         |                                                     ^~~~
   drivers/gpu/drm/i915/display/intel_display_reg_defs.h:18:39: note: expanded from macro '_PIPE'
      18 | #define _PIPE(pipe, a, b)               _PICK_EVEN(pipe, a, b)
         |                                                    ^~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:213:49: note: expanded from macro '_PICK_EVEN'
     213 | #define _PICK_EVEN(__index, __a, __b) ((__a) + (__index) * ((__b) - (__a)))
         |                                                 ^~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:267:47: note: expanded from macro '_MMIO'
     267 | #define _MMIO(r) ((const i915_reg_t){ .reg = (r) })
         |                                               ^
   drivers/gpu/drm/i915/display/intel_de.h:88:71: note: expanded from macro 'intel_de_write'
      88 | #define intel_de_write(p,...) __intel_de_write(__to_intel_display(p), __VA_ARGS__)
         |                                                                       ^~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_vdsc.c:833:12: error: arithmetic between different enumeration types ('const enum transcoder' and 'enum pipe') [-Werror,-Wenum-enum-conversion]
     832 |                         intel_de_write(dev_priv,
         |                         ~~~~~~~~~~~~~~~~~~~~~~~~
     833 |                                        BMG_PIPE_DSS_CTL3(old_crtc_state->cpu_transcoder), 0);
         |                                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_vdsc_regs.h:57:53: note: expanded from macro 'BMG_PIPE_DSS_CTL3'
      57 | #define BMG_PIPE_DSS_CTL3(pipe)                 _MMIO_PIPE((pipe) - PIPE_B, \
         |                                                                   ^ ~~~~~~
   drivers/gpu/drm/i915/display/intel_display_reg_defs.h:25:45: note: expanded from macro '_MMIO_PIPE'
      25 | #define _MMIO_PIPE(pipe, a, b)          _MMIO(_PIPE(pipe, a, b))
         |                                                     ^~~~
   drivers/gpu/drm/i915/display/intel_display_reg_defs.h:18:39: note: expanded from macro '_PIPE'
      18 | #define _PIPE(pipe, a, b)               _PICK_EVEN(pipe, a, b)
         |                                                    ^~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:213:49: note: expanded from macro '_PICK_EVEN'
     213 | #define _PICK_EVEN(__index, __a, __b) ((__a) + (__index) * ((__b) - (__a)))
         |                                                 ^~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:267:47: note: expanded from macro '_MMIO'
     267 | #define _MMIO(r) ((const i915_reg_t){ .reg = (r) })
         |                                               ^
   drivers/gpu/drm/i915/display/intel_de.h:88:71: note: expanded from macro 'intel_de_write'
      88 | #define intel_de_write(p,...) __intel_de_write(__to_intel_display(p), __VA_ARGS__)
         |                                                                       ^~~~~~~~~~~
>> drivers/gpu/drm/i915/display/intel_vdsc.c:1006:38: error: arithmetic between different enumeration types ('enum transcoder' and 'enum pipe') [-Werror,-Wenum-enum-conversion]
    1006 |                 dss_ctl3 = intel_de_read(dev_priv, BMG_PIPE_DSS_CTL3(crtc_state->cpu_transcoder));
         |                            ~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_vdsc_regs.h:57:53: note: expanded from macro 'BMG_PIPE_DSS_CTL3'
      57 | #define BMG_PIPE_DSS_CTL3(pipe)                 _MMIO_PIPE((pipe) - PIPE_B, \
         |                                                                   ^ ~~~~~~
   drivers/gpu/drm/i915/display/intel_display_reg_defs.h:25:45: note: expanded from macro '_MMIO_PIPE'
      25 | #define _MMIO_PIPE(pipe, a, b)          _MMIO(_PIPE(pipe, a, b))
         |                                                     ^~~~
   drivers/gpu/drm/i915/display/intel_display_reg_defs.h:18:39: note: expanded from macro '_PIPE'
      18 | #define _PIPE(pipe, a, b)               _PICK_EVEN(pipe, a, b)
         |                                                    ^~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:213:49: note: expanded from macro '_PICK_EVEN'
     213 | #define _PICK_EVEN(__index, __a, __b) ((__a) + (__index) * ((__b) - (__a)))
         |                                                 ^~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:267:47: note: expanded from macro '_MMIO'
     267 | #define _MMIO(r) ((const i915_reg_t){ .reg = (r) })
         |                                               ^
   drivers/gpu/drm/i915/display/intel_de.h:32:69: note: expanded from macro 'intel_de_read'
      32 | #define intel_de_read(p,...) __intel_de_read(__to_intel_display(p), __VA_ARGS__)
         |                                                                     ^~~~~~~~~~~
   5 errors generated.


vim +817 drivers/gpu/drm/i915/display/intel_vdsc.c

   770	
   771	void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
   772	{
   773		struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
   774		struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
   775		u32 dss_ctl1_val = 0;
   776		u32 dss_ctl2_val = 0;
   777		u32 dss_ctl3_val = 0;
   778		int vdsc_instances_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
   779	
   780		if (!crtc_state->dsc.compression_enable)
   781			return;
   782	
   783		intel_dsc_pps_configure(crtc_state);
   784	
   785		dss_ctl2_val |= VDSC0_ENABLE;
   786		if (vdsc_instances_per_pipe > 1) {
   787			dss_ctl2_val |= VDSC1_ENABLE;
   788			dss_ctl1_val |= JOINER_ENABLE;
   789		}
   790	
   791		if (vdsc_instances_per_pipe > 2) {
   792			dss_ctl2_val |= VDSC2_ENABLE;
   793			dss_ctl2_val |= SMALL_JOINER_CONFIG_3_ENGINES;
   794		}
   795	
   796		if (crtc_state->joiner_pipes) {
   797			if (intel_crtc_ultrajoiner_enable_needed(crtc_state))
   798				dss_ctl1_val |= ULTRA_JOINER_ENABLE;
   799	
   800			if (intel_crtc_is_ultrajoiner_primary(crtc_state))
   801				dss_ctl1_val |= PRIMARY_ULTRA_JOINER_ENABLE;
   802	
   803			dss_ctl1_val |= BIG_JOINER_ENABLE;
   804	
   805			if (intel_crtc_is_bigjoiner_primary(crtc_state))
   806				dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
   807		}
   808	
   809		if (crtc_state->dsc.pixel_replication_count)
   810			dss_ctl3_val = DSC_PIXEL_REPLICATION(crtc_state->dsc.pixel_replication_count);
   811	
   812		intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
   813		intel_de_write(dev_priv, dss_ctl2_reg(crtc, crtc_state->cpu_transcoder), dss_ctl2_val);
   814	
   815		if (IS_BATTLEMAGE(dev_priv) && dss_ctl3_val)
   816			intel_de_write(dev_priv,
 > 817				       BMG_PIPE_DSS_CTL3(crtc_state->cpu_transcoder), dss_ctl3_val);
   818	}
   819	
   820	void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
   821	{
   822		struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
   823		struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
   824	
   825		/* Disable only if either of them is enabled */
   826		if (old_crtc_state->dsc.compression_enable ||
   827		    old_crtc_state->joiner_pipes) {
   828			intel_de_write(dev_priv, dss_ctl1_reg(crtc, old_crtc_state->cpu_transcoder), 0);
   829			intel_de_write(dev_priv, dss_ctl2_reg(crtc, old_crtc_state->cpu_transcoder), 0);
   830	
   831			if (IS_BATTLEMAGE(dev_priv))
   832				intel_de_write(dev_priv,
   833					       BMG_PIPE_DSS_CTL3(old_crtc_state->cpu_transcoder), 0);
   834		}
   835	}
   836	
   837	static u32 intel_dsc_pps_read(struct intel_crtc_state *crtc_state, int pps,
   838				      bool *all_equal)
   839	{
   840		struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
   841		struct drm_i915_private *i915 = to_i915(crtc->base.dev);
   842		i915_reg_t dsc_reg[3];
   843		int i, vdsc_per_pipe, dsc_reg_num;
   844		u32 val;
   845	
   846		vdsc_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
   847		dsc_reg_num = min_t(int, ARRAY_SIZE(dsc_reg), vdsc_per_pipe);
   848	
   849		drm_WARN_ON_ONCE(&i915->drm, dsc_reg_num < vdsc_per_pipe);
   850	
   851		intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, dsc_reg_num);
   852	
   853		*all_equal = true;
   854	
   855		val = intel_de_read(i915, dsc_reg[0]);
   856	
   857		for (i = 1; i < dsc_reg_num; i++) {
   858			if (intel_de_read(i915, dsc_reg[i]) != val) {
   859				*all_equal = false;
   860				break;
   861			}
   862		}
   863	
   864		return val;
   865	}
   866	
   867	static u32 intel_dsc_pps_read_and_verify(struct intel_crtc_state *crtc_state, int pps)
   868	{
   869		struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
   870		struct drm_i915_private *i915 = to_i915(crtc->base.dev);
   871		u32 val;
   872		bool all_equal;
   873	
   874		val = intel_dsc_pps_read(crtc_state, pps, &all_equal);
   875		drm_WARN_ON(&i915->drm, !all_equal);
   876	
   877		return val;
   878	}
   879	
   880	static void intel_dsc_get_pps_config(struct intel_crtc_state *crtc_state)
   881	{
   882		struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
   883		struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
   884		struct drm_i915_private *i915 = to_i915(crtc->base.dev);
   885		int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
   886		u32 pps_temp;
   887	
   888		/* PPS 0 */
   889		pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 0);
   890	
   891		vdsc_cfg->bits_per_component = REG_FIELD_GET(DSC_PPS0_BPC_MASK, pps_temp);
   892		vdsc_cfg->line_buf_depth = REG_FIELD_GET(DSC_PPS0_LINE_BUF_DEPTH_MASK, pps_temp);
   893		vdsc_cfg->block_pred_enable = pps_temp & DSC_PPS0_BLOCK_PREDICTION;
   894		vdsc_cfg->convert_rgb = pps_temp & DSC_PPS0_COLOR_SPACE_CONVERSION;
   895		vdsc_cfg->simple_422 = pps_temp & DSC_PPS0_422_ENABLE;
   896		vdsc_cfg->native_422 = pps_temp & DSC_PPS0_NATIVE_422_ENABLE;
   897		vdsc_cfg->native_420 = pps_temp & DSC_PPS0_NATIVE_420_ENABLE;
   898		vdsc_cfg->vbr_enable = pps_temp & DSC_PPS0_VBR_ENABLE;
   899	
   900		/* PPS 1 */
   901		pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 1);
   902	
   903		vdsc_cfg->bits_per_pixel = REG_FIELD_GET(DSC_PPS1_BPP_MASK, pps_temp);
   904	
   905		if (vdsc_cfg->native_420)
   906			vdsc_cfg->bits_per_pixel >>= 1;
   907	
   908		crtc_state->dsc.compressed_bpp_x16 = vdsc_cfg->bits_per_pixel;
   909	
   910		/* PPS 2 */
   911		pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 2);
   912	
   913		vdsc_cfg->pic_width = REG_FIELD_GET(DSC_PPS2_PIC_WIDTH_MASK, pps_temp) * num_vdsc_instances;
   914		vdsc_cfg->pic_height = REG_FIELD_GET(DSC_PPS2_PIC_HEIGHT_MASK, pps_temp);
   915	
   916		/* PPS 3 */
   917		pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 3);
   918	
   919		vdsc_cfg->slice_width = REG_FIELD_GET(DSC_PPS3_SLICE_WIDTH_MASK, pps_temp);
   920		vdsc_cfg->slice_height = REG_FIELD_GET(DSC_PPS3_SLICE_HEIGHT_MASK, pps_temp);
   921	
   922		/* PPS 4 */
   923		pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 4);
   924	
   925		vdsc_cfg->initial_dec_delay = REG_FIELD_GET(DSC_PPS4_INITIAL_DEC_DELAY_MASK, pps_temp);
   926		vdsc_cfg->initial_xmit_delay = REG_FIELD_GET(DSC_PPS4_INITIAL_XMIT_DELAY_MASK, pps_temp);
   927	
   928		/* PPS 5 */
   929		pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 5);
   930	
   931		vdsc_cfg->scale_decrement_interval = REG_FIELD_GET(DSC_PPS5_SCALE_DEC_INT_MASK, pps_temp);
   932		vdsc_cfg->scale_increment_interval = REG_FIELD_GET(DSC_PPS5_SCALE_INC_INT_MASK, pps_temp);
   933	
   934		/* PPS 6 */
   935		pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 6);
   936	
   937		vdsc_cfg->initial_scale_value = REG_FIELD_GET(DSC_PPS6_INITIAL_SCALE_VALUE_MASK, pps_temp);
   938		vdsc_cfg->first_line_bpg_offset = REG_FIELD_GET(DSC_PPS6_FIRST_LINE_BPG_OFFSET_MASK, pps_temp);
   939		vdsc_cfg->flatness_min_qp = REG_FIELD_GET(DSC_PPS6_FLATNESS_MIN_QP_MASK, pps_temp);
   940		vdsc_cfg->flatness_max_qp = REG_FIELD_GET(DSC_PPS6_FLATNESS_MAX_QP_MASK, pps_temp);
   941	
   942		/* PPS 7 */
   943		pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 7);
   944	
   945		vdsc_cfg->nfl_bpg_offset = REG_FIELD_GET(DSC_PPS7_NFL_BPG_OFFSET_MASK, pps_temp);
   946		vdsc_cfg->slice_bpg_offset = REG_FIELD_GET(DSC_PPS7_SLICE_BPG_OFFSET_MASK, pps_temp);
   947	
   948		/* PPS 8 */
   949		pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 8);
   950	
   951		vdsc_cfg->initial_offset = REG_FIELD_GET(DSC_PPS8_INITIAL_OFFSET_MASK, pps_temp);
   952		vdsc_cfg->final_offset = REG_FIELD_GET(DSC_PPS8_FINAL_OFFSET_MASK, pps_temp);
   953	
   954		/* PPS 9 */
   955		pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 9);
   956	
   957		vdsc_cfg->rc_model_size = REG_FIELD_GET(DSC_PPS9_RC_MODEL_SIZE_MASK, pps_temp);
   958	
   959		/* PPS 10 */
   960		pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 10);
   961	
   962		vdsc_cfg->rc_quant_incr_limit0 = REG_FIELD_GET(DSC_PPS10_RC_QUANT_INC_LIMIT0_MASK, pps_temp);
   963		vdsc_cfg->rc_quant_incr_limit1 = REG_FIELD_GET(DSC_PPS10_RC_QUANT_INC_LIMIT1_MASK, pps_temp);
   964	
   965		/* PPS 16 */
   966		pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 16);
   967	
   968		vdsc_cfg->slice_chunk_size = REG_FIELD_GET(DSC_PPS16_SLICE_CHUNK_SIZE_MASK, pps_temp);
   969	
   970		if (DISPLAY_VER(i915) >= 14) {
   971			/* PPS 17 */
   972			pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 17);
   973	
   974			vdsc_cfg->second_line_bpg_offset = REG_FIELD_GET(DSC_PPS17_SL_BPG_OFFSET_MASK, pps_temp);
   975	
   976			/* PPS 18 */
   977			pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 18);
   978	
   979			vdsc_cfg->nsl_bpg_offset = REG_FIELD_GET(DSC_PPS18_NSL_BPG_OFFSET_MASK, pps_temp);
   980			vdsc_cfg->second_line_offset_adj = REG_FIELD_GET(DSC_PPS18_SL_OFFSET_ADJ_MASK, pps_temp);
   981		}
   982	}
   983	
   984	void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
   985	{
   986		struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
   987		struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
   988		enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
   989		enum intel_display_power_domain power_domain;
   990		intel_wakeref_t wakeref;
   991		u32 dss_ctl1, dss_ctl2, dss_ctl3 = 0;
   992	
   993		if (!intel_dsc_source_support(crtc_state))
   994			return;
   995	
   996		power_domain = intel_dsc_power_domain(crtc, cpu_transcoder);
   997	
   998		wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
   999		if (!wakeref)
  1000			return;
  1001	
  1002		dss_ctl1 = intel_de_read(dev_priv, dss_ctl1_reg(crtc, cpu_transcoder));
  1003		dss_ctl2 = intel_de_read(dev_priv, dss_ctl2_reg(crtc, cpu_transcoder));
  1004	
  1005		if (IS_BATTLEMAGE(dev_priv))
> 1006			dss_ctl3 = intel_de_read(dev_priv, BMG_PIPE_DSS_CTL3(crtc_state->cpu_transcoder));
  1007	
  1008		crtc_state->dsc.compression_enable = dss_ctl2 & VDSC0_ENABLE;
  1009		if (!crtc_state->dsc.compression_enable)
  1010			goto out;
  1011	
  1012		if (dss_ctl1 & JOINER_ENABLE) {
  1013			if (dss_ctl2 & (VDSC2_ENABLE | SMALL_JOINER_CONFIG_3_ENGINES))
  1014				crtc_state->dsc.dsc_split = INTEL_DSC_SPLIT_3_STREAMS;
  1015	
  1016			else if (dss_ctl2 & VDSC1_ENABLE)
  1017				crtc_state->dsc.dsc_split = INTEL_DSC_SPLIT_2_STREAMS;
  1018		} else {
  1019			crtc_state->dsc.dsc_split = INTEL_DSC_SPLIT_DISABLED;
  1020		}
  1021	
  1022		if (dss_ctl3 & DSC_PIXEL_REPLICATION_MASK)
  1023			crtc_state->dsc.pixel_replication_count =
  1024				dss_ctl3 & DSC_PIXEL_REPLICATION_MASK;
  1025	
  1026		intel_dsc_get_pps_config(crtc_state);
  1027	out:
  1028		intel_display_power_put(dev_priv, power_domain, wakeref);
  1029	}
  1030	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
