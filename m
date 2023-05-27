Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B4D7130DE
	for <lists+intel-gfx@lfdr.de>; Sat, 27 May 2023 02:28:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44CB510E06E;
	Sat, 27 May 2023 00:28:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2585310E06E
 for <intel-gfx@lists.freedesktop.org>; Sat, 27 May 2023 00:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685147330; x=1716683330;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=TOL6hyiWiO3MgUT+DspcqArIrWW1xuonaiyqnX1/mQw=;
 b=j4qXff7MH8dOYCEQRwLhaadx8nI7tUwpE6NCoUHtob/ttqNtF6qA4eMM
 1AHHXegJFZ3BTyBdLo3XmIlNFrTkQr4gSHQDc2sQZ776fwhmYuHfr5Dkl
 mn+jvMKI0OZYWndUKK1D+SDN+X0MIGex2NQYrSrBYOp4YMZ+xf5Dg5WN1
 +qKaL2MPuPO3XbkWu3Ceu92DFzIxmBkrppSn8Z4xTCSEBdFU4VRjamnHc
 KyRlBVF4tIx3Nzmm8dk1U3wlkTc5ldn/ikrWaQxd9c6SQd1ZDSjIYyQMZ
 bRP38EgKHQtSdEFM5Nf44yUU53pMhEmIC0n/19mGvwdMlzN4vGOP61Nc7 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="357589185"
X-IronPort-AV: E=Sophos;i="6.00,195,1681196400"; d="scan'208";a="357589185"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 17:28:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="655815722"
X-IronPort-AV: E=Sophos;i="6.00,195,1681196400"; d="scan'208";a="655815722"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 26 May 2023 17:28:47 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q2hnb-000JgA-0N;
 Sat, 27 May 2023 00:28:47 +0000
Date: Sat, 27 May 2023 08:27:49 +0800
From: kernel test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <202305270846.ZA7bj1cg-lkp@intel.com>
References: <0988d237e56c56568f035053da8e2e2308a17d3a.1685119007.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0988d237e56c56568f035053da8e2e2308a17d3a.1685119007.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 01/15] drm/i915/plane: warn on non-zero
 plane offset
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

Hi Jani,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Jani-Nikula/drm-i915-plane-warn-on-non-zero-plane-offset/20230527-003951
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/0988d237e56c56568f035053da8e2e2308a17d3a.1685119007.git.jani.nikula%40intel.com
patch subject: [Intel-gfx] [PATCH 01/15] drm/i915/plane: warn on non-zero plane offset
config: x86_64-randconfig-x056-20230526 (https://download.01.org/0day-ci/archive/20230527/202305270846.ZA7bj1cg-lkp@intel.com/config)
compiler: clang version 14.0.6 (https://github.com/llvm/llvm-project f28c006a5895fc0e329fe15fead81e37457cb1d1)
reproduce (this is a W=1 build):
        mkdir -p ~/bin
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/40c3d9e9221e230ab6f0b2e3051b6c4566a1e852
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Jani-Nikula/drm-i915-plane-warn-on-non-zero-plane-offset/20230527-003951
        git checkout 40c3d9e9221e230ab6f0b2e3051b6c4566a1e852
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang ~/bin/make.cross W=1 O=build_dir ARCH=x86_64 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang ~/bin/make.cross W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202305270846.ZA7bj1cg-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/i9xx_plane.c:1027:13: error: variable 'offset' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
           } else if (DISPLAY_VER(dev_priv) >= 4) {
                      ^~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_drv.h:433:27: note: expanded from macro 'DISPLAY_VER'
   #define DISPLAY_VER(i915)       (DISPLAY_RUNTIME_INFO(i915)->ip.ver)
                                   ^
   drivers/gpu/drm/i915/display/i9xx_plane.c:1040:30: note: uninitialized use occurs here
           drm_WARN_ON(&dev_priv->drm, offset != 0);
                                       ^~~~~~
   include/drm/drm_print.h:630:19: note: expanded from macro 'drm_WARN_ON'
           drm_WARN((drm), (x), "%s",                                      \
                            ^
   include/drm/drm_print.h:620:7: note: expanded from macro 'drm_WARN'
           WARN(condition, "%s %s: " format,                               \
                ^~~~~~~~~
   include/asm-generic/bug.h:131:25: note: expanded from macro 'WARN'
           int __ret_warn_on = !!(condition);                              \
                                  ^~~~~~~~~
   drivers/gpu/drm/i915/display/i9xx_plane.c:1027:9: note: remove the 'if' if its condition is always true
           } else if (DISPLAY_VER(dev_priv) >= 4) {
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/i9xx_plane.c:983:23: note: initialize the variable 'offset' to silence this warning
           u32 val, base, offset;
                                ^
                                 = 0
   1 error generated.


vim +1027 drivers/gpu/drm/i915/display/i9xx_plane.c

2a3014490cd18a Dave Airlie   2021-02-05   973  
2a3014490cd18a Dave Airlie   2021-02-05   974  void
2a3014490cd18a Dave Airlie   2021-02-05   975  i9xx_get_initial_plane_config(struct intel_crtc *crtc,
2a3014490cd18a Dave Airlie   2021-02-05   976  			      struct intel_initial_plane_config *plane_config)
2a3014490cd18a Dave Airlie   2021-02-05   977  {
2a3014490cd18a Dave Airlie   2021-02-05   978  	struct drm_device *dev = crtc->base.dev;
2a3014490cd18a Dave Airlie   2021-02-05   979  	struct drm_i915_private *dev_priv = to_i915(dev);
2a3014490cd18a Dave Airlie   2021-02-05   980  	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
2a3014490cd18a Dave Airlie   2021-02-05   981  	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
2a3014490cd18a Dave Airlie   2021-02-05   982  	enum pipe pipe;
2a3014490cd18a Dave Airlie   2021-02-05   983  	u32 val, base, offset;
2a3014490cd18a Dave Airlie   2021-02-05   984  	int fourcc, pixel_format;
2a3014490cd18a Dave Airlie   2021-02-05   985  	unsigned int aligned_height;
2a3014490cd18a Dave Airlie   2021-02-05   986  	struct drm_framebuffer *fb;
2a3014490cd18a Dave Airlie   2021-02-05   987  	struct intel_framebuffer *intel_fb;
2a3014490cd18a Dave Airlie   2021-02-05   988  
2a3014490cd18a Dave Airlie   2021-02-05   989  	if (!plane->get_hw_state(plane, &pipe))
2a3014490cd18a Dave Airlie   2021-02-05   990  		return;
2a3014490cd18a Dave Airlie   2021-02-05   991  
2a3014490cd18a Dave Airlie   2021-02-05   992  	drm_WARN_ON(dev, pipe != crtc->pipe);
2a3014490cd18a Dave Airlie   2021-02-05   993  
2a3014490cd18a Dave Airlie   2021-02-05   994  	intel_fb = kzalloc(sizeof(*intel_fb), GFP_KERNEL);
2a3014490cd18a Dave Airlie   2021-02-05   995  	if (!intel_fb) {
2a3014490cd18a Dave Airlie   2021-02-05   996  		drm_dbg_kms(&dev_priv->drm, "failed to alloc fb\n");
2a3014490cd18a Dave Airlie   2021-02-05   997  		return;
2a3014490cd18a Dave Airlie   2021-02-05   998  	}
2a3014490cd18a Dave Airlie   2021-02-05   999  
2a3014490cd18a Dave Airlie   2021-02-05  1000  	fb = &intel_fb->base;
2a3014490cd18a Dave Airlie   2021-02-05  1001  
2a3014490cd18a Dave Airlie   2021-02-05  1002  	fb->dev = dev;
2a3014490cd18a Dave Airlie   2021-02-05  1003  
2a3014490cd18a Dave Airlie   2021-02-05  1004  	val = intel_de_read(dev_priv, DSPCNTR(i9xx_plane));
2a3014490cd18a Dave Airlie   2021-02-05  1005  
005e95377249cb Matt Roper    2021-03-19  1006  	if (DISPLAY_VER(dev_priv) >= 4) {
428cb15d5b0031 Ville Syrjälä 2022-01-21  1007  		if (val & DISP_TILED) {
2a3014490cd18a Dave Airlie   2021-02-05  1008  			plane_config->tiling = I915_TILING_X;
2a3014490cd18a Dave Airlie   2021-02-05  1009  			fb->modifier = I915_FORMAT_MOD_X_TILED;
2a3014490cd18a Dave Airlie   2021-02-05  1010  		}
2a3014490cd18a Dave Airlie   2021-02-05  1011  
428cb15d5b0031 Ville Syrjälä 2022-01-21  1012  		if (val & DISP_ROTATE_180)
2a3014490cd18a Dave Airlie   2021-02-05  1013  			plane_config->rotation = DRM_MODE_ROTATE_180;
2a3014490cd18a Dave Airlie   2021-02-05  1014  	}
2a3014490cd18a Dave Airlie   2021-02-05  1015  
2a3014490cd18a Dave Airlie   2021-02-05  1016  	if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B &&
428cb15d5b0031 Ville Syrjälä 2022-01-21  1017  	    val & DISP_MIRROR)
2a3014490cd18a Dave Airlie   2021-02-05  1018  		plane_config->rotation |= DRM_MODE_REFLECT_X;
2a3014490cd18a Dave Airlie   2021-02-05  1019  
428cb15d5b0031 Ville Syrjälä 2022-01-21  1020  	pixel_format = val & DISP_FORMAT_MASK;
2a3014490cd18a Dave Airlie   2021-02-05  1021  	fourcc = i9xx_format_to_fourcc(pixel_format);
2a3014490cd18a Dave Airlie   2021-02-05  1022  	fb->format = drm_format_info(fourcc);
2a3014490cd18a Dave Airlie   2021-02-05  1023  
2a3014490cd18a Dave Airlie   2021-02-05  1024  	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
2a3014490cd18a Dave Airlie   2021-02-05  1025  		offset = intel_de_read(dev_priv, DSPOFFSET(i9xx_plane));
428cb15d5b0031 Ville Syrjälä 2022-01-21  1026  		base = intel_de_read(dev_priv, DSPSURF(i9xx_plane)) & DISP_ADDR_MASK;
005e95377249cb Matt Roper    2021-03-19 @1027  	} else if (DISPLAY_VER(dev_priv) >= 4) {

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
