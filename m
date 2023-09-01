Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 757DA790400
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Sep 2023 01:24:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E886310E062;
	Fri,  1 Sep 2023 23:24:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com
 [IPv6:2a00:1450:4864:20::22d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E22210E7C7
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 23:24:21 +0000 (UTC)
Received: by mail-lj1-x22d.google.com with SMTP id
 38308e7fff4ca-2bcfdadd149so45253611fa.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 01 Sep 2023 16:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1693610660; x=1694215460;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rIuST8h/JTbh32HUCv+OJnv8i+nFO/MicGRRYaqdiOg=;
 b=MVoEzBcCAnICMM/UNH+bMTlZoWO0BJ2JxJEeKHXrXyGwD4QhXR9sJfCTNcgXyk+MYl
 /Z++TJ5Fvpack58xA+bozECjPWIByRSQd/EUOZCtMN8dQfnSjJJbdFdUUfcFMgg3ctGM
 jRT/v05SW2vv3JARF3z9a9fU4T9kHT2dbWS2c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693610660; x=1694215460;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=rIuST8h/JTbh32HUCv+OJnv8i+nFO/MicGRRYaqdiOg=;
 b=eHVT7X9vHp76i9iHLjE22jDaW1W13o1KOtFFvjyQdwkTsYwaQj3Plp4RZF0ibVc9WN
 WoeINrEhSC12AQZRjhCCDGlNcJgW3SANmFV3UNUjt7U+bStrcBwifzXEUnOu2V4sJdSc
 rsPmYJMmyou6iLXzRJdG+vsxaqCQi4JXIE7tq8dx+Uv1u1AA3Fk/5fUGB+a4HpNk+A4R
 xp9Qj15wIyoBmr0WAKc3yoGtAM0tDfXf1MbIIsxECSTTFzlxnv9cpHkjIN1Jl3E8VdpQ
 YssU1GJYV2ZV4by9e2/HisJwYei67ALu6s2rbUQ74w/gf5RBOHYgavMWk0h2smGe1uSO
 7ofQ==
X-Gm-Message-State: AOJu0YxWd3I71ylevwQOzPsUYk3AaPXNey5sjsYEpjF7+uFoVjE3jXz1
 N6ZwWBhWzd9ZqHeXFoOUki1SYzQIgIkQAe5X+77PYA==
X-Google-Smtp-Source: AGHT+IGmR+VTAi2bMXj836aL7W0b/3rO2/hkwCI5NoeQ9m9+XmU74lkUgNLVa0yIPe065lxBkiCpr4SxfqRpLVovnKc=
X-Received: by 2002:a2e:978a:0:b0:2bc:d6d8:8ab5 with SMTP id
 y10-20020a2e978a000000b002bcd6d88ab5mr2398015lji.24.1693610659619; Fri, 01
 Sep 2023 16:24:19 -0700 (PDT)
MIME-Version: 1.0
References: <20230824205335.500163-1-gildekel@chromium.org>
 <20230824205335.500163-6-gildekel@chromium.org> <ZPIzl/a60uD4FTRI@intel.com>
 <CAOD+-Q49q=WJCMDCiP0gZzRTK9-n2zxeYZF_9FeSEH9UvCLdoA@mail.gmail.com>
In-Reply-To: <CAOD+-Q49q=WJCMDCiP0gZzRTK9-n2zxeYZF_9FeSEH9UvCLdoA@mail.gmail.com>
From: Gil Dekel <gildekel@chromium.org>
Date: Fri, 1 Sep 2023 19:24:08 -0400
Message-ID: <CAOD+-Q5CCHoXLJz4P-N0dE+TQioL7inbJRfrP+6p6EfsmPkNdg@mail.gmail.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v4 5/6] drm/i915/dp_link_training: Set all
 downstream MST ports to BAD before retrying
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
Cc: intel-gfx@lists.freedesktop.org, seanpaul@chromium.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 1, 2023 at 5:13=E2=80=AFPM Gil Dekel <gildekel@chromium.org> wr=
ote:
>
> On Fri, Sep 1, 2023 at 2:55=E2=80=AFPM Rodrigo Vivi <rodrigo.vivi@intel.c=
om> wrote:
> >
> > On Thu, Aug 24, 2023 at 04:50:20PM -0400, Gil Dekel wrote:
> > > Before sending a uevent to userspace in order to trigger a corrective
> > > modeset, we change the failing connector's link-status to BAD. Howeve=
r,
> > > the downstream MST branch ports are left in their original GOOD state=
.
> > >
> > > This patch utilizes the drm helper function
> > > drm_dp_set_mst_topology_link_status() to rectify this and set all
> > > downstream MST connectors' link-status to BAD before emitting the uev=
ent
> > > to userspace.
> > >
> > > Signed-off-by: Gil Dekel <gildekel@chromium.org>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c | 16 ++++++++++------
> > >  1 file changed, 10 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/dr=
m/i915/display/intel_dp.c
> > > index 42353b1ac487..e8b10f59e141 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -5995,16 +5995,20 @@ static void intel_dp_modeset_retry_work_fn(st=
ruct work_struct *work)
> > >       struct intel_dp *intel_dp =3D
> > >               container_of(work, typeof(*intel_dp), modeset_retry_wor=
k);
> > >       struct drm_connector *connector =3D &intel_dp->attached_connect=
or->base;
> > > -     drm_dbg_kms(connector->dev, "[CONNECTOR:%d:%s]\n", connector->b=
ase.id,
> > > -                 connector->name);
> > >
> > > -     /* Grab the locks before changing connector property*/
> > > -     mutex_lock(&connector->dev->mode_config.mutex);
> > > -     /* Set connector link status to BAD and send a Uevent to notify
> > > -      * userspace to do a modeset.
> > > +     /* Set the connector's (and possibly all its downstream MST por=
ts') link
> > > +      * status to BAD.
> > >        */
> > > +     mutex_lock(&connector->dev->mode_config.mutex);
> > > +     drm_dbg_kms(connector->dev, "[CONNECTOR:%d:%s] link status %d -=
> %d\n",
> > > +                 connector->base.id, connector->name,
> > > +                 connector->state->link_status, DRM_MODE_LINK_STATUS=
_BAD);
> > >       drm_connector_set_link_status_property(connector,
> > >                                              DRM_MODE_LINK_STATUS_BAD=
);
> > > +     if (intel_dp->is_mst) {
> > > +             drm_dp_set_mst_topology_link_status(&intel_dp->mst_mgr,
> > > +                                                 DRM_MODE_LINK_STATU=
S_BAD);
> >
> > Something is weird with the locking here.
> > I noticed that on patch 3 this new function also gets the same
> > mutex_lock(&connector->dev->mode_config.mutex);
> >
> > Since you didn't reach the deadlock, I'm clearly missing something
> > on the flow. But regardless of what I could be missing, I believe
> > this is totally not future proof and we will for sure hit dead-lock
> > cases.
> >
> You are not wrong.
>
> Something must have been wrong in my workflow, as I was positive I
> tested the code with this lock, but I must remember wrong. I tried
> testing my current code and it immediately locked, as you expected.
> So thank you for catching this.
>
> Lyude's original patch didn't include drm_dp_set_mst_topology_link_status=
()
> as an exposed drm helper function, so when I adjusted it for this series,=
 I
> decided to add locks similar to how her other function using
> drm_dp_set_mst_topology_link_status() did. However, I failed to use the
> right lock, which is:
> drm_modeset_lock(&connector->dev->mode_config.connection_mutex, NULL);
> drm_modeset_unlock(&connector->dev->mode_config.connection_mutex);
> This is similar to how drm_connector_set_link_status_property() locks
> before writing to link_status.
>
> I made sure to test my code with the above locks, and it runs well. Here'=
s
> an instrumented log excerpt for failing link-training with an MST hub
> (I hacked the driver to always fail non eDP connectors and print the
> raw pointer addresses of the drm_device and mutex right before locking):
> [   43.466329] i915 0000:00:02.0: [drm] *ERROR* Link Training
> Unsuccessful via gildekel HACK - (not eDP)
> [   43.594950] i915 0000:00:02.0: [drm] *ERROR* Link Training
> Unsuccessful via gildekel HACK - (not eDP)
> [   43.594979] i915 0000:00:02.0: [drm] *ERROR* Link Training Unsuccessfu=
l
> [   43.595023] i915 0000:00:02.0: [drm] *ERROR* [CONNECTOR:273:DP-3]:
> [   43.595028] i915 0000:00:02.0: [drm] *ERROR*
> connector->dev=3D00000000d4850450
> [   43.595033] i915 0000:00:02.0: [drm] *ERROR*
> connector->dev->mode_config.mutex=3D00000000aac3fe45
> [   44.771091] i915 0000:00:02.0: [drm] *ERROR*
> [MST-CONNECTOR:300:DP-5]:
> [   44.771108] i915 0000:00:02.0: [drm] *ERROR*
> connector->dev=3D000000003fb97435
> [   44.771115] i915 0000:00:02.0: [drm] *ERROR*
> &connector->dev->mode_config.connection_mutex=3D000000009aece20e
> [   44.771127] i915 0000:00:02.0: [drm] *ERROR*
> [MST-CONNECTOR:303:DP-6]:
> [   44.771132] i915 0000:00:02.0: [drm] *ERROR*
> connector->dev=3D0000000075236b75
> [   44.771137] i915 0000:00:02.0: [drm] *ERROR*
> &connector->dev->mode_config.connection_mutex=3D000000009aece20e
>
> Also, I was under the assumption that all connectors in an MST topology
> should reference the same drm_device object, but it seems like that's
> not the case. Is my assumption wrong?
>
Sorry, please disregard. I was printing the pointers' address instead
of the value's address. Same drm_device is shared:

Link Training Unsuccessful via gildekel HACK - (not eDP)
Link Training Unsuccessful via gildekel HACK - (not eDP)
Link Training Unsuccessful
[CONNECTOR:273:DP-3]:
  connector->dev=3D00000000b88b882c
  connector->dev->mode_config.mutex=3D00000000d64b22db
    [MST-CONNECTOR:297:DP-5]:
      connector->dev=3D00000000b88b882c
      &connector->dev->mode_config.connection_mutex=3D000000002d876227
    [MST-CONNECTOR:301:DP-6]:
      connector->dev=3D00000000b88b882c
      &connector->dev->mode_config.connection_mutex=3D000000002d876227

Sorry for the noise.

> > > +     }
> > >       mutex_unlock(&connector->dev->mode_config.mutex);
> > >       /* Send Hotplug uevent so userspace can reprobe */
> > >       drm_kms_helper_connector_hotplug_event(connector);
> > > --
> > > Gil Dekel, Software Engineer, Google / ChromeOS Display and Graphics
>
>
> Thanks for your time and comments!
> --
> Best,
> Gil Dekel, Software Engineer, Google / ChromeOS Display and Graphics



--=20
Practice Makes Notable Improvements
