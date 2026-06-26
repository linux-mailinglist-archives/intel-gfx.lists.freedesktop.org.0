Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4VUKBJQrPmpYAwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 09:34:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB43B6CAFB2
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 09:34:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="nJadz/P9";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D77610F447;
	Fri, 26 Jun 2026 07:34:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0564410E315;
 Fri, 26 Jun 2026 07:34:38 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id C3AB040682;
 Fri, 26 Jun 2026 07:34:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0740E1F000E9;
 Fri, 26 Jun 2026 07:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1782459277;
 bh=jsadCdyumN0KCHx9a0TVh+QixmrCkSwpQjl838q6tIg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=nJadz/P9MFSux4EG+jKMAxKW6uZ7cS2BI/to+rGTVu/rsVrN7+lYxBcT8iqmyyQ/0
 1CNT9X+lnVehcd6+IvyO5baaADlv+yunFV9MwaXaQOZpnt5PrsVv1WdwtC750CuhpO
 BnaT6LCcKg8ynY/ATC7/ceyFDiPDPv+9JuwCnQ7ZgM6K4G42ixQcKAfpcvIgnmQUWz
 m2sBojKBkFX2xAYBcpt6LJhGeciAXRUy3XEHEcKu7g/N9bk5w5NuIUcE8Q5TFWN+As
 q2iUIohiV91jv1jP3IN8plu08S8fAoeou9sYeCfYAOhL1fZAUZIdglU/6zsobfat+S
 15cxj3ti9fzEA==
Date: Fri, 26 Jun 2026 09:34:34 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Mario Limonciello <mario.limonciello@amd.com>
Cc: dri-devel@lists.freedesktop.org, harry.wentland@amd.com, 
 Simona Vetter <simona@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Xaver Hugl <xaver.hugl@gmail.com>,
 amd-gfx@lists.freedesktop.org, 
 "open list:INTEL DRM DISPLAY FOR XE AND I915 DRIVERS"
 <intel-gfx@lists.freedesktop.org>, 
 "open list:INTEL DRM DISPLAY FOR XE AND I915 DRIVERS"
 <intel-xe@lists.freedesktop.org>,
 "Mario Limonciello (AMD)" <superm1@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v6 03/10] drm: link connectors to backlight devices
Message-ID: <20260626-warping-quizzical-cuttlefish-beb8be@houat>
References: <20260624165751.2014759-1-mario.limonciello@amd.com>
 <20260624165751.2014759-4-mario.limonciello@amd.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="orbeno6uw645omls"
Content-Disposition: inline
In-Reply-To: <20260624165751.2014759-4-mario.limonciello@amd.com>
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
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,amd.com,ffwll.ch,linux.intel.com,suse.de,gmail.com,kernel.org,oss.qualcomm.com];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AB43B6CAFB2


--orbeno6uw645omls
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v6 03/10] drm: link connectors to backlight devices
MIME-Version: 1.0

On Wed, Jun 24, 2026 at 09:57:43AM -0700, Mario Limonciello wrote:
> From: "Mario Limonciello (AMD)" <superm1@kernel.org>
>=20
> This will show which connector in sysfs matches which backlight.
>=20
> Tested-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> # SM8150-=
HDK
> Signed-off-by: Mario Limonciello (AMD) <superm1@kernel.org>
> ---
>  drivers/gpu/drm/Kconfig             |   1 +
>  drivers/gpu/drm/Makefile            |   1 +
>  drivers/gpu/drm/drm_backlight.c     | 371 ++++++++++++++++++++++++++++
>  drivers/gpu/drm/drm_connector.c     |  12 +
>  drivers/gpu/drm/drm_drv.c           |   8 +
>  drivers/gpu/drm/drm_mode_config.c   |   7 +
>  drivers/gpu/drm/drm_mode_object.c   |  66 ++++-
>  drivers/gpu/drm/drm_sysfs.c         |  28 ++-
>  drivers/video/backlight/backlight.c |  17 ++
>  include/drm/drm_backlight.h         |  51 ++++
>  include/drm/drm_connector.h         |   3 +
>  include/drm/drm_mode_config.h       |   5 +
>  include/linux/backlight.h           |  13 +
>  13 files changed, 578 insertions(+), 5 deletions(-)
>  create mode 100644 drivers/gpu/drm/drm_backlight.c
>  create mode 100644 include/drm/drm_backlight.h
>=20
> diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
> index 323422861e8f6..d6035bbbdc83f 100644
> --- a/drivers/gpu/drm/Kconfig
> +++ b/drivers/gpu/drm/Kconfig
> @@ -17,6 +17,7 @@ menuconfig DRM
>  # device and dmabuf fd. Let's make sure that is available for our usersp=
ace.
>  	select KCMP
>  	select VIDEO
> +	select BACKLIGHT_CLASS_DEVICE
>  	help
>  	  Kernel-level support for the Direct Rendering Infrastructure (DRI)
>  	  introduced in XFree86 4.0. If you say Y here, you need to select
> diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
> index e97faabcd7830..bf980a2ac1e6b 100644
> --- a/drivers/gpu/drm/Makefile
> +++ b/drivers/gpu/drm/Makefile
> @@ -78,6 +78,7 @@ drm-$(CONFIG_DRM_CLIENT) +=3D \
>  	drm_client_event.o \
>  	drm_client_modeset.o \
>  	drm_client_sysrq.o
> +drm-y +=3D drm_backlight.o
>  drm-$(CONFIG_COMPAT) +=3D drm_ioc32.o
>  drm-$(CONFIG_DRM_PANEL) +=3D drm_panel.o
>  drm-$(CONFIG_OF) +=3D drm_of.o
> diff --git a/drivers/gpu/drm/drm_backlight.c b/drivers/gpu/drm/drm_backli=
ght.c
> new file mode 100644
> index 0000000000000..b1ec470be86ca
> --- /dev/null
> +++ b/drivers/gpu/drm/drm_backlight.c
> @@ -0,0 +1,371 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * DRM Backlight Helpers
> + * Copyright (c) 2014 David Herrmann
> + * Copyright (c) 2026 Advanced Micro Devices, Inc.
> + */
> +
> +#include <linux/backlight.h>
> +#include <linux/fs.h>
> +#include <linux/list.h>
> +#include <linux/math64.h>
> +#include <linux/module.h>
> +#include <linux/mutex.h>
> +#include <linux/notifier.h>
> +#include <linux/slab.h>
> +#include <linux/spinlock.h>
> +#include <drm/drm_backlight.h>
> +#include <drm/drm_connector.h>
> +#include <drm/drm_device.h>
> +#include <drm/drm_mode_config.h>
> +
> +/**
> + * DOC: Backlight Devices
> + *
> + * Backlight devices have always been managed as a separate subsystem,
> + * independent of DRM. They are usually controlled via separate hardware
> + * interfaces than the display controller, so the split works out fine.
> + * However, backlight brightness is a property of a display, and thus a
> + * property of a DRM connector. We already manage DPMS states via connec=
tor
> + * properties, so it is natural to keep brightness control at the same p=
lace.
> + *
> + * This DRM backlight interface implements generic backlight properties =
on
> + * connectors. It does not handle any hardware backends but simply forwa=
rds
> + * the requests to a linked backlight device. The links between connecto=
rs and
> + * backlight devices are established by DRM drivers; user-space cannot c=
reate
> + * or modify these links. A 'change' uevent is sent whenever the brightn=
ess is
> + * updated.

I think we should explain why, because if it's a property and comes from
the userspace, then why would luminance be special and trigger a uevent
when it's updated, unlike any other property?

> + * Drivers have to call drm_backlight_alloc() after allocating a connect=
or via
> + * drm_connector_init(). This will automatically add a backlight device =
to the
> + * given connector. Drivers must then link a hardware backlight by calli=
ng
> + * drm_backlight_link() with the registered backlight_device. If no link=
 is
> + * established, the DRM backlight property reports an empty range and
> + * brightness changes are no-ops.
> + */

It's not clear to me why we need to dynamically allocate them at all. If
we're using the backlight subsystem we'll already have a handle to it.
If we don't and want to implement something like DDC/CI, then it just
becomes a hassle. Why not treat it like i2c, add a backlight field to
drm_connector, and create the link at registration, add a new hook to
set luminance, and then provide helpers to either use the backlight API,
or anything else if the driver wants to.

> +struct drm_backlight {
> +	struct list_head list;
> +	struct drm_connector *connector;
> +	struct backlight_device *link;
> +	/*
> +	 * Number of luminance-aware DRM clients that have taken over this
> +	 * connector's backlight. While > 0, legacy sysfs writes to the
> +	 * linked backlight_device return -EBUSY. Protected by
> +	 * drm_backlight_lock.
> +	 */
> +	unsigned int luminance_clients;
> +};
> +
> +static LIST_HEAD(drm_backlight_list);
> +static DEFINE_SPINLOCK(drm_backlight_lock);
> +
> +/* caller must hold @drm_backlight_lock */
> +static bool __drm_backlight_is_registered(struct drm_backlight *b)
> +{
> +	lockdep_assert_held(&drm_backlight_lock);
> +	/* a device is live if it is linked to @drm_backlight_list */
> +	return !list_empty(&b->list);
> +}
> +
> +/* caller must hold @drm_backlight_lock */
> +static void __drm_backlight_real_changed(struct drm_backlight *b, uint64=
_t v)
> +{
> +	unsigned int max, set;
> +
> +	lockdep_assert_held(&drm_backlight_lock);
> +
> +	if (!b->link)
> +		return;
> +
> +	max =3D b->link->props.max_brightness;
> +	if (max < 1)
> +		return;
> +
> +	set =3D v;
> +	if (set >=3D max)
> +		set =3D max;
> +}
> +
> +/**
> + * __drm_backlight_update_prop_range - update the luminance property ran=
ge
> + * @b: backlight device
> + *
> + * Updates the luminance property range based on the linked backlight de=
vice's
> + * max_brightness. If no device is linked, sets range to 0-0 to indicate
> + * unavailability.
> + */
> +static void __drm_backlight_update_prop_range(struct drm_backlight *b)
> +{
> +	struct drm_device *dev =3D b->connector->dev;
> +	struct drm_property *prop =3D dev->mode_config.luminance_property;
> +	unsigned int max =3D 0;
> +
> +	lockdep_assert_held(&drm_backlight_lock);
> +
> +	if (b->link && b->link->props.max_brightness > 0)
> +		max =3D b->link->props.max_brightness;
> +
> +	/* Update property range to match hardware capabilities.
> +	 * Range of 0-0 indicates no backing device.
> +	 * Range of 1-max for normal operation (0 reserved for display off).
> +	 */
> +	if (prop->values[1] !=3D max) {
> +		prop->values[0] =3D max ? 1 : 0;
> +		prop->values[1] =3D max;
> +	}
> +}
> +
> +/* caller must hold @drm_backlight_lock */
> +static bool __drm_backlight_link(struct drm_backlight *b,
> +				 struct backlight_device *bd)
> +{
> +	if (bd =3D=3D b->link)
> +		return false;
> +
> +	backlight_device_unref(b->link);
> +	b->link =3D bd;
> +	backlight_device_ref(b->link);
> +	if (bd)
> +		__drm_backlight_real_changed(b, bd->props.brightness);
> +	__drm_backlight_update_prop_range(b);
> +
> +	return true;
> +}
> +
> +/**
> + * drm_backlight_alloc - add backlight capability to a connector
> + * @connector: connector to add backlight to
> + *
> + * This allocates a new DRM-backlight device and attaches it to @connect=
or.
> + * This *must* be called before registering the connector. The backlight
> + * device will be automatically registered in sync with the connector. I=
t will
> + * also get removed once the connector is removed.
> + *
> + * No hardware backlight is linked by default. Drivers must call
> + * drm_backlight_link() to associate a registered backlight_device with =
the
> + * connector. User-space cannot create or modify this link.
> + *
> + * Returns: 0 on success, negative error code on failure.
> + */
> +int drm_backlight_alloc(struct drm_connector *connector)
> +{
> +	struct drm_mode_config *config =3D &connector->dev->mode_config;
> +	struct drm_backlight *b;
> +
> +	b =3D kzalloc_obj(*b, GFP_KERNEL);
> +	if (!b)
> +		return -ENOMEM;
> +
> +	INIT_LIST_HEAD(&b->list);
> +	b->connector =3D connector;
> +	connector->backlight =3D b;
> +
> +	drm_object_attach_property(&connector->base,
> +				   config->luminance_property, 0);
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(drm_backlight_alloc);
> +
> +void drm_backlight_free(struct drm_connector *connector)
> +{
> +	struct drm_backlight *b =3D connector->backlight;
> +
> +	if (!b)
> +		return;
> +
> +	WARN_ON(__drm_backlight_is_registered(b));
> +	WARN_ON(b->link);
> +
> +	kfree(b);
> +	connector->backlight =3D NULL;
> +}
> +EXPORT_SYMBOL(drm_backlight_free);
> +
> +void drm_backlight_register(struct drm_backlight *b)
> +{
> +	if (!b)
> +		return;
> +
> +	WARN_ON(__drm_backlight_is_registered(b));
> +
> +	guard(spinlock)(&drm_backlight_lock);
> +	list_add(&b->list, &drm_backlight_list);
> +}
> +EXPORT_SYMBOL(drm_backlight_register);
> +
> +void drm_backlight_unregister(struct drm_backlight *b)
> +{
> +	if (!b)
> +		return;
> +
> +	WARN_ON(!__drm_backlight_is_registered(b));
> +
> +	scoped_guard(spinlock, &drm_backlight_lock) {
> +		list_del_init(&b->list);
> +		__drm_backlight_link(b, NULL);
> +	}
> +}
> +EXPORT_SYMBOL(drm_backlight_unregister);
> +
> +/**
> + * drm_backlight_link - link a backlight device to a DRM backlight
> + * @b: DRM backlight to modify
> + * @bd: backlight device to link, or NULL to unlink
> + *
> + * Establish the link between a DRM connector's backlight property and a
> + * registered backlight_device. Drivers must call this with the
> + * backlight_device they registered for the connector. Passing NULL unli=
nks
> + * any previously linked device.
> + *
> + * The caller is responsible for ensuring @bd remains valid until either=
 it
> + * is unlinked via drm_backlight_link(b, NULL) or the connector is
> + * unregistered.
> + *
> + * Whenever a hardware backlight is linked or unlinked, a uevent with
> + * "BACKLIGHT=3D1" is generated on the connector.
> + */
> +void drm_backlight_link(struct drm_backlight *b, struct backlight_device=
 *bd)
> +{
> +	if (!b)
> +		return;
> +
> +	guard(spinlock)(&drm_backlight_lock);
> +	__drm_backlight_link(b, bd);
> +}
> +EXPORT_SYMBOL(drm_backlight_link);
> +
> +/**
> + * drm_backlight_get_device - get the backlight_device linked to a DRM b=
acklight
> + * @b: DRM backlight
> + *
> + * Returns the &backlight_device linked to @b, or NULL if no device is l=
inked
> + * or @b is NULL. The caller must hold the appropriate lock to prevent t=
he
> + * link from changing while the pointer is in use.
> + */
> +struct backlight_device *drm_backlight_get_device(struct drm_backlight *=
b)
> +{
> +	if (!b)
> +		return NULL;
> +
> +	guard(spinlock)(&drm_backlight_lock);
> +	return b->link;
> +}
> +EXPORT_SYMBOL(drm_backlight_get_device);
> +
> +/**
> + * drm_backlight_inhibit_legacy - disable legacy sysfs control of the li=
nked bd
> + * @b: DRM backlight to inhibit
> + *
> + * Record that one more luminance-aware DRM client has taken over @b. Wh=
ile
> + * any clients are recorded, writes to the linked backlight_device's leg=
acy
> + * ``brightness`` sysfs attribute return ``-EBUSY``. The takeover follows
> + * @b->link if the link changes.
> + *
> + * Calls must be balanced with drm_backlight_uninhibit_legacy().
> + */
> +void drm_backlight_inhibit_legacy(struct drm_backlight *b)
> +{
> +	if (!b)
> +		return;
> +}
> +EXPORT_SYMBOL(drm_backlight_inhibit_legacy);
> +
> +/**
> + * drm_backlight_uninhibit_legacy - re-enable legacy sysfs control
> + * @b: DRM backlight to uninhibit
> + *
> + * Balances a previous drm_backlight_inhibit_legacy() call. When the last
> + * luminance-aware client goes away, legacy sysfs writes are allowed aga=
in.
> + */
> +void drm_backlight_uninhibit_legacy(struct drm_backlight *b)
> +{
> +	if (!b)
> +		return;
> +}
> +EXPORT_SYMBOL(drm_backlight_uninhibit_legacy);
> +
> +/**
> + * drm_backlight_inhibit_legacy_all - inhibit legacy sysfs on every conn=
ector
> + * @dev: DRM device whose connectors should be inhibited
> + *
> + * Walks all connectors on @dev and calls drm_backlight_inhibit_legacy()=
 on
> + * each connector that has a DRM backlight attached. Used when a client
> + * declares it is luminance-aware via DRM_CLIENT_CAP_LUMINANCE.
> + */
> +void drm_backlight_inhibit_legacy_all(struct drm_device *dev)
> +{
> +	struct drm_connector_list_iter iter;
> +	struct drm_connector *connector;
> +
> +	drm_connector_list_iter_begin(dev, &iter);
> +	drm_for_each_connector_iter(connector, &iter)
> +		drm_backlight_inhibit_legacy(connector->backlight);
> +	drm_connector_list_iter_end(&iter);
> +}
> +EXPORT_SYMBOL(drm_backlight_inhibit_legacy_all);
> +
> +/**
> + * drm_backlight_uninhibit_legacy_all - reverse drm_backlight_inhibit_le=
gacy_all()
> + * @dev: DRM device whose connectors should be uninhibited
> + */
> +void drm_backlight_uninhibit_legacy_all(struct drm_device *dev)
> +{
> +	struct drm_connector_list_iter iter;
> +	struct drm_connector *connector;
> +
> +	drm_connector_list_iter_begin(dev, &iter);
> +	drm_for_each_connector_iter(connector, &iter)
> +		drm_backlight_uninhibit_legacy(connector->backlight);
> +	drm_connector_list_iter_end(&iter);
> +}
> +EXPORT_SYMBOL(drm_backlight_uninhibit_legacy_all);
> +
> +void drm_backlight_set_luminance(struct drm_backlight *b, unsigned int v=
alue)
> +{
> +	guard(spinlock)(&drm_backlight_lock);
> +	__drm_backlight_real_changed(b, value);
> +}
> +EXPORT_SYMBOL(drm_backlight_set_luminance);
> +
> +static int drm_backlight_notify(struct notifier_block *self,
> +				unsigned long event, void *data)
> +{
> +	struct backlight_device *bd =3D data;
> +	struct drm_backlight *b;
> +
> +	guard(spinlock)(&drm_backlight_lock);
> +
> +	switch (event) {
> +	case BACKLIGHT_UNREGISTERED:
> +		list_for_each_entry(b, &drm_backlight_list, list)
> +			if (b->link =3D=3D bd)
> +				__drm_backlight_link(b, NULL);
> +
> +		break;
> +	case BACKLIGHT_BRIGHTNESS_CHANGED:
> +		/* Update DRM property value when hardware backlight changes */
> +		list_for_each_entry(b, &drm_backlight_list, list)
> +			if (b->link =3D=3D bd)
> +				__drm_backlight_real_changed(b, bd->props.brightness);
> +
> +		break;
> +	}
> +
> +	return 0;
> +}
> +
> +static struct notifier_block drm_backlight_notifier =3D {
> +	.notifier_call =3D drm_backlight_notify,
> +};
> +
> +int drm_backlight_init(void)
> +{
> +	return backlight_register_notifier(&drm_backlight_notifier);
> +}
> +
> +void drm_backlight_exit(void)
> +{
> +	backlight_unregister_notifier(&drm_backlight_notifier);
> +}
> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connec=
tor.c
> index 3fa4d2082cd72..128d431f0d6b0 100644
> --- a/drivers/gpu/drm/drm_connector.c
> +++ b/drivers/gpu/drm/drm_connector.c
> @@ -21,6 +21,7 @@
>   */
> =20
>  #include <drm/drm_auth.h>
> +#include <drm/drm_backlight.h>
>  #include <drm/drm_connector.h>
>  #include <drm/drm_drv.h>
>  #include <drm/drm_edid.h>
> @@ -760,6 +761,7 @@ void drm_connector_cleanup(struct drm_connector *conn=
ector)
>  	struct drm_device *dev =3D connector->dev;
>  	struct drm_display_mode *mode, *t;
> =20
> +	drm_backlight_free(connector);
>  	/* The connector should have been removed from userspace long before
>  	 * it is finally destroyed.
>  	 */
> @@ -845,6 +847,8 @@ int drm_connector_register(struct drm_connector *conn=
ector)
>  	if (connector->registration_state !=3D DRM_CONNECTOR_INITIALIZING)
>  		goto unlock;
> =20
> +	drm_backlight_register(connector->backlight);
> +
>  	ret =3D drm_sysfs_connector_add(connector);
>  	if (ret)
>  		goto unlock;
> @@ -931,6 +935,8 @@ EXPORT_SYMBOL(drm_connector_dynamic_register);
>  void drm_connector_unregister(struct drm_connector *connector)
>  {
>  	mutex_lock(&connector->mutex);
> +	drm_backlight_unregister(connector->backlight);
> +
>  	if (connector->registration_state !=3D DRM_CONNECTOR_REGISTERED) {
>  		mutex_unlock(&connector->mutex);
>  		return;
> @@ -3252,10 +3258,16 @@ int drm_connector_set_obj_prop(struct drm_mode_ob=
ject *obj,
>  {
>  	int ret =3D -EINVAL;
>  	struct drm_connector *connector =3D obj_to_connector(obj);
> +	struct drm_mode_config *config =3D &connector->dev->mode_config;
> =20
>  	/* Do DPMS ourselves */
>  	if (property =3D=3D connector->dev->mode_config.dpms_property) {
>  		ret =3D (*connector->funcs->dpms)(connector, (int)value);
> +	} else if (property =3D=3D config->luminance_property) {
> +		if (connector->backlight && connector->dpms =3D=3D DRM_MODE_DPMS_ON)
> +			drm_backlight_set_luminance(connector->backlight,
> +						    value);
> +		ret =3D 0;
>  	} else if (connector->funcs->set_property)
>  		ret =3D connector->funcs->set_property(connector, property, value);
> =20
> diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
> index 675675480da49..5bf402197867a 100644
> --- a/drivers/gpu/drm/drm_drv.c
> +++ b/drivers/gpu/drm/drm_drv.c
> @@ -42,6 +42,7 @@
>  #include <linux/xarray.h>
> =20
>  #include <drm/drm_accel.h>
> +#include <drm/drm_backlight.h>
>  #include <drm/drm_bridge.h>
>  #include <drm/drm_cache.h>
>  #include <drm/drm_client_event.h>
> @@ -1230,6 +1231,7 @@ static void drm_core_exit(void)
>  	drm_privacy_screen_lookup_exit();
>  	drm_panic_exit();
>  	accel_core_exit();
> +	drm_backlight_exit();
>  	unregister_chrdev(DRM_MAJOR, "drm");
>  	drm_debugfs_remove_root();
>  	drm_sysfs_destroy();
> @@ -1253,6 +1255,12 @@ static int __init drm_core_init(void)
>  	drm_debugfs_init_root();
>  	drm_debugfs_bridge_params();
> =20
> +	ret =3D drm_backlight_init();
> +	if (ret < 0) {
> +		DRM_ERROR("Cannot initialize backlight interface\n");
> +		goto error;
> +	}
> +
>  	ret =3D register_chrdev(DRM_MAJOR, "drm", &drm_stub_fops);
>  	if (ret < 0)
>  		goto error;
> diff --git a/drivers/gpu/drm/drm_mode_config.c b/drivers/gpu/drm/drm_mode=
_config.c
> index 66f7dc37b5970..25c5d29694624 100644
> --- a/drivers/gpu/drm/drm_mode_config.c
> +++ b/drivers/gpu/drm/drm_mode_config.c
> @@ -32,6 +32,7 @@
>  #include <drm/drm_print.h>
>  #include <drm/drm_colorop.h>
>  #include <linux/dma-resv.h>
> +#include <drm/drm_backlight.h>
> =20
>  #include "drm_crtc_internal.h"
>  #include "drm_internal.h"
> @@ -407,6 +408,12 @@ static int drm_mode_create_standard_properties(struc=
t drm_device *dev)
>  		return -ENOMEM;
>  	dev->mode_config.size_hints_property =3D prop;
> =20
> +	prop =3D drm_property_create_range(dev, DRM_MODE_PROP_ATOMIC,
> +					 "LUMINANCE", 0, 0);
> +	if (!prop)
> +		return -ENOMEM;
> +	dev->mode_config.luminance_property =3D prop;
> +
>  	return 0;
>  }
> =20
> diff --git a/drivers/gpu/drm/drm_mode_object.c b/drivers/gpu/drm/drm_mode=
_object.c
> index 21fc9deda4371..a50d33af95e8c 100644
> --- a/drivers/gpu/drm/drm_mode_object.c
> +++ b/drivers/gpu/drm/drm_mode_object.c
> @@ -30,6 +30,7 @@
>  #include <drm/drm_mode_object.h>
>  #include <drm/drm_plane.h>
>  #include <drm/drm_print.h>
> +#include <drm/drm_backlight.h>
> =20
>  #include "drm_crtc_internal.h"
> =20
> @@ -287,11 +288,72 @@ int drm_object_property_set_value(struct drm_mode_o=
bject *obj,
>  {
>  	int i;
> =20
> -	WARN_ON(drm_drv_uses_atomic_modeset(property->dev) &&
> -		!(property->flags & DRM_MODE_PROP_IMMUTABLE));

drm_object_property_set_value() is explicitly documented to be for
legacy properties only. This warning is here for a reason, you should
update the atomic path.

> +	/* Exempt dpms and luminance properties from the atomic warning, as the=
se
> +	 * have special interdependencies managed internally in this function
> +	 */
> +	if (obj->type =3D=3D DRM_MODE_OBJECT_CONNECTOR) {
> +		struct drm_connector *connector =3D obj_to_connector(obj);
> +		struct drm_mode_config *config =3D &connector->dev->mode_config;
> +
> +		if (property !=3D config->dpms_property &&
> +		    property !=3D config->luminance_property) {
> +			WARN_ON(drm_drv_uses_atomic_modeset(property->dev) &&
> +				!(property->flags & DRM_MODE_PROP_IMMUTABLE));
> +		}
> +	} else {
> +		WARN_ON(drm_drv_uses_atomic_modeset(property->dev) &&
> +			!(property->flags & DRM_MODE_PROP_IMMUTABLE));
> +	}
> =20
>  	for (i =3D 0; i < obj->properties->count; i++) {
> +		/* If properties depends on each other
> +		 * this is where to resolve that issue
> +		 */

This is not the right commit style:
https://www.kernel.org/doc/html/latest/process/coding-style.html#commenting

>  		if (obj->properties->properties[i] =3D=3D property) {
> +			/* Connector-specific property interdependencies */
> +			if (obj->type =3D=3D DRM_MODE_OBJECT_CONNECTOR) {
> +				struct drm_connector *connector =3D obj_to_connector(obj);
> +				struct drm_property *dpms_property =3D
> +					connector->dev->mode_config.dpms_property;
> +				struct drm_property *luminance_property =3D
> +					connector->dev->mode_config.luminance_property;
> +
> +				if (property =3D=3D dpms_property) {
> +					/* When DPMS goes from ON -> OFF,
> +					 * set the brightness to the minimum possible
> +					 * to save power.
> +					 */
> +					if (obj->properties->values[i] !=3D
> +					    DRM_MODE_DPMS_OFF &&
> +					    val =3D=3D DRM_MODE_DPMS_OFF)
> +						drm_backlight_set_luminance(
> +							connector->backlight, 0);
> +					/* When DPMS OFF -> ON, reset the brightness
> +					 * to the original level
> +					 */
> +					else if (obj->properties->values[i] =3D=3D
> +						 DRM_MODE_DPMS_OFF &&
> +						 val !=3D DRM_MODE_DPMS_OFF) {
> +						uint64_t value;
> +
> +						drm_object_property_get_value(
> +							obj, luminance_property,
> +							&value);
> +						drm_backlight_set_luminance(
> +							connector->backlight, value);
> +					}
> +				} else if (property =3D=3D luminance_property) {
> +					/* Always update the property value to remember
> +					 * the user's desired brightness, but only update
> +					 * hardware when DPMS is ON.
> +					 */
> +					obj->properties->values[i] =3D val;
> +					if (connector->dpms =3D=3D DRM_MODE_DPMS_ON)
> +						drm_backlight_set_luminance(
> +							connector->backlight, val);
> +					return 0;
> +				}
> +			}

And this all shouldn't be plugged into the function directly, but a helper =
ideally.

>  			obj->properties->values[i] =3D val;
>  			return 0;
>  		}
> diff --git a/drivers/gpu/drm/drm_sysfs.c b/drivers/gpu/drm/drm_sysfs.c
> index ef4e923a87284..8609e1660f210 100644
> --- a/drivers/gpu/drm/drm_sysfs.c
> +++ b/drivers/gpu/drm/drm_sysfs.c
> @@ -11,6 +11,7 @@
>   */
> =20
>  #include <linux/acpi.h>
> +#include <linux/backlight.h>
>  #include <linux/component.h>
>  #include <linux/device.h>
>  #include <linux/err.h>
> @@ -27,6 +28,7 @@
>  #include <drm/drm_device.h>
>  #include <drm/drm_file.h>
>  #include <drm/drm_modes.h>
> +#include <drm/drm_backlight.h>
>  #include <drm/drm_print.h>
>  #include <drm/drm_property.h>
>  #include <drm/drm_sysfs.h>
> @@ -391,15 +393,35 @@ int drm_sysfs_connector_add(struct drm_connector *c=
onnector)
> =20
>  int drm_sysfs_connector_add_late(struct drm_connector *connector)
>  {
> -	if (connector->ddc)
> -		return sysfs_create_link(&connector->kdev->kobj,
> -					 &connector->ddc->dev.kobj, "ddc");
> +	if (connector->ddc) {
> +		int ret =3D sysfs_create_link(&connector->kdev->kobj,
> +					    &connector->ddc->dev.kobj, "ddc");
> +		if (ret)
> +			return ret;
> +	}
> +
> +	if (connector->backlight) {
> +		struct backlight_device *bd =3D drm_backlight_get_device(connector->ba=
cklight);
> +
> +		if (bd) {
> +			int ret =3D sysfs_create_link(&connector->kdev->kobj,
> +						    &bd->dev.kobj, "backlight");
> +			if (ret) {
> +				if (connector->ddc)
> +					sysfs_remove_link(&connector->kdev->kobj, "ddc");
> +				return ret;
> +			}
> +		}
> +	}
> =20
>  	return 0;
>  }
> =20
>  void drm_sysfs_connector_remove_early(struct drm_connector *connector)
>  {
> +	if (connector->backlight && drm_backlight_get_device(connector->backlig=
ht))
> +		sysfs_remove_link(&connector->kdev->kobj, "backlight");
> +
>  	if (connector->ddc)
>  		sysfs_remove_link(&connector->kdev->kobj, "ddc");
>  }
> diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backligh=
t/backlight.c
> index cd1a161ae7bc6..13954c2220b7e 100644
> --- a/drivers/video/backlight/backlight.c
> +++ b/drivers/video/backlight/backlight.c
> @@ -126,6 +126,9 @@ static void backlight_generate_event(struct backlight=
_device *bd,
>  	case BACKLIGHT_UPDATE_HOTKEY:
>  		envp[0] =3D "SOURCE=3Dhotkey";
>  		break;
> +	case BACKLIGHT_UPDATE_DRM:
> +		envp[0] =3D "SOURCE=3Ddrm";
> +		break;
>  	default:
>  		envp[0] =3D "SOURCE=3Dunknown";
>  		break;
> @@ -579,6 +582,20 @@ int backlight_unregister_notifier(struct notifier_bl=
ock *nb)
>  }
>  EXPORT_SYMBOL(backlight_unregister_notifier);
> =20
> +/**
> + * backlight_notify_brightness - notify brightness change to listeners
> + * @bd: backlight device that changed
> + *
> + * Notify registered listeners that the backlight brightness has changed.
> + * This is called automatically after successful brightness updates.
> + */
> +void backlight_notify_brightness(struct backlight_device *bd)
> +{
> +	blocking_notifier_call_chain(&backlight_notifier,
> +				     BACKLIGHT_BRIGHTNESS_CHANGED, bd);
> +}
> +EXPORT_SYMBOL(backlight_notify_brightness);
> +

This should be in separate commits.

>  /**
>   * devm_backlight_device_register - register a new backlight device
>   * @dev: the device to register
> diff --git a/include/drm/drm_backlight.h b/include/drm/drm_backlight.h
> new file mode 100644
> index 0000000000000..e0e09e38f7c06
> --- /dev/null
> +++ b/include/drm/drm_backlight.h
> @@ -0,0 +1,51 @@
> +/* SPDX-License-Identifier: MIT */
> +#ifndef __DRM_BACKLIGHT_H__
> +#define __DRM_BACKLIGHT_H__
> +
> +/*
> + * Copyright (c) 2014 David Herrmann <dh.herrmann at gmail.com>
> + *
> + * Permission is hereby granted, free of charge, to any person obtaining=
 a
> + * copy of this software and associated documentation files (the "Softwa=
re"),
> + * to deal in the Software without restriction, including without limita=
tion
> + * the rights to use, copy, modify, merge, publish, distribute, sublicen=
se,
> + * and/or sell copies of the Software, and to permit persons to whom the
> + * Software is furnished to do so, subject to the following conditions:
> + *
> + * The above copyright notice and this permission notice shall be includ=
ed in
> + * all copies or substantial portions of the Software.
> + *
> + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRE=
SS OR
> + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILI=
TY,
> + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SH=
ALL
> + * THE COPYRIGHT HOLDER(S) OR AUTHOR(S) BE LIABLE FOR ANY CLAIM, DAMAGES=
 OR
> + * OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
> + * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
> + * OTHER DEALINGS IN THE SOFTWARE.
> + */
> +
> +#include <linux/kernel.h>
> +#include <linux/types.h>
> +
> +struct backlight_device;
> +struct drm_backlight;
> +struct drm_connector;
> +struct drm_device;
> +struct drm_mode_object;
> +
> +int drm_backlight_init(void);
> +void drm_backlight_exit(void);
> +
> +int drm_backlight_alloc(struct drm_connector *connector);
> +void drm_backlight_free(struct drm_connector *connector);
> +void drm_backlight_register(struct drm_backlight *b);
> +void drm_backlight_unregister(struct drm_backlight *b);
> +
> +void drm_backlight_link(struct drm_backlight *b, struct backlight_device=
 *bd);
> +struct backlight_device *drm_backlight_get_device(struct drm_backlight *=
b);
> +void drm_backlight_set_luminance(struct drm_backlight *b, unsigned int v=
alue);
> +void drm_backlight_inhibit_legacy(struct drm_backlight *b);
> +void drm_backlight_uninhibit_legacy(struct drm_backlight *b);
> +void drm_backlight_inhibit_legacy_all(struct drm_device *dev);
> +void drm_backlight_uninhibit_legacy_all(struct drm_device *dev);
> +#endif /* __DRM_BACKLIGHT_H__ */
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index 5ad62c207d009..d78ac1068d12e 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -2410,6 +2410,9 @@ struct drm_connector {
>  	 * @cec: CEC-related data.
>  	 */
>  	struct drm_connector_cec cec;
> +
> +	/* backlight link */
> +	struct drm_backlight *backlight;
>  };
> =20
>  #define obj_to_connector(x) container_of(x, struct drm_connector, base)
> diff --git a/include/drm/drm_mode_config.h b/include/drm/drm_mode_config.h
> index e584652ddf676..b6d88319d5d0f 100644
> --- a/include/drm/drm_mode_config.h
> +++ b/include/drm/drm_mode_config.h
> @@ -852,6 +852,11 @@ struct drm_mode_config {
>  	 * the position of the output on the host's screen.
>  	 */
>  	struct drm_property *suggested_y_property;
> +	/**
> +	 * @luminance_property: Default connector property to control the
> +	 * connector's backlight luminance.
> +	 */
> +	struct drm_property *luminance_property;
> =20
>  	/**
>  	 * @non_desktop_property: Optional connector property with a hint
> diff --git a/include/linux/backlight.h b/include/linux/backlight.h
> index 204eea9256fd7..26a7281d179c1 100644
> --- a/include/linux/backlight.h
> +++ b/include/linux/backlight.h
> @@ -29,6 +29,7 @@ enum backlight_update_reason {
>  	 * @BACKLIGHT_UPDATE_SYSFS: The backlight was updated using sysfs.
>  	 */
>  	BACKLIGHT_UPDATE_SYSFS,
> +	BACKLIGHT_UPDATE_DRM,

Doc?

Maxime

--orbeno6uw645omls
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaj4rgQAKCRAnX84Zoj2+
dogrAX4wRD+LVAZQ/YdIsy8ewrRfpq+NbX2jLWGiA/lT1CpnGR5+9GbN3Jt59imX
Xe6XNYgBgPcJT38/KBbCbZ8ghpOHlKikve7Bf+8rVpwvGyUI1EBvEsDL4hx7vpXf
y6jBLdxiSw==
=31+/
-----END PGP SIGNATURE-----

--orbeno6uw645omls--
