Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A2D46A036
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Dec 2021 16:58:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 194FA72CCA;
	Mon,  6 Dec 2021 15:58:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F88672CCA
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Dec 2021 15:58:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10189"; a="298140088"
X-IronPort-AV: E=Sophos;i="5.87,291,1631602800"; d="scan'208";a="298140088"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2021 07:58:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,291,1631602800"; d="scan'208";a="461876209"
Received: from lkp-server02.sh.intel.com (HELO 9e1e9f9b3bcb) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 06 Dec 2021 07:58:11 -0800
Received: from kbuild by 9e1e9f9b3bcb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1muGNW-000LRK-Pb; Mon, 06 Dec 2021 15:58:10 +0000
Date: Mon, 6 Dec 2021 23:57:20 +0800
From: kernel test robot <lkp@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202112062346.Pub0KCZK-lkp@intel.com>
References: <20211201152552.7821-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211201152552.7821-7-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 06/14] drm/i915: Use REG_BIT() & co. for
 universal plane bits
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
config: x86_64-randconfig-a012-20211130 (https://download.01.org/0day-ci/archive/20211206/202112062346.Pub0KCZK-lkp@intel.com/config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 4b553297ef3ee4dc2119d5429adf3072e90fac38)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/50180d495a061c64528e2348a684037f5dc26e2e
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Ville-Syrjala/drm-i915-Plane-register-cleanup/20211202-010520
        git checkout 50180d495a061c64528e2348a684037f5dc26e2e
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/gpu/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/gvt/fb_decoder.c:221:10: error: use of undeclared identifier 'PLANE_CTL_FORMAT_MASK'
                           val & PLANE_CTL_FORMAT_MASK,
                                 ^
   drivers/gpu/drm/i915/gvt/fb_decoder.c:430:21: error: use of undeclared identifier 'SPRITE_YUV_BYTE_ORDER_MASK'
           yuv_order = (val & SPRITE_YUV_BYTE_ORDER_MASK) >>
                              ^
   2 errors generated.


vim +/PLANE_CTL_FORMAT_MASK +221 drivers/gpu/drm/i915/gvt/fb_decoder.c

9f31d1063b434c Tina Zhang          2017-11-23  192  
9f31d1063b434c Tina Zhang          2017-11-23  193  /**
9f31d1063b434c Tina Zhang          2017-11-23  194   * intel_vgpu_decode_primary_plane - Decode primary plane
9f31d1063b434c Tina Zhang          2017-11-23  195   * @vgpu: input vgpu
9f31d1063b434c Tina Zhang          2017-11-23  196   * @plane: primary plane to save decoded info
9f31d1063b434c Tina Zhang          2017-11-23  197   * This function is called for decoding plane
9f31d1063b434c Tina Zhang          2017-11-23  198   *
9f31d1063b434c Tina Zhang          2017-11-23  199   * Returns:
9f31d1063b434c Tina Zhang          2017-11-23  200   * 0 on success, non-zero if failed.
9f31d1063b434c Tina Zhang          2017-11-23  201   */
9f31d1063b434c Tina Zhang          2017-11-23  202  int intel_vgpu_decode_primary_plane(struct intel_vgpu *vgpu,
9f31d1063b434c Tina Zhang          2017-11-23  203  	struct intel_vgpu_primary_plane_format *plane)
9f31d1063b434c Tina Zhang          2017-11-23  204  {
a61ac1e75105a0 Chris Wilson        2020-03-06  205  	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
9f31d1063b434c Tina Zhang          2017-11-23  206  	u32 val, fmt;
9f31d1063b434c Tina Zhang          2017-11-23  207  	int pipe;
9f31d1063b434c Tina Zhang          2017-11-23  208  
9f31d1063b434c Tina Zhang          2017-11-23  209  	pipe = get_active_pipe(vgpu);
9f31d1063b434c Tina Zhang          2017-11-23  210  	if (pipe >= I915_MAX_PIPES)
9f31d1063b434c Tina Zhang          2017-11-23  211  		return -ENODEV;
9f31d1063b434c Tina Zhang          2017-11-23  212  
90551a1296d4db Zhenyu Wang         2017-12-19  213  	val = vgpu_vreg_t(vgpu, DSPCNTR(pipe));
9f31d1063b434c Tina Zhang          2017-11-23  214  	plane->enabled = !!(val & DISPLAY_PLANE_ENABLE);
9f31d1063b434c Tina Zhang          2017-11-23  215  	if (!plane->enabled)
9f31d1063b434c Tina Zhang          2017-11-23  216  		return -ENODEV;
9f31d1063b434c Tina Zhang          2017-11-23  217  
d8d123128c4872 Lucas De Marchi     2021-06-03  218  	if (GRAPHICS_VER(dev_priv) >= 9) {
b244ffa15c8b1a Zhenyu Wang         2018-08-30  219  		plane->tiled = val & PLANE_CTL_TILED_MASK;
9f31d1063b434c Tina Zhang          2017-11-23  220  		fmt = skl_format_to_drm(
9f31d1063b434c Tina Zhang          2017-11-23 @221  			val & PLANE_CTL_FORMAT_MASK,
9f31d1063b434c Tina Zhang          2017-11-23  222  			val & PLANE_CTL_ORDER_RGBX,
9f31d1063b434c Tina Zhang          2017-11-23  223  			val & PLANE_CTL_ALPHA_MASK,
9f31d1063b434c Tina Zhang          2017-11-23  224  			val & PLANE_CTL_YUV422_ORDER_MASK);
461bd6227ede27 Gustavo A. R. Silva 2017-12-09  225  
461bd6227ede27 Gustavo A. R. Silva 2017-12-09  226  		if (fmt >= ARRAY_SIZE(skl_pixel_formats)) {
461bd6227ede27 Gustavo A. R. Silva 2017-12-09  227  			gvt_vgpu_err("Out-of-bounds pixel format index\n");
461bd6227ede27 Gustavo A. R. Silva 2017-12-09  228  			return -EINVAL;
461bd6227ede27 Gustavo A. R. Silva 2017-12-09  229  		}
461bd6227ede27 Gustavo A. R. Silva 2017-12-09  230  
9f31d1063b434c Tina Zhang          2017-11-23  231  		plane->bpp = skl_pixel_formats[fmt].bpp;
9f31d1063b434c Tina Zhang          2017-11-23  232  		plane->drm_format = skl_pixel_formats[fmt].drm_format;
9f31d1063b434c Tina Zhang          2017-11-23  233  	} else {
a40fa231bb64b3 Tina Zhang          2018-12-03  234  		plane->tiled = val & DISPPLANE_TILED;
9f31d1063b434c Tina Zhang          2017-11-23  235  		fmt = bdw_format_to_drm(val & DISPPLANE_PIXFORMAT_MASK);
9f31d1063b434c Tina Zhang          2017-11-23  236  		plane->bpp = bdw_pixel_formats[fmt].bpp;
9f31d1063b434c Tina Zhang          2017-11-23  237  		plane->drm_format = bdw_pixel_formats[fmt].drm_format;
9f31d1063b434c Tina Zhang          2017-11-23  238  	}
9f31d1063b434c Tina Zhang          2017-11-23  239  
9f31d1063b434c Tina Zhang          2017-11-23  240  	if (!plane->bpp) {
9f31d1063b434c Tina Zhang          2017-11-23  241  		gvt_vgpu_err("Non-supported pixel format (0x%x)\n", fmt);
9f31d1063b434c Tina Zhang          2017-11-23  242  		return -EINVAL;
9f31d1063b434c Tina Zhang          2017-11-23  243  	}
9f31d1063b434c Tina Zhang          2017-11-23  244  
9f31d1063b434c Tina Zhang          2017-11-23  245  	plane->hw_format = fmt;
9f31d1063b434c Tina Zhang          2017-11-23  246  
90551a1296d4db Zhenyu Wang         2017-12-19  247  	plane->base = vgpu_vreg_t(vgpu, DSPSURF(pipe)) & I915_GTT_PAGE_MASK;
c25144098bee19 Xiong Zhang         2019-05-27  248  	if (!vgpu_gmadr_is_valid(vgpu, plane->base))
9f31d1063b434c Tina Zhang          2017-11-23  249  		return  -EINVAL;
9f31d1063b434c Tina Zhang          2017-11-23  250  
9f31d1063b434c Tina Zhang          2017-11-23  251  	plane->base_gpa = intel_vgpu_gma_to_gpa(vgpu->gtt.ggtt_mm, plane->base);
9f31d1063b434c Tina Zhang          2017-11-23  252  	if (plane->base_gpa == INTEL_GVT_INVALID_ADDR) {
a733390f9a7987 Xiong Zhang         2018-03-28  253  		gvt_vgpu_err("Translate primary plane gma 0x%x to gpa fail\n",
a733390f9a7987 Xiong Zhang         2018-03-28  254  				plane->base);
9f31d1063b434c Tina Zhang          2017-11-23  255  		return  -EINVAL;
9f31d1063b434c Tina Zhang          2017-11-23  256  	}
9f31d1063b434c Tina Zhang          2017-11-23  257  
b244ffa15c8b1a Zhenyu Wang         2018-08-30  258  	plane->stride = intel_vgpu_get_stride(vgpu, pipe, plane->tiled,
d8d123128c4872 Lucas De Marchi     2021-06-03  259  		(GRAPHICS_VER(dev_priv) >= 9) ?
4a136d590bd4c5 Tina Zhang          2017-11-28  260  		(_PRI_PLANE_STRIDE_MASK >> 6) :
9f31d1063b434c Tina Zhang          2017-11-23  261  		_PRI_PLANE_STRIDE_MASK, plane->bpp);
9f31d1063b434c Tina Zhang          2017-11-23  262  
90551a1296d4db Zhenyu Wang         2017-12-19  263  	plane->width = (vgpu_vreg_t(vgpu, PIPESRC(pipe)) & _PIPE_H_SRCSZ_MASK) >>
9f31d1063b434c Tina Zhang          2017-11-23  264  		_PIPE_H_SRCSZ_SHIFT;
9f31d1063b434c Tina Zhang          2017-11-23  265  	plane->width += 1;
90551a1296d4db Zhenyu Wang         2017-12-19  266  	plane->height = (vgpu_vreg_t(vgpu, PIPESRC(pipe)) &
9f31d1063b434c Tina Zhang          2017-11-23  267  			_PIPE_V_SRCSZ_MASK) >> _PIPE_V_SRCSZ_SHIFT;
9f31d1063b434c Tina Zhang          2017-11-23  268  	plane->height += 1;	/* raw height is one minus the real value */
9f31d1063b434c Tina Zhang          2017-11-23  269  
90551a1296d4db Zhenyu Wang         2017-12-19  270  	val = vgpu_vreg_t(vgpu, DSPTILEOFF(pipe));
9f31d1063b434c Tina Zhang          2017-11-23  271  	plane->x_offset = (val & _PRI_PLANE_X_OFF_MASK) >>
9f31d1063b434c Tina Zhang          2017-11-23  272  		_PRI_PLANE_X_OFF_SHIFT;
9f31d1063b434c Tina Zhang          2017-11-23  273  	plane->y_offset = (val & _PRI_PLANE_Y_OFF_MASK) >>
9f31d1063b434c Tina Zhang          2017-11-23  274  		_PRI_PLANE_Y_OFF_SHIFT;
9f31d1063b434c Tina Zhang          2017-11-23  275  
9f31d1063b434c Tina Zhang          2017-11-23  276  	return 0;
9f31d1063b434c Tina Zhang          2017-11-23  277  }
9f31d1063b434c Tina Zhang          2017-11-23  278  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
