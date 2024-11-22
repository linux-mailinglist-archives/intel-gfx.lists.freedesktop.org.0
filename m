Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8019C9D58C7
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2024 05:03:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1664610E20C;
	Fri, 22 Nov 2024 04:03:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LrTv4jNt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EFA610E20C;
 Fri, 22 Nov 2024 04:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732248222; x=1763784222;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=p8RrRIoEC76MiLWzvgZDPtwyE+MVK50HaVjwQaAWoJM=;
 b=LrTv4jNtx7ZNXWhP8rSYgR+Tu5Ed9DDnLoky9fhd5pH4SUw8TWd6g4FO
 9C7chRmhr2hzLxsJZGiLrhLKEf8k2Y2Mf1J+9rw975i5LI4jHN0Gu6vu9
 MzPwlyOKsdkiOhOvak4Wd7jYhcWcXDsPlws53aYP2n+qX5P8dXDKMr9Qv
 dfZBzlB7aUM72llMPzciVxo3npkcLxv8E8LJ/bYJCHW94VGmJwpaLpGeg
 cKO9r7oBVsd5EdGU2Ds3a1QEDq2yWQX7naQvgBv+VUJ0m41DIFKgMj1Zt
 BR//sDamntRx3MNfqdmV1+T485RYCghFZFjhNZ28h99PnD+W5kTv0CnmM g==;
X-CSE-ConnectionGUID: K4u5bSVqQ820Q1MHV0BNXw==
X-CSE-MsgGUID: 4cu78uP+S964f7nj7XoA+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11263"; a="31781298"
X-IronPort-AV: E=Sophos;i="6.12,174,1728975600"; d="scan'208";a="31781298"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 20:03:42 -0800
X-CSE-ConnectionGUID: 2qHIMj6/TR6T7aqaFuwAsQ==
X-CSE-MsgGUID: PMOODfGARu2ll9GU0VzFRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,174,1728975600"; d="scan'208";a="95538724"
Received: from lkp-server01.sh.intel.com (HELO 8122d2fc1967) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 21 Nov 2024 20:03:40 -0800
Received: from kbuild by 8122d2fc1967 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tEKtO-0003eV-0E;
 Fri, 22 Nov 2024 04:03:38 +0000
Date: Fri, 22 Nov 2024 12:02:53 +0800
From: kernel test robot <lkp@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev, Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCHv2 3/3] drm/i915/display: Populate list of async supported
 formats/modifiers
Message-ID: <202411221109.nlXeWx72-lkp@intel.com>
References: <20241118075315.466009-4-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241118075315.466009-4-arun.r.murthy@intel.com>
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

Hi Arun,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-intel/for-linux-next-fixes]
[also build test WARNING on v6.12 next-20241121]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Arun-R-Murthy/drm-plane-Expose-function-to-create-format-modifier-blob/20241121-105652
base:   git://anongit.freedesktop.org/drm-intel for-linux-next-fixes
patch link:    https://lore.kernel.org/r/20241118075315.466009-4-arun.r.murthy%40intel.com
patch subject: [PATCHv2 3/3] drm/i915/display: Populate list of async supported formats/modifiers
config: x86_64-randconfig-103-20241121 (https://download.01.org/0day-ci/archive/20241122/202411221109.nlXeWx72-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-12) 11.3.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202411221109.nlXeWx72-lkp@intel.com/

cocci warnings: (new ones prefixed by >>)
>> drivers/gpu/drm/i915/display/skl_universal_plane.c:2626:26-32: ERROR: application of sizeof to pointer

vim +2626 drivers/gpu/drm/i915/display/skl_universal_plane.c

  2510	
  2511	struct intel_plane *
  2512	skl_universal_plane_create(struct drm_i915_private *dev_priv,
  2513				   enum pipe pipe, enum plane_id plane_id)
  2514	{
  2515		const struct drm_plane_funcs *plane_funcs;
  2516		struct intel_plane *plane;
  2517		enum drm_plane_type plane_type;
  2518		unsigned int supported_rotations;
  2519		unsigned int supported_csc;
  2520		const u64 *modifiers;
  2521		u64 *async_modifiers;
  2522		const u32 *formats;
  2523		int num_formats;
  2524		int ret;
  2525	
  2526		plane = intel_plane_alloc();
  2527		if (IS_ERR(plane))
  2528			return plane;
  2529	
  2530		plane->pipe = pipe;
  2531		plane->id = plane_id;
  2532		plane->frontbuffer_bit = INTEL_FRONTBUFFER(pipe, plane_id);
  2533	
  2534		intel_fbc_add_plane(skl_plane_fbc(dev_priv, pipe, plane_id), plane);
  2535	
  2536		if (DISPLAY_VER(dev_priv) >= 11) {
  2537			plane->min_width = icl_plane_min_width;
  2538			if (icl_is_hdr_plane(dev_priv, plane_id))
  2539				plane->max_width = icl_hdr_plane_max_width;
  2540			else
  2541				plane->max_width = icl_sdr_plane_max_width;
  2542			plane->max_height = icl_plane_max_height;
  2543			plane->min_cdclk = icl_plane_min_cdclk;
  2544		} else if (DISPLAY_VER(dev_priv) >= 10) {
  2545			plane->max_width = glk_plane_max_width;
  2546			plane->max_height = skl_plane_max_height;
  2547			plane->min_cdclk = glk_plane_min_cdclk;
  2548		} else {
  2549			plane->max_width = skl_plane_max_width;
  2550			plane->max_height = skl_plane_max_height;
  2551			plane->min_cdclk = skl_plane_min_cdclk;
  2552		}
  2553	
  2554		if (DISPLAY_VER(dev_priv) >= 13)
  2555			plane->max_stride = adl_plane_max_stride;
  2556		else
  2557			plane->max_stride = skl_plane_max_stride;
  2558	
  2559		if (DISPLAY_VER(dev_priv) >= 12)
  2560			plane->min_alignment = tgl_plane_min_alignment;
  2561		else
  2562			plane->min_alignment = skl_plane_min_alignment;
  2563	
  2564		if (DISPLAY_VER(dev_priv) >= 11) {
  2565			plane->update_noarm = icl_plane_update_noarm;
  2566			plane->update_arm = icl_plane_update_arm;
  2567			plane->disable_arm = icl_plane_disable_arm;
  2568		} else {
  2569			plane->update_noarm = skl_plane_update_noarm;
  2570			plane->update_arm = skl_plane_update_arm;
  2571			plane->disable_arm = skl_plane_disable_arm;
  2572		}
  2573		plane->get_hw_state = skl_plane_get_hw_state;
  2574		plane->check_plane = skl_plane_check;
  2575	
  2576		if (plane_id == PLANE_1) {
  2577			plane->need_async_flip_toggle_wa = IS_DISPLAY_VER(dev_priv, 9, 10);
  2578			plane->async_flip = skl_plane_async_flip;
  2579			plane->enable_flip_done = skl_plane_enable_flip_done;
  2580			plane->disable_flip_done = skl_plane_disable_flip_done;
  2581		}
  2582	
  2583		if (DISPLAY_VER(dev_priv) >= 11)
  2584			formats = icl_get_plane_formats(dev_priv, pipe,
  2585							plane_id, &num_formats);
  2586		else if (DISPLAY_VER(dev_priv) >= 10)
  2587			formats = glk_get_plane_formats(dev_priv, pipe,
  2588							plane_id, &num_formats);
  2589		else
  2590			formats = skl_get_plane_formats(dev_priv, pipe,
  2591							plane_id, &num_formats);
  2592	
  2593		if (DISPLAY_VER(dev_priv) >= 12)
  2594			plane_funcs = &gen12_plane_funcs;
  2595		else
  2596			plane_funcs = &skl_plane_funcs;
  2597	
  2598		if (plane_id == PLANE_1)
  2599			plane_type = DRM_PLANE_TYPE_PRIMARY;
  2600		else
  2601			plane_type = DRM_PLANE_TYPE_OVERLAY;
  2602	
  2603		modifiers = intel_fb_plane_get_modifiers(dev_priv,
  2604							 skl_get_plane_caps(dev_priv, pipe, plane_id));
  2605	
  2606		ret = drm_universal_plane_init(&dev_priv->drm, &plane->base,
  2607					       0, plane_funcs,
  2608					       formats, num_formats, modifiers,
  2609					       plane_type,
  2610					       "plane %d%c", plane_id + 1,
  2611					       pipe_name(pipe));
  2612	
  2613		kfree(modifiers);
  2614	
  2615		if (ret)
  2616			goto fail;
  2617	
  2618		if (DISPLAY_VER(dev_priv) >= 12)
  2619			async_modifiers = tgl_asyn_modifiers;
  2620		else if (DISPLAY_VER(dev_priv) == 11)
  2621			async_modifiers = icl_async_modifiers;
  2622		else
  2623			async_modifiers = skl_async_modifiers;
  2624	
  2625		drm_plane_create_format_blob(&dev_priv->drm, &plane->base,
> 2626					     async_modifiers, sizeof(async_modifiers),
  2627					     intel_async_formats,
  2628					     sizeof(intel_async_formats), true);
  2629	
  2630		if (DISPLAY_VER(dev_priv) >= 13)
  2631			supported_rotations = DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180;
  2632		else
  2633			supported_rotations =
  2634				DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_90 |
  2635				DRM_MODE_ROTATE_180 | DRM_MODE_ROTATE_270;
  2636	
  2637		if (DISPLAY_VER(dev_priv) >= 11)
  2638			supported_rotations |= DRM_MODE_REFLECT_X;
  2639	
  2640		drm_plane_create_rotation_property(&plane->base,
  2641						   DRM_MODE_ROTATE_0,
  2642						   supported_rotations);
  2643	
  2644		supported_csc = BIT(DRM_COLOR_YCBCR_BT601) | BIT(DRM_COLOR_YCBCR_BT709);
  2645	
  2646		if (DISPLAY_VER(dev_priv) >= 10)
  2647			supported_csc |= BIT(DRM_COLOR_YCBCR_BT2020);
  2648	
  2649		drm_plane_create_color_properties(&plane->base,
  2650						  supported_csc,
  2651						  BIT(DRM_COLOR_YCBCR_LIMITED_RANGE) |
  2652						  BIT(DRM_COLOR_YCBCR_FULL_RANGE),
  2653						  DRM_COLOR_YCBCR_BT709,
  2654						  DRM_COLOR_YCBCR_LIMITED_RANGE);
  2655	
  2656		drm_plane_create_alpha_property(&plane->base);
  2657		drm_plane_create_blend_mode_property(&plane->base,
  2658						     BIT(DRM_MODE_BLEND_PIXEL_NONE) |
  2659						     BIT(DRM_MODE_BLEND_PREMULTI) |
  2660						     BIT(DRM_MODE_BLEND_COVERAGE));
  2661	
  2662		drm_plane_create_zpos_immutable_property(&plane->base, plane_id);
  2663	
  2664		if (DISPLAY_VER(dev_priv) >= 12)
  2665			drm_plane_enable_fb_damage_clips(&plane->base);
  2666	
  2667		if (DISPLAY_VER(dev_priv) >= 11)
  2668			drm_plane_create_scaling_filter_property(&plane->base,
  2669							BIT(DRM_SCALING_FILTER_DEFAULT) |
  2670							BIT(DRM_SCALING_FILTER_NEAREST_NEIGHBOR));
  2671	
  2672		intel_plane_helper_add(plane);
  2673	
  2674		return plane;
  2675	
  2676	fail:
  2677		intel_plane_free(plane);
  2678	
  2679		return ERR_PTR(ret);
  2680	}
  2681	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
