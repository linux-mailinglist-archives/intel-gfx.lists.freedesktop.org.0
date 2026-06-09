Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LMA+OAcTKGoN9gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 15:20:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 464C16607A1
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 15:20:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="Nu3c//Al";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF83810E2D7;
	Tue,  9 Jun 2026 13:20:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC72D10E2D7;
 Tue,  9 Jun 2026 13:20:04 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id 6F6FC4369A;
 Tue,  9 Jun 2026 13:20:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5F451F0089B;
 Tue,  9 Jun 2026 13:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1781011204;
 bh=3kfzfYUQjmzrzaNngkfG7jEfCJtYkrmcPuvtAzgJevo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=Nu3c//AlzSp8dePkkxInyBwOH1za16zBtOfwyKKYtLFFLjiG8i4p3lxnz7/woXZRt
 JtKfFb9rqoH+SnrrC4q2iV44PdZ/9zVTsMNh6FhyvEl7aeFW7q1jiKXD0iYDuZT/19
 WAoTm2OfHpFKUjwDV7p3e1NXD1LDpjNUjE5OJ0BXTDAqSNdwXFpcotHjICirfRcDqq
 gXCCws+Lwj8qzUFh7jDIZdWSsogSZOcJi186LTV8ZYFAGhPuAZOcImMurdCnIqzQ5X
 HlfUlKnoNl7MCbPDCPLxB+eDFsxDgAHMilxw3DMD1rCWpElmqaPJkEJURsALDig2p1
 sWS4POf/gNapw==
Date: Tue, 9 Jun 2026 15:20:01 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Adrien Grassein <adrien.grassein@gmail.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, 
 Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Pengyu Luo <mitltlatltl@gmail.com>, Nikita Travkin <nikita@trvn.ru>, 
 Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 Francesco Dolcini <francesco@dolcini.it>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, 
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org
Subject: Re: [PATCH v4 1/8] drm/connector: report out-of-band IRQ_HPD events
Message-ID: <20260609-bouncy-tomato-dalmatian-70ccee@houat>
References: <20260608-hpd-irq-events-v4-0-30b62b335487@oss.qualcomm.com>
 <20260608-hpd-irq-events-v4-1-30b62b335487@oss.qualcomm.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="25e53fw4vpfchyki"
Content-Disposition: inline
In-Reply-To: <20260608-hpd-irq-events-v4-1-30b62b335487@oss.qualcomm.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.41 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[44];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[linux.intel.com,suse.de,gmail.com,ffwll.ch,linuxfoundation.org,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,ursulin.net,baylibre.com,googlemail.com,oss.qualcomm.com,linux.dev,poorly.run,somainline.org,trvn.ru,bootlin.com,dolcini.it,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,qualcomm.com:email,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 464C16607A1


--25e53fw4vpfchyki
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 1/8] drm/connector: report out-of-band IRQ_HPD events
MIME-Version: 1.0

Hi,

On Mon, Jun 08, 2026 at 12:33:02AM +0300, Dmitry Baryshkov wrote:
> The DisplayPort standard defines a special kind of events called IRQ.
> These events are used to notify DP Source about the events on the Sink
> side. It is extremely important for DP MST handling, where the MST
> events are reported through this IRQ.
>=20
> In case of the USB-C DP AltMode there is no actual HPD pulse, but the
> events are reported through the bits in the AltMode VDOs.
>=20
> Rename drm_connector_oob_hotplug_event() to drm_connector_dp_oob_status()
> and extend its interface to report IRQ events to the DisplayPort Sink
> drivers.
>=20
> Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/drm_connector.c          | 20 ++++++++++++--------
>  drivers/usb/typec/altmodes/displayport.c | 23 +++++++++++++++--------
>  include/drm/drm_connector.h              | 21 +++++++++++++++++++--
>  3 files changed, 46 insertions(+), 18 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connec=
tor.c
> index 3fa4d2082cd7..bb128dd0263a 100644
> --- a/drivers/gpu/drm/drm_connector.c
> +++ b/drivers/gpu/drm/drm_connector.c
> @@ -3502,20 +3502,24 @@ struct drm_connector *drm_connector_find_by_fwnod=
e(struct fwnode_handle *fwnode)
>  }
> =20
>  /**
> - * drm_connector_oob_hotplug_event - Report out-of-band hotplug event to=
 connector
> + * drm_connector_dp_oob_status - Report out-of-band hotplug event to Dis=
playPort connector
>   * @connector_fwnode: fwnode_handle to report the event on
>   * @status: hot plug detect logical state
> + * @extra_status: additional information provided by the sink without ch=
anging
> + * the HPD state (or in addition to such a change).
>   *
> - * On some hardware a hotplug event notification may come from outside t=
he display
> - * driver / device. An example of this is some USB Type-C setups where t=
he hardware
> - * muxes the DisplayPort data and aux-lines but does not pass the altmod=
e HPD
> - * status bit to the GPU's DP HPD pin.
> + * In some cases when DisplayPort signals are being routed through the U=
SB
> + * Type-C port the hotplug event notifications come from outside of the =
display
> + * driver / device. In this case hardware muxes the DisplayPort data and
> + * AUX-lines but does not pass the altmode HPD status bit to the GPU's D=
P HPD
> + * pin.
>   *
>   * This function can be used to report these out-of-band events after ob=
taining
>   * a drm_connector reference through calling drm_connector_find_by_fwnod=
e().
>   */
> -void drm_connector_oob_hotplug_event(struct fwnode_handle *connector_fwn=
ode,
> -				     enum drm_connector_status status)
> +void drm_connector_dp_oob_status(struct fwnode_handle *connector_fwnode,
> +				 enum drm_connector_status status,
> +				 enum drm_connector_status_extra extra_status)

Thanks for the renaming, but I think we can also rename
drm_connector_status_extra to something a bit more descriptive now?
drm_connector_dp_oob_event? status?

The rest looks good.

Maxime

--25e53fw4vpfchyki
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaigTAQAKCRAnX84Zoj2+
dnv2AX9le3hz+Lu8gxYvgEXc1sDIBCPM1bh/zkVwBN3wZ9THVMA3l8RMscsHED+I
ZdjXquUBeQESub4sfU2kH0nggZa7VB2wC1SqcPxTrCSdEwKVl5n4RlSMJ/F47hOK
i6kZa+CMlQ==
=wSKV
-----END PGP SIGNATURE-----

--25e53fw4vpfchyki--
