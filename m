Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 286C919AC5A
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 15:03:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15C526E937;
	Wed,  1 Apr 2020 13:03:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 182B76E095
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 13:03:50 +0000 (UTC)
IronPort-SDR: a3+jmY0y3Nr33gpOAi3zPw74nbVYLnl8Rhxs+CvStIu2j1Tt8jVewasm61wG9XKoZUos/S5ngN
 L+SSt7HGHwLQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 06:03:49 -0700
IronPort-SDR: vdCmouR7bb0o5MGGXLr95Ji9YrhyNXFuDQietmY0FSCM0JtzJ91jA9xLACLMfGtohtwV7qKY61
 n1mpx/yzmZiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,331,1580803200"; d="scan'208";a="240506150"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 01 Apr 2020 06:03:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Apr 2020 16:03:46 +0300
Date: Wed, 1 Apr 2020 16:03:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jeevan B <jeevan.b@intel.com>
Message-ID: <20200401130346.GT13686@intel.com>
References: <1585743148-31205-1-git-send-email-jeevan.b@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1585743148-31205-1-git-send-email-jeevan.b@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/5] drm: report dp downstream port type as
 a subconnector property
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

On Wed, Apr 01, 2020 at 05:42:24PM +0530, Jeevan B wrote:
> Currently, downstream port type is only reported in debugfs. This
> information should be considered important since it reflects the actual
> physical connector type. Some userspace (e.g. window compositors)
> may want to show this info to a user.
> =

> The 'subconnector' property is already utilized for DVI-I and TV-out for
> reporting connector subtype.
> =

> The initial motivation for this feature came from i2c test [1].
> It is supposed to be skipped on VGA connectors, but it cannot
> detect VGA over DP and fails instead.
> =

> v2:
>  - Ville: utilized drm_dp_is_branch()
>  - Ville: implement DP 1.0 downstream type info
>  - Replaced create_dp_properties with add_dp_subconnector_property
>  - Added dp_set_subconnector_property helper
> =

> v4:
>  - Ville: add DP1.0 best assumption about subconnector
>  - Ville: assume DVI is DVI-D
>  - Ville: reuse Writeback enum value for Virtual subconnector
>  - Renamed #defines: HDMI -> HDMIA, DP -> DisplayPort
> =

> [1]: https://bugs.freedesktop.org/show_bug.cgi?id=3D104097
> =

> Reviewed-by: Emil Velikov <emil.velikov@collabora.com>
> Signed-off-by: Oleg Vasilev <oleg.vasilev@intel.com>

Is this Oleg's patch? If so why did you change the patch author to be
yourself?

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Signed-off-by: Jeevan B <jeevan.b@intel.com>
> Link: https://patchwork.freedesktop.org/patch/msgid/20190829114854.1539-3=
-oleg.vasilev@intel.com
> ---
>  drivers/gpu/drm/drm_connector.c | 49 ++++++++++++++++++++++++--
>  drivers/gpu/drm/drm_dp_helper.c | 77 +++++++++++++++++++++++++++++++++++=
++++++
>  include/drm/drm_connector.h     |  3 ++
>  include/drm/drm_dp_helper.h     |  8 +++++
>  include/drm/drm_mode_config.h   |  6 ++++
>  include/uapi/drm/drm_mode.h     | 21 ++++++-----
>  6 files changed, 154 insertions(+), 10 deletions(-)
> =

> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connec=
tor.c
> index b1099e1..b6972d1 100644
> --- a/drivers/gpu/drm/drm_connector.c
> +++ b/drivers/gpu/drm/drm_connector.c
> @@ -844,7 +844,7 @@ static const struct drm_prop_enum_list drm_dvi_i_sele=
ct_enum_list[] =3D {
>  DRM_ENUM_NAME_FN(drm_get_dvi_i_select_name, drm_dvi_i_select_enum_list)
>  =

>  static const struct drm_prop_enum_list drm_dvi_i_subconnector_enum_list[=
] =3D {
> -	{ DRM_MODE_SUBCONNECTOR_Unknown,   "Unknown"   }, /* DVI-I and TV-out */
> +	{ DRM_MODE_SUBCONNECTOR_Unknown,   "Unknown"   }, /* DVI-I, TV-out and =
DP */
>  	{ DRM_MODE_SUBCONNECTOR_DVID,      "DVI-D"     }, /* DVI-I  */
>  	{ DRM_MODE_SUBCONNECTOR_DVIA,      "DVI-A"     }, /* DVI-I  */
>  };
> @@ -861,7 +861,7 @@ static const struct drm_prop_enum_list drm_tv_select_=
enum_list[] =3D {
>  DRM_ENUM_NAME_FN(drm_get_tv_select_name, drm_tv_select_enum_list)
>  =

>  static const struct drm_prop_enum_list drm_tv_subconnector_enum_list[] =
=3D {
> -	{ DRM_MODE_SUBCONNECTOR_Unknown,   "Unknown"   }, /* DVI-I and TV-out */
> +	{ DRM_MODE_SUBCONNECTOR_Unknown,   "Unknown"   }, /* DVI-I, TV-out and =
DP */
>  	{ DRM_MODE_SUBCONNECTOR_Composite, "Composite" }, /* TV-out */
>  	{ DRM_MODE_SUBCONNECTOR_SVIDEO,    "SVIDEO"    }, /* TV-out */
>  	{ DRM_MODE_SUBCONNECTOR_Component, "Component" }, /* TV-out */
> @@ -870,6 +870,19 @@ static const struct drm_prop_enum_list drm_tv_subcon=
nector_enum_list[] =3D {
>  DRM_ENUM_NAME_FN(drm_get_tv_subconnector_name,
>  		 drm_tv_subconnector_enum_list)
>  =

> +static const struct drm_prop_enum_list drm_dp_subconnector_enum_list[] =
=3D {
> +	{ DRM_MODE_SUBCONNECTOR_Unknown,     "Unknown"   }, /* DVI-I, TV-out an=
d DP */
> +	{ DRM_MODE_SUBCONNECTOR_VGA,	     "VGA"       }, /* DP */
> +	{ DRM_MODE_SUBCONNECTOR_DVID,	     "DVI-D"     }, /* DP */
> +	{ DRM_MODE_SUBCONNECTOR_HDMIA,	     "HDMI"      }, /* DP */
> +	{ DRM_MODE_SUBCONNECTOR_DisplayPort, "DP"        }, /* DP */
> +	{ DRM_MODE_SUBCONNECTOR_Wireless,    "Wireless"  }, /* DP */
> +	{ DRM_MODE_SUBCONNECTOR_Native,	     "Native"    }, /* DP */
> +};
> +
> +DRM_ENUM_NAME_FN(drm_get_dp_subconnector_name,
> +		 drm_dp_subconnector_enum_list)
> +
>  static const struct drm_prop_enum_list hdmi_colorspaces[] =3D {
>  	/* For Default case, driver will set the colorspace */
>  	{ DRM_MODE_COLORIMETRY_DEFAULT, "Default" },
> @@ -1186,6 +1199,14 @@ static const struct drm_prop_enum_list dp_colorspa=
ces[] =3D {
>   *	can also expose this property to external outputs, in which case they
>   *	must support "None", which should be the default (since external scre=
ens
>   *	have a built-in scaler).
> + *
> + * subconnector:
> + *	This property is used by DVI-I, TVout and DisplayPort to indicate dif=
ferent
> + *	connector subtypes. Enum values more or less match with those from ma=
in
> + *	connector types.
> + *	For DVI-I and TVout there is also a matching property "select subconn=
ector"
> + *	allowing to switch between signal types.
> + *	DP subconnector corresponds to a downstream port.
>   */
>  =

>  int drm_connector_create_standard_properties(struct drm_device *dev)
> @@ -1275,6 +1296,30 @@ int drm_mode_create_dvi_i_properties(struct drm_de=
vice *dev)
>  EXPORT_SYMBOL(drm_mode_create_dvi_i_properties);
>  =

>  /**
> + * drm_mode_add_dp_subconnector_property - create subconnector property =
for DP
> + * @connector: drm_connector to attach property
> + *
> + * Called by a driver when DP connector is created.
> + */
> +void drm_mode_add_dp_subconnector_property(struct drm_connector *connect=
or)
> +{
> +	struct drm_mode_config *mode_config =3D &connector->dev->mode_config;
> +
> +	if (!mode_config->dp_subconnector_property)
> +		mode_config->dp_subconnector_property =3D
> +			drm_property_create_enum(connector->dev,
> +				DRM_MODE_PROP_IMMUTABLE,
> +				"subconnector",
> +				drm_dp_subconnector_enum_list,
> +				ARRAY_SIZE(drm_dp_subconnector_enum_list));
> +
> +	drm_object_attach_property(&connector->base,
> +				   mode_config->dp_subconnector_property,
> +				   DRM_MODE_SUBCONNECTOR_Unknown);
> +}
> +EXPORT_SYMBOL(drm_mode_add_dp_subconnector_property);
> +
> +/**
>   * DOC: HDMI connector properties
>   *
>   * content type (HDMI specific):
> diff --git a/drivers/gpu/drm/drm_dp_helper.c b/drivers/gpu/drm/drm_dp_hel=
per.c
> index 8ba4531..5d5b50f 100644
> --- a/drivers/gpu/drm/drm_dp_helper.c
> +++ b/drivers/gpu/drm/drm_dp_helper.c
> @@ -594,6 +594,83 @@ void drm_dp_downstream_debug(struct seq_file *m,
>  }
>  EXPORT_SYMBOL(drm_dp_downstream_debug);
>  =

> +/**
> + * drm_dp_subconnector_type() - get DP branch device type
> + * @dpcd: DisplayPort configuration data
> + * @port_cap: port capabilities
> + *
> + */
> +enum drm_mode_subconnector
> +drm_dp_subconnector_type(const u8 dpcd[DP_RECEIVER_CAP_SIZE],
> +			 const u8 port_cap[4])
> +{
> +	int type;
> +	if (!drm_dp_is_branch(dpcd))
> +		return DRM_MODE_SUBCONNECTOR_Native;
> +	/* DP 1.0 approach */
> +	if (dpcd[DP_DPCD_REV] =3D=3D DP_DPCD_REV_10) {
> +		type =3D dpcd[DP_DOWNSTREAMPORT_PRESENT] &
> +		       DP_DWN_STRM_PORT_TYPE_MASK;
> +
> +		switch (type) {
> +		case DP_DWN_STRM_PORT_TYPE_TMDS:
> +			/* Can be HDMI or DVI-D, DVI-D is a safer option */
> +			return DRM_MODE_SUBCONNECTOR_DVID;
> +		case DP_DWN_STRM_PORT_TYPE_ANALOG:
> +			/* Can be VGA or DVI-A, VGA is more popular */
> +			return DRM_MODE_SUBCONNECTOR_VGA;
> +		case DP_DWN_STRM_PORT_TYPE_DP:
> +			return DRM_MODE_SUBCONNECTOR_DisplayPort;
> +		case DP_DWN_STRM_PORT_TYPE_OTHER:
> +		default:
> +			return DRM_MODE_SUBCONNECTOR_Unknown;
> +		}
> +	}
> +	type =3D port_cap[0] & DP_DS_PORT_TYPE_MASK;
> +
> +	switch (type) {
> +	case DP_DS_PORT_TYPE_DP:
> +	case DP_DS_PORT_TYPE_DP_DUALMODE:
> +		return DRM_MODE_SUBCONNECTOR_DisplayPort;
> +	case DP_DS_PORT_TYPE_VGA:
> +		return DRM_MODE_SUBCONNECTOR_VGA;
> +	case DP_DS_PORT_TYPE_DVI:
> +		return DRM_MODE_SUBCONNECTOR_DVID;
> +	case DP_DS_PORT_TYPE_HDMI:
> +		return DRM_MODE_SUBCONNECTOR_HDMIA;
> +	case DP_DS_PORT_TYPE_WIRELESS:
> +		return DRM_MODE_SUBCONNECTOR_Wireless;
> +	case DP_DS_PORT_TYPE_NON_EDID:
> +	default:
> +		return DRM_MODE_SUBCONNECTOR_Unknown;
> +	}
> +}
> +EXPORT_SYMBOL(drm_dp_subconnector_type);
> +
> +/**
> + * drm_mode_set_dp_subconnector_property - set subconnector for DP conne=
ctor
> + * @connector: dp connector to attach property
> + * @status: connector status which is about to be set
> + * @dpcd: DisplayPort configuration data
> + * @port_cap: port capabilities
> + *
> + * Called by a driver on every detect event.
> + */
> +void drm_dp_set_subconnector_property(struct drm_connector *connector,
> +				      enum drm_connector_status status,
> +				      const u8 *dpcd,
> +				      const u8 port_cap[4])
> +{
> +	enum drm_mode_subconnector subconnector =3D DRM_MODE_SUBCONNECTOR_Unkno=
wn;
> +
> +	if (status =3D=3D connector_status_connected)
> +		subconnector =3D drm_dp_subconnector_type(dpcd, port_cap);
> +	drm_object_property_set_value(&connector->base,
> +			connector->dev->mode_config.dp_subconnector_property,
> +			subconnector);
> +}
> +EXPORT_SYMBOL(drm_dp_set_subconnector_property);
> +
>  /*
>   * I2C-over-AUX implementation
>   */
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index fd543d1..82797c8 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -1556,10 +1556,13 @@ const char *drm_get_dvi_i_subconnector_name(int v=
al);
>  const char *drm_get_dvi_i_select_name(int val);
>  const char *drm_get_tv_subconnector_name(int val);
>  const char *drm_get_tv_select_name(int val);
> +const char *drm_get_dp_subconnector_name(int val);
>  const char *drm_get_content_protection_name(int val);
>  const char *drm_get_hdcp_content_type_name(int val);
>  =

>  int drm_mode_create_dvi_i_properties(struct drm_device *dev);
> +void drm_mode_add_dp_subconnector_property(struct drm_connector *connect=
or);
> +
>  int drm_mode_create_tv_margin_properties(struct drm_device *dev);
>  int drm_mode_create_tv_properties(struct drm_device *dev,
>  				  unsigned int num_modes,
> diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
> index 305533d..6408b31 100644
> --- a/include/drm/drm_dp_helper.h
> +++ b/include/drm/drm_dp_helper.h
> @@ -26,6 +26,7 @@
>  #include <linux/delay.h>
>  #include <linux/i2c.h>
>  #include <linux/types.h>
> +#include <drm/drm_connector.h>
>  =

>  /*
>   * Unless otherwise noted, all values are from the DP 1.1a spec.  Note t=
hat
> @@ -1599,6 +1600,13 @@ int drm_dp_downstream_max_bpc(const u8 dpcd[DP_REC=
EIVER_CAP_SIZE],
>  int drm_dp_downstream_id(struct drm_dp_aux *aux, char id[6]);
>  void drm_dp_downstream_debug(struct seq_file *m, const u8 dpcd[DP_RECEIV=
ER_CAP_SIZE],
>  			     const u8 port_cap[4], struct drm_dp_aux *aux);
> +enum drm_mode_subconnector
> +drm_dp_subconnector_type(const u8 dpcd[DP_RECEIVER_CAP_SIZE],
> +			 const u8 port_cap[4]);
> +void drm_dp_set_subconnector_property(struct drm_connector *connector,
> +				      enum drm_connector_status status,
> +				      const u8 *dpcd,
> +				      const u8 port_cap[4]);
>  =

>  void drm_dp_remote_aux_init(struct drm_dp_aux *aux);
>  void drm_dp_aux_init(struct drm_dp_aux *aux);
> diff --git a/include/drm/drm_mode_config.h b/include/drm/drm_mode_config.h
> index 6c3ef49..085fb00 100644
> --- a/include/drm/drm_mode_config.h
> +++ b/include/drm/drm_mode_config.h
> @@ -681,6 +681,12 @@ struct drm_mode_config {
>  	struct drm_property *dvi_i_select_subconnector_property;
>  =

>  	/**
> +	 * @dp_subconnector_property: Optional DP property to differentiate
> +	 * between different DP downstream port types.
> +	 */
> +	struct drm_property *dp_subconnector_property;
> +
> +	/**
>  	 * @tv_subconnector_property: Optional TV property to differentiate
>  	 * between different TV connector types.
>  	 */
> diff --git a/include/uapi/drm/drm_mode.h b/include/uapi/drm/drm_mode.h
> index 735c8cf..3358c6b 100644
> --- a/include/uapi/drm/drm_mode.h
> +++ b/include/uapi/drm/drm_mode.h
> @@ -332,14 +332,19 @@ struct drm_mode_get_encoder {
>  /* This is for connectors with multiple signal types. */
>  /* Try to match DRM_MODE_CONNECTOR_X as closely as possible. */
>  enum drm_mode_subconnector {
> -	DRM_MODE_SUBCONNECTOR_Automatic =3D 0,
> -	DRM_MODE_SUBCONNECTOR_Unknown =3D 0,
> -	DRM_MODE_SUBCONNECTOR_DVID =3D 3,
> -	DRM_MODE_SUBCONNECTOR_DVIA =3D 4,
> -	DRM_MODE_SUBCONNECTOR_Composite =3D 5,
> -	DRM_MODE_SUBCONNECTOR_SVIDEO =3D 6,
> -	DRM_MODE_SUBCONNECTOR_Component =3D 8,
> -	DRM_MODE_SUBCONNECTOR_SCART =3D 9,
> +	DRM_MODE_SUBCONNECTOR_Automatic   =3D 0,  /* DVI-I, TV     */
> +	DRM_MODE_SUBCONNECTOR_Unknown     =3D 0,  /* DVI-I, TV, DP */
> +	DRM_MODE_SUBCONNECTOR_VGA	  =3D 1,  /*            DP */
> +	DRM_MODE_SUBCONNECTOR_DVID	  =3D 3,  /* DVI-I      DP */
> +	DRM_MODE_SUBCONNECTOR_DVIA	  =3D 4,  /* DVI-I         */
> +	DRM_MODE_SUBCONNECTOR_Composite   =3D 5,  /*        TV     */
> +	DRM_MODE_SUBCONNECTOR_SVIDEO	  =3D 6,  /*        TV     */
> +	DRM_MODE_SUBCONNECTOR_Component   =3D 8,  /*        TV     */
> +	DRM_MODE_SUBCONNECTOR_SCART	  =3D 9,  /*        TV     */
> +	DRM_MODE_SUBCONNECTOR_DisplayPort =3D 10, /*            DP */
> +	DRM_MODE_SUBCONNECTOR_HDMIA       =3D 11, /*            DP */
> +	DRM_MODE_SUBCONNECTOR_Native      =3D 15, /*            DP */
> +	DRM_MODE_SUBCONNECTOR_Wireless    =3D 18, /*            DP */
>  };
>  =

>  #define DRM_MODE_CONNECTOR_Unknown	0
> -- =

> 2.7.4

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
