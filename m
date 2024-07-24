Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E5593B04E
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2024 13:26:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5FE710E68E;
	Wed, 24 Jul 2024 11:26:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AQi0LRdh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4328E10E68E
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2024 11:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721820410; x=1753356410;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=33U6IJE8sOLeydKRpnmwPsHqVo64VRy2QPCuR8idD1M=;
 b=AQi0LRdhhsNntD2I5S3P9YAy8+TjB+kwgOP0VNnQewFMcOVdfGb+oaLR
 6KvHBDs+bW9pFnIUo8CjbDODv+g1ZN39knbNeJaI6rU4AQ8ZGerPNYMkE
 Jo0d4OIhHgSO+vFbPjAb9MqbVyXpucneMWUs2M6dT6xfRB/zDdyIY9fw8
 u7AyCE7WoIUvuiju4Xor4lGwLicmVabC5xSlZQSnq3nwpykP16cTzZqhp
 K5eelOZ2HMRiAYNwHtV15CjHUSDWxYN1fl2AXqtYnAYrVoGLANyV1VezP
 aJM+Au36wyp/VT3axqig6cZKW4R4cQNkwBAlsL3q8M7PIeh7qIoI64eLC w==;
X-CSE-ConnectionGUID: qxJaP7lTSJSx5R2JZWlJAg==
X-CSE-MsgGUID: h8oW9fwJQ52lPzFGIZQLtA==
X-IronPort-AV: E=McAfee;i="6700,10204,11142"; a="12686791"
X-IronPort-AV: E=Sophos;i="6.09,232,1716274800"; d="scan'208";a="12686791"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 04:26:49 -0700
X-CSE-ConnectionGUID: Au+VQ+qrSMW6T86Cz/uy4A==
X-CSE-MsgGUID: hXU/wcGdQrKOuIkx7/ClTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,232,1716274800"; d="scan'208";a="52429810"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 04:26:48 -0700
Date: Wed, 24 Jul 2024 14:27:03 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 09/14] drm/i915/dp_mst: Reduce the link parameters in BW
 order after LT failures
Message-ID: <ZqDlB__YkeBh8Cs2@ideak-desk.fi.intel.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
 <20240722165503.2084999-10-imre.deak@intel.com>
 <SN7PR11MB6750ECC7B34BB74287512147E3AA2@SN7PR11MB6750.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SN7PR11MB6750ECC7B34BB74287512147E3AA2@SN7PR11MB6750.namprd11.prod.outlook.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 24, 2024 at 09:43:55AM +0300, Kandpal, Suraj wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Imre
> > Deak
> > Sent: Monday, July 22, 2024 10:25 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [PATCH 09/14] drm/i915/dp_mst: Reduce the link parameters in BW
> > order after LT failures
> >
> > On MST links - at least for some MST branch devices - the list of modes
> > returned to users on an enabled link depends on the current link rate/lane
> > count parameters (besides the DPRX link capabilities, any MST branch BW
> > limit and the maximum link parameters reduced after LT failures). In
> > particular the MST branch BW limit may depend on the link rate/lane count
> > parameters programmed to DPCD. After an LT failure and limiting the
> > maximum link parameters accordingly, users should see a mode list
> > reflecting these new limits. However with the current fallback order this isn't
> > ensured, as the new limit could allow for modes requiring a higher link BW,
> > but these modes will be filtered out due to the enabled link's lower link BW.
> >
> > Ensure that the mode list changes in a consistent way after a link training
> > failure and reducing the link parameters by changing the fallback order on
> > MST links to happen in BW order.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_types.h    |  12 ++
> >  drivers/gpu/drm/i915/display/intel_dp.c       | 111 ++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_dp.h       |   2 +
> >  .../drm/i915/display/intel_dp_link_training.c |  43 ++++++-
> >  4 files changed, 166 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 3501125c55158..51e2151315977 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1778,6 +1778,18 @@ struct intel_dp {
> >       int common_rates[DP_MAX_SUPPORTED_RATES];
> >       struct {
> >               /* TODO: move the rest of link specific fields to here */
> > +             /* common rate,lane_count configs in bw order */
> > +             int num_configs;
> > +#define INTEL_DP_MAX_LANE_COUNT                      4
> > +#define INTEL_DP_MAX_SUPPORTED_LANE_COUNTS
> >       (ilog2(INTEL_DP_MAX_LANE_COUNT) + 1)
> 
> I feel this name could be a little confusing this define here I am
> assuming the Different lane count configs we can support which would
> be 1,2,4 hence 3, Maybe renaming it as  DP_MAX_LANE_COUNT_CONFIG

Ok, will rename it to INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS.

> > +#define INTEL_DP_LANE_COUNT_EXP_BITS
> >       order_base_2(INTEL_DP_MAX_SUPPORTED_LANE_COUNTS)
> > +#define INTEL_DP_LINK_RATE_IDX_BITS          (BITS_PER_TYPE(u8) -
> > INTEL_DP_LANE_COUNT_EXP_BITS)
> > +#define INTEL_DP_MAX_LINK_CONFIGS
> >       (DP_MAX_SUPPORTED_RATES * \
> > +
> > INTEL_DP_MAX_SUPPORTED_LANE_COUNTS)
> > +             struct intel_dp_link_config {
> > +                     u8 link_rate_idx:INTEL_DP_LINK_RATE_IDX_BITS;
> > +                     u8
> > lane_count_exp:INTEL_DP_LANE_COUNT_EXP_BITS;
> > +             } configs[INTEL_DP_MAX_LINK_CONFIGS];
> >               /* Max lane count for the current link */
> >               int max_lane_count;
> >               /* Max rate for the current link */
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 0882dddd97206..d3529c5836393 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -29,6 +29,7 @@
> >  #include <linux/i2c.h>
> >  #include <linux/notifier.h>
> >  #include <linux/slab.h>
> > +#include <linux/sort.h>
> >  #include <linux/string_helpers.h>
> >  #include <linux/timekeeping.h>
> >  #include <linux/types.h>
> > @@ -634,6 +635,114 @@ int intel_dp_rate_index(const int *rates, int len,
> > int rate)
> >       return -1;
> >  }
> >
> > +static int intel_dp_link_config_rate(struct intel_dp *intel_dp,
> > +                                  const struct intel_dp_link_config *lc) {
> > +     return intel_dp_common_rate(intel_dp, lc->link_rate_idx); }
> > +
> > +static int intel_dp_link_config_lane_count(const struct
> > +intel_dp_link_config *lc) {
> > +     return 1 << lc->lane_count_exp;
> > +}
> > +
> > +static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
> > +                                const struct intel_dp_link_config *lc) {
> > +     return
> > drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(intel_dp, lc),
> > +                                      intel_dp_link_config_lane_count(lc));
> > +}
> > +
> > +static int link_config_cmp_by_bw(const void *a, const void *b, const
> > +void *p) {
> > +     struct intel_dp *intel_dp = (struct intel_dp *)p;       /* remove const */
> > +     const struct intel_dp_link_config *lc_a = a;
> > +     const struct intel_dp_link_config *lc_b = b;
> > +     int bw_a = intel_dp_link_config_bw(intel_dp, lc_a);
> > +     int bw_b = intel_dp_link_config_bw(intel_dp, lc_b);
> > +
> > +     if (bw_a != bw_b)
> > +             return bw_a - bw_b;
> > +
> > +     return intel_dp_link_config_rate(intel_dp, lc_a) -
> > +            intel_dp_link_config_rate(intel_dp, lc_b); }
> > +
> > +static void link_config_swap(void *a, void *b, int size, const void *
> > +__always_unused p) {
> > +     struct intel_dp_link_config *lc_a = a;
> > +     struct intel_dp_link_config *lc_b = b;
> > +
> > +     swap(*lc_a, *lc_b);
> > +}
> > +
> > +static void intel_dp_link_config_init(struct intel_dp *intel_dp) {
> > +     struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > +     struct intel_dp_link_config *lc;
> > +     int num_common_lane_counts;
> > +     int i;
> > +     int j;
> > +
> > +     if (drm_WARN_ON(&i915->drm,
> > !is_power_of_2(intel_dp_max_common_lane_count(intel_dp))))
> > +             return;
> > +
> > +     num_common_lane_counts =
> > +ilog2(intel_dp_max_common_lane_count(intel_dp)) + 1;
> 
> Same thing here can we rename it as num_common_lane_count_config

Ok, will rename to num_common_lane_configs.

> Regards,
> Suraj Kandpal
> > +
> > +     if (drm_WARN_ON(&i915->drm, intel_dp->num_common_rates *
> > num_common_lane_counts >
> > +                                 ARRAY_SIZE(intel_dp->link.configs)))
> > +             return;
> > +
> > +     intel_dp->link.num_configs = intel_dp->num_common_rates *
> > +num_common_lane_counts;
> > +
> > +     lc = &intel_dp->link.configs[0];
> > +     for (i = 0; i < intel_dp->num_common_rates; i++) {
> > +             for (j = 0; j < num_common_lane_counts; j++) {
> > +                     lc->lane_count_exp = j;
> > +                     lc->link_rate_idx = i;
> > +
> > +                     lc++;
> > +             }
> > +     }
> > +
> > +     sort_r(intel_dp->link.configs, intel_dp->link.num_configs,
> > +            sizeof(intel_dp->link.configs[0]),
> > +            link_config_cmp_by_bw, link_config_swap,
> > +            intel_dp);
> > +}
> > +
> > +void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int
> > +*link_rate, int *lane_count) {
> > +     struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > +     const struct intel_dp_link_config *lc;
> > +
> > +     if (drm_WARN_ON(&i915->drm, idx < 0 || idx >= intel_dp-
> > >link.num_configs))
> > +             idx = 0;
> > +
> > +     lc = &intel_dp->link.configs[idx];
> > +
> > +     *link_rate = intel_dp_link_config_rate(intel_dp, lc);
> > +     *lane_count = intel_dp_link_config_lane_count(lc);
> > +}
> > +
> > +int intel_dp_link_config_index(struct intel_dp *intel_dp, int
> > +link_rate, int lane_count) {
> > +     int link_rate_idx = intel_dp_rate_index(intel_dp->common_rates,
> > intel_dp->num_common_rates,
> > +                                             link_rate);
> > +     int lane_count_exp = ilog2(lane_count);
> > +     int i;
> > +
> > +     for (i = 0; i < intel_dp->link.num_configs; i++) {
> > +             const struct intel_dp_link_config *lc = &intel_dp-
> > >link.configs[i];
> > +
> > +             if (lc->lane_count_exp == lane_count_exp &&
> > +                 lc->link_rate_idx == link_rate_idx)
> > +                     return i;
> > +     }
> > +
> > +     return -1;
> > +}
> > +
> >  static void intel_dp_set_common_rates(struct intel_dp *intel_dp)  {
> >       struct drm_i915_private *i915 = dp_to_i915(intel_dp); @@ -652,6
> > +761,8 @@ static void intel_dp_set_common_rates(struct intel_dp
> > *intel_dp)
> >               intel_dp->common_rates[0] = 162000;
> >               intel_dp->num_common_rates = 1;
> >       }
> > +
> > +     intel_dp_link_config_init(intel_dp);
> >  }
> >
> >  static bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int
> > link_rate, diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> > b/drivers/gpu/drm/i915/display/intel_dp.h
> > index 9be539edf817b..1b9aaddd8c35c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > @@ -107,6 +107,8 @@ int intel_dp_max_common_rate(struct intel_dp
> > *intel_dp);  int intel_dp_max_common_lane_count(struct intel_dp
> > *intel_dp);  int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
> > int intel_dp_rate_index(const int *rates, int len, int rate);
> > +int intel_dp_link_config_index(struct intel_dp *intel_dp, int
> > +link_rate, int lane_count); void intel_dp_link_config_get(struct
> > +intel_dp *intel_dp, int idx, int *link_rate, int *lane_count);
> >  void intel_dp_update_sink_caps(struct intel_dp *intel_dp);  void
> > intel_dp_reset_link_params(struct intel_dp *intel_dp);
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index 214c8858b8a94..0c8e0d6437b5b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -1170,6 +1170,41 @@ static bool
> > intel_dp_can_link_train_fallback_for_edp(struct intel_dp *intel_dp,
> >       return true;
> >  }
> >
> > +static bool reduce_link_params_in_bw_order(struct intel_dp *intel_dp,
> > +                                        const struct intel_crtc_state
> > *crtc_state,
> > +                                        int *new_link_rate, int
> > *new_lane_count) {
> > +     int link_rate;
> > +     int lane_count;
> > +     int i;
> > +
> > +     i = intel_dp_link_config_index(intel_dp, crtc_state->port_clock,
> > crtc_state->lane_count);
> > +     for (i--; i >= 0; i--) {
> > +             intel_dp_link_config_get(intel_dp, i, &link_rate,
> > &lane_count);
> > +
> > +             if ((intel_dp->link.force_rate &&
> > +                  intel_dp->link.force_rate != link_rate) ||
> > +                 (intel_dp->link.force_lane_count &&
> > +                  intel_dp->link.force_lane_count != lane_count))
> > +                     continue;
> > +
> > +             /* TODO: Make switching from UHBR to non-UHBR rates
> > work. */
> > +             if (drm_dp_is_uhbr_rate(crtc_state->port_clock) !=
> > +                 drm_dp_is_uhbr_rate(link_rate))
> > +                     continue;
> > +
> > +             break;
> > +     }
> > +
> > +     if (i < 0)
> > +             return false;
> > +
> > +     *new_link_rate = link_rate;
> > +     *new_lane_count = lane_count;
> > +
> > +     return true;
> > +}
> > +
> >  static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)  {
> >       int rate_index;
> > @@ -1231,8 +1266,12 @@ static bool
> > reduce_link_params_in_rate_lane_order(struct intel_dp *intel_dp,  static
> > bool reduce_link_params(struct intel_dp *intel_dp, const struct
> > intel_crtc_state *crtc_state,
> >                              int *new_link_rate, int *new_lane_count)  {
> > -     return reduce_link_params_in_rate_lane_order(intel_dp, crtc_state,
> > -                                                  new_link_rate,
> > new_lane_count);
> > +     if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
> > +             return reduce_link_params_in_bw_order(intel_dp,
> > crtc_state,
> > +                                                   new_link_rate,
> > new_lane_count);
> > +     else
> > +             return reduce_link_params_in_rate_lane_order(intel_dp,
> > crtc_state,
> > +                                                          new_link_rate,
> > new_lane_count);
> >  }
> >
> >  static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
> > --
> > 2.44.2
> 
