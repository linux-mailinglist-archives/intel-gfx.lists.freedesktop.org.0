Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB53043480F
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 11:40:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD7E36E245;
	Wed, 20 Oct 2021 09:40:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA23E6E245
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Oct 2021 09:40:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="227509152"
X-IronPort-AV: E=Sophos;i="5.87,166,1631602800"; d="scan'208";a="227509152"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 02:40:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,166,1631602800"; d="scan'208";a="494546050"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 20 Oct 2021 02:40:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Oct 2021 12:40:30 +0300
Date: Wed, 20 Oct 2021 12:40:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 Jani Nikula <jani.nikula@intel.com>
Message-ID: <YW/kDmI0Y3VAe1v8@intel.com>
References: <20211014220921.683870-1-imre.deak@intel.com>
 <20211014220921.683870-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211014220921.683870-2-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 01/11] drm/i915: Add a table with a
 descriptor for all i915 modifiers
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

On Fri, Oct 15, 2021 at 01:09:11AM +0300, Imre Deak wrote:
> +static const struct intel_modifier_desc intel_modifiers[] = {
> +	{
> +		.modifier = DRM_FORMAT_MOD_LINEAR,
> +		.display_ver = DISPLAY_VER_ALL,
> +
> +		.is_linear = true,
> +	},
> +	{
> +		.modifier = I915_FORMAT_MOD_X_TILED,
> +		.display_ver = DISPLAY_VER_ALL,
> +	},
> +	{
> +		.modifier = I915_FORMAT_MOD_Y_TILED,
> +		.display_ver = { 9, 13 },
> +	},
> +	{
> +		.modifier = I915_FORMAT_MOD_Yf_TILED,
> +		.display_ver = { 9, 11 },
> +	},
> +	{
> +		.modifier = I915_FORMAT_MOD_Y_TILED_CCS,
> +		.display_ver = { 9, 11 },
> +
> +		.ccs.type = INTEL_CCS_RC,
> +	},
> +	{
> +		.modifier = I915_FORMAT_MOD_Yf_TILED_CCS,
> +		.display_ver = { 9, 11 },
> +
> +		.ccs.type = INTEL_CCS_RC,
> +	},
> +	{
> +		.modifier = I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
> +		.display_ver = { 12, 13 },
> +
> +		.ccs.type = INTEL_CCS_RC,
> +	},
> +	{
> +		.modifier = I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC,
> +		.display_ver = { 12, 13 },
> +
> +		.ccs.type = INTEL_CCS_RC_CC,
> +	},
> +	{
> +		.modifier = I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS,
> +		.display_ver = { 12, 13 },
> +
> +		.ccs.type = INTEL_CCS_MC,
> +	},
> +};
> +
<snip>
> +u64 *intel_fb_plane_get_modifiers(struct drm_i915_private *i915,
> +				  enum intel_plane_caps plane_caps)
> +{
> +	u64 *list, *p;
> +	int count = 1;		/* +1 for invalid modifier terminator */
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(intel_modifiers); i++) {
> +		if (plane_has_modifier(i915, plane_caps, &intel_modifiers[i]))
> +			count++;
> +	}
> +
> +	list = kmalloc_array(count, sizeof(*list), GFP_KERNEL);
> +	if (drm_WARN_ON(&i915->drm, !list))
> +		return NULL;
> +
> +	p = list;
> +	for (i = 0; i < ARRAY_SIZE(intel_modifiers); i++) {
> +		if (plane_has_modifier(i915, plane_caps, &intel_modifiers[i]))
> +			*p++ = intel_modifiers[i].modifier;
> +	}
> +	*p++ = DRM_FORMAT_MOD_INVALID;

Oh, one thing I just realized is that this will now list the modifiers
in the opposite order to what we had before. Previously we had roughly
compressed->tiled->linear order. I'm not sure sure anything relies on
that, but seems best to try and preserve it. I guess one could think
of it as some kind of priority order for the modifiers, where the more
efficient ones (in some sense) come first.

-- 
Ville Syrjälä
Intel
