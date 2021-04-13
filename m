Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD6735E12E
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 16:17:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A79236E1CE;
	Tue, 13 Apr 2021 14:17:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D57236E1E8
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 14:17:22 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id 12so16663274wrz.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 07:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=EWkbtWDvwh8blHW1S1oYsLwYpInQjnR4KgbkuHfuuVE=;
 b=j9e+bF89hsG/mvnUH7qdvm8+SCCuzoXLUIud1mVkNI/ABHL2kki35lle2L94FAs78A
 0x2AhAvLVKdtMyJRlR+k4O96KvngfF1DCaJ7PUemQdHV4BBbKgoVr79ur28yL6YddmMN
 BsYlzGyYmVnaz8WPdpduF/oxLp7d6qdbZAyX0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=EWkbtWDvwh8blHW1S1oYsLwYpInQjnR4KgbkuHfuuVE=;
 b=c9GzqtYPH5D43DyTHHHX6I1VsWKdsPZvPp2AAg+t+K1/XrXShlRolDjQOPq4Uou5Gb
 pIdIoaqE1HXqNaZorWAYGQK5fTpANGTIzw0237HEx6rlK803vgXGg3+wKbyY2qD9QtfU
 qAuqG3PSqk2EJoTeFRu6KU4ezFNrnV6tKEy1awK3pXxQp3sI7+/fPi3wfcSlJ9oGpTeM
 QDBnX+nNC0593AJLrdxYl1xIIDVxjwtFPWyunoGD/CIzX94HrTNo4QwOYoIiI64zzdQy
 CcRV/9EiMgL4iqUcxpku0H/vuZ/ndc5cQtT+IFe/+kvSvm3i3mOnhuHBmciPslt5/4Rj
 xeew==
X-Gm-Message-State: AOAM532se7+tS4pRfC0mjJEb6BqbAQLhN9lL7ksgApLnT/KyfMMaBQeA
 3+PdhzYr2YADQupPbxVUNQ/jLQ==
X-Google-Smtp-Source: ABdhPJzLVkEnh1saGTErC6z1h+PidyjRulX7bU4c7GzVOU+VP44/TFtScd+x3Lf34cnJJawUPxwGrg==
X-Received: by 2002:adf:fd90:: with SMTP id d16mr15767803wrr.96.1618323441609; 
 Tue, 13 Apr 2021 07:17:21 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l4sm2567526wmh.8.2021.04.13.07.17.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Apr 2021 07:17:20 -0700 (PDT)
Date: Tue, 13 Apr 2021 16:17:17 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Lucas Stach <l.stach@pengutronix.de>
Message-ID: <YHWn7S2a+HAL9DtZ@phenom.ffwll.local>
References: <20210413094904.3736372-1-daniel.vetter@ffwll.ch>
 <20210413094904.3736372-12-daniel.vetter@ffwll.ch>
 <bea01abded059c00de330fbc154ee0db7378d58e.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bea01abded059c00de330fbc154ee0db7378d58e.camel@pengutronix.de>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 12/12] drm/modifiers: Enforce consistency
 between the cap an IN_FORMATS
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
Cc: Pekka Paalanen <pekka.paalanen@collabora.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 13, 2021 at 01:54:00PM +0200, Lucas Stach wrote:
> Am Dienstag, dem 13.04.2021 um 11:49 +0200 schrieb Daniel Vetter:
> > It's very confusing for userspace to have to deal with inconsistencies
> > here, and some drivers screwed this up a bit. Most just ommitted the
> > format list when they meant to say that only linear modifier is
> > allowed, but some also meant that only implied modifiers are
> > acceptable (because actually none of the planes registered supported
> > modifiers).
> =

> For a lot of the embedded display drivers that never had any out-of-
> band tiling meta shared with the GPU part, the implied modifier is
> actually DRM_FORMAT_MOD_LINEAR, so maybe that's where some of the
> confusion about needing to specify the modifier list comes from.

Yeah that entire discussion last few days is why I wanted to audit all the
drivers and make sure that going forward we're more explicit&consistent
with all this. There's huge confusion around implied modifier vs "no
IN_FORMATS blob property" and what that exactly means.
-Daniel

> > Now that this is all done consistently across all drivers, document
> > the rules and enforce it in the drm core.
> =

> This clarification looks good to me.
> =

> Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
> =

> > Cc: Pekka Paalanen <pekka.paalanen@collabora.com>
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: Maxime Ripard <mripard@kernel.org>
> > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > Cc: David Airlie <airlied@linux.ie>
> > Cc: Daniel Vetter <daniel@ffwll.ch>
> > ---
> > =A0drivers/gpu/drm/drm_plane.c   | 16 +++++++++++++++-
> > =A0include/drm/drm_mode_config.h |  2 ++
> > =A02 files changed, 17 insertions(+), 1 deletion(-)
> > =

> > diff --git a/drivers/gpu/drm/drm_plane.c b/drivers/gpu/drm/drm_plane.c
> > index 0dd43882fe7c..16a7e3e57f7f 100644
> > --- a/drivers/gpu/drm/drm_plane.c
> > +++ b/drivers/gpu/drm/drm_plane.c
> > @@ -128,6 +128,11 @@
> > =A0=A0*     pairs supported by this plane. The blob is a struct
> > =A0=A0*     drm_format_modifier_blob. Without this property the plane d=
oesn't
> > =A0=A0*     support buffers with modifiers. Userspace cannot change thi=
s property.
> > + *
> > + *     Note that userspace can check the DRM_CAP_ADDFB2_MODIFIERS driv=
er
> > + *     capability for general modifier support. If this flag is set th=
en every
> > + *     plane will have the IN_FORMATS property, even when it only supp=
orts
> > + *     DRM_FORMAT_MOD_LINEAR.
> > =A0=A0*/
> > =A0
> > =

> > =

> > =

> > =

> > =

> > =

> > =

> > =A0static unsigned int drm_num_planes(struct drm_device *dev)
> > @@ -277,8 +282,14 @@ static int __drm_universal_plane_init(struct drm_d=
evice *dev,
> > =A0			format_modifier_count++;
> > =A0	}
> > =A0
> > =

> > =

> > =

> > =

> > =

> > =

> > =

> > -	if (format_modifier_count)
> > +	/* autoset the cap and check for consistency across all planes */
> > +	if (format_modifier_count) {
> > +		WARN_ON(!config->allow_fb_modifiers &&
> > +			!list_empty(&config->plane_list));
> > =A0		config->allow_fb_modifiers =3D true;
> > +	} else {
> > +		WARN_ON(config->allow_fb_modifiers);
> > +	}
> > =A0
> > =

> > =

> > =

> > =

> > =

> > =

> > =

> > =A0	plane->modifier_count =3D format_modifier_count;
> > =A0	plane->modifiers =3D kmalloc_array(format_modifier_count,
> > @@ -360,6 +371,9 @@ static int __drm_universal_plane_init(struct drm_de=
vice *dev,
> > =A0=A0* drm_universal_plane_init() to let the DRM managed resource infr=
astructure
> > =A0=A0* take care of cleanup and deallocation.
> > =A0=A0*
> > + * Drivers supporting modifiers must set @format_modifiers on all thei=
r planes,
> > + * even those that only support DRM_FORMAT_MOD_LINEAR.
> > + *
> > =A0=A0* Returns:
> > =A0=A0* Zero on success, error code on failure.
> > =A0=A0*/
> > diff --git a/include/drm/drm_mode_config.h b/include/drm/drm_mode_confi=
g.h
> > index ab424ddd7665..1ddf7783fdf7 100644
> > --- a/include/drm/drm_mode_config.h
> > +++ b/include/drm/drm_mode_config.h
> > @@ -909,6 +909,8 @@ struct drm_mode_config {
> > =A0	 * @allow_fb_modifiers:
> > =A0	 *
> > =A0	 * Whether the driver supports fb modifiers in the ADDFB2.1 ioctl c=
all.
> > +	 * Note that drivers should not set this directly, it is automatically
> > +	 * set in drm_universal_plane_init().
> > =A0	 *
> > =A0	 * IMPORTANT:
> > =A0	 *
> =

> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
