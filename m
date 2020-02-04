Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 221C81516E2
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 09:16:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 839446EDE5;
	Tue,  4 Feb 2020 08:16:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB5816EDE5
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 08:16:33 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 00:16:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,398,1574150400"; d="scan'208";a="263753580"
Received: from plaxmina-desktop.iind.intel.com ([10.145.162.62])
 by fmsmga002.fm.intel.com with ESMTP; 04 Feb 2020 00:16:28 -0800
Date: Tue, 4 Feb 2020 13:35:14 +0530
From: "Bharadiya,Pankaj" <pankaj.laxminarayan.bharadiya@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@intel.com>
Message-ID: <20200204080513.GA612@plaxmina-desktop.iind.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] RFC: pipe writeback design for i915
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

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Vi=
lle Syrj=E4l=E4
> Sent: Friday, January 31, 2020 5:28 PM
> To: Laxminarayan Bharadiya, Pankaj <pankaj.laxminarayan.bharadiya@intel.c=
om>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] RFC: pipe writeback design for i915
> =

> On Fri, Jan 31, 2020 at 12:00:39PM +0530, Bharadiya,Pankaj wrote:
> > I am exploring the way of implementing the pipe writeback feature in =

> > i915 and would like to get early feedback on design.

[snip]

> > =

> > 1# Extend the intel_connector to support writeback
> > --------------------------------------------------
> > =

> > drm_writeback connector is of drm_connector type and intel_connector =

> > is also of drm_connector type.
> > =

> >   +--------------------------------------------------------------------=
---------+
> >   |                                     |                              =
         |
> >   | struct drm_writeback_connector {    |    struct intel_connector {  =
         |
> >   |         struct drm_connector base;  |            struct drm_connect=
or base; |
> >   |         .                           |            .                 =
         |
> >   |         .                           |            .                 =
         |
> >   |         .                           |            .                 =
         |
> >   | };                                  |    };                        =
         |
> >   |                                     |                              =
         |
> >   =

> > +---------------------------------------------------------------------
> > --------+
> =

> That's a bit unfortunate. We like to use intel_connector quite a bit in
> i915 so having two different types is going to be a pita. Ideally I guess=
 the writeback connector shouldn't be a drm_connector at all and instead it=
 would just provide some kind of thing to embed into the driver's connector=
 struct. But that would mean the writeback helpers would need some other wa=
y to get at that data rather than just container_of().

I am thinking of the following -

- Modify the struct drm_writeback_connector accept drm_connector pointer (*=
base)
- Add new member in struct drm_connector to save struct drm_writeback_conne=
ctor
  pointer so that drm_writeback_connector can be found using given a drm_co=
nnector.
- Modify existing drivers (rcar_du, arm/malidp, arm/komeda, vc4) which are
  implementing drm_writeback to adapt to this new change.

Here is the example patch I came with -

----------------------

diff --git a/drivers/gpu/drm/drm_writeback.c b/drivers/gpu/drm/drm_writebac=
k.c
index 43d9e3bb3a94..cb4434baa2eb 100644
--- a/drivers/gpu/drm/drm_writeback.c
+++ b/drivers/gpu/drm/drm_writeback.c
@@ -87,7 +87,7 @@ static const char *drm_writeback_fence_get_driver_name(st=
ruct dma_fence *fence)
 	struct drm_writeback_connector *wb_connector =3D
 		fence_to_wb_connector(fence);
 =

-	return wb_connector->base.dev->driver->name;
+	return wb_connector->base->dev->driver->name;
 }
 =

 static const char *
@@ -178,7 +178,7 @@ int drm_writeback_connector_init(struct drm_device *dev,
 				 const u32 *formats, int n_formats)
 {
 	struct drm_property_blob *blob;
-	struct drm_connector *connector =3D &wb_connector->base;
+	struct drm_connector *connector =3D wb_connector->base;
 	struct drm_mode_config *config =3D &dev->mode_config;
 	int ret =3D create_writeback_properties(dev);
 =

@@ -198,6 +198,7 @@ int drm_writeback_connector_init(struct drm_device *dev,
 		goto fail;
 =

 	connector->interlace_allowed =3D 0;
+	connector->wb_connector =3D wb_connector;
 =

 	ret =3D drm_connector_init(dev, connector, con_funcs,
 				 DRM_MODE_CONNECTOR_WRITEBACK);
@@ -264,7 +265,7 @@ int drm_writeback_prepare_job(struct drm_writeback_job =
*job)
 {
 	struct drm_writeback_connector *connector =3D job->connector;
 	const struct drm_connector_helper_funcs *funcs =3D
-		connector->base.helper_private;
+		connector->base->helper_private;
 	int ret;
 =

 	if (funcs->prepare_writeback_job) {
@@ -316,7 +317,7 @@ void drm_writeback_cleanup_job(struct drm_writeback_job=
 *job)
 {
 	struct drm_writeback_connector *connector =3D job->connector;
 	const struct drm_connector_helper_funcs *funcs =3D
-		connector->base.helper_private;
+		connector->base->helper_private;
 =

 	if (job->prepared && funcs->cleanup_writeback_job)
 		funcs->cleanup_writeback_job(connector, job);
@@ -402,7 +403,7 @@ drm_writeback_get_out_fence(struct drm_writeback_connec=
tor *wb_connector)
 {
 	struct dma_fence *fence;
 =

-	if (WARN_ON(wb_connector->base.connector_type !=3D
+	if (WARN_ON(wb_connector->base->connector_type !=3D
 		    DRM_MODE_CONNECTOR_WRITEBACK))
 		return NULL;
 =

diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 2113500b4075..edd153f1815e 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -42,6 +42,7 @@ struct drm_property_blob;
 struct drm_printer;
 struct edid;
 struct i2c_adapter;
+struct drm_writeback_connector;
 =

 enum drm_connector_force {
 	DRM_FORCE_UNSPECIFIED,
@@ -1315,6 +1316,8 @@ struct drm_connector {
 	 */
 	struct drm_encoder *encoder;
 =

+	struct drm_writeback_connector  *wb_connector;
+
 #define MAX_ELD_BYTES	128
 	/** @eld: EDID-like data, if present */
 	uint8_t eld[MAX_ELD_BYTES];
diff --git a/include/drm/drm_writeback.h b/include/drm/drm_writeback.h
index 777c14c847f0..51a94c6a4ae3 100644
--- a/include/drm/drm_writeback.h
+++ b/include/drm/drm_writeback.h
@@ -16,7 +16,7 @@
 #include <linux/workqueue.h>
 =

 struct drm_writeback_connector {
-	struct drm_connector base;
+	struct drm_connector *base;
 =

 	/**
 	 * @encoder: Internal encoder used by the connector to fulfill
@@ -134,7 +134,7 @@ struct drm_writeback_job {
 static inline struct drm_writeback_connector *
 drm_connector_to_writeback(struct drm_connector *connector)
 {
-	return container_of(connector, struct drm_writeback_connector, base);
+	return connector->wb_connector;
 }
 =

 int drm_writeback_connector_init(struct drm_device *dev,

---------------------


With this, we should be able to extend intel_connector to support writeback.

struct intel_connector {
        struct drm_connector base;
+	struct drm_writeback_connector wb_conn;
.
.
.
}

Example usage:
	struct intel_connector *intel_connector;
	intel_connector =3D intel_connector_alloc();

	intel_connector->wb_conn.base =3D &intel_connector->base;

	/* Initialize writeback connector */
	drm_writeback_connector_init(...,&intel_connector->wb_conn, ...);


What do you think?

Thanks,
Pankaj =


> =

> --
> Ville Syrj=E4l=E4
> Intel
> ---------------------------------------------------------------------
> Intel Finland Oy
> Registered Address: PL 281, 00181 Helsinki Business Identity Code: 035760=
6 - 4 Domiciled in Helsinki =

> =

> This e-mail and any attachments may contain confidential material for the=
 sole use of the intended recipient(s). Any review or distribution by other=
s is strictly prohibited. If you are not the intended recipient, please con=
tact the sender and delete all copies.
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
