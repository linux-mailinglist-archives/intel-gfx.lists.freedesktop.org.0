Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 977FA4A46AD
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 13:15:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C435210E36C;
	Mon, 31 Jan 2022 12:15:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 101E710E375
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 12:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643631330; x=1675167330;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=wGjKcHCiu21vE1w+7qZysh3n8Xd2bhCedA+HUP9Y7C4=;
 b=QsD1KAivgSv99wllZ3XRSjhq3J0CGyc63jwE+5x3rh9zAjUmbWE1vKMl
 Wp71aAgIyXoLqxrIOpVJNB6QRQ6hVjVnfNScfJ81gxP7L7UAucse2zEi5
 g+QSeELrOCcFd90djIzIAIOSQ3+6EX58oDBcWf4DRbedWHh4SsZcQD34+
 A9yQ0MO3pV/8/KdA7JU9+ICll7YBifyiD5kXTrWPFEqMZ/jnQpsPnYeYA
 jFBAPBsmRjkTuOaoZsxp9OoEUlGUdc38GGHJoo5o+0PI8LkG2OyGIZgwM
 7Ampyd622hXE1KQLrXu4IMjk8aU7bjrBTeLOSiwM+b3n2RcdwTLXxuhNF Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10243"; a="333805005"
X-IronPort-AV: E=Sophos;i="5.88,330,1635231600"; d="scan'208";a="333805005"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 04:15:29 -0800
X-IronPort-AV: E=Sophos;i="5.88,330,1635231600"; d="scan'208";a="697986462"
Received: from ylian16-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.16.100])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 04:15:27 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220128114914.2339526-5-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220128114914.2339526-1-imre.deak@intel.com>
 <20220128114914.2339526-5-imre.deak@intel.com>
Date: Mon, 31 Jan 2022 14:15:25 +0200
Message-ID: <871r0ow17m.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 04/19] drm/i915: Move the power domain->well
 mappings to intel_display_power_map.c
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

On Fri, 28 Jan 2022, Imre Deak <imre.deak@intel.com> wrote:
> Move the list of platform specific power domain -> power well
> definitions to intel_display_power_map.c. While at it group the
> platforms' power domain macros with the corresponding power well lists
> and keep all the power domain lists in the same order (matching the enum
> order).
>
> No functional changes.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

The commit message should explain the why.

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers=
/gpu/drm/i915/display/intel_display_power.h
> index b30e6133c66d0..a0e68ae691021 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -197,6 +197,7 @@ struct intel_display_power_domain_set {
>  	for ((domain) =3D 0; (domain) < POWER_DOMAIN_NUM; (domain)++)	\
>  		for_each_if(BIT_ULL(domain) & (mask))
>=20=20
> +/* intel_display_power.c */
>  int intel_power_domains_init(struct drm_i915_private *dev_priv);
>  void intel_power_domains_cleanup(struct drm_i915_private *dev_priv);
>  void intel_power_domains_init_hw(struct drm_i915_private *dev_priv, bool=
 resume);
> @@ -316,4 +317,8 @@ void chv_phy_powergate_lanes(struct intel_encoder *en=
coder,
>  bool chv_phy_powergate_ch(struct drm_i915_private *dev_priv, enum dpio_p=
hy phy,
>  			  enum dpio_channel ch, bool override);
>=20=20
> +/* intel_display_power_map.c */
> +const char *
> +intel_display_power_domain_str(enum intel_display_power_domain domain);
> +
>  #endif /* __INTEL_DISPLAY_POWER_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_internal.h =
b/drivers/gpu/drm/i915/display/intel_display_power_internal.h
> new file mode 100644
> index 0000000000000..3fc7c7d0bc9e9
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_internal.h
> @@ -0,0 +1,93 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2022 Intel Corporation
> + */
> +
> +#ifndef __INTEL_DISPLAY_POWER_INTERNAL_H__
> +#define __INTEL_DISPLAY_POWER_INTERNAL_H__
> +
> +#include "i915_reg_defs.h"
> +
> +#include "intel_display.h"
> +#include "intel_display_power.h"
> +
> +struct i915_power_well_regs;
> +
> +/* Power well structure for haswell */
> +struct i915_power_well_desc {
> +	const char *name;
> +	bool always_on;
> +	u64 domains;
> +	/* unique identifier for this power well */
> +	enum i915_power_well_id id;
> +	/*
> +	 * Arbitraty data associated with this power well. Platform and power
> +	 * well specific.
> +	 */
> +	union {
> +		struct {
> +			/*
> +			 * request/status flag index in the PUNIT power well
> +			 * control/status registers.
> +			 */
> +			u8 idx;
> +		} vlv;
> +		struct {
> +			enum dpio_phy phy;
> +		} bxt;
> +		struct {
> +			/*
> +			 * request/status flag index in the power well
> +			 * constrol/status registers.
> +			 */
> +			u8 idx;
> +			/* Mask of pipes whose IRQ logic is backed by the pw */
> +			u8 irq_pipe_mask;
> +			/*
> +			 * Instead of waiting for the status bit to ack enables,
> +			 * just wait a specific amount of time and then consider
> +			 * the well enabled.
> +			 */
> +			u16 fixed_enable_delay;
> +			/* The pw is backing the VGA functionality */
> +			bool has_vga:1;
> +			bool has_fuses:1;
> +			/*
> +			 * The pw is for an ICL+ TypeC PHY port in
> +			 * Thunderbolt mode.
> +			 */
> +			bool is_tc_tbt:1;
> +		} hsw;
> +	};
> +	const struct i915_power_well_ops *ops;
> +};
> +
> +struct i915_power_well {
> +	const struct i915_power_well_desc *desc;
> +	/* power well enable/disable usage count */
> +	int count;
> +	/* cached hw enabled state */
> +	bool hw_enabled;
> +};
> +
> +/* intel_display_power.c */

I've put a lot of effort into splitting our (display) codebase towards
having a 1-to-1 mapping between .c and .h files. This patch adds an odd
split between two headers and two compilation units, and I don't think
it's pretty.

> +extern const struct i915_power_well_ops i9xx_always_on_power_well_ops;
> +extern const struct i915_power_well_ops chv_pipe_power_well_ops;
> +extern const struct i915_power_well_ops chv_dpio_cmn_power_well_ops;
> +extern const struct i915_power_well_ops i830_pipes_power_well_ops;
> +extern const struct i915_power_well_ops hsw_power_well_ops;
> +extern const struct i915_power_well_ops hsw_power_well_ops;
> +extern const struct i915_power_well_ops gen9_dc_off_power_well_ops;
> +extern const struct i915_power_well_ops bxt_dpio_cmn_power_well_ops;
> +extern const struct i915_power_well_ops vlv_display_power_well_ops;
> +extern const struct i915_power_well_ops vlv_dpio_cmn_power_well_ops;
> +extern const struct i915_power_well_ops vlv_dpio_power_well_ops;
> +extern const struct i915_power_well_ops icl_ddi_power_well_ops;
> +extern const struct i915_power_well_ops icl_aux_power_well_ops;
> +extern const struct i915_power_well_ops tgl_tc_cold_off_ops;

Also not happy about this. Data is not an interface.

We currently have 20 symbols with extern, and this adds 14 more with a
clear path to add more for new platforms. I'd rather we were heading in
the other direction.

I'm just wondering if the split introduced here is sound. All of the
above would make this turn up when I look for stuff that I think needs
to be refactored. And the commit message does not even say why...


BR,
Jani.


> +
> +/* intel_display_power_map.c */
> +int intel_init_power_wells(struct i915_power_domains *power_domains);
> +void intel_cleanup_power_wells(struct i915_power_domains *power_domains);
> +
> +#endif

--=20
Jani Nikula, Intel Open Source Graphics Center
