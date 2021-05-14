Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1423806D8
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 12:06:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29E5C6E2C8;
	Fri, 14 May 2021 10:06:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5D3B6E2C8
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 10:06:40 +0000 (UTC)
IronPort-SDR: GXatqu4L/pQwieP+aLdiQ0ZK0CYvFnqYFcHwGzsRavmogJxhKKCMfo4mtwJnvg5btwAujLmEho
 QcDCFUFLO0zw==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="221160804"
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="221160804"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 03:06:40 -0700
IronPort-SDR: gx9lzxOsQvwWPYSwxoGCS1+zJzYNSl5HG+XzrrYb1rm7hr7wjz9aDMX7QbEH2KMSyyCKmcV8rD
 PPZqgJ+9E/ew==
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="610719718"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 03:06:38 -0700
Date: Fri, 14 May 2021 13:09:57 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210514100957.GF8652@intel.com>
References: <20210508022820.780227-1-matthew.d.roper@intel.com>
 <20210508022820.780227-30-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210508022820.780227-30-matthew.d.roper@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v3 29/48] drm/i915/adl_p: MBUS programming
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 07, 2021 at 07:28:01PM -0700, Matt Roper wrote:
> From: Vandita Kulkarni <vandita.kulkarni@intel.com>
> =

> Update MBUS_CTL register if the 2 mbus can be joined as per the current
> DDB allocation and active pipes, also update hashing mode and pipe
> select bits as  per the sequence mentioned in the bspec.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> =

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c  | 20 +++++
>  drivers/gpu/drm/i915/display/intel_atomic.h  |  1 +
>  drivers/gpu/drm/i915/display/intel_display.c |  3 +
>  drivers/gpu/drm/i915/i915_reg.h              | 11 +++
>  drivers/gpu/drm/i915/intel_pm.c              | 92 ++++++++++++++++++--
>  drivers/gpu/drm/i915/intel_pm.h              |  2 +-
>  6 files changed, 120 insertions(+), 9 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/dr=
m/i915/display/intel_atomic.c
> index 88f424020a5f..b4e7ac51aa31 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -187,6 +187,26 @@ intel_connector_needs_modeset(struct intel_atomic_st=
ate *state,
>  									    new_conn_state->crtc)));
>  }
>  =

> +/**
> + * intel_any_crtc_needs_modeset - check if any CRTC needs a modeset
> + * @state: the atomic state corresponding to this modeset
> + *
> + * Returns true if any CRTC in @state needs a modeset.
> + */
> +bool intel_any_crtc_needs_modeset(struct intel_atomic_state *state)
> +{
> +	struct intel_crtc *crtc;
> +	struct intel_crtc_state *crtc_state;
> +	int i;
> +
> +	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> +		if (intel_crtc_needs_modeset(crtc_state))
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
>  struct intel_digital_connector_state *
>  intel_atomic_get_digital_connector_state(struct intel_atomic_state *stat=
e,
>  					 struct intel_connector *connector)
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.h b/drivers/gpu/dr=
m/i915/display/intel_atomic.h
> index 62a3365ed5e6..d2700c74c9da 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.h
> @@ -35,6 +35,7 @@ struct drm_connector_state *
>  intel_digital_connector_duplicate_state(struct drm_connector *connector);
>  bool intel_connector_needs_modeset(struct intel_atomic_state *state,
>  				   struct drm_connector *connector);
> +bool intel_any_crtc_needs_modeset(struct intel_atomic_state *state);
>  struct intel_digital_connector_state *
>  intel_atomic_get_digital_connector_state(struct intel_atomic_state *stat=
e,
>  					 struct intel_connector *connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 611ff1d9a482..7ae1e3a53dc9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -9948,6 +9948,9 @@ static int intel_atomic_check(struct drm_device *de=
v,
>  	if (ret)
>  		goto fail;
>  =

> +	if (intel_any_crtc_needs_modeset(state))
> +		any_ms =3D true;
> +
>  	if (any_ms) {
>  		ret =3D intel_modeset_checks(state);
>  		if (ret)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index d3a1801a3228..345dc922eca5 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2935,6 +2935,15 @@ static inline bool i915_mmio_reg_valid(i915_reg_t =
reg)
>  #define MBUS_BBOX_CTL_S1		_MMIO(0x45040)
>  #define MBUS_BBOX_CTL_S2		_MMIO(0x45044)
>  =

> +#define MBUS_CTL			_MMIO(0x4438C)
> +#define MBUS_JOIN			REG_BIT(31)
> +#define MBUS_HASHING_MODE_MASK		REG_BIT(30)
> +#define MBUS_HASHING_MODE_2x2		REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 0)
> +#define MBUS_HASHING_MODE_1x4		REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 1)
> +#define MBUS_JOIN_PIPE_SELECT_MASK	REG_GENMASK(28, 26)
> +#define MBUS_JOIN_PIPE_SELECT(pipe)	REG_FIELD_PREP(MBUS_JOIN_PIPE_SELECT=
_MASK, pipe)
> +#define MBUS_JOIN_PIPE_SELECT_NONE	MBUS_JOIN_PIPE_SELECT(7)
> +
>  #define HDPORT_STATE			_MMIO(0x45050)
>  #define   HDPORT_DPLL_USED_MASK		REG_GENMASK(15, 12)
>  #define   HDPORT_DDI_USED(phy)		REG_BIT(2 * (phy) + 1)
> @@ -8163,6 +8172,8 @@ enum {
>  #define  DBUF_POWER_STATE			REG_BIT(30)
>  #define  DBUF_TRACKER_STATE_SERVICE_MASK	REG_GENMASK(23, 19)
>  #define  DBUF_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(DBUF_TRACKER_STAT=
E_SERVICE_MASK, x)
> +#define  DBUF_MIN_TRACKER_STATE_SERVICE_MASK	REG_GENMASK(18, 16) /* ADL-=
P+ */
> +#define  DBUF_MIN_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(DBUF_MIN_TRAC=
KER_STATE_SERVICE_MASK, x) /* ADL-P+ */
>  =

>  #define GEN7_MSG_CTL	_MMIO(0x45010)
>  #define  WAIT_FOR_PCH_RESET_ACK		(1 << 1)
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 14aea76cbe53..36da17e1aa3c 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4266,7 +4266,6 @@ skl_cursor_allocation(const struct intel_crtc_state=
 *crtc_state,
>  static void skl_ddb_entry_init_from_hw(struct drm_i915_private *dev_priv,
>  				       struct skl_ddb_entry *entry, u32 reg)
>  {
> -
>  	entry->start =3D reg & DDB_ENTRY_MASK;
>  	entry->end =3D (reg >> DDB_ENTRY_END_SHIFT) & DDB_ENTRY_MASK;
>  =

> @@ -4391,6 +4390,7 @@ skl_plane_downscale_amount(const struct intel_crtc_=
state *crtc_state,
>  struct dbuf_slice_conf_entry {
>  	u8 active_pipes;
>  	u8 dbuf_mask[I915_MAX_PIPES];
> +	bool join_mbus;
>  };
>  =

>  /*
> @@ -4583,14 +4583,16 @@ static const struct dbuf_slice_conf_entry adlp_al=
lowed_dbufs[] =3D {
>  	{
>  		.active_pipes =3D BIT(PIPE_A),
>  		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> +			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) | BIT(DBUF_S4=
),
>  		},
> +		.join_mbus =3D true,
>  	},
>  	{
>  		.active_pipes =3D BIT(PIPE_B),
>  		.dbuf_mask =3D {
> -			[PIPE_B] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> +			[PIPE_B] =3D BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) | BIT(DBUF_S4=
),
>  		},
> +		.join_mbus =3D true,
>  	},
>  	{
>  		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B),
> @@ -4691,6 +4693,23 @@ static const struct dbuf_slice_conf_entry adlp_all=
owed_dbufs[] =3D {
>  =

>  };
>  =

> +static bool check_mbus_joined(u8 active_pipes,
> +			      const struct dbuf_slice_conf_entry *dbuf_slices)
> +{
> +	int i;
> +
> +	for (i =3D 0; i < dbuf_slices[i].active_pipes; i++) {
> +		if (dbuf_slices[i].active_pipes =3D=3D active_pipes)
> +			return dbuf_slices[i].join_mbus;
> +	}
> +	return false;
> +}
> +
> +static bool adlp_check_mbus_joined(u8 active_pipes)
> +{
> +	return check_mbus_joined(active_pipes, adlp_allowed_dbufs);
> +}
> +
>  static u8 compute_dbuf_slices(enum pipe pipe, u8 active_pipes,
>  			      const struct dbuf_slice_conf_entry *dbuf_slices)
>  {
> @@ -5972,16 +5991,29 @@ skl_compute_ddb(struct intel_atomic_state *state)
>  =

>  	new_dbuf_state->enabled_slices =3D intel_dbuf_enabled_slices(new_dbuf_s=
tate);
>  =

> -	if (old_dbuf_state->enabled_slices !=3D new_dbuf_state->enabled_slices)=
 {
> +	if (IS_ALDERLAKE_P(dev_priv))
> +		new_dbuf_state->joined_mbus =3D adlp_check_mbus_joined(new_dbuf_state-=
>active_pipes);
> +
> +	if (old_dbuf_state->enabled_slices !=3D new_dbuf_state->enabled_slices =
||
> +	    old_dbuf_state->joined_mbus !=3D new_dbuf_state->joined_mbus) {
>  		ret =3D intel_atomic_serialize_global_state(&new_dbuf_state->base);
>  		if (ret)
>  			return ret;
>  =

> +		if (old_dbuf_state->joined_mbus !=3D new_dbuf_state->joined_mbus) {
> +			/* TODO: Implement vblank synchronized MBUS joining changes */
> +			ret =3D intel_modeset_all_pipes(state);
> +			if (ret)
> +				return ret;
> +		}
> +
>  		drm_dbg_kms(&dev_priv->drm,
> -			    "Enabled dbuf slices 0x%x -> 0x%x (total dbuf slices 0x%x)\n",
> +			    "Enabled dbuf slices 0x%x -> 0x%x (total dbuf slices 0x%x), mbus =
joined? %s->%s\n",
>  			    old_dbuf_state->enabled_slices,
>  			    new_dbuf_state->enabled_slices,
> -			    INTEL_INFO(dev_priv)->dbuf.slice_mask);
> +			    INTEL_INFO(dev_priv)->dbuf.slice_mask,
> +			    yesno(old_dbuf_state->joined_mbus),
> +			    yesno(new_dbuf_state->joined_mbus));
>  	}
>  =

>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> @@ -6433,6 +6465,9 @@ void skl_wm_get_hw_state(struct drm_i915_private *d=
ev_priv)
>  		to_intel_dbuf_state(dev_priv->dbuf.obj.state);
>  	struct intel_crtc *crtc;
>  =

> +	if (IS_ALDERLAKE_P(dev_priv))
> +		dbuf_state->joined_mbus =3D intel_de_read(dev_priv, MBUS_CTL) & MBUS_J=
OIN;
> +
>  	for_each_intel_crtc(&dev_priv->drm, crtc) {
>  		struct intel_crtc_state *crtc_state =3D
>  			to_intel_crtc_state(crtc->base.state);
> @@ -6472,10 +6507,11 @@ void skl_wm_get_hw_state(struct drm_i915_private =
*dev_priv)
>  		crtc_state->wm.skl.ddb.end =3D mbus_offset + dbuf_state->ddb[pipe].end;
>  =

>  		drm_dbg_kms(&dev_priv->drm,
> -			    "[CRTC:%d:%s] dbuf slices 0x%x, ddb (%d - %d), active pipes 0x%x\=
n",
> +			    "[CRTC:%d:%s] dbuf slices 0x%x, ddb (%d - %d), active pipes 0x%x,=
 mbus joined: %s\n",
>  			    crtc->base.base.id, crtc->base.name,
>  			    dbuf_state->slices[pipe], dbuf_state->ddb[pipe].start,
> -			    dbuf_state->ddb[pipe].end, dbuf_state->active_pipes);
> +			    dbuf_state->ddb[pipe].end, dbuf_state->active_pipes,
> +			    yesno(dbuf_state->joined_mbus));
>  	}
>  =

>  	dbuf_state->enabled_slices =3D dev_priv->dbuf.enabled_slices;
> @@ -7999,6 +8035,45 @@ int intel_dbuf_init(struct drm_i915_private *dev_p=
riv)
>  	return 0;
>  }
>  =

> +/*
> + * Configure MBUS_CTL and all DBUF_CTL_S of each slice to join_mbus stat=
e before
> + * update the request state of all DBUS slices.
> + */
> +static void update_mbus_pre_enable(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	u32 mbus_ctl, dbuf_min_tracker_val;
> +	enum dbuf_slice slice;
> +	const struct intel_dbuf_state *dbuf_state =3D
> +		intel_atomic_get_new_dbuf_state(state);
> +
> +	if (!IS_ALDERLAKE_P(dev_priv))
> +		return;
> +
> +	/*
> +	 * TODO: Implement vblank synchronized MBUS joining changes.
> +	 * Must be properly coordinated with dbuf reprogramming.
> +	 */
> +	if (dbuf_state->joined_mbus) {
> +		mbus_ctl =3D MBUS_HASHING_MODE_1x4 | MBUS_JOIN |
> +			MBUS_JOIN_PIPE_SELECT_NONE;
> +		dbuf_min_tracker_val =3D DBUF_MIN_TRACKER_STATE_SERVICE(3);
> +	} else {
> +		mbus_ctl =3D MBUS_HASHING_MODE_2x2 |
> +			MBUS_JOIN_PIPE_SELECT_NONE;
> +		dbuf_min_tracker_val =3D DBUF_MIN_TRACKER_STATE_SERVICE(1);
> +	}
> +
> +	intel_de_rmw(dev_priv, MBUS_CTL,
> +		     MBUS_HASHING_MODE_MASK | MBUS_JOIN |
> +		     MBUS_JOIN_PIPE_SELECT_MASK, mbus_ctl);
> +
> +	for_each_dbuf_slice(dev_priv, slice)
> +		intel_de_rmw(dev_priv, DBUF_CTL_S(slice),
> +			     DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
> +			     dbuf_min_tracker_val);
> +}
> +
>  void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> @@ -8013,6 +8088,7 @@ void intel_dbuf_pre_plane_update(struct intel_atomi=
c_state *state)
>  =

>  	WARN_ON(!new_dbuf_state->base.changed);
>  =

> +	update_mbus_pre_enable(state);
>  	gen9_dbuf_slices_update(dev_priv,
>  				old_dbuf_state->enabled_slices |
>  				new_dbuf_state->enabled_slices);
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel=
_pm.h
> index 669c8d505677..bac72c859a84 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -78,9 +78,9 @@ struct intel_dbuf_state {
>  	struct skl_ddb_entry ddb[I915_MAX_PIPES];
>  	unsigned int weight[I915_MAX_PIPES];
>  	u8 slices[I915_MAX_PIPES];
> -
>  	u8 enabled_slices;
>  	u8 active_pipes;
> +	bool joined_mbus;
>  };
>  =

>  int intel_dbuf_init(struct drm_i915_private *dev_priv);
> -- =

> 2.25.4
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
