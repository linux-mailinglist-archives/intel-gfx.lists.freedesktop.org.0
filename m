Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 873F79866CD
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 21:22:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23BBF10E1B5;
	Wed, 25 Sep 2024 19:22:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TcafY0d0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A95CC10E1B5
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 19:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727292158; x=1758828158;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ZC3Nh8jXNyaMx+N0HxCVN/V6DJjNe47xe6VcstUqKyU=;
 b=TcafY0d0A0DFDTnO2Jhv5LYqM7zvwrp+e9U4C1F6SLB5m1QqB8o3n/Xi
 FGljRzlw5xVVqqIdU4KfL6YfTEW23V17V9nXrJs5JWMvuhxfQJLmA7hmk
 +y3xT2qC2WCC5Gvq9pzt/ItCN68OhlmC5fFeTFi/C3E/xC7A8yBWbvxHQ
 keK0ukB1yD1l5dRdYj3CbMgmY9iAQ16Nhvbz5FHqbjEw03OpsMeMT+93b
 deAqh4Pyk877t0y7Y/lCR+3k6X5w05NutTQmHLPF9CLtmw6t1jVD3VJ3V
 MQ4UtJEawxSb48VXsWY3RKk4vPgdS2iFjFlzv19lioV2Vq5rKtM7sbesC w==;
X-CSE-ConnectionGUID: kESVpJLaSRe1v9riBXqbBA==
X-CSE-MsgGUID: 7Cr4mwS2TfK5X8qVuSdfYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="37038044"
X-IronPort-AV: E=Sophos;i="6.10,258,1719903600"; d="scan'208";a="37038044"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 12:22:36 -0700
X-CSE-ConnectionGUID: PFGxo2AhRqqCNckHkhVVMg==
X-CSE-MsgGUID: 1K6uvwN1Sz6MRdtEFKYIpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,258,1719903600"; d="scan'208";a="76395530"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 25 Sep 2024 12:22:35 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1stXaq-000Ju5-2G;
 Wed, 25 Sep 2024 19:22:32 +0000
Date: Thu, 26 Sep 2024 03:22:31 +0800
From: kernel test robot <lkp@intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>, intel-gfx@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 Nemesa Garg <nemesa.garg@intel.com>
Subject: Re: [PATCH v4 3/3] drm/i915/display: Call panel_fitting from
 pipe_config
Message-ID: <202409260417.AhxuRXmO-lkp@intel.com>
References: <20240925063032.2311796-4-nemesa.garg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240925063032.2311796-4-nemesa.garg@intel.com>
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

Hi Nemesa,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-intel/for-linux-next]
[also build test ERROR on drm-intel/for-linux-next-fixes drm-tip/drm-tip linus/master v6.11 next-20240925]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Nemesa-Garg/drm-i915-display-Modify-panel_fitting-code-for-joiner/20240925-143239
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20240925063032.2311796-4-nemesa.garg%40intel.com
patch subject: [PATCH v4 3/3] drm/i915/display: Call panel_fitting from pipe_config
config: i386-randconfig-015-20240925 (https://download.01.org/0day-ci/archive/20240926/202409260417.AhxuRXmO-lkp@intel.com/config)
compiler: clang version 18.1.8 (https://github.com/llvm/llvm-project 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240926/202409260417.AhxuRXmO-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202409260417.AhxuRXmO-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_display.c:4792:37: error: variable 'fixed_mode' is uninitialized when used here [-Werror,-Wuninitialized]
    4792 |                 if ((intel_dp_is_edp(intel_dp) && fixed_mode) ||
         |                                                   ^~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_display.c:4656:43: note: initialize the variable 'fixed_mode' to silence this warning
    4656 |         const struct drm_display_mode *fixed_mode;
         |                                                  ^
         |                                                   = NULL
   1 error generated.


vim +/fixed_mode +4792 drivers/gpu/drm/i915/display/intel_display.c

  4645	
  4646	static int
  4647	intel_modeset_pipe_config(struct intel_atomic_state *state,
  4648				  struct intel_crtc *crtc,
  4649				  const struct intel_link_bw_limits *limits)
  4650	{
  4651		struct drm_i915_private *i915 = to_i915(crtc->base.dev);
  4652		struct intel_crtc_state *crtc_state =
  4653			intel_atomic_get_new_crtc_state(state, crtc);
  4654		struct drm_connector *connector;
  4655		struct drm_connector_state *connector_state;
  4656		const struct drm_display_mode *fixed_mode;
  4657		struct intel_dp *intel_dp;
  4658		int pipe_src_w, pipe_src_h;
  4659		int base_bpp, ret, i;
  4660	
  4661		crtc_state->cpu_transcoder = (enum transcoder) crtc->pipe;
  4662	
  4663		crtc_state->framestart_delay = 1;
  4664	
  4665		/*
  4666		 * Sanitize sync polarity flags based on requested ones. If neither
  4667		 * positive or negative polarity is requested, treat this as meaning
  4668		 * negative polarity.
  4669		 */
  4670		if (!(crtc_state->hw.adjusted_mode.flags &
  4671		      (DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NHSYNC)))
  4672			crtc_state->hw.adjusted_mode.flags |= DRM_MODE_FLAG_NHSYNC;
  4673	
  4674		if (!(crtc_state->hw.adjusted_mode.flags &
  4675		      (DRM_MODE_FLAG_PVSYNC | DRM_MODE_FLAG_NVSYNC)))
  4676			crtc_state->hw.adjusted_mode.flags |= DRM_MODE_FLAG_NVSYNC;
  4677	
  4678		ret = compute_baseline_pipe_bpp(state, crtc);
  4679		if (ret)
  4680			return ret;
  4681	
  4682		crtc_state->fec_enable = limits->force_fec_pipes & BIT(crtc->pipe);
  4683		crtc_state->max_link_bpp_x16 = limits->max_bpp_x16[crtc->pipe];
  4684	
  4685		if (crtc_state->pipe_bpp > fxp_q4_to_int(crtc_state->max_link_bpp_x16)) {
  4686			drm_dbg_kms(&i915->drm,
  4687				    "[CRTC:%d:%s] Link bpp limited to " FXP_Q4_FMT "\n",
  4688				    crtc->base.base.id, crtc->base.name,
  4689				    FXP_Q4_ARGS(crtc_state->max_link_bpp_x16));
  4690			crtc_state->bw_constrained = true;
  4691		}
  4692	
  4693		base_bpp = crtc_state->pipe_bpp;
  4694	
  4695		/*
  4696		 * Determine the real pipe dimensions. Note that stereo modes can
  4697		 * increase the actual pipe size due to the frame doubling and
  4698		 * insertion of additional space for blanks between the frame. This
  4699		 * is stored in the crtc timings. We use the requested mode to do this
  4700		 * computation to clearly distinguish it from the adjusted mode, which
  4701		 * can be changed by the connectors in the below retry loop.
  4702		 */
  4703		drm_mode_get_hv_timing(&crtc_state->hw.mode,
  4704				       &pipe_src_w, &pipe_src_h);
  4705		drm_rect_init(&crtc_state->pipe_src, 0, 0,
  4706			      pipe_src_w, pipe_src_h);
  4707	
  4708		for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
  4709			struct intel_encoder *encoder =
  4710				to_intel_encoder(connector_state->best_encoder);
  4711	
  4712			if (connector_state->crtc != &crtc->base)
  4713				continue;
  4714	
  4715			if (!check_single_encoder_cloning(state, crtc, encoder)) {
  4716				drm_dbg_kms(&i915->drm,
  4717					    "[ENCODER:%d:%s] rejecting invalid cloning configuration\n",
  4718					    encoder->base.base.id, encoder->base.name);
  4719				return -EINVAL;
  4720			}
  4721	
  4722			/*
  4723			 * Determine output_types before calling the .compute_config()
  4724			 * hooks so that the hooks can use this information safely.
  4725			 */
  4726			if (encoder->compute_output_type)
  4727				crtc_state->output_types |=
  4728					BIT(encoder->compute_output_type(encoder, crtc_state,
  4729									 connector_state));
  4730			else
  4731				crtc_state->output_types |= BIT(encoder->type);
  4732		}
  4733	
  4734		/* Ensure the port clock defaults are reset when retrying. */
  4735		crtc_state->port_clock = 0;
  4736		crtc_state->pixel_multiplier = 1;
  4737	
  4738		/* Fill in default crtc timings, allow encoders to overwrite them. */
  4739		drm_mode_set_crtcinfo(&crtc_state->hw.adjusted_mode,
  4740				      CRTC_STEREO_DOUBLE);
  4741	
  4742		/* Pass our mode to the connectors and the CRTC to give them a chance to
  4743		 * adjust it according to limitations or connector properties, and also
  4744		 * a chance to reject the mode entirely.
  4745		 */
  4746		for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
  4747			struct intel_encoder *encoder =
  4748				to_intel_encoder(connector_state->best_encoder);
  4749	
  4750			if (connector_state->crtc != &crtc->base)
  4751				continue;
  4752	
  4753			ret = encoder->compute_config(encoder, crtc_state,
  4754						      connector_state);
  4755			if (ret == -EDEADLK)
  4756				return ret;
  4757			if (ret < 0) {
  4758				drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] config failure: %d\n",
  4759					    encoder->base.base.id, encoder->base.name, ret);
  4760				return ret;
  4761			}
  4762		}
  4763	
  4764		/* Set default port clock if not overwritten by the encoder. Needs to be
  4765		 * done afterwards in case the encoder adjusts the mode. */
  4766		if (!crtc_state->port_clock)
  4767			crtc_state->port_clock = crtc_state->hw.adjusted_mode.crtc_clock
  4768				* crtc_state->pixel_multiplier;
  4769	
  4770		ret = intel_crtc_compute_config(state, crtc);
  4771		if (ret == -EDEADLK)
  4772			return ret;
  4773		if (ret < 0) {
  4774			drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] config failure: %d\n",
  4775				    crtc->base.base.id, crtc->base.name, ret);
  4776			return ret;
  4777		}
  4778	
  4779		for_each_new_connector_in_state(&state->base, connector,
  4780						connector_state, i) {
  4781			struct intel_encoder *encoder =
  4782				to_intel_encoder(connector_state->best_encoder);
  4783	
  4784			if (connector_state->crtc != &crtc->base)
  4785				continue;
  4786	
  4787			intel_dp = enc_to_intel_dp(encoder);
  4788	
  4789			if (!intel_dp)
  4790				continue;
  4791	
> 4792			if ((intel_dp_is_edp(intel_dp) && fixed_mode) ||
  4793			    crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
  4794				return intel_pch_panel_fitting(crtc_state, connector_state);
  4795		}
  4796	
  4797		/* Dithering seems to not pass-through bits correctly when it should, so
  4798		 * only enable it on 6bpc panels and when its not a compliance
  4799		 * test requesting 6bpc video pattern.
  4800		 */
  4801		crtc_state->dither = (crtc_state->pipe_bpp == 6*3) &&
  4802			!crtc_state->dither_force_disable;
  4803		drm_dbg_kms(&i915->drm,
  4804			    "[CRTC:%d:%s] hw max bpp: %i, pipe bpp: %i, dithering: %i\n",
  4805			    crtc->base.base.id, crtc->base.name,
  4806			    base_bpp, crtc_state->pipe_bpp, crtc_state->dither);
  4807	
  4808		return 0;
  4809	}
  4810	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
