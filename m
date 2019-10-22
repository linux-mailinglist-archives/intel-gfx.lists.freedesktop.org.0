Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A3DDF9F8
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 02:58:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 188246E2E4;
	Tue, 22 Oct 2019 00:58:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com
 [IPv6:2607:f8b0:4864:20::842])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9735C6E08A;
 Tue, 22 Oct 2019 00:58:30 +0000 (UTC)
Received: by mail-qt1-x842.google.com with SMTP id g50so10055534qtb.4;
 Mon, 21 Oct 2019 17:58:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=8DMGS7Js4evx3+TVdeBNp0RhSu1g7xkVMugD47v/Zx0=;
 b=GYqZRqoDtVTQi8Wx03mwe7IpIsNcLa/0/yGbpmY7sKjg1JC7Ua9dgS3yB5LqA3tRJq
 TKmY/g0xT/ndr0WXph61f5wC2bOkhMGpdlR9Ei6SCLdJufK7rdhc6O1lAcNjbEsaXJSR
 w6YkD4h9+QqiXusVNhsbO4lNGUlFZMBtYuNlVIdeuAAlppEAqy6uaIuKzVlqBtomPOJ3
 Kc8ytJUIcWJKcaxn36URLM+Gjy9gKWO2xDxt5OD6mFMVtsJBpSAt8HKglgfveRhY8UjZ
 +zM/WdVujknMC5o3+HccXx3Y1OsV0G/f3/gUA28z1+mEHFhOpKqsQgtWjksJg1eW/yWN
 XhEw==
X-Gm-Message-State: APjAAAULRISRfbfjPE116rcaNn7FGNrlOtoiGCKWokbYoEM4799QBx9E
 GnrVkqwEYi+ocPMJy2rbUU4=
X-Google-Smtp-Source: APXvYqwxzdDvlCVy9oLV5FKt5x4DoiLYNnsUJWISGlEJf/JBqJn/gwtFM21n8LE1FDf5D+AyhY27Jg==
X-Received: by 2002:ac8:2ce5:: with SMTP id 34mr269251qtx.308.1571705909429;
 Mon, 21 Oct 2019 17:58:29 -0700 (PDT)
Received: from smtp.gmail.com (toroon12-3096782342.sdsl.bell.ca.
 [184.149.38.6])
 by smtp.gmail.com with ESMTPSA id p4sm9577017qkf.112.2019.10.21.17.58.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 17:58:29 -0700 (PDT)
From: Brian Starkey <rodrigosiqueiramelo@gmail.com>
X-Google-Original-From: Brian Starkey <brian.starkey@arm.com>
Date: Mon, 21 Oct 2019 21:58:27 -0300
To: Simon Ser <contact@emersion.fr>, Brian Starkey <Brian.Starkey@arm.com>,
 Liviu Dudau <Liviu.Dudau@arm.com>, Petri Latvala <petri.latvala@intel.com>,
 Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20191022005820.4vniwm6wqw3ofk2p@smtp.gmail.com>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent;
 bh=8DMGS7Js4evx3+TVdeBNp0RhSu1g7xkVMugD47v/Zx0=;
 b=kmBB4uL9V1zhSupQNliN7+OftdcTisXh8KQQ1ouviNCaaYpGGM2BOjTGo1qexfTP0/
 9m2TE6ngrC1Onda0+Q3DVLU6M9XtjZ9f0Hx6Txl/s0QGoRG64J5xKFzcNH+AZykAHbmi
 +jUvAHwDzfi8sxPjWR0dxQhqXI1bpdA2pJNfwJaVpxhioV59yW+2oXvWKxgrElrCwYcZ
 SeqveawIrL9k0UZOV4flpXWhl5fIU1n93e7b6DEmVvBK5PlpAM87ZuBloW2JcSESPgBz
 WE5/lQohX7kGIDBEAGUCSd6Asgrng5Z00LeNHp9TAn++sDv5PqVm2pDXXpCN+DYrWf39
 yOdw==
Subject: [Intel-gfx] [PATCH v7 i-g-t 1/4] lib/igt_kms: Add writeback support
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 nd <nd@arm.com>
Content-Type: multipart/mixed; boundary="===============1687024174=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1687024174==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ffgqpq7g2vxy5vm5"
Content-Disposition: inline


--ffgqpq7g2vxy5vm5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Add support in igt_kms for writeback connectors, with the ability
to attach framebuffers.

v5: Rebase and add DRM_CLIENT_CAP_WRITEBACK_CONNECTORS before
drmModeGetResources()

Signed-off-by: Brian Starkey <brian.starkey@arm.com>
[rebased and updated to the latest igt style]
Signed-off-by: Liviu Dudau <liviu.dudau@arm.com>
Signed-off-by: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
Reviewed-by: Simon Ser <contact@emersion.fr>
---
 lib/igt_kms.c | 59 +++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/igt_kms.h |  6 ++++++
 2 files changed, 65 insertions(+)

diff --git a/lib/igt_kms.c b/lib/igt_kms.c
index e9b80b9b..2d7eabc6 100644
--- a/lib/igt_kms.c
+++ b/lib/igt_kms.c
@@ -412,6 +412,9 @@ const char * const igt_connector_prop_names[IGT_NUM_CON=
NECTOR_PROPS] =3D {
 	[IGT_CONNECTOR_VRR_CAPABLE] =3D "vrr_capable",
 	[IGT_CONNECTOR_HDCP_CONTENT_TYPE] =3D "HDCP Content Type",
 	[IGT_CONNECTOR_LINK_STATUS] =3D "link-status",
+	[IGT_CONNECTOR_WRITEBACK_PIXEL_FORMATS] =3D "WRITEBACK_PIXEL_FORMATS",
+	[IGT_CONNECTOR_WRITEBACK_FB_ID] =3D "WRITEBACK_FB_ID",
+	[IGT_CONNECTOR_WRITEBACK_OUT_FENCE_PTR] =3D "WRITEBACK_OUT_FENCE_PTR",
 };
=20
 /*
@@ -644,6 +647,7 @@ static const struct type_name connector_type_names[] =
=3D {
 	{ DRM_MODE_CONNECTOR_VIRTUAL, "Virtual" },
 	{ DRM_MODE_CONNECTOR_DSI, "DSI" },
 	{ DRM_MODE_CONNECTOR_DPI, "DPI" },
+	{ DRM_MODE_CONNECTOR_WRITEBACK, "Writeback" },
 	{}
 };
=20
@@ -1853,6 +1857,14 @@ static void igt_output_reset(igt_output_t *output)
 	if (igt_output_has_prop(output, IGT_CONNECTOR_CONTENT_PROTECTION))
 		igt_output_set_prop_enum(output, IGT_CONNECTOR_CONTENT_PROTECTION,
 					 "Undesired");
+
+	if (igt_output_has_prop(output, IGT_CONNECTOR_WRITEBACK_FB_ID))
+		igt_output_set_prop_value(output, IGT_CONNECTOR_WRITEBACK_FB_ID, 0);
+
+	if (igt_output_has_prop(output, IGT_CONNECTOR_WRITEBACK_OUT_FENCE_PTR)) {
+		igt_output_clear_prop_changed(output, IGT_CONNECTOR_WRITEBACK_OUT_FENCE_=
PTR);
+		output->writeback_out_fence_fd =3D -1;
+	}
 }
=20
 /**
@@ -1866,6 +1878,8 @@ static void igt_output_reset(igt_output_t *output)
  * - %IGT_CONNECTOR_CRTC_ID
  * - %IGT_CONNECTOR_BROADCAST_RGB (if applicable)
  *   %IGT_CONNECTOR_CONTENT_PROTECTION (if applicable)
+ * - %IGT_CONNECTOR_WRITEBACK_FB_ID
+ * - %IGT_CONNECTOR_WRITEBACK_OUT_FENCE_PTR
  * - igt_output_override_mode() to default.
  *
  * For pipes:
@@ -1935,6 +1949,8 @@ void igt_display_require(igt_display_t *display, int =
drm_fd)
=20
 	display->drm_fd =3D drm_fd;
=20
+	drmSetClientCap(drm_fd, DRM_CLIENT_CAP_WRITEBACK_CONNECTORS, 1);
+
 	resources =3D drmModeGetResources(display->drm_fd);
 	if (!resources)
 		goto out;
@@ -2228,6 +2244,11 @@ static void igt_output_fini(igt_output_t *output)
 	kmstest_free_connector_config(&output->config);
 	free(output->name);
 	output->name =3D NULL;
+
+	if (output->writeback_out_fence_fd !=3D -1) {
+		close(output->writeback_out_fence_fd);
+		output->writeback_out_fence_fd =3D -1;
+	}
 }
=20
 /**
@@ -3290,6 +3311,11 @@ static void igt_atomic_prepare_connector_commit(igt_=
output_t *output, drmModeAto
 					  output->props[i],
 					  output->values[i]));
 	}
+
+	if (output->writeback_out_fence_fd !=3D -1) {
+		close(output->writeback_out_fence_fd);
+		output->writeback_out_fence_fd =3D -1;
+	}
 }
=20
 /*
@@ -3412,6 +3438,16 @@ display_commit_changed(igt_display_t *display, enum =
igt_commit_style s)
 		else
 			/* no modeset in universal commit, no change to crtc. */
 			output->changed &=3D 1 << IGT_CONNECTOR_CRTC_ID;
+
+		if (s =3D=3D COMMIT_ATOMIC) {
+			if (igt_output_is_prop_changed(output, IGT_CONNECTOR_WRITEBACK_OUT_FENC=
E_PTR))
+				igt_assert(output->writeback_out_fence_fd >=3D 0);
+
+			output->values[IGT_CONNECTOR_WRITEBACK_OUT_FENCE_PTR] =3D 0;
+			output->values[IGT_CONNECTOR_WRITEBACK_FB_ID] =3D 0;
+			igt_output_clear_prop_changed(output, IGT_CONNECTOR_WRITEBACK_FB_ID);
+			igt_output_clear_prop_changed(output, IGT_CONNECTOR_WRITEBACK_OUT_FENCE=
_PTR);
+		}
 	}
=20
 	if (display->first_commit) {
@@ -4084,6 +4120,29 @@ void igt_pipe_request_out_fence(igt_pipe_t *pipe)
 	igt_pipe_obj_set_prop_value(pipe, IGT_CRTC_OUT_FENCE_PTR, (ptrdiff_t)&pip=
e->out_fence_fd);
 }
=20
+/**
+ * igt_output_set_writeback_fb:
+ * @output: Target output
+ * @fb: Target framebuffer
+ *
+ * This function sets the given @fb to be used as the target framebuffer f=
or the
+ * writeback engine at the next atomic commit. It will also request a writ=
eback
+ * out fence that will contain the fd number of the out fence created by K=
MS if
+ * the given @fb is valid.
+ */
+void igt_output_set_writeback_fb(igt_output_t *output, struct igt_fb *fb)
+{
+	igt_display_t *display =3D output->display;
+
+	LOG(display, "%s: output_set_writeback_fb(%d)\n", output->name, fb ? fb->=
fb_id : 0);
+
+	igt_output_set_prop_value(output, IGT_CONNECTOR_WRITEBACK_FB_ID, fb ? fb-=
>fb_id : 0);
+	/* only request a writeback out fence if the framebuffer is valid */
+	if (fb)
+		igt_output_set_prop_value(output, IGT_CONNECTOR_WRITEBACK_OUT_FENCE_PTR,
+					  (ptrdiff_t)&output->writeback_out_fence_fd);
+}
+
 /**
  * igt_wait_for_vblank_count:
  * @drm_fd: A drm file descriptor
diff --git a/lib/igt_kms.h b/lib/igt_kms.h
index 7193f9a5..9bf70acf 100644
--- a/lib/igt_kms.h
+++ b/lib/igt_kms.h
@@ -125,6 +125,9 @@ enum igt_atomic_connector_properties {
        IGT_CONNECTOR_VRR_CAPABLE,
        IGT_CONNECTOR_HDCP_CONTENT_TYPE,
        IGT_CONNECTOR_LINK_STATUS,
+       IGT_CONNECTOR_WRITEBACK_PIXEL_FORMATS,
+       IGT_CONNECTOR_WRITEBACK_FB_ID,
+       IGT_CONNECTOR_WRITEBACK_OUT_FENCE_PTR,
        IGT_NUM_CONNECTOR_PROPS
 };
=20
@@ -365,6 +368,8 @@ typedef struct {
 	bool use_override_mode;
 	drmModeModeInfo override_mode;
=20
+	int32_t writeback_out_fence_fd;
+
 	/* bitmask of changed properties */
 	uint64_t changed;
=20
@@ -423,6 +428,7 @@ igt_plane_t *igt_output_get_plane_type_index(igt_output=
_t *output,
 igt_output_t *igt_output_from_connector(igt_display_t *display,
     drmModeConnector *connector);
 const drmModeModeInfo *igt_std_1024_mode_get(void);
+void igt_output_set_writeback_fb(igt_output_t *output, struct igt_fb *fb);
=20
 igt_plane_t *igt_pipe_get_plane_type(igt_pipe_t *pipe, int plane_type);
 int igt_pipe_count_plane_type(igt_pipe_t *pipe, int plane_type);
--=20
2.23.0

--ffgqpq7g2vxy5vm5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE4tZ+ii1mjMCMQbfkWJzP/comvP8FAl2uVCsACgkQWJzP/com
vP87vBAAsRXvHYnlYEu/RNpGURTYU2nRL051/b2YjDqLT14WmBTGkMl+uwm5JNyn
WE8dVE7eEq84LhO7ML33Hf4ZK0KZ8V+6r6veV3cvnxa1EU3I0WvR6IjT/sYHXH2n
+StOhnCJJwdOgOQu1aZD3bHha5WcAsE1rCYBwvopPvMLNW0kmas8H1YsMVwf0v8k
7V1RmNnMslCflOsukMEo/uiDOXv850Ylu+Rtqs/yBwfHSbMaiENhUzrvRMRUEW+H
GEfIGEfKSKIhMNb/2i61vDG141LIflYbWFMA+3WgZvGTlHxWOxnfHuV/fVhXdjaf
QxflF2fFlmXhaHmfAl0ByOk2R7D4MwRIC/kLk8GIEgyOxomJaf0sBbmz2ITe3iqf
hf0ZBzoJYSzS7zBd7FhdOjvLQ3/6gW8oRu+EF8ntb+zDeQ2EnthSyzPE+CL6LdEY
gUOhoHujGwS7PEnoYnhsQCZ2BzdCoDJghzIl90hZ+o5HlLH/CXUtwlq7hAsPiKMG
PomB805mlxZov7f1P6jJ5258DgW+LCUBiPDaaKk3s4arNT5s34p/BHEbHcwHDsDk
FBkoBZJFXE7ZF6LJMtxoOT65IPurJMY2D7XVXTm7qT+a8OyAx2Iq6uPeTMZPtBCO
kxZW6NMYk8OVrKgW3aPNkPfT4884DUr5nfCr0HAlLfqqyI0Hle8=
=KSBh
-----END PGP SIGNATURE-----

--ffgqpq7g2vxy5vm5--

--===============1687024174==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1687024174==--
