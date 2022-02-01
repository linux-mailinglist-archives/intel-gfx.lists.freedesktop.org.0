Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECC34A5B0E
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 12:22:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B770410E875;
	Tue,  1 Feb 2022 11:22:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E705710E875
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Feb 2022 11:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643714565; x=1675250565;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=A+smTqlvfaECZ4fWSVhhhahoILPUprNviE8icFLgJOI=;
 b=CBNRvpGaJXunGdiZ7OLC9nsRKHgeI/1S/k4y/zSalxG4O0lSKMNktOl5
 B0w2hG5b4EilPJCdWfP/t9nskX55/AkulicutZkwcL9XOBkEUDhrSrnND
 XKnafJMhdRy1UFcq4O5uRJgtDvz1mmlJ/EWaFzesOXDPWcRQtIrULF1Hq
 /PdoJSdTBxIip+bQzcVLdn3s1eoxziVyTJBJ+p/5wABj1rSpt2e5l5PxL
 pNeVcBQ/qKZs8AEmfhgsMJSDoD25TlQui0S88Usu6bZvnHQ8XfOFQVy4Q
 ZO0rC6CGkmp24xO0pdA+tZnyi/DmjyyGwVjdB9YRt/ZRO50hqw8kx/HR6 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="235063512"
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; d="scan'208";a="235063512"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 03:22:45 -0800
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; d="scan'208";a="482296506"
Received: from ehanosko-mobl.ger.corp.intel.com (HELO localhost) ([10.252.6.3])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 03:22:43 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
In-Reply-To: <87iltyvox2.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220128114914.2339526-1-imre.deak@intel.com>
 <20220128114914.2339526-5-imre.deak@intel.com> <871r0ow17m.fsf@intel.com>
 <20220131160022.GA2434344@ideak-desk.fi.intel.com>
 <87iltyvox2.fsf@intel.com>
Date: Tue, 01 Feb 2022 13:22:41 +0200
Message-ID: <87a6favnjy.fsf@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 01 Feb 2022, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Mon, 31 Jan 2022, Imre Deak <imre.deak@intel.com> wrote:
>> On Mon, Jan 31, 2022 at 02:15:25PM +0200, Jani Nikula wrote:
>>> On Fri, 28 Jan 2022, Imre Deak <imre.deak@intel.com> wrote:
>>> > Move the list of platform specific power domain -> power well
>>> > definitions to intel_display_power_map.c. While at it group the
>>> > platforms' power domain macros with the corresponding power well lists
>>> > and keep all the power domain lists in the same order (matching the e=
num
>>> > order).
>>> >
>>> > No functional changes.
>>> >
>>> > Signed-off-by: Imre Deak <imre.deak@intel.com>
>>>=20
>>> The commit message should explain the why.
>>>=20
>>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/dri=
vers/gpu/drm/i915/display/intel_display_power.h
>>> > index b30e6133c66d0..a0e68ae691021 100644
>>> > --- a/drivers/gpu/drm/i915/display/intel_display_power.h
>>> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
>>> > @@ -197,6 +197,7 @@ struct intel_display_power_domain_set {
>>> >  	for ((domain) =3D 0; (domain) < POWER_DOMAIN_NUM; (domain)++)	\
>>> >  		for_each_if(BIT_ULL(domain) & (mask))
>>> >=20=20
>>> > +/* intel_display_power.c */
>>> >  int intel_power_domains_init(struct drm_i915_private *dev_priv);
>>> >  void intel_power_domains_cleanup(struct drm_i915_private *dev_priv);
>>> >  void intel_power_domains_init_hw(struct drm_i915_private *dev_priv, =
bool resume);
>>> > @@ -316,4 +317,8 @@ void chv_phy_powergate_lanes(struct intel_encoder=
 *encoder,
>>> >  bool chv_phy_powergate_ch(struct drm_i915_private *dev_priv, enum dp=
io_phy phy,
>>> >  			  enum dpio_channel ch, bool override);
>>> >=20=20
>>> > +/* intel_display_power_map.c */
>>> > +const char *
>>> > +intel_display_power_domain_str(enum intel_display_power_domain domai=
n);
>>> > +
>>> >  #endif /* __INTEL_DISPLAY_POWER_H__ */
>>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_interna=
l.h b/drivers/gpu/drm/i915/display/intel_display_power_internal.h
>>> > new file mode 100644
>>> > index 0000000000000..3fc7c7d0bc9e9
>>> > --- /dev/null
>>> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_internal.h
>>> > @@ -0,0 +1,93 @@
>>> > +/* SPDX-License-Identifier: MIT */
>>> > +/*
>>> > + * Copyright =C2=A9 2022 Intel Corporation
>>> > + */
>>> > +
>>> > +#ifndef __INTEL_DISPLAY_POWER_INTERNAL_H__
>>> > +#define __INTEL_DISPLAY_POWER_INTERNAL_H__
>>> > +
>>> > +#include "i915_reg_defs.h"
>>> > +
>>> > +#include "intel_display.h"
>>> > +#include "intel_display_power.h"
>>> > +
>>> > +struct i915_power_well_regs;
>>> > +
>>> > +/* Power well structure for haswell */
>>> > +struct i915_power_well_desc {
>>> > +	const char *name;
>>> > +	bool always_on;
>>> > +	u64 domains;
>>> > +	/* unique identifier for this power well */
>>> > +	enum i915_power_well_id id;
>>> > +	/*
>>> > +	 * Arbitraty data associated with this power well. Platform and pow=
er
>>> > +	 * well specific.
>>> > +	 */
>>> > +	union {
>>> > +		struct {
>>> > +			/*
>>> > +			 * request/status flag index in the PUNIT power well
>>> > +			 * control/status registers.
>>> > +			 */
>>> > +			u8 idx;
>>> > +		} vlv;
>>> > +		struct {
>>> > +			enum dpio_phy phy;
>>> > +		} bxt;
>>> > +		struct {
>>> > +			/*
>>> > +			 * request/status flag index in the power well
>>> > +			 * constrol/status registers.
>>> > +			 */
>>> > +			u8 idx;
>>> > +			/* Mask of pipes whose IRQ logic is backed by the pw */
>>> > +			u8 irq_pipe_mask;
>>> > +			/*
>>> > +			 * Instead of waiting for the status bit to ack enables,
>>> > +			 * just wait a specific amount of time and then consider
>>> > +			 * the well enabled.
>>> > +			 */
>>> > +			u16 fixed_enable_delay;
>>> > +			/* The pw is backing the VGA functionality */
>>> > +			bool has_vga:1;
>>> > +			bool has_fuses:1;
>>> > +			/*
>>> > +			 * The pw is for an ICL+ TypeC PHY port in
>>> > +			 * Thunderbolt mode.
>>> > +			 */
>>> > +			bool is_tc_tbt:1;
>>> > +		} hsw;
>>> > +	};
>>> > +	const struct i915_power_well_ops *ops;
>>> > +};
>>> > +
>>> > +struct i915_power_well {
>>> > +	const struct i915_power_well_desc *desc;
>>> > +	/* power well enable/disable usage count */
>>> > +	int count;
>>> > +	/* cached hw enabled state */
>>> > +	bool hw_enabled;
>>> > +};
>>> > +
>>> > +/* intel_display_power.c */
>>>=20
>>> I've put a lot of effort into splitting our (display) codebase towards
>>> having a 1-to-1 mapping between .c and .h files. This patch adds an odd
>>> split between two headers and two compilation units, and I don't think
>>> it's pretty.
>>
>> This header includes struct definitions used by intel_display_power.c
>> and intel_display_power_map.c. I don't see why this would be a problem,
>> there are many other cases where multiple .c files include a header file
>> for the same reason.
>
> Declaring types is one thing, but I'd like to have the symbols defined
> in intel_foo.c be declared in intel_foo.h, and named intel_foo_*. And by
> symbols I mostly mean functions, preferrably nothing else.
>
> IOW, if you have stuff in intel_display_power_map.c, add
> intel_display_power_map.h that describes the interface to that file.
>
>>
>>> > +extern const struct i915_power_well_ops i9xx_always_on_power_well_op=
s;
>>> > +extern const struct i915_power_well_ops chv_pipe_power_well_ops;
>>> > +extern const struct i915_power_well_ops chv_dpio_cmn_power_well_ops;
>>> > +extern const struct i915_power_well_ops i830_pipes_power_well_ops;
>>> > +extern const struct i915_power_well_ops hsw_power_well_ops;
>>> > +extern const struct i915_power_well_ops hsw_power_well_ops;
>>> > +extern const struct i915_power_well_ops gen9_dc_off_power_well_ops;
>>> > +extern const struct i915_power_well_ops bxt_dpio_cmn_power_well_ops;
>>> > +extern const struct i915_power_well_ops vlv_display_power_well_ops;
>>> > +extern const struct i915_power_well_ops vlv_dpio_cmn_power_well_ops;
>>> > +extern const struct i915_power_well_ops vlv_dpio_power_well_ops;
>>> > +extern const struct i915_power_well_ops icl_ddi_power_well_ops;
>>> > +extern const struct i915_power_well_ops icl_aux_power_well_ops;
>>> > +extern const struct i915_power_well_ops tgl_tc_cold_off_ops;
>>>=20
>>> Also not happy about this. Data is not an interface.
>>>=20
>>> We currently have 20 symbols with extern, and this adds 14 more with a
>>> clear path to add more for new platforms. I'd rather we were heading in
>>> the other direction.
>>>=20
>>> I'm just wondering if the split introduced here is sound. All of the
>>> above would make this turn up when I look for stuff that I think needs
>>> to be refactored. And the commit message does not even say why...
>>
>> The reason is to reduce the size of intel_display_power.c, to make it
>> more readable/manageable. The implementation of the power well
>> enable/disable etc. functionality and the mapping of these power wells
>> to power domains are two distinct parts in that file that can be
>> separated.
>>
>> The externs above are power wells that are mapped to domains, and
>> besides the symbol name are opaque to the mapping code.
>
> I understand the mapping is a complicated and kind of separate part of
> it all. But if I put that aside for a bit, I think I'd consider putting
> the abstraction boundary at struct i915_power_well_desc and everything
> within.
>
> What would the code look like if struct i915_power_well_desc and
> subsequently struct i915_power_well_ops were opaque pointers and split
> out of current intel_display_power.c to a separate file? Add functions
> to access everything in desc and to call the ops.
>
> Just splitting out the mapping still leaves high and low level code in
> the same file, and I think intel_display_power.c would be clarified a
> great deal more if the split was between them instead.
>
> Also, intel_display_power_* functions in the file are a kind of separate
> set of functionality from the intel_power_domains_* functions. I think
> that's a clear candidate for a split too. There's also the dbuf stuff
> that probably belongs somewhere else (lots of it in intel_pm.c but
> that's another rabbit hole).
>
> Long story short, I think there are other, IMHO cleaner, splits to be
> made in intel_display_power.c that should have priority. And they don't
> block us from splitting the mapping as follow-up later, but I think that
> should not be the first thing.

PS. Most of the other cleanup and refactoring is also independent of the
split, and should not be blocked if you want to do them first and think
about this.


>
>
> BR,
> Jani.
>
>
>
>>
>>> BR,
>>> Jani.
>>>=20
>>>=20
>>> > +
>>> > +/* intel_display_power_map.c */
>>> > +int intel_init_power_wells(struct i915_power_domains *power_domains);
>>> > +void intel_cleanup_power_wells(struct i915_power_domains *power_doma=
ins);
>>> > +
>>> > +#endif
>>>=20
>>> --=20
>>> Jani Nikula, Intel Open Source Graphics Center

--=20
Jani Nikula, Intel Open Source Graphics Center
