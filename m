Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D4E61C96
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 11:52:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61DBC89ABA;
	Mon,  8 Jul 2019 09:52:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F04789ABA;
 Mon,  8 Jul 2019 09:52:30 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id m8so5741234lji.7;
 Mon, 08 Jul 2019 02:52:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version;
 bh=lnUihKlbjLuUNt9nY9xj4t0KWfhqNNKJdKy+iRVuOOo=;
 b=eSF4hkf+Di8qlOECqfCDbcBOAE19tf83RvvQmalV+55jHtst1irAh78jKUi7RvN52s
 1SeJf80nJFt3Oi5wZANxqTRf2zmZRtGKALtT7omcpw9K+QxzO/2g8YhxQKwtnCm293JS
 M9gyebgV44/TPmzh7FUShdwDcj49Pi8bJWUHNcpRe+R8weJD/u5J2eGe2ZB9R5NIU6Fk
 qbnkd3F7eS1eBFYyeOrgAnYwclm9EJuSNlowoaQ950rTC8VLEw1G/yt0NgpRtYiZ7/sH
 Dz1v39gzZ5jFalwDtaoaGBZ0ZnchO5tY3xaQ6luXxW4UHtezHoqOnE8lY/Sdttsso8l8
 PZMg==
X-Gm-Message-State: APjAAAXOKw8H140o94VO3nejbSef7JFD1X875AGHzKBRnwYNq/JHeiEU
 gD3yCUkUH0tyFj1uu4U1tVNZMk+l
X-Google-Smtp-Source: APXvYqw0sec8BW/r8qUKpmX5UVXpDQslWAAgfzoqhl09BGQ2IO/xbSG8f1wBlma5VaMXZrqrajBxCA==
X-Received: by 2002:a2e:5dc6:: with SMTP id v67mr6464408lje.240.1562579548482; 
 Mon, 08 Jul 2019 02:52:28 -0700 (PDT)
Received: from eldfell.localdomain ([194.136.85.206])
 by smtp.gmail.com with ESMTPSA id q4sm3914389lje.99.2019.07.08.02.52.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 02:52:28 -0700 (PDT)
Date: Mon, 8 Jul 2019 12:52:17 +0300
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Ramalingam C <ramalingam.c@intel.com>
Message-ID: <20190708125217.6bc8dc27@eldfell.localdomain>
In-Reply-To: <20190705004642.15822-2-ramalingam.c@intel.com>
References: <20190705004642.15822-1-ramalingam.c@intel.com>
 <20190705004642.15822-2-ramalingam.c@intel.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version;
 bh=lnUihKlbjLuUNt9nY9xj4t0KWfhqNNKJdKy+iRVuOOo=;
 b=Y5q4du3UgzfSnInty3/k3FVn7k/uWA0WIP+CZI97ywtruYqIMX1oSnehL8dgPqcxHz
 7ADtFbBjrX+bqOUZSLi+Qxx0tdWWBX86KpLxiTHR7RUWplg1moGCC2h4Hez3pE81eFhB
 J0chwMMcQRHwaQmG8X9W5XdKxH9HKJ4hga5wIRPZxMVmx5h8rRd4CY07XcPa9DJ1XUZf
 mmzV8x06bmW+t9CjZwOCFw0nzvX5sD9k/jutZXWBBwVhI2TSx55aomxPw/EsE6yY5491
 p4I+y0yDjStAiY9OcK4DprXwOzs6/Ov9hrIcVtB9saP3EhCU/+V2MQ57yAHdPIF/26H8
 44Fg==
Subject: Re: [Intel-gfx] [PATCH v8 1/6] drm: Add Content protection type
 property
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1514628494=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1514628494==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/7BFqXv/J6AkqT4I6nsP.PBP"; protocol="application/pgp-signature"

--Sig_/7BFqXv/J6AkqT4I6nsP.PBP
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Fri,  5 Jul 2019 06:16:37 +0530
Ramalingam C <ramalingam.c@intel.com> wrote:

> This patch adds a DRM ENUM property to the selected connectors.
> This property is used for mentioning the protected content's type
> from userspace to kernel HDCP authentication.
>=20
> Type of the stream is decided by the protected content providers.
> Type 0 content can be rendered on any HDCP protected display wires.
> But Type 1 content can be rendered only on HDCP2.2 protected paths.
>=20
> So when a userspace sets this property to Type 1 and starts the HDCP
> enable, kernel will honour it only if HDCP2.2 authentication is through
> for type 1. Else HDCP enable will be failed.
>=20
> Need ACK for this new conenctor property from userspace consumer.
>=20
> v2:
>   cp_content_type is replaced with content_protection_type [daniel]
>   check at atomic_set_property is removed [Maarten]
> v3:
>   %s/content_protection_type/hdcp_content_type [Pekka]
> v4:
>   property is created for the first requested connector and then reused.
> 	[Danvet]
> v5:
>   kernel doc nits addressed [Daniel]
>   Rebased as part of patch reordering.
> v6:
>   Kernel docs are modified [pekka]
>=20
> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> ---
>  drivers/gpu/drm/drm_atomic_uapi.c         |  4 +++
>  drivers/gpu/drm/drm_connector.c           | 22 ++++++++++++++
>  drivers/gpu/drm/drm_hdcp.c                | 36 ++++++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_hdcp.c |  4 ++-
>  include/drm/drm_connector.h               |  7 +++++
>  include/drm/drm_hdcp.h                    |  2 +-
>  include/drm/drm_mode_config.h             |  6 ++++
>  include/uapi/drm/drm_mode.h               |  4 +++
>  8 files changed, 82 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atom=
ic_uapi.c
> index abe38bdf85ae..19ae119f1a5d 100644
> --- a/drivers/gpu/drm/drm_atomic_uapi.c
> +++ b/drivers/gpu/drm/drm_atomic_uapi.c
> @@ -747,6 +747,8 @@ static int drm_atomic_connector_set_property(struct d=
rm_connector *connector,
>  			return -EINVAL;
>  		}
>  		state->content_protection =3D val;
> +	} else if (property =3D=3D config->hdcp_content_type_property) {
> +		state->hdcp_content_type =3D val;
>  	} else if (property =3D=3D connector->colorspace_property) {
>  		state->colorspace =3D val;
>  	} else if (property =3D=3D config->writeback_fb_id_property) {
> @@ -831,6 +833,8 @@ drm_atomic_connector_get_property(struct drm_connecto=
r *connector,
>  			state->hdr_output_metadata->base.id : 0;
>  	} else if (property =3D=3D config->content_protection_property) {
>  		*val =3D state->content_protection;
> +	} else if (property =3D=3D config->hdcp_content_type_property) {
> +		*val =3D state->hdcp_content_type;
>  	} else if (property =3D=3D config->writeback_fb_id_property) {
>  		/* Writeback framebuffer is one-shot, write and forget */
>  		*val =3D 0;
> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connec=
tor.c
> index 068d4b05f1be..17aef88c03a6 100644
> --- a/drivers/gpu/drm/drm_connector.c
> +++ b/drivers/gpu/drm/drm_connector.c
> @@ -951,6 +951,28 @@ static const struct drm_prop_enum_list hdmi_colorspa=
ces[] =3D {
>   *	  the value transitions from ENABLED to DESIRED. This signifies the l=
ink
>   *	  is no longer protected and userspace should take appropriate action
>   *	  (whatever that might be).
> + * HDCP Content Type:
> + *	This property is used by the userspace to configure the kernel with
> + *	to be displayed stream's content type. Content Type of a stream is
> + *	decided by the owner of the stream, as "HDCP Type0" or "HDCP Type1".
> + *
> + *	The value of the property can be one the below:
> + *	  - "HDCP Type0": DRM_MODE_HDCP_CONTENT_TYPE0 =3D 0
> + *		HDCP Type0 streams can be transmitted on a link which is
> + *		encrypted with HDCP 1.4 or higher versions of HDCP(i.e HDCP2.2
> + *		and more).
> + *	  - "HDCP Type1": DRM_MODE_HDCP_CONTENT_TYPE1 =3D 1
> + *		HDCP Type1 streams can be transmitted on a link which is
> + *		encrypted only with HDCP 2.2. In future higher versions also
> + *		might support Type1 based on their spec.
> + *
> + *	Note that the HDCP Content Type property is introduced at HDCP 2.2, a=
nd
> + *	defaults to type 0. It is only exposed by drivers supporting HDCP 2.2.
> + *	Based on how next versions of HDCP specs are defined content Type cou=
ld
> + *	be used for higher versions too.
> + *	If content type is changed when content_protection is not UNDESIRED,
> + *	then kernel will disable the HDCP and re-enable with new type in the
> + *	same atomic commit

Hi,

I think this doc covers all my previous comments on this patch now. One
more thing, the wording here reads as:
- userspace configures the content type
- the kernel transmits the content if the link satisfies the type
  requirement
- if the link does not satisfy the type requirement, the kernel will
  not transmit the content

This is of course false, the kernel transmits anyway, but that is how
the text reads from the "stream's content type" and "can be transmitted
on". The problem is, that a userspace developer will think the stream
is what he pushes into KMS, not what goes on the wire. The text also
magnifies that misconception because it sounds like the stream is
something different from the link. Actually, I don't understand what
"the stream" is supposed to be here.

Instead, I think you should explain how the content type property
guides the kernel driver's attempts in negotiating the link encryption
and how that then reflects in the content protection property (DESIRED
vs. ENABLED). It might be best to not say anything about any "stream".


Thanks,
pq

>   *
>   * HDR_OUTPUT_METADATA:
>   *	Connector property to enable userspace to send HDR Metadata to
> diff --git a/drivers/gpu/drm/drm_hdcp.c b/drivers/gpu/drm/drm_hdcp.c
> index cd837bd409f7..ce235fd1c844 100644
> --- a/drivers/gpu/drm/drm_hdcp.c
> +++ b/drivers/gpu/drm/drm_hdcp.c
> @@ -344,23 +344,41 @@ static struct drm_prop_enum_list drm_cp_enum_list[]=
 =3D {
>  };
>  DRM_ENUM_NAME_FN(drm_get_content_protection_name, drm_cp_enum_list)
> =20
> +static struct drm_prop_enum_list drm_hdcp_content_type_enum_list[] =3D {
> +	{ DRM_MODE_HDCP_CONTENT_TYPE0, "HDCP Type0" },
> +	{ DRM_MODE_HDCP_CONTENT_TYPE1, "HDCP Type1" },
> +};
> +DRM_ENUM_NAME_FN(drm_get_hdcp_content_type_name,
> +		 drm_hdcp_content_type_enum_list)
> +
>  /**
>   * drm_connector_attach_content_protection_property - attach content pro=
tection
>   * property
>   *
>   * @connector: connector to attach CP property on.
> + * @hdcp_content_type: is HDCP Content Type property needed for connector
>   *
>   * This is used to add support for content protection on select connecto=
rs.
>   * Content Protection is intentionally vague to allow for different unde=
rlying
>   * technologies, however it is most implemented by HDCP.
>   *
> + * When hdcp_content_type is true enum property called HDCP Content Type=
 is
> + * created (if it is not already) and attached to the connector.
> + *
> + * This property is used for sending the protected content's stream type
> + * from userspace to kernel on selected connectors. Protected content pr=
ovider
> + * will decide their type of their content and declare the same to kerne=
l.
> + *
> + * Content type will be used during the HDCP 2.2 authentication.
> + * Content type will be set to &drm_connector_state.hdcp_content_type.
> + *
>   * The content protection will be set to &drm_connector_state.content_pr=
otection
>   *
>   * Returns:
>   * Zero on success, negative errno on failure.
>   */
>  int drm_connector_attach_content_protection_property(
> -		struct drm_connector *connector)
> +		struct drm_connector *connector, bool hdcp_content_type)
>  {
>  	struct drm_device *dev =3D connector->dev;
>  	struct drm_property *prop =3D
> @@ -377,6 +395,22 @@ int drm_connector_attach_content_protection_property(
>  				   DRM_MODE_CONTENT_PROTECTION_UNDESIRED);
>  	dev->mode_config.content_protection_property =3D prop;
> =20
> +	if (!hdcp_content_type)
> +		return 0;
> +
> +	prop =3D dev->mode_config.hdcp_content_type_property;
> +	if (!prop)
> +		prop =3D drm_property_create_enum(dev, 0, "HDCP Content Type",
> +					drm_hdcp_content_type_enum_list,
> +					ARRAY_SIZE(
> +					drm_hdcp_content_type_enum_list));
> +	if (!prop)
> +		return -ENOMEM;
> +
> +	drm_object_attach_property(&connector->base, prop,
> +				   DRM_MODE_HDCP_CONTENT_TYPE0);
> +	dev->mode_config.hdcp_content_type_property =3D prop;
> +
>  	return 0;
>  }
>  EXPORT_SYMBOL(drm_connector_attach_content_protection_property);
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/=
i915/display/intel_hdcp.c
> index bc3a94d491c4..2a4d10952b74 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1829,7 +1829,9 @@ int intel_hdcp_init(struct intel_connector *connect=
or,
>  	if (!shim)
>  		return -EINVAL;
> =20
> -	ret =3D drm_connector_attach_content_protection_property(&connector->ba=
se);
> +	ret =3D
> +	drm_connector_attach_content_protection_property(&connector->base,
> +							 false);
>  	if (ret)
>  		return ret;
> =20
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index 4c30d751487a..d6432967a2a9 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -601,6 +601,12 @@ struct drm_connector_state {
>  	 */
>  	unsigned int content_type;
> =20
> +	/**
> +	 * @hdcp_content_type: Connector property to pass the type of
> +	 * protected content. This is most commonly used for HDCP.
> +	 */
> +	unsigned int hdcp_content_type;
> +
>  	/**
>  	 * @scaling_mode: Connector property to control the
>  	 * upscaling, mostly used for built-in panels.
> @@ -1484,6 +1490,7 @@ const char *drm_get_dvi_i_select_name(int val);
>  const char *drm_get_tv_subconnector_name(int val);
>  const char *drm_get_tv_select_name(int val);
>  const char *drm_get_content_protection_name(int val);
> +const char *drm_get_hdcp_content_type_name(int val);
> =20
>  int drm_mode_create_dvi_i_properties(struct drm_device *dev);
>  int drm_mode_create_tv_margin_properties(struct drm_device *dev);
> diff --git a/include/drm/drm_hdcp.h b/include/drm/drm_hdcp.h
> index 13771a496e2b..2970abdfaf12 100644
> --- a/include/drm/drm_hdcp.h
> +++ b/include/drm/drm_hdcp.h
> @@ -291,5 +291,5 @@ struct drm_connector;
>  bool drm_hdcp_check_ksvs_revoked(struct drm_device *dev,
>  				 u8 *ksvs, u32 ksv_count);
>  int drm_connector_attach_content_protection_property(
> -		struct drm_connector *connector);
> +		struct drm_connector *connector, bool hdcp_content_type);
>  #endif
> diff --git a/include/drm/drm_mode_config.h b/include/drm/drm_mode_config.h
> index 759d462d028b..6c4b5bc85951 100644
> --- a/include/drm/drm_mode_config.h
> +++ b/include/drm/drm_mode_config.h
> @@ -849,6 +849,12 @@ struct drm_mode_config {
>  	 */
>  	struct drm_property *content_protection_property;
> =20
> +	/**
> +	 * @hdcp_content_type_property: DRM ENUM property for type of
> +	 * Protected Content.
> +	 */
> +	struct drm_property *hdcp_content_type_property;
> +
>  	/* dumb ioctl parameters */
>  	uint32_t preferred_depth, prefer_shadow;
> =20
> diff --git a/include/uapi/drm/drm_mode.h b/include/uapi/drm/drm_mode.h
> index 5ab331e5dc23..5c954394093f 100644
> --- a/include/uapi/drm/drm_mode.h
> +++ b/include/uapi/drm/drm_mode.h
> @@ -218,6 +218,10 @@ extern "C" {
>  #define DRM_MODE_CONTENT_PROTECTION_DESIRED     1
>  #define DRM_MODE_CONTENT_PROTECTION_ENABLED     2
> =20
> +/* Content Type classification for HDCP2.2 vs others */
> +#define DRM_MODE_HDCP_CONTENT_TYPE0		0
> +#define DRM_MODE_HDCP_CONTENT_TYPE1		1
> +
>  struct drm_mode_modeinfo {
>  	__u32 clock;
>  	__u16 hdisplay;


--Sig_/7BFqXv/J6AkqT4I6nsP.PBP
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAl0jElIACgkQI1/ltBGq
qqcjBA/+NOpD3EjRwDjCYkJ9nxPfLQhzZhszKAxILGTTP6QAazXtRkw/ckyWAljz
FcCQiETo0AM/+AAHWHiLrfN9FTNhk48AnZre5lB/5mtyE3AwmITIwTfMZkHk6l5j
zxPmFdOWIyX2tnGNU+PW1FvDEjx+Zuu+YRJP1Uu2TwaSRLb6EaoP8Pv9Dpkjdluq
tc8gCLXOWLpBRDjF8d/0VivUCgexwQbAGRnhJxbhxteOCP1wkq819hwCVCgHvPr8
8/zxjThJW9oREbz0BrhiRM2V1ALTx3V8PrZC9UdZdHd97HkulCdTXcclHkU/vIMb
nH6WtFUluI16X2yG3CDaGMBem3Zlm+zVCfofYVWgoNQ3fHBv0esAPS5vxoKh5y0N
DU1l9qNJnwxg4ZbiaDwCoTu1FyqvIJTAZdTwIl+2rGG4xR3LRllUYFtU0PkRnPG/
pDiJnpA82V9nDws1p4mYurdqBOXfxaX8yqHuA7p4PHBqr21dsc9g26TT/Z0BgK56
VxvjETNOHtTkzPoLxXrxI0CxzLhpalCoUzoN4hyTCCCkbMHquqWhpAAR1VQB0H6U
zFDi5F+OR2XtJkFlMWEIXct/sjM3qe5D4ReLJ1l6e3wD3P5Vxko2ICcFuwfXcUCF
jJpx0eS/k22u+FwnArFzwsgJjNstBEi5DGvjBy+xf90HOxSzD4I=
=nk0J
-----END PGP SIGNATURE-----

--Sig_/7BFqXv/J6AkqT4I6nsP.PBP--

--===============1514628494==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1514628494==--
