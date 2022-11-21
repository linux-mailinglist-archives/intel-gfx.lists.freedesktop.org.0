Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FFFF632F9B
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 23:14:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50A8F10E33A;
	Mon, 21 Nov 2022 22:14:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com
 [IPv6:2607:f8b0:4864:20::62c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 633BE10E33A
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 22:14:45 +0000 (UTC)
Received: by mail-pl1-x62c.google.com with SMTP id p21so11846104plr.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 14:14:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vi9kwZrGV66iyeIQqzPSRHt7VMYJEMYwtmd1I4unTTw=;
 b=SvChwMhfqhCXEYfFCEYYC8R2LYvoj6+30UHHSZ2ZQtb9Geb5MNYjSJWsF+lsiwH2MK
 EYKC1zPlCDgGBtmJbdIxW/Jm4QeU6+Xo5tvhghHAZxiR3GpDWCnU+6SUtuNIuUdRS12Y
 vDwYHQ6hT87GgsjFxg+pDvrv1815HGnwR+i0s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=vi9kwZrGV66iyeIQqzPSRHt7VMYJEMYwtmd1I4unTTw=;
 b=1Myq8+4LDiyvC+qVTPAmSTEsVy3bKQkBuVF9Fl3UFyHAkyjlamhiKxpvNWnSx3s1bM
 sf3xa1fQyu51sKuNrxLwyo0GbHUSXox1e4L7BQn30XwCHTbTkUD93P4ho8spSsSXjLY7
 kJ926oVJ86J1Y3GxsmBIoQ+aevY8kwrom1Geb5J+3dTHblDswNu/xRdZCYDKhfCN+jzF
 ARLZYBhqrnJWia76kC5HGuITNdfbKXIgQK6r1/UVY5Oo2bNQbUoP/NV0DGntNgAO2QFz
 wDBdPckSS2OgRAa5c4zSjHfo8+Ib4u4XgK0w5Tm/p5LBAe/Zo53AVpJaGNvbXrcr1hZF
 j4lg==
X-Gm-Message-State: ANoB5pmatGxkUuOSJ5LrwDVUmxcE1ZoYAJDEn/hqskAmfglcan4LSUNq
 XMPNGV+V4SAvHIfiQChGn31Sl1yEqvkobw==
X-Google-Smtp-Source: AA0mqf6EWBFoVHprJky7naAqklY5hxAnzlTGdW0yIrBTAkUNY6BC0mR5npa+FBgzIeRgh6FFFUl/XA==
X-Received: by 2002:a17:90a:d581:b0:212:b43b:ffe5 with SMTP id
 v1-20020a17090ad58100b00212b43bffe5mr22806429pju.32.1669068884772; 
 Mon, 21 Nov 2022 14:14:44 -0800 (PST)
Received: from justonli-glaptop.lan (c-71-237-220-48.hsd1.or.comcast.net.
 [71.237.220.48]) by smtp.gmail.com with ESMTPSA id
 124-20020a620482000000b0056c2e497ad6sm9448060pfe.93.2022.11.21.14.14.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Nov 2022 14:14:44 -0800 (PST)
Message-ID: <429051a1e862961c3dd155c112163e29c8a5886e.camel@chromium.org>
From: Juston Li <justonli@chromium.org>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Date: Mon, 21 Nov 2022 14:14:43 -0800
In-Reply-To: <2f78d181d379f585b6977ec91222082092184097.camel@intel.com>
References: <20221118003631.1523764-1-alan.previn.teres.alexis@intel.com>
 <20221118003631.1523764-3-alan.previn.teres.alexis@intel.com>
 <ad22ed76ec1b7f9bc397df05977dfd655558aa8b.camel@chromium.org>
 <2f78d181d379f585b6977ec91222082092184097.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.45.3-2 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/pxp: Trigger the global
 teardown for before suspending
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

On Mon, 2022-11-21 at 19:21 +0000, Teres Alexis, Alan Previn wrote:
>=20
>=20
> On Mon, 2022-11-21 at 10:39 -0800, Juston Li wrote:
> > On Thu, 2022-11-17 at 16:36 -0800, Alan Previn wrote:
> > > A driver bug was recently discovered where the security firmware
> > > was
> > > receiving internal HW signals indicating that session key
> > > expirations
> > > had occurred. Architecturally, the firmware was expecting a
> > > response
> > > from the GuC to acknowledge the event with the firmware side.
> > > However the OS was in a suspended state and GuC had been reset.
> > > Internal specifications actually required the driver to ensure
> > > that all active sessions be properly cleaned up in such cases
> > > where
> > > the system is suspended and the GuC potentially unable to
> > > respond.
> > >=20
> > > This patch adds the global teardown code in i915's
> > > suspend_prepare
> > > code path.
> > >=20
> Alan:[snip]
>=20
> > > +void intel_pxp_end(struct intel_pxp *pxp)
> > > +{
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct drm_i915_private *i=
915 =3D pxp_to_gt(pxp)->i915;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0intel_wakeref_t wakeref;
> > > +
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!intel_pxp_is_enabled(=
pxp))
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0return;
> > > +
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0wakeref =3D intel_runtime_=
pm_get(&i915->runtime_pm);
> > > +
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mutex_lock(&pxp->arb_mutex=
);
> > > +
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (__pxp_global_teardown_=
locked(pxp, true))
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0drm_dbg(&(pxp_to_gt(pxp))->i915->drm, "PXP end
> > > timed
> > > out\n");
> > > +
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mutex_unlock(&pxp->arb_mut=
ex);
> > > +
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0intel_pxp_fini_hw(pxp);
> >=20
> > Is intel_pxp_suspend() still needed then if we already fini_hw()
> > here
> > and mark invalidation in intel_pxp_terminate()?
> >=20
>=20
> Good catch - looks like we might not need intel_pxp_suspend. But I'll
> verify that for you.

Actually, might need to be careful here. If system aborts suspend or
fails to suspend for any reason, suspend_prepare()->intel_pxp_fini_hw()
might have been called but not suspend().

Correct me if I'm wrong, but in that case I don't think resume() will
be called and thus intel_pxp_init_hw().

For some background, there were some issues with PXP ending up in a bad
state when some other driver caused suspend to fail or user
closed/opened lid quickly and aborted suspend.

> Also, looks like i forgot to include a non-CONFIG_DRM_I915_PXP
> version of intel_pxp_end which was causing the build
> failure. Will resend.
>=20
> Btw, thanks for reviewing this Juston, i had cc'd you because of the
> impact to suspend-resume flows and I believe you
> have had prior experience debugging issues with that and runtime-
> suspend/resume. Do you any other issues with this
> change?

Np, thanks for the patches!

The only other concern I had that's more of a downstream issue is we
ended up using hw_state_invalidated to block PXP ioctl ops during
teardown to prevent further PXP ioctls triggering pxp_start and another
termination queued.
I don't recall if I sent you this patch on our tree:
https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/=
3207105
I think this could happen in suspend now too, if app sends PXP ops
while suspend termination is in progress.

Juston
