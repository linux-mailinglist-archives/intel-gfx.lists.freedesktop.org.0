Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7165446A59A
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Dec 2021 20:23:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE6947A4C1;
	Mon,  6 Dec 2021 19:23:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0E427A4C1
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Dec 2021 19:23:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="237198112"
X-IronPort-AV: E=Sophos;i="5.87,292,1631602800"; d="scan'208";a="237198112"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2021 11:23:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,292,1631602800"; d="scan'208";a="679104216"
Received: from lkp-server02.sh.intel.com (HELO 9e1e9f9b3bcb) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 06 Dec 2021 11:23:17 -0800
Received: from kbuild by 9e1e9f9b3bcb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1muJa0-000LdC-Ga; Mon, 06 Dec 2021 19:23:16 +0000
Date: Tue, 7 Dec 2021 03:22:19 +0800
From: kernel test robot <lkp@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202112070356.mQALTRgQ-lkp@intel.com>
References: <20211201152552.7821-8-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211201152552.7821-8-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 07/14] drm/i915: Clean up pre-skl primary
 plane registers
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
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ville,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-intel/for-linux-next]
[cannot apply to drm-tip/drm-tip v5.16-rc4 next-20211206]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Ville-Syrjala/drm-i915-Plane-register-cleanup/20211202-010520
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: x86_64-randconfig-a012-20211130 (https://download.01.org/0day-ci/archive/20211207/202112070356.mQALTRgQ-lkp@intel.com/config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 4b553297ef3ee4dc2119d5429adf3072e90fac38)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/ec767426b169205cc023d38ea477e9bd38b93284
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Ville-Syrjala/drm-i915-Plane-register-cleanup/20211202-010520
        git checkout ec767426b169205cc023d38ea477e9bd38b93284
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/gpu/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/gvt/display.c:188:41: error: use of undeclared identifier 'DISPLAY_PLANE_ENABLE'
                           vgpu_vreg_t(vgpu, DSPCNTR(pipe)) &= ~DISPLAY_PLANE_ENABLE;
                                                                ^
   drivers/gpu/drm/i915/gvt/display.c:499:40: error: use of undeclared identifier 'DISPLAY_PLANE_ENABLE'
                   vgpu_vreg_t(vgpu, DSPCNTR(pipe)) &= ~DISPLAY_PLANE_ENABLE;
                                                        ^
   2 errors generated.
--
>> drivers/gpu/drm/i915/gvt/fb_decoder.c:86:7: error: use of undeclared identifier 'DISPPLANE_8BPP'
           case DISPPLANE_8BPP:
                ^
>> drivers/gpu/drm/i915/gvt/fb_decoder.c:89:7: error: use of undeclared identifier 'DISPPLANE_BGRX565'
           case DISPPLANE_BGRX565:
                ^
>> drivers/gpu/drm/i915/gvt/fb_decoder.c:92:7: error: use of undeclared identifier 'DISPPLANE_BGRX888'
           case DISPPLANE_BGRX888:
                ^
>> drivers/gpu/drm/i915/gvt/fb_decoder.c:95:7: error: use of undeclared identifier 'DISPPLANE_RGBX101010'
           case DISPPLANE_RGBX101010:
                ^
>> drivers/gpu/drm/i915/gvt/fb_decoder.c:98:7: error: use of undeclared identifier 'DISPPLANE_BGRX101010'
           case DISPPLANE_BGRX101010:
                ^
>> drivers/gpu/drm/i915/gvt/fb_decoder.c:101:7: error: use of undeclared identifier 'DISPPLANE_RGBX888'
           case DISPPLANE_RGBX888:
                ^
>> drivers/gpu/drm/i915/gvt/fb_decoder.c:214:28: error: use of undeclared identifier 'DISPLAY_PLANE_ENABLE'
           plane->enabled = !!(val & DISPLAY_PLANE_ENABLE);
                                     ^
   drivers/gpu/drm/i915/gvt/fb_decoder.c:221:10: error: use of undeclared identifier 'PLANE_CTL_FORMAT_MASK'
                           val & PLANE_CTL_FORMAT_MASK,
                                 ^
>> drivers/gpu/drm/i915/gvt/fb_decoder.c:234:24: error: use of undeclared identifier 'DISPPLANE_TILED'
                   plane->tiled = val & DISPPLANE_TILED;
                                        ^
>> drivers/gpu/drm/i915/gvt/fb_decoder.c:235:33: error: use of undeclared identifier 'DISPPLANE_PIXFORMAT_MASK'
                   fmt = bdw_format_to_drm(val & DISPPLANE_PIXFORMAT_MASK);
                                                 ^
   drivers/gpu/drm/i915/gvt/fb_decoder.c:430:21: error: use of undeclared identifier 'SPRITE_YUV_BYTE_ORDER_MASK'
           yuv_order = (val & SPRITE_YUV_BYTE_ORDER_MASK) >>
                              ^
   11 errors generated.


vim +/DISPLAY_PLANE_ENABLE +188 drivers/gpu/drm/i915/gvt/display.c

04d348ae3f0aea Zhi Wang      2016-04-25  169  
04d348ae3f0aea Zhi Wang      2016-04-25  170  static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
04d348ae3f0aea Zhi Wang      2016-04-25  171  {
a61ac1e75105a0 Chris Wilson  2020-03-06  172  	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
65eff272330c72 Xiong Zhang   2018-03-28  173  	int pipe;
65eff272330c72 Xiong Zhang   2018-03-28  174  
72bad997287693 Colin Xu      2018-06-11  175  	if (IS_BROXTON(dev_priv)) {
a5a8ef937cfa79 Colin Xu      2020-11-09  176  		enum transcoder trans;
a5a8ef937cfa79 Colin Xu      2020-11-09  177  		enum port port;
72bad997287693 Colin Xu      2018-06-11  178  
a5a8ef937cfa79 Colin Xu      2020-11-09  179  		/* Clear PIPE, DDI, PHY, HPD before setting new */
8625b221f307ef Ville Syrjälä 2020-10-28  180  		vgpu_vreg_t(vgpu, GEN8_DE_PORT_ISR) &=
e5abaab30eca51 Ville Syrjälä 2020-10-28  181  			~(GEN8_DE_PORT_HOTPLUG(HPD_PORT_A) |
e5abaab30eca51 Ville Syrjälä 2020-10-28  182  			  GEN8_DE_PORT_HOTPLUG(HPD_PORT_B) |
e5abaab30eca51 Ville Syrjälä 2020-10-28  183  			  GEN8_DE_PORT_HOTPLUG(HPD_PORT_C));
72bad997287693 Colin Xu      2018-06-11  184  
a5a8ef937cfa79 Colin Xu      2020-11-09  185  		for_each_pipe(dev_priv, pipe) {
a5a8ef937cfa79 Colin Xu      2020-11-09  186  			vgpu_vreg_t(vgpu, PIPECONF(pipe)) &=
a5a8ef937cfa79 Colin Xu      2020-11-09  187  				~(PIPECONF_ENABLE | I965_PIPECONF_ACTIVE);
a5a8ef937cfa79 Colin Xu      2020-11-09 @188  			vgpu_vreg_t(vgpu, DSPCNTR(pipe)) &= ~DISPLAY_PLANE_ENABLE;
a5a8ef937cfa79 Colin Xu      2020-11-09  189  			vgpu_vreg_t(vgpu, SPRCTL(pipe)) &= ~SPRITE_ENABLE;
a5a8ef937cfa79 Colin Xu      2020-11-09  190  			vgpu_vreg_t(vgpu, CURCNTR(pipe)) &= ~MCURSOR_MODE;
a5a8ef937cfa79 Colin Xu      2020-11-09  191  			vgpu_vreg_t(vgpu, CURCNTR(pipe)) |= MCURSOR_MODE_DISABLE;
a5a8ef937cfa79 Colin Xu      2020-11-09  192  		}
a5a8ef937cfa79 Colin Xu      2020-11-09  193  
a5a8ef937cfa79 Colin Xu      2020-11-09  194  		for (trans = TRANSCODER_A; trans <= TRANSCODER_EDP; trans++) {
a5a8ef937cfa79 Colin Xu      2020-11-09  195  			vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(trans)) &=
a5a8ef937cfa79 Colin Xu      2020-11-09  196  				~(TRANS_DDI_BPC_MASK | TRANS_DDI_MODE_SELECT_MASK |
a5a8ef937cfa79 Colin Xu      2020-11-09  197  				  TRANS_DDI_PORT_MASK | TRANS_DDI_FUNC_ENABLE);
a5a8ef937cfa79 Colin Xu      2020-11-09  198  		}
a5a8ef937cfa79 Colin Xu      2020-11-09  199  		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) &=
a5a8ef937cfa79 Colin Xu      2020-11-09  200  			~(TRANS_DDI_BPC_MASK | TRANS_DDI_MODE_SELECT_MASK |
a5a8ef937cfa79 Colin Xu      2020-11-09  201  			  TRANS_DDI_PORT_MASK);
a5a8ef937cfa79 Colin Xu      2020-11-09  202  
a5a8ef937cfa79 Colin Xu      2020-11-09  203  		for (port = PORT_A; port <= PORT_C; port++) {
a5a8ef937cfa79 Colin Xu      2020-11-09  204  			vgpu_vreg_t(vgpu, BXT_PHY_CTL(port)) &=
a5a8ef937cfa79 Colin Xu      2020-11-09  205  				~BXT_PHY_LANE_ENABLED;
a5a8ef937cfa79 Colin Xu      2020-11-09  206  			vgpu_vreg_t(vgpu, BXT_PHY_CTL(port)) |=
a5a8ef937cfa79 Colin Xu      2020-11-09  207  				(BXT_PHY_CMNLANE_POWERDOWN_ACK |
a5a8ef937cfa79 Colin Xu      2020-11-09  208  				 BXT_PHY_LANE_POWERDOWN_ACK);
a5a8ef937cfa79 Colin Xu      2020-11-09  209  
a5a8ef937cfa79 Colin Xu      2020-11-09  210  			vgpu_vreg_t(vgpu, BXT_PORT_PLL_ENABLE(port)) &=
a5a8ef937cfa79 Colin Xu      2020-11-09  211  				~(PORT_PLL_POWER_STATE | PORT_PLL_POWER_ENABLE |
a5a8ef937cfa79 Colin Xu      2020-11-09  212  				  PORT_PLL_REF_SEL | PORT_PLL_LOCK |
a5a8ef937cfa79 Colin Xu      2020-11-09  213  				  PORT_PLL_ENABLE);
a5a8ef937cfa79 Colin Xu      2020-11-09  214  
a5a8ef937cfa79 Colin Xu      2020-11-09  215  			vgpu_vreg_t(vgpu, DDI_BUF_CTL(port)) &=
a5a8ef937cfa79 Colin Xu      2020-11-09  216  				~(DDI_INIT_DISPLAY_DETECTED |
a5a8ef937cfa79 Colin Xu      2020-11-09  217  				  DDI_BUF_CTL_ENABLE);
a5a8ef937cfa79 Colin Xu      2020-11-09  218  			vgpu_vreg_t(vgpu, DDI_BUF_CTL(port)) |= DDI_BUF_IS_IDLE;
a5a8ef937cfa79 Colin Xu      2020-11-09  219  		}
4ceb06e7c336f4 Colin Xu      2020-12-01  220  		vgpu_vreg_t(vgpu, PCH_PORT_HOTPLUG) &=
4ceb06e7c336f4 Colin Xu      2020-12-01  221  			~(PORTA_HOTPLUG_ENABLE | PORTA_HOTPLUG_STATUS_MASK);
4ceb06e7c336f4 Colin Xu      2020-12-01  222  		vgpu_vreg_t(vgpu, PCH_PORT_HOTPLUG) &=
4ceb06e7c336f4 Colin Xu      2020-12-01  223  			~(PORTB_HOTPLUG_ENABLE | PORTB_HOTPLUG_STATUS_MASK);
4ceb06e7c336f4 Colin Xu      2020-12-01  224  		vgpu_vreg_t(vgpu, PCH_PORT_HOTPLUG) &=
4ceb06e7c336f4 Colin Xu      2020-12-01  225  			~(PORTC_HOTPLUG_ENABLE | PORTC_HOTPLUG_STATUS_MASK);
4ceb06e7c336f4 Colin Xu      2020-12-01  226  		/* No hpd_invert set in vgpu vbt, need to clear invert mask */
4ceb06e7c336f4 Colin Xu      2020-12-01  227  		vgpu_vreg_t(vgpu, PCH_PORT_HOTPLUG) &= ~BXT_DDI_HPD_INVERT_MASK;
4ceb06e7c336f4 Colin Xu      2020-12-01  228  		vgpu_vreg_t(vgpu, GEN8_DE_PORT_ISR) &= ~BXT_DE_PORT_HOTPLUG_MASK;
a5a8ef937cfa79 Colin Xu      2020-11-09  229  
a5a8ef937cfa79 Colin Xu      2020-11-09  230  		vgpu_vreg_t(vgpu, BXT_P_CR_GT_DISP_PWRON) &= ~(BIT(0) | BIT(1));
a5a8ef937cfa79 Colin Xu      2020-11-09  231  		vgpu_vreg_t(vgpu, BXT_PORT_CL1CM_DW0(DPIO_PHY0)) &=
a5a8ef937cfa79 Colin Xu      2020-11-09  232  			~PHY_POWER_GOOD;
a5a8ef937cfa79 Colin Xu      2020-11-09  233  		vgpu_vreg_t(vgpu, BXT_PORT_CL1CM_DW0(DPIO_PHY1)) &=
a5a8ef937cfa79 Colin Xu      2020-11-09  234  			~PHY_POWER_GOOD;
a5a8ef937cfa79 Colin Xu      2020-11-09  235  		vgpu_vreg_t(vgpu, BXT_PHY_CTL_FAMILY(DPIO_PHY0)) &= ~BIT(30);
a5a8ef937cfa79 Colin Xu      2020-11-09  236  		vgpu_vreg_t(vgpu, BXT_PHY_CTL_FAMILY(DPIO_PHY1)) &= ~BIT(30);
a5a8ef937cfa79 Colin Xu      2020-11-09  237  
a5a8ef937cfa79 Colin Xu      2020-11-09  238  		vgpu_vreg_t(vgpu, SFUSE_STRAP) &= ~SFUSE_STRAP_DDIB_DETECTED;
a5a8ef937cfa79 Colin Xu      2020-11-09  239  		vgpu_vreg_t(vgpu, SFUSE_STRAP) &= ~SFUSE_STRAP_DDIC_DETECTED;
a5a8ef937cfa79 Colin Xu      2020-11-09  240  
a5a8ef937cfa79 Colin Xu      2020-11-09  241  		/*
a5a8ef937cfa79 Colin Xu      2020-11-09  242  		 * Only 1 PIPE enabled in current vGPU display and PIPE_A is
a5a8ef937cfa79 Colin Xu      2020-11-09  243  		 *  tied to TRANSCODER_A in HW, so it's safe to assume PIPE_A,
a5a8ef937cfa79 Colin Xu      2020-11-09  244  		 *   TRANSCODER_A can be enabled. PORT_x depends on the input of
a5a8ef937cfa79 Colin Xu      2020-11-09  245  		 *   setup_virtual_dp_monitor.
a5a8ef937cfa79 Colin Xu      2020-11-09  246  		 */
a5a8ef937cfa79 Colin Xu      2020-11-09  247  		vgpu_vreg_t(vgpu, PIPECONF(PIPE_A)) |= PIPECONF_ENABLE;
a5a8ef937cfa79 Colin Xu      2020-11-09  248  		vgpu_vreg_t(vgpu, PIPECONF(PIPE_A)) |= I965_PIPECONF_ACTIVE;
a5a8ef937cfa79 Colin Xu      2020-11-09  249  
a5a8ef937cfa79 Colin Xu      2020-11-09  250  		/*
a5a8ef937cfa79 Colin Xu      2020-11-09  251  		 * Golden M/N are calculated based on:
a5a8ef937cfa79 Colin Xu      2020-11-09  252  		 *   24 bpp, 4 lanes, 154000 pixel clk (from virtual EDID),
a5a8ef937cfa79 Colin Xu      2020-11-09  253  		 *   DP link clk 1620 MHz and non-constant_n.
a5a8ef937cfa79 Colin Xu      2020-11-09  254  		 * TODO: calculate DP link symbol clk and stream clk m/n.
a5a8ef937cfa79 Colin Xu      2020-11-09  255  		 */
a5a8ef937cfa79 Colin Xu      2020-11-09  256  		vgpu_vreg_t(vgpu, PIPE_DATA_M1(TRANSCODER_A)) = 63 << TU_SIZE_SHIFT;
a5a8ef937cfa79 Colin Xu      2020-11-09  257  		vgpu_vreg_t(vgpu, PIPE_DATA_M1(TRANSCODER_A)) |= 0x5b425e;
a5a8ef937cfa79 Colin Xu      2020-11-09  258  		vgpu_vreg_t(vgpu, PIPE_DATA_N1(TRANSCODER_A)) = 0x800000;
a5a8ef937cfa79 Colin Xu      2020-11-09  259  		vgpu_vreg_t(vgpu, PIPE_LINK_M1(TRANSCODER_A)) = 0x3cd6e;
a5a8ef937cfa79 Colin Xu      2020-11-09  260  		vgpu_vreg_t(vgpu, PIPE_LINK_N1(TRANSCODER_A)) = 0x80000;
a5a8ef937cfa79 Colin Xu      2020-11-09  261  
a5a8ef937cfa79 Colin Xu      2020-11-09  262  		/* Enable per-DDI/PORT vreg */
72bad997287693 Colin Xu      2018-06-11  263  		if (intel_vgpu_has_monitor_on_port(vgpu, PORT_A)) {
a5a8ef937cfa79 Colin Xu      2020-11-09  264  			vgpu_vreg_t(vgpu, BXT_P_CR_GT_DISP_PWRON) |= BIT(1);
a5a8ef937cfa79 Colin Xu      2020-11-09  265  			vgpu_vreg_t(vgpu, BXT_PORT_CL1CM_DW0(DPIO_PHY1)) |=
a5a8ef937cfa79 Colin Xu      2020-11-09  266  				PHY_POWER_GOOD;
a5a8ef937cfa79 Colin Xu      2020-11-09  267  			vgpu_vreg_t(vgpu, BXT_PHY_CTL_FAMILY(DPIO_PHY1)) |=
a5a8ef937cfa79 Colin Xu      2020-11-09  268  				BIT(30);
a5a8ef937cfa79 Colin Xu      2020-11-09  269  			vgpu_vreg_t(vgpu, BXT_PHY_CTL(PORT_A)) |=
a5a8ef937cfa79 Colin Xu      2020-11-09  270  				BXT_PHY_LANE_ENABLED;
a5a8ef937cfa79 Colin Xu      2020-11-09  271  			vgpu_vreg_t(vgpu, BXT_PHY_CTL(PORT_A)) &=
a5a8ef937cfa79 Colin Xu      2020-11-09  272  				~(BXT_PHY_CMNLANE_POWERDOWN_ACK |
a5a8ef937cfa79 Colin Xu      2020-11-09  273  				  BXT_PHY_LANE_POWERDOWN_ACK);
a5a8ef937cfa79 Colin Xu      2020-11-09  274  			vgpu_vreg_t(vgpu, BXT_PORT_PLL_ENABLE(PORT_A)) |=
a5a8ef937cfa79 Colin Xu      2020-11-09  275  				(PORT_PLL_POWER_STATE | PORT_PLL_POWER_ENABLE |
a5a8ef937cfa79 Colin Xu      2020-11-09  276  				 PORT_PLL_REF_SEL | PORT_PLL_LOCK |
a5a8ef937cfa79 Colin Xu      2020-11-09  277  				 PORT_PLL_ENABLE);
a5a8ef937cfa79 Colin Xu      2020-11-09  278  			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_A)) |=
a5a8ef937cfa79 Colin Xu      2020-11-09  279  				(DDI_BUF_CTL_ENABLE | DDI_INIT_DISPLAY_DETECTED);
a5a8ef937cfa79 Colin Xu      2020-11-09  280  			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_A)) &=
a5a8ef937cfa79 Colin Xu      2020-11-09  281  				~DDI_BUF_IS_IDLE;
a5a8ef937cfa79 Colin Xu      2020-11-09  282  			vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_EDP)) |=
a5a8ef937cfa79 Colin Xu      2020-11-09  283  				(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
a5a8ef937cfa79 Colin Xu      2020-11-09  284  				 TRANS_DDI_FUNC_ENABLE);
4ceb06e7c336f4 Colin Xu      2020-12-01  285  			vgpu_vreg_t(vgpu, PCH_PORT_HOTPLUG) |=
4ceb06e7c336f4 Colin Xu      2020-12-01  286  				PORTA_HOTPLUG_ENABLE;
72bad997287693 Colin Xu      2018-06-11  287  			vgpu_vreg_t(vgpu, GEN8_DE_PORT_ISR) |=
e5abaab30eca51 Ville Syrjälä 2020-10-28  288  				GEN8_DE_PORT_HOTPLUG(HPD_PORT_A);
72bad997287693 Colin Xu      2018-06-11  289  		}
72bad997287693 Colin Xu      2018-06-11  290  
72bad997287693 Colin Xu      2018-06-11  291  		if (intel_vgpu_has_monitor_on_port(vgpu, PORT_B)) {
a5a8ef937cfa79 Colin Xu      2020-11-09  292  			vgpu_vreg_t(vgpu, SFUSE_STRAP) |= SFUSE_STRAP_DDIB_DETECTED;
a5a8ef937cfa79 Colin Xu      2020-11-09  293  			vgpu_vreg_t(vgpu, BXT_P_CR_GT_DISP_PWRON) |= BIT(0);
a5a8ef937cfa79 Colin Xu      2020-11-09  294  			vgpu_vreg_t(vgpu, BXT_PORT_CL1CM_DW0(DPIO_PHY0)) |=
a5a8ef937cfa79 Colin Xu      2020-11-09  295  				PHY_POWER_GOOD;
a5a8ef937cfa79 Colin Xu      2020-11-09  296  			vgpu_vreg_t(vgpu, BXT_PHY_CTL_FAMILY(DPIO_PHY0)) |=
a5a8ef937cfa79 Colin Xu      2020-11-09  297  				BIT(30);
a5a8ef937cfa79 Colin Xu      2020-11-09  298  			vgpu_vreg_t(vgpu, BXT_PHY_CTL(PORT_B)) |=
a5a8ef937cfa79 Colin Xu      2020-11-09  299  				BXT_PHY_LANE_ENABLED;
a5a8ef937cfa79 Colin Xu      2020-11-09  300  			vgpu_vreg_t(vgpu, BXT_PHY_CTL(PORT_B)) &=
a5a8ef937cfa79 Colin Xu      2020-11-09  301  				~(BXT_PHY_CMNLANE_POWERDOWN_ACK |
a5a8ef937cfa79 Colin Xu      2020-11-09  302  				  BXT_PHY_LANE_POWERDOWN_ACK);
a5a8ef937cfa79 Colin Xu      2020-11-09  303  			vgpu_vreg_t(vgpu, BXT_PORT_PLL_ENABLE(PORT_B)) |=
a5a8ef937cfa79 Colin Xu      2020-11-09  304  				(PORT_PLL_POWER_STATE | PORT_PLL_POWER_ENABLE |
a5a8ef937cfa79 Colin Xu      2020-11-09  305  				 PORT_PLL_REF_SEL | PORT_PLL_LOCK |
a5a8ef937cfa79 Colin Xu      2020-11-09  306  				 PORT_PLL_ENABLE);
a5a8ef937cfa79 Colin Xu      2020-11-09  307  			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_B)) |=
a5a8ef937cfa79 Colin Xu      2020-11-09  308  				DDI_BUF_CTL_ENABLE;
a5a8ef937cfa79 Colin Xu      2020-11-09  309  			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_B)) &=
a5a8ef937cfa79 Colin Xu      2020-11-09  310  				~DDI_BUF_IS_IDLE;
a5a8ef937cfa79 Colin Xu      2020-11-09  311  			vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) |=
a5a8ef937cfa79 Colin Xu      2020-11-09  312  				(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
a5a8ef937cfa79 Colin Xu      2020-11-09  313  				 (PORT_B << TRANS_DDI_PORT_SHIFT) |
a5a8ef937cfa79 Colin Xu      2020-11-09  314  				 TRANS_DDI_FUNC_ENABLE);
4ceb06e7c336f4 Colin Xu      2020-12-01  315  			vgpu_vreg_t(vgpu, PCH_PORT_HOTPLUG) |=
4ceb06e7c336f4 Colin Xu      2020-12-01  316  				PORTB_HOTPLUG_ENABLE;
72bad997287693 Colin Xu      2018-06-11  317  			vgpu_vreg_t(vgpu, GEN8_DE_PORT_ISR) |=
e5abaab30eca51 Ville Syrjälä 2020-10-28  318  				GEN8_DE_PORT_HOTPLUG(HPD_PORT_B);
72bad997287693 Colin Xu      2018-06-11  319  		}
72bad997287693 Colin Xu      2018-06-11  320  
72bad997287693 Colin Xu      2018-06-11  321  		if (intel_vgpu_has_monitor_on_port(vgpu, PORT_C)) {
a5a8ef937cfa79 Colin Xu      2020-11-09  322  			vgpu_vreg_t(vgpu, SFUSE_STRAP) |= SFUSE_STRAP_DDIC_DETECTED;
a5a8ef937cfa79 Colin Xu      2020-11-09  323  			vgpu_vreg_t(vgpu, BXT_P_CR_GT_DISP_PWRON) |= BIT(0);
a5a8ef937cfa79 Colin Xu      2020-11-09  324  			vgpu_vreg_t(vgpu, BXT_PORT_CL1CM_DW0(DPIO_PHY0)) |=
a5a8ef937cfa79 Colin Xu      2020-11-09  325  				PHY_POWER_GOOD;
a5a8ef937cfa79 Colin Xu      2020-11-09  326  			vgpu_vreg_t(vgpu, BXT_PHY_CTL_FAMILY(DPIO_PHY0)) |=
a5a8ef937cfa79 Colin Xu      2020-11-09  327  				BIT(30);
a5a8ef937cfa79 Colin Xu      2020-11-09  328  			vgpu_vreg_t(vgpu, BXT_PHY_CTL(PORT_C)) |=
a5a8ef937cfa79 Colin Xu      2020-11-09  329  				BXT_PHY_LANE_ENABLED;
a5a8ef937cfa79 Colin Xu      2020-11-09  330  			vgpu_vreg_t(vgpu, BXT_PHY_CTL(PORT_C)) &=
a5a8ef937cfa79 Colin Xu      2020-11-09  331  				~(BXT_PHY_CMNLANE_POWERDOWN_ACK |
a5a8ef937cfa79 Colin Xu      2020-11-09  332  				  BXT_PHY_LANE_POWERDOWN_ACK);
a5a8ef937cfa79 Colin Xu      2020-11-09  333  			vgpu_vreg_t(vgpu, BXT_PORT_PLL_ENABLE(PORT_C)) |=
a5a8ef937cfa79 Colin Xu      2020-11-09  334  				(PORT_PLL_POWER_STATE | PORT_PLL_POWER_ENABLE |
a5a8ef937cfa79 Colin Xu      2020-11-09  335  				 PORT_PLL_REF_SEL | PORT_PLL_LOCK |
a5a8ef937cfa79 Colin Xu      2020-11-09  336  				 PORT_PLL_ENABLE);
a5a8ef937cfa79 Colin Xu      2020-11-09  337  			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_C)) |=
a5a8ef937cfa79 Colin Xu      2020-11-09  338  				DDI_BUF_CTL_ENABLE;
a5a8ef937cfa79 Colin Xu      2020-11-09  339  			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_C)) &=
a5a8ef937cfa79 Colin Xu      2020-11-09  340  				~DDI_BUF_IS_IDLE;
a5a8ef937cfa79 Colin Xu      2020-11-09  341  			vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) |=
a5a8ef937cfa79 Colin Xu      2020-11-09  342  				(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
a5a8ef937cfa79 Colin Xu      2020-11-09  343  				 (PORT_B << TRANS_DDI_PORT_SHIFT) |
a5a8ef937cfa79 Colin Xu      2020-11-09  344  				 TRANS_DDI_FUNC_ENABLE);
4ceb06e7c336f4 Colin Xu      2020-12-01  345  			vgpu_vreg_t(vgpu, PCH_PORT_HOTPLUG) |=
4ceb06e7c336f4 Colin Xu      2020-12-01  346  				PORTC_HOTPLUG_ENABLE;
72bad997287693 Colin Xu      2018-06-11  347  			vgpu_vreg_t(vgpu, GEN8_DE_PORT_ISR) |=
e5abaab30eca51 Ville Syrjälä 2020-10-28  348  				GEN8_DE_PORT_HOTPLUG(HPD_PORT_C);
72bad997287693 Colin Xu      2018-06-11  349  		}
72bad997287693 Colin Xu      2018-06-11  350  
72bad997287693 Colin Xu      2018-06-11  351  		return;
72bad997287693 Colin Xu      2018-06-11  352  	}
72bad997287693 Colin Xu      2018-06-11  353  
90551a1296d4db Zhenyu Wang   2017-12-19  354  	vgpu_vreg_t(vgpu, SDEISR) &= ~(SDE_PORTB_HOTPLUG_CPT |
04d348ae3f0aea Zhi Wang      2016-04-25  355  			SDE_PORTC_HOTPLUG_CPT |
04d348ae3f0aea Zhi Wang      2016-04-25  356  			SDE_PORTD_HOTPLUG_CPT);
04d348ae3f0aea Zhi Wang      2016-04-25  357  
5f4ae2704d59ee Chris Wilson  2020-06-02  358  	if (IS_SKYLAKE(dev_priv) ||
5f4ae2704d59ee Chris Wilson  2020-06-02  359  	    IS_KABYLAKE(dev_priv) ||
5f4ae2704d59ee Chris Wilson  2020-06-02  360  	    IS_COFFEELAKE(dev_priv) ||
5f4ae2704d59ee Chris Wilson  2020-06-02  361  	    IS_COMETLAKE(dev_priv)) {
90551a1296d4db Zhenyu Wang   2017-12-19  362  		vgpu_vreg_t(vgpu, SDEISR) &= ~(SDE_PORTA_HOTPLUG_SPT |
04d348ae3f0aea Zhi Wang      2016-04-25  363  				SDE_PORTE_HOTPLUG_SPT);
90551a1296d4db Zhenyu Wang   2017-12-19  364  		vgpu_vreg_t(vgpu, SKL_FUSE_STATUS) |=
88a16b64c3f48d Weinan Li     2017-03-17  365  				SKL_FUSE_DOWNLOAD_STATUS |
b2891eb2531e5e Imre Deak     2017-07-11  366  				SKL_FUSE_PG_DIST_STATUS(SKL_PG0) |
b2891eb2531e5e Imre Deak     2017-07-11  367  				SKL_FUSE_PG_DIST_STATUS(SKL_PG1) |
b2891eb2531e5e Imre Deak     2017-07-11  368  				SKL_FUSE_PG_DIST_STATUS(SKL_PG2);
f965b68188ab59 Colin Xu      2020-05-08  369  		/*
f965b68188ab59 Colin Xu      2020-05-08  370  		 * Only 1 PIPE enabled in current vGPU display and PIPE_A is
f965b68188ab59 Colin Xu      2020-05-08  371  		 *  tied to TRANSCODER_A in HW, so it's safe to assume PIPE_A,
f965b68188ab59 Colin Xu      2020-05-08  372  		 *   TRANSCODER_A can be enabled. PORT_x depends on the input of
f965b68188ab59 Colin Xu      2020-05-08  373  		 *   setup_virtual_dp_monitor, we can bind DPLL0 to any PORT_x
f965b68188ab59 Colin Xu      2020-05-08  374  		 *   so we fixed to DPLL0 here.
f965b68188ab59 Colin Xu      2020-05-08  375  		 * Setup DPLL0: DP link clk 1620 MHz, non SSC, DP Mode
f965b68188ab59 Colin Xu      2020-05-08  376  		 */
f965b68188ab59 Colin Xu      2020-05-08  377  		vgpu_vreg_t(vgpu, DPLL_CTRL1) =
f965b68188ab59 Colin Xu      2020-05-08  378  			DPLL_CTRL1_OVERRIDE(DPLL_ID_SKL_DPLL0);
f965b68188ab59 Colin Xu      2020-05-08  379  		vgpu_vreg_t(vgpu, DPLL_CTRL1) |=
f965b68188ab59 Colin Xu      2020-05-08  380  			DPLL_CTRL1_LINK_RATE(DPLL_CTRL1_LINK_RATE_1620, DPLL_ID_SKL_DPLL0);
f965b68188ab59 Colin Xu      2020-05-08  381  		vgpu_vreg_t(vgpu, LCPLL1_CTL) =
f965b68188ab59 Colin Xu      2020-05-08  382  			LCPLL_PLL_ENABLE | LCPLL_PLL_LOCK;
f965b68188ab59 Colin Xu      2020-05-08  383  		vgpu_vreg_t(vgpu, DPLL_STATUS) = DPLL_LOCK(DPLL_ID_SKL_DPLL0);
f965b68188ab59 Colin Xu      2020-05-08  384  		/*
f965b68188ab59 Colin Xu      2020-05-08  385  		 * Golden M/N are calculated based on:
f965b68188ab59 Colin Xu      2020-05-08  386  		 *   24 bpp, 4 lanes, 154000 pixel clk (from virtual EDID),
f965b68188ab59 Colin Xu      2020-05-08  387  		 *   DP link clk 1620 MHz and non-constant_n.
f965b68188ab59 Colin Xu      2020-05-08  388  		 * TODO: calculate DP link symbol clk and stream clk m/n.
f965b68188ab59 Colin Xu      2020-05-08  389  		 */
f965b68188ab59 Colin Xu      2020-05-08  390  		vgpu_vreg_t(vgpu, PIPE_DATA_M1(TRANSCODER_A)) = 63 << TU_SIZE_SHIFT;
f965b68188ab59 Colin Xu      2020-05-08  391  		vgpu_vreg_t(vgpu, PIPE_DATA_M1(TRANSCODER_A)) |= 0x5b425e;
f965b68188ab59 Colin Xu      2020-05-08  392  		vgpu_vreg_t(vgpu, PIPE_DATA_N1(TRANSCODER_A)) = 0x800000;
f965b68188ab59 Colin Xu      2020-05-08  393  		vgpu_vreg_t(vgpu, PIPE_LINK_M1(TRANSCODER_A)) = 0x3cd6e;
f965b68188ab59 Colin Xu      2020-05-08  394  		vgpu_vreg_t(vgpu, PIPE_LINK_N1(TRANSCODER_A)) = 0x80000;
88a16b64c3f48d Weinan Li     2017-03-17  395  	}
04d348ae3f0aea Zhi Wang      2016-04-25  396  
858b0f571d3091 Bing Niu      2017-02-28  397  	if (intel_vgpu_has_monitor_on_port(vgpu, PORT_B)) {
f965b68188ab59 Colin Xu      2020-05-08  398  		vgpu_vreg_t(vgpu, DPLL_CTRL2) &=
f965b68188ab59 Colin Xu      2020-05-08  399  			~DPLL_CTRL2_DDI_CLK_OFF(PORT_B);
f965b68188ab59 Colin Xu      2020-05-08  400  		vgpu_vreg_t(vgpu, DPLL_CTRL2) |=
f965b68188ab59 Colin Xu      2020-05-08  401  			DPLL_CTRL2_DDI_CLK_SEL(DPLL_ID_SKL_DPLL0, PORT_B);
f965b68188ab59 Colin Xu      2020-05-08  402  		vgpu_vreg_t(vgpu, DPLL_CTRL2) |=
f965b68188ab59 Colin Xu      2020-05-08  403  			DPLL_CTRL2_DDI_SEL_OVERRIDE(PORT_B);
90551a1296d4db Zhenyu Wang   2017-12-19  404  		vgpu_vreg_t(vgpu, SFUSE_STRAP) |= SFUSE_STRAP_DDIB_DETECTED;
90551a1296d4db Zhenyu Wang   2017-12-19  405  		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) &=
efa69d734adbf8 Pei Zhang     2017-04-07  406  			~(TRANS_DDI_BPC_MASK | TRANS_DDI_MODE_SELECT_MASK |
efa69d734adbf8 Pei Zhang     2017-04-07  407  			TRANS_DDI_PORT_MASK);
90551a1296d4db Zhenyu Wang   2017-12-19  408  		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) |=
75db1a5b2aea2a Tina Zhang    2020-03-17  409  			(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
efa69d734adbf8 Pei Zhang     2017-04-07  410  			(PORT_B << TRANS_DDI_PORT_SHIFT) |
efa69d734adbf8 Pei Zhang     2017-04-07  411  			TRANS_DDI_FUNC_ENABLE);
295a0d0b55269f Xiong Zhang   2017-06-20  412  		if (IS_BROADWELL(dev_priv)) {
90551a1296d4db Zhenyu Wang   2017-12-19  413  			vgpu_vreg_t(vgpu, PORT_CLK_SEL(PORT_B)) &=
295a0d0b55269f Xiong Zhang   2017-06-20  414  				~PORT_CLK_SEL_MASK;
90551a1296d4db Zhenyu Wang   2017-12-19  415  			vgpu_vreg_t(vgpu, PORT_CLK_SEL(PORT_B)) |=
295a0d0b55269f Xiong Zhang   2017-06-20  416  				PORT_CLK_SEL_LCPLL_810;
295a0d0b55269f Xiong Zhang   2017-06-20  417  		}
90551a1296d4db Zhenyu Wang   2017-12-19  418  		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_B)) |= DDI_BUF_CTL_ENABLE;
90551a1296d4db Zhenyu Wang   2017-12-19  419  		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_B)) &= ~DDI_BUF_IS_IDLE;
90551a1296d4db Zhenyu Wang   2017-12-19  420  		vgpu_vreg_t(vgpu, SDEISR) |= SDE_PORTB_HOTPLUG_CPT;
858b0f571d3091 Bing Niu      2017-02-28  421  	}
04d348ae3f0aea Zhi Wang      2016-04-25  422  
858b0f571d3091 Bing Niu      2017-02-28  423  	if (intel_vgpu_has_monitor_on_port(vgpu, PORT_C)) {
f965b68188ab59 Colin Xu      2020-05-08  424  		vgpu_vreg_t(vgpu, DPLL_CTRL2) &=
f965b68188ab59 Colin Xu      2020-05-08  425  			~DPLL_CTRL2_DDI_CLK_OFF(PORT_C);
f965b68188ab59 Colin Xu      2020-05-08  426  		vgpu_vreg_t(vgpu, DPLL_CTRL2) |=
f965b68188ab59 Colin Xu      2020-05-08  427  			DPLL_CTRL2_DDI_CLK_SEL(DPLL_ID_SKL_DPLL0, PORT_C);
f965b68188ab59 Colin Xu      2020-05-08  428  		vgpu_vreg_t(vgpu, DPLL_CTRL2) |=
f965b68188ab59 Colin Xu      2020-05-08  429  			DPLL_CTRL2_DDI_SEL_OVERRIDE(PORT_C);
90551a1296d4db Zhenyu Wang   2017-12-19  430  		vgpu_vreg_t(vgpu, SDEISR) |= SDE_PORTC_HOTPLUG_CPT;
90551a1296d4db Zhenyu Wang   2017-12-19  431  		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) &=
efa69d734adbf8 Pei Zhang     2017-04-07  432  			~(TRANS_DDI_BPC_MASK | TRANS_DDI_MODE_SELECT_MASK |
efa69d734adbf8 Pei Zhang     2017-04-07  433  			TRANS_DDI_PORT_MASK);
90551a1296d4db Zhenyu Wang   2017-12-19  434  		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) |=
75db1a5b2aea2a Tina Zhang    2020-03-17  435  			(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
efa69d734adbf8 Pei Zhang     2017-04-07  436  			(PORT_C << TRANS_DDI_PORT_SHIFT) |
efa69d734adbf8 Pei Zhang     2017-04-07  437  			TRANS_DDI_FUNC_ENABLE);
295a0d0b55269f Xiong Zhang   2017-06-20  438  		if (IS_BROADWELL(dev_priv)) {
90551a1296d4db Zhenyu Wang   2017-12-19  439  			vgpu_vreg_t(vgpu, PORT_CLK_SEL(PORT_C)) &=
295a0d0b55269f Xiong Zhang   2017-06-20  440  				~PORT_CLK_SEL_MASK;
90551a1296d4db Zhenyu Wang   2017-12-19  441  			vgpu_vreg_t(vgpu, PORT_CLK_SEL(PORT_C)) |=
295a0d0b55269f Xiong Zhang   2017-06-20  442  				PORT_CLK_SEL_LCPLL_810;
295a0d0b55269f Xiong Zhang   2017-06-20  443  		}
90551a1296d4db Zhenyu Wang   2017-12-19  444  		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_C)) |= DDI_BUF_CTL_ENABLE;
90551a1296d4db Zhenyu Wang   2017-12-19  445  		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_C)) &= ~DDI_BUF_IS_IDLE;
90551a1296d4db Zhenyu Wang   2017-12-19  446  		vgpu_vreg_t(vgpu, SFUSE_STRAP) |= SFUSE_STRAP_DDIC_DETECTED;
858b0f571d3091 Bing Niu      2017-02-28  447  	}
04d348ae3f0aea Zhi Wang      2016-04-25  448  
858b0f571d3091 Bing Niu      2017-02-28  449  	if (intel_vgpu_has_monitor_on_port(vgpu, PORT_D)) {
f965b68188ab59 Colin Xu      2020-05-08  450  		vgpu_vreg_t(vgpu, DPLL_CTRL2) &=
f965b68188ab59 Colin Xu      2020-05-08  451  			~DPLL_CTRL2_DDI_CLK_OFF(PORT_D);
f965b68188ab59 Colin Xu      2020-05-08  452  		vgpu_vreg_t(vgpu, DPLL_CTRL2) |=
f965b68188ab59 Colin Xu      2020-05-08  453  			DPLL_CTRL2_DDI_CLK_SEL(DPLL_ID_SKL_DPLL0, PORT_D);
f965b68188ab59 Colin Xu      2020-05-08  454  		vgpu_vreg_t(vgpu, DPLL_CTRL2) |=
f965b68188ab59 Colin Xu      2020-05-08  455  			DPLL_CTRL2_DDI_SEL_OVERRIDE(PORT_D);
90551a1296d4db Zhenyu Wang   2017-12-19  456  		vgpu_vreg_t(vgpu, SDEISR) |= SDE_PORTD_HOTPLUG_CPT;
90551a1296d4db Zhenyu Wang   2017-12-19  457  		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) &=
efa69d734adbf8 Pei Zhang     2017-04-07  458  			~(TRANS_DDI_BPC_MASK | TRANS_DDI_MODE_SELECT_MASK |
efa69d734adbf8 Pei Zhang     2017-04-07  459  			TRANS_DDI_PORT_MASK);
90551a1296d4db Zhenyu Wang   2017-12-19  460  		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) |=
75db1a5b2aea2a Tina Zhang    2020-03-17  461  			(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
efa69d734adbf8 Pei Zhang     2017-04-07  462  			(PORT_D << TRANS_DDI_PORT_SHIFT) |
efa69d734adbf8 Pei Zhang     2017-04-07  463  			TRANS_DDI_FUNC_ENABLE);
295a0d0b55269f Xiong Zhang   2017-06-20  464  		if (IS_BROADWELL(dev_priv)) {
90551a1296d4db Zhenyu Wang   2017-12-19  465  			vgpu_vreg_t(vgpu, PORT_CLK_SEL(PORT_D)) &=
295a0d0b55269f Xiong Zhang   2017-06-20  466  				~PORT_CLK_SEL_MASK;
90551a1296d4db Zhenyu Wang   2017-12-19  467  			vgpu_vreg_t(vgpu, PORT_CLK_SEL(PORT_D)) |=
295a0d0b55269f Xiong Zhang   2017-06-20  468  				PORT_CLK_SEL_LCPLL_810;
295a0d0b55269f Xiong Zhang   2017-06-20  469  		}
90551a1296d4db Zhenyu Wang   2017-12-19  470  		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_D)) |= DDI_BUF_CTL_ENABLE;
90551a1296d4db Zhenyu Wang   2017-12-19  471  		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_D)) &= ~DDI_BUF_IS_IDLE;
90551a1296d4db Zhenyu Wang   2017-12-19  472  		vgpu_vreg_t(vgpu, SFUSE_STRAP) |= SFUSE_STRAP_DDID_DETECTED;
858b0f571d3091 Bing Niu      2017-02-28  473  	}
04d348ae3f0aea Zhi Wang      2016-04-25  474  
5f4ae2704d59ee Chris Wilson  2020-06-02  475  	if ((IS_SKYLAKE(dev_priv) ||
5f4ae2704d59ee Chris Wilson  2020-06-02  476  	     IS_KABYLAKE(dev_priv) ||
5f4ae2704d59ee Chris Wilson  2020-06-02  477  	     IS_COFFEELAKE(dev_priv) ||
5f4ae2704d59ee Chris Wilson  2020-06-02  478  	     IS_COMETLAKE(dev_priv)) &&
04d348ae3f0aea Zhi Wang      2016-04-25  479  			intel_vgpu_has_monitor_on_port(vgpu, PORT_E)) {
90551a1296d4db Zhenyu Wang   2017-12-19  480  		vgpu_vreg_t(vgpu, SDEISR) |= SDE_PORTE_HOTPLUG_SPT;
04d348ae3f0aea Zhi Wang      2016-04-25  481  	}
04d348ae3f0aea Zhi Wang      2016-04-25  482  
04d348ae3f0aea Zhi Wang      2016-04-25  483  	if (intel_vgpu_has_monitor_on_port(vgpu, PORT_A)) {
04d348ae3f0aea Zhi Wang      2016-04-25  484  		if (IS_BROADWELL(dev_priv))
90551a1296d4db Zhenyu Wang   2017-12-19  485  			vgpu_vreg_t(vgpu, GEN8_DE_PORT_ISR) |=
e5abaab30eca51 Ville Syrjälä 2020-10-28  486  				GEN8_DE_PORT_HOTPLUG(HPD_PORT_A);
04d348ae3f0aea Zhi Wang      2016-04-25  487  		else
90551a1296d4db Zhenyu Wang   2017-12-19  488  			vgpu_vreg_t(vgpu, SDEISR) |= SDE_PORTA_HOTPLUG_SPT;
858b0f571d3091 Bing Niu      2017-02-28  489  
90551a1296d4db Zhenyu Wang   2017-12-19  490  		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_A)) |= DDI_INIT_DISPLAY_DETECTED;
04d348ae3f0aea Zhi Wang      2016-04-25  491  	}
75e64ff2c2f5ce Xiong Zhang   2017-06-28  492  
75e64ff2c2f5ce Xiong Zhang   2017-06-28  493  	/* Clear host CRT status, so guest couldn't detect this host CRT. */
75e64ff2c2f5ce Xiong Zhang   2017-06-28  494  	if (IS_BROADWELL(dev_priv))
90551a1296d4db Zhenyu Wang   2017-12-19  495  		vgpu_vreg_t(vgpu, PCH_ADPA) &= ~ADPA_CRT_HOTPLUG_MONITOR_MASK;
4e889d62b89d00 Xiaolin Zhang 2017-12-05  496  
65eff272330c72 Xiong Zhang   2018-03-28  497  	/* Disable Primary/Sprite/Cursor plane */
65eff272330c72 Xiong Zhang   2018-03-28  498  	for_each_pipe(dev_priv, pipe) {
65eff272330c72 Xiong Zhang   2018-03-28  499  		vgpu_vreg_t(vgpu, DSPCNTR(pipe)) &= ~DISPLAY_PLANE_ENABLE;
65eff272330c72 Xiong Zhang   2018-03-28  500  		vgpu_vreg_t(vgpu, SPRCTL(pipe)) &= ~SPRITE_ENABLE;
b99b9ec1d374fd Ville Syrjälä 2018-01-31  501  		vgpu_vreg_t(vgpu, CURCNTR(pipe)) &= ~MCURSOR_MODE;
b99b9ec1d374fd Ville Syrjälä 2018-01-31  502  		vgpu_vreg_t(vgpu, CURCNTR(pipe)) |= MCURSOR_MODE_DISABLE;
65eff272330c72 Xiong Zhang   2018-03-28  503  	}
65eff272330c72 Xiong Zhang   2018-03-28  504  
90551a1296d4db Zhenyu Wang   2017-12-19  505  	vgpu_vreg_t(vgpu, PIPECONF(PIPE_A)) |= PIPECONF_ENABLE;
04d348ae3f0aea Zhi Wang      2016-04-25  506  }
04d348ae3f0aea Zhi Wang      2016-04-25  507  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
