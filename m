Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30933510C60
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Apr 2022 01:01:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 830F610E00A;
	Tue, 26 Apr 2022 23:01:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84F5A10E00A
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 23:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651014074; x=1682550074;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=AHcrZEPAdFjrkeeWsO0GaIHnjtXn1bMwmZ10GUEIOvw=;
 b=CDSujI4NGyxCUZQ3VSYup6/acy5sAQBHOjK98rKL/h7uu7Sug4/9SMFI
 a+UZjfIMNsjpCZ2oYuh1yIfXV9wcbLBmi48tqQthPDuX+2f9nUVY423Uc
 kbzafYT3CG5ki52ZpiLap9Ozb/xtEHsoe/ESgW2oLSWRyOuw+naLdgJMQ
 sIkjb+472MaqAIe8IiNwCfR+D2Ti0GwCuBlKC/IsA1cK7KZEx9Lf6Wktp
 vDwljCOM7revgBT34mD7Fu8DHNzCUy4n6G5nexmFFdOhNM25uZKJCgq+E
 RDFfSspy68Xa4WuIDoT3+WONogu43XMDeaZ7eAVfOAnhetSU647eRWaZM w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="247678554"
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="247678554"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 16:01:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="539151085"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 26 Apr 2022 16:01:12 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1njUBD-00044n-RJ;
 Tue, 26 Apr 2022 23:01:11 +0000
Date: Wed, 27 Apr 2022 07:00:35 +0800
From: kernel test robot <lkp@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>,
	intel-gfx@lists.freedesktop.org
Message-ID: <202204270658.1YtrpLya-lkp@intel.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220426120407.1334318-1-arun.r.murthy@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Support Async Flip on Linear
 buffers
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

Hi Arun,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-intel/for-linux-next]
[also build test ERROR on drm-tip/drm-tip v5.18-rc4 next-20220426]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Arun-R-Murthy/drm-i915-Support-Async-Flip-on-Linear-buffers/20220426-200801
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: i386-randconfig-a002-20220425 (https://download.01.org/0day-ci/archive/20220427/202204270658.1YtrpLya-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project 1cddcfdc3c683b393df1a5c9063252eb60e52818)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/a31035350521698f7d7656a54a3b7e163257bf70
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Arun-R-Murthy/drm-i915-Support-Async-Flip-on-Linear-buffers/20220426-200801
        git checkout a31035350521698f7d7656a54a3b7e163257bf70
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_display.c:7532:3: error: unannotated fall-through between switch labels [-Werror,-Wimplicit-fallthrough]
                   case I915_FORMAT_MOD_X_TILED:
                   ^
   drivers/gpu/drm/i915/display/intel_display.c:7532:3: note: insert 'break;' to avoid fall-through
                   case I915_FORMAT_MOD_X_TILED:
                   ^
                   break; 
   1 error generated.


vim +7532 drivers/gpu/drm/i915/display/intel_display.c

b0b2bed2a1305c Ville Syrjälä         2022-02-14  7458  
b0b2bed2a1305c Ville Syrjälä         2022-02-14  7459  static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct intel_crtc *crtc)
30ff93af9e19db Karthik B S           2020-09-21  7460  {
30ff93af9e19db Karthik B S           2020-09-21  7461  	struct drm_i915_private *i915 = to_i915(state->base.dev);
30ff93af9e19db Karthik B S           2020-09-21  7462  	const struct intel_crtc_state *old_crtc_state, *new_crtc_state;
30ff93af9e19db Karthik B S           2020-09-21  7463  	const struct intel_plane_state *new_plane_state, *old_plane_state;
30ff93af9e19db Karthik B S           2020-09-21  7464  	struct intel_plane *plane;
30ff93af9e19db Karthik B S           2020-09-21  7465  	int i;
30ff93af9e19db Karthik B S           2020-09-21  7466  
0826edb6a5e5b3 José Roberto de Souza 2021-10-29  7467  	old_crtc_state = intel_atomic_get_old_crtc_state(state, crtc);
0826edb6a5e5b3 José Roberto de Souza 2021-10-29  7468  	new_crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
0826edb6a5e5b3 José Roberto de Souza 2021-10-29  7469  
b0b2bed2a1305c Ville Syrjälä         2022-02-14  7470  	if (!new_crtc_state->uapi.async_flip)
b0b2bed2a1305c Ville Syrjälä         2022-02-14  7471  		return 0;
b0b2bed2a1305c Ville Syrjälä         2022-02-14  7472  
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7473  	if (!new_crtc_state->hw.active) {
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7474  		drm_dbg_kms(&i915->drm,
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7475  			    "[CRTC:%d:%s] not active\n",
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7476  			    crtc->base.base.id, crtc->base.name);
30ff93af9e19db Karthik B S           2020-09-21  7477  		return -EINVAL;
30ff93af9e19db Karthik B S           2020-09-21  7478  	}
30ff93af9e19db Karthik B S           2020-09-21  7479  
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7480  	if (intel_crtc_needs_modeset(new_crtc_state)) {
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7481  		drm_dbg_kms(&i915->drm,
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7482  			    "[CRTC:%d:%s] modeset required\n",
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7483  			    crtc->base.base.id, crtc->base.name);
30ff93af9e19db Karthik B S           2020-09-21  7484  		return -EINVAL;
30ff93af9e19db Karthik B S           2020-09-21  7485  	}
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7486  
30ff93af9e19db Karthik B S           2020-09-21  7487  	if (old_crtc_state->active_planes != new_crtc_state->active_planes) {
30ff93af9e19db Karthik B S           2020-09-21  7488  		drm_dbg_kms(&i915->drm,
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7489  			    "[CRTC:%d:%s] Active planes cannot be in async flip\n",
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7490  			    crtc->base.base.id, crtc->base.name);
30ff93af9e19db Karthik B S           2020-09-21  7491  		return -EINVAL;
30ff93af9e19db Karthik B S           2020-09-21  7492  	}
30ff93af9e19db Karthik B S           2020-09-21  7493  
30ff93af9e19db Karthik B S           2020-09-21  7494  	for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
30ff93af9e19db Karthik B S           2020-09-21  7495  					     new_plane_state, i) {
0826edb6a5e5b3 José Roberto de Souza 2021-10-29  7496  		if (plane->pipe != crtc->pipe)
0826edb6a5e5b3 José Roberto de Souza 2021-10-29  7497  			continue;
0826edb6a5e5b3 José Roberto de Souza 2021-10-29  7498  
30ff93af9e19db Karthik B S           2020-09-21  7499  		/*
2e08437160d1e8 Ville Syrjälä         2022-02-14  7500  		 * Only async flip capable planes should be in the state
2e08437160d1e8 Ville Syrjälä         2022-02-14  7501  		 * if we're really about to ask the hardware to perform
2e08437160d1e8 Ville Syrjälä         2022-02-14  7502  		 * an async flip. We should never get this far otherwise.
30ff93af9e19db Karthik B S           2020-09-21  7503  		 */
2e08437160d1e8 Ville Syrjälä         2022-02-14  7504  		if (drm_WARN_ON(&i915->drm,
2e08437160d1e8 Ville Syrjälä         2022-02-14  7505  				new_crtc_state->do_async_flip && !plane->async_flip))
30ff93af9e19db Karthik B S           2020-09-21  7506  			return -EINVAL;
30ff93af9e19db Karthik B S           2020-09-21  7507  
2e08437160d1e8 Ville Syrjälä         2022-02-14  7508  		/*
2e08437160d1e8 Ville Syrjälä         2022-02-14  7509  		 * Only check async flip capable planes other planes
2e08437160d1e8 Ville Syrjälä         2022-02-14  7510  		 * may be involved in the initial commit due to
2e08437160d1e8 Ville Syrjälä         2022-02-14  7511  		 * the wm0/ddb optimization.
2e08437160d1e8 Ville Syrjälä         2022-02-14  7512  		 *
2e08437160d1e8 Ville Syrjälä         2022-02-14  7513  		 * TODO maybe should track which planes actually
2e08437160d1e8 Ville Syrjälä         2022-02-14  7514  		 * were requested to do the async flip...
2e08437160d1e8 Ville Syrjälä         2022-02-14  7515  		 */
2e08437160d1e8 Ville Syrjälä         2022-02-14  7516  		if (!plane->async_flip)
2e08437160d1e8 Ville Syrjälä         2022-02-14  7517  			continue;
2e08437160d1e8 Ville Syrjälä         2022-02-14  7518  
30ff93af9e19db Karthik B S           2020-09-21  7519  		/*
30ff93af9e19db Karthik B S           2020-09-21  7520  		 * FIXME: This check is kept generic for all platforms.
244dba4cb59637 Lucas De Marchi       2021-07-28  7521  		 * Need to verify this for all gen9 platforms to enable
30ff93af9e19db Karthik B S           2020-09-21  7522  		 * this selectively if required.
30ff93af9e19db Karthik B S           2020-09-21  7523  		 */
30ff93af9e19db Karthik B S           2020-09-21  7524  		switch (new_plane_state->hw.fb->modifier) {
a3103535052169 Arun R Murthy         2022-04-26  7525  		case DRM_FORMAT_MOD_LINEAR:
a3103535052169 Arun R Murthy         2022-04-26  7526  			if (DISPLAY_VER(i915) < 12) {
a3103535052169 Arun R Murthy         2022-04-26  7527  				drm_dbg_kms(&i915->drm,
a3103535052169 Arun R Murthy         2022-04-26  7528  					"[PLANE:%d:%s] Modifier does not support async flips\n",
a3103535052169 Arun R Murthy         2022-04-26  7529  					plane->base.base.id, plane->base.name);
a3103535052169 Arun R Murthy         2022-04-26  7530  				return -EINVAL;
a3103535052169 Arun R Murthy         2022-04-26  7531  			}
30ff93af9e19db Karthik B S           2020-09-21 @7532  		case I915_FORMAT_MOD_X_TILED:
30ff93af9e19db Karthik B S           2020-09-21  7533  		case I915_FORMAT_MOD_Y_TILED:
30ff93af9e19db Karthik B S           2020-09-21  7534  		case I915_FORMAT_MOD_Yf_TILED:
072ce4164f973b Stanislav Lisovskiy   2022-01-18  7535  		case I915_FORMAT_MOD_4_TILED:
30ff93af9e19db Karthik B S           2020-09-21  7536  			break;
30ff93af9e19db Karthik B S           2020-09-21  7537  		default:
30ff93af9e19db Karthik B S           2020-09-21  7538  			drm_dbg_kms(&i915->drm,
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7539  				    "[PLANE:%d:%s] Modifier does not support async flips\n",
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7540  				    plane->base.base.id, plane->base.name);
30ff93af9e19db Karthik B S           2020-09-21  7541  			return -EINVAL;
30ff93af9e19db Karthik B S           2020-09-21  7542  		}
30ff93af9e19db Karthik B S           2020-09-21  7543  
aaec72ee90bccc Ville Syrjälä         2021-10-18  7544  		if (new_plane_state->hw.fb->format->num_planes > 1) {
aaec72ee90bccc Ville Syrjälä         2021-10-18  7545  			drm_dbg_kms(&i915->drm,
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7546  				    "[PLANE:%d:%s] Planar formats do not support async flips\n",
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7547  				    plane->base.base.id, plane->base.name);
aaec72ee90bccc Ville Syrjälä         2021-10-18  7548  			return -EINVAL;
aaec72ee90bccc Ville Syrjälä         2021-10-18  7549  		}
aaec72ee90bccc Ville Syrjälä         2021-10-18  7550  
be6c1dd5ac074d Imre Deak             2021-10-27  7551  		if (old_plane_state->view.color_plane[0].mapping_stride !=
be6c1dd5ac074d Imre Deak             2021-10-27  7552  		    new_plane_state->view.color_plane[0].mapping_stride) {
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7553  			drm_dbg_kms(&i915->drm,
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7554  				    "[PLANE:%d:%s] Stride cannot be changed in async flip\n",
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7555  				    plane->base.base.id, plane->base.name);
30ff93af9e19db Karthik B S           2020-09-21  7556  			return -EINVAL;
30ff93af9e19db Karthik B S           2020-09-21  7557  		}
30ff93af9e19db Karthik B S           2020-09-21  7558  
30ff93af9e19db Karthik B S           2020-09-21  7559  		if (old_plane_state->hw.fb->modifier !=
30ff93af9e19db Karthik B S           2020-09-21  7560  		    new_plane_state->hw.fb->modifier) {
30ff93af9e19db Karthik B S           2020-09-21  7561  			drm_dbg_kms(&i915->drm,
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7562  				    "[PLANE:%d:%s] Modifier cannot be changed in async flip\n",
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7563  				    plane->base.base.id, plane->base.name);
30ff93af9e19db Karthik B S           2020-09-21  7564  			return -EINVAL;
30ff93af9e19db Karthik B S           2020-09-21  7565  		}
30ff93af9e19db Karthik B S           2020-09-21  7566  
30ff93af9e19db Karthik B S           2020-09-21  7567  		if (old_plane_state->hw.fb->format !=
30ff93af9e19db Karthik B S           2020-09-21  7568  		    new_plane_state->hw.fb->format) {
30ff93af9e19db Karthik B S           2020-09-21  7569  			drm_dbg_kms(&i915->drm,
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7570  				    "[PLANE:%d:%s] Pixel format cannot be changed in async flip\n",
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7571  				    plane->base.base.id, plane->base.name);
30ff93af9e19db Karthik B S           2020-09-21  7572  			return -EINVAL;
30ff93af9e19db Karthik B S           2020-09-21  7573  		}
30ff93af9e19db Karthik B S           2020-09-21  7574  
30ff93af9e19db Karthik B S           2020-09-21  7575  		if (old_plane_state->hw.rotation !=
30ff93af9e19db Karthik B S           2020-09-21  7576  		    new_plane_state->hw.rotation) {
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7577  			drm_dbg_kms(&i915->drm,
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7578  				    "[PLANE:%d:%s] Rotation cannot be changed in async flip\n",
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7579  				    plane->base.base.id, plane->base.name);
30ff93af9e19db Karthik B S           2020-09-21  7580  			return -EINVAL;
30ff93af9e19db Karthik B S           2020-09-21  7581  		}
30ff93af9e19db Karthik B S           2020-09-21  7582  
30ff93af9e19db Karthik B S           2020-09-21  7583  		if (!drm_rect_equals(&old_plane_state->uapi.src, &new_plane_state->uapi.src) ||
30ff93af9e19db Karthik B S           2020-09-21  7584  		    !drm_rect_equals(&old_plane_state->uapi.dst, &new_plane_state->uapi.dst)) {
30ff93af9e19db Karthik B S           2020-09-21  7585  			drm_dbg_kms(&i915->drm,
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7586  				    "[PLANE:%d:%s] Size/co-ordinates cannot be changed in async flip\n",
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7587  				    plane->base.base.id, plane->base.name);
30ff93af9e19db Karthik B S           2020-09-21  7588  			return -EINVAL;
30ff93af9e19db Karthik B S           2020-09-21  7589  		}
30ff93af9e19db Karthik B S           2020-09-21  7590  
30ff93af9e19db Karthik B S           2020-09-21  7591  		if (old_plane_state->hw.alpha != new_plane_state->hw.alpha) {
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7592  			drm_dbg_kms(&i915->drm,
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7593  				    "[PLANES:%d:%s] Alpha value cannot be changed in async flip\n",
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7594  				    plane->base.base.id, plane->base.name);
30ff93af9e19db Karthik B S           2020-09-21  7595  			return -EINVAL;
30ff93af9e19db Karthik B S           2020-09-21  7596  		}
30ff93af9e19db Karthik B S           2020-09-21  7597  
30ff93af9e19db Karthik B S           2020-09-21  7598  		if (old_plane_state->hw.pixel_blend_mode !=
30ff93af9e19db Karthik B S           2020-09-21  7599  		    new_plane_state->hw.pixel_blend_mode) {
30ff93af9e19db Karthik B S           2020-09-21  7600  			drm_dbg_kms(&i915->drm,
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7601  				    "[PLANE:%d:%s] Pixel blend mode cannot be changed in async flip\n",
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7602  				    plane->base.base.id, plane->base.name);
30ff93af9e19db Karthik B S           2020-09-21  7603  			return -EINVAL;
30ff93af9e19db Karthik B S           2020-09-21  7604  		}
30ff93af9e19db Karthik B S           2020-09-21  7605  
30ff93af9e19db Karthik B S           2020-09-21  7606  		if (old_plane_state->hw.color_encoding != new_plane_state->hw.color_encoding) {
30ff93af9e19db Karthik B S           2020-09-21  7607  			drm_dbg_kms(&i915->drm,
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7608  				    "[PLANE:%d:%s] Color encoding cannot be changed in async flip\n",
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7609  				    plane->base.base.id, plane->base.name);
30ff93af9e19db Karthik B S           2020-09-21  7610  			return -EINVAL;
30ff93af9e19db Karthik B S           2020-09-21  7611  		}
30ff93af9e19db Karthik B S           2020-09-21  7612  
30ff93af9e19db Karthik B S           2020-09-21  7613  		if (old_plane_state->hw.color_range != new_plane_state->hw.color_range) {
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7614  			drm_dbg_kms(&i915->drm,
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7615  				    "[PLANE:%d:%s] Color range cannot be changed in async flip\n",
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7616  				    plane->base.base.id, plane->base.name);
30ff93af9e19db Karthik B S           2020-09-21  7617  			return -EINVAL;
30ff93af9e19db Karthik B S           2020-09-21  7618  		}
ef6ba31dd38405 Anshuman Gupta        2021-09-24  7619  
ef6ba31dd38405 Anshuman Gupta        2021-09-24  7620  		/* plane decryption is allow to change only in synchronous flips */
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7621  		if (old_plane_state->decrypt != new_plane_state->decrypt) {
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7622  			drm_dbg_kms(&i915->drm,
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7623  				    "[PLANE:%d:%s] Decryption cannot be changed in async flip\n",
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7624  				    plane->base.base.id, plane->base.name);
ef6ba31dd38405 Anshuman Gupta        2021-09-24  7625  			return -EINVAL;
30ff93af9e19db Karthik B S           2020-09-21  7626  		}
6b4e414ce8dab7 Ville Syrjälä         2022-02-14  7627  	}
30ff93af9e19db Karthik B S           2020-09-21  7628  
30ff93af9e19db Karthik B S           2020-09-21  7629  	return 0;
30ff93af9e19db Karthik B S           2020-09-21  7630  }
30ff93af9e19db Karthik B S           2020-09-21  7631  

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
