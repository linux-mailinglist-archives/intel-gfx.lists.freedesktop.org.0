Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D24B4262791
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Sep 2020 08:59:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A02AF6E9AF;
	Wed,  9 Sep 2020 06:59:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AA9A6E9AF
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Sep 2020 06:59:40 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id z1so1684762wrt.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Sep 2020 23:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v83Egdi6ND2jGynZTgCBEmNsp3MgfPzSb7smHHu8tuA=;
 b=Jz3FyaVgs5FEK46vjzgP6Huyv3kRkIunR88mxuGaRzXWkQXzNWYvdQJ4U5w9F1LYv1
 LaF1jHPDXugiukfpqzeP15YgBgMKHdSmii5A5k4T/M8bEh6sn83oETC0nihF03qalq8s
 7Cu5vrChegE2pJ7mqJjVTLoPgfQmKpll7k6Yg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v83Egdi6ND2jGynZTgCBEmNsp3MgfPzSb7smHHu8tuA=;
 b=Yi/CNT/6aRynWJ2Rzgok40Pjq3pgzZuG48EzMlvrWBu8Knruy5StjkG6AgwjddAwZT
 lohRVgtDTm5kiWAnAeYOcedwVm+BvybVhTUDVMQ7Abi8VeMSPpG9R4Y8V0H46WP8wbx0
 6rmphQ/jeFO48no5bE93H8/uTkVZsBZuTiiY4qBlEoD1fleNAar2f7YGZIAWxVuND99i
 2gTd0dsakL0Q3d4lOTuFqThUKQnTdx+a1Vepdme1Uem525wxar5dEjngYElA/ocG4eRQ
 H80v3gA264YVIT5U1d9+sL3eN7i3VqpYYcdoAPUTv4kqIjmqcqTfOJbiNt+7590Prp4X
 G4Vw==
X-Gm-Message-State: AOAM53157edyXH+ZfdgSKFFM6KcVfWRtzx5GSWt3q92MztTgOUjcrqib
 7A5xejUGIOBnOnrC7HCzzxE72iwywtrc2ktbim8RFg==
X-Google-Smtp-Source: ABdhPJxuWAZD5tRSJGFLzpGiWfaKw/MQucLYZFZxsveXn7QPRVrRLbgClYUYbGGAYkgVue45lMCd5Bin03SDjqzJARc=
X-Received: by 2002:a05:6000:11cd:: with SMTP id
 i13mr2311750wrx.140.1599634778906; 
 Tue, 08 Sep 2020 23:59:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200901162133.1.I8693156f555875e5c8342e86ab37ce968dfdd277@changeid>
 <20200901162133.4.I900b1b80709b7632a47d0ddb4cd375b4a3616c9e@changeid>
 <c5caee2875a86e68fc66c7bf2eae03393289aded.camel@redhat.com>
In-Reply-To: <c5caee2875a86e68fc66c7bf2eae03393289aded.camel@redhat.com>
From: Sam McNally <sammc@chromium.org>
Date: Wed, 9 Sep 2020 16:59:01 +1000
Message-ID: <CAJqEsoDLyuCoMQob+bk8OfnFXcqacs3Jg7Hc2ksBor9qWrnrAQ@mail.gmail.com>
To: lyude@redhat.com
Subject: Re: [Intel-gfx] [PATCH 4/5] drm_dp_cec: add plumbing in preparation
 for MST support
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
Cc: David Airlie <airlied@linux.ie>, nouveau@lists.freedesktop.org,
 David Francis <David.Francis@amd.com>,
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, amd-gfx@lists.freedesktop.org,
 Hans Verkuil <hans.verkuil@cisco.com>, Ben Skeggs <bskeggs@redhat.com>,
 Harry Wentland <harry.wentland@amd.com>,
 Wambui Karuga <wambui.karugax@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Leo Li <sunpeng.li@amd.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Mikita Lipski <mikita.lipski@amd.com>,
 dri-devel@lists.freedesktop.org, LKML <linux-kernel@vger.kernel.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 2 Sep 2020 at 04:12, Lyude Paul <lyude@redhat.com> wrote:
>
> Super minor nitpicks:
>
> On Tue, 2020-09-01 at 16:22 +1000, Sam McNally wrote:
> > From: Hans Verkuil <hans.verkuil@cisco.com>
> >
> > Signed-off-by: Hans Verkuil <hans.verkuil@cisco.com>
> > [sammc@chromium.org:
> >  - rebased
> >  - removed polling-related changes
> >  - moved the calls to drm_dp_cec_(un)set_edid() into the next patch
> > ]
> > Signed-off-by: Sam McNally <sammc@chromium.org>
> > ---
> >
> >  .../display/amdgpu_dm/amdgpu_dm_mst_types.c   |  2 +-
> >  drivers/gpu/drm/drm_dp_cec.c                  | 22 ++++++++++---------
> >  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
> >  drivers/gpu/drm/nouveau/nouveau_connector.c   |  2 +-
> >  include/drm/drm_dp_helper.h                   |  6 +++--
> >  5 files changed, 19 insertions(+), 15 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
> > b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
> > index 461fa4da0a34..6e7075893ec9 100644
> > --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
> > +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
> > @@ -419,7 +419,7 @@ void amdgpu_dm_initialize_dp_connector(struct
> > amdgpu_display_manager *dm,
> >
> >       drm_dp_aux_init(&aconnector->dm_dp_aux.aux);
> >       drm_dp_cec_register_connector(&aconnector->dm_dp_aux.aux,
> > -                                   &aconnector->base);
> > +                                   &aconnector->base, false);
> >
> >       if (aconnector->base.connector_type == DRM_MODE_CONNECTOR_eDP)
> >               return;
> > diff --git a/drivers/gpu/drm/drm_dp_cec.c b/drivers/gpu/drm/drm_dp_cec.c
> > index 3ab2609f9ec7..04ab7b88055c 100644
> > --- a/drivers/gpu/drm/drm_dp_cec.c
> > +++ b/drivers/gpu/drm/drm_dp_cec.c
> > @@ -14,6 +14,7 @@
> >  #include <drm/drm_connector.h>
> >  #include <drm/drm_device.h>
> >  #include <drm/drm_dp_helper.h>
> > +#include <drm/drm_dp_mst_helper.h>
> >
> >  /*
> >   * Unfortunately it turns out that we have a chicken-and-egg situation
> > @@ -338,8 +339,6 @@ void drm_dp_cec_set_edid(struct drm_dp_aux *aux, const
> > struct edid *edid)
> >       if (aux->cec.adap) {
> >               if (aux->cec.adap->capabilities == cec_caps &&
> >                   aux->cec.adap->available_log_addrs == num_las) {
> > -                     /* Unchanged, so just set the phys addr */
> > -                     cec_s_phys_addr_from_edid(aux->cec.adap, edid);
> >                       goto unlock;
> >               }
>
> May as well drop the braces here
>
> >               /*
> > @@ -364,15 +363,16 @@ void drm_dp_cec_set_edid(struct drm_dp_aux *aux, const
> > struct edid *edid)
> >       if (cec_register_adapter(aux->cec.adap, connector->dev->dev)) {
> >               cec_delete_adapter(aux->cec.adap);
> >               aux->cec.adap = NULL;
> > -     } else {
> > -             /*
> > -              * Update the phys addr for the new CEC adapter. When called
> > -              * from drm_dp_cec_register_connector() edid == NULL, so in
> > -              * that case the phys addr is just invalidated.
> > -              */
> > -             cec_s_phys_addr_from_edid(aux->cec.adap, edid);
> >       }
> >  unlock:
> > +     /*
> > +      * Update the phys addr for the new CEC adapter. When called
> > +      * from drm_dp_cec_register_connector() edid == NULL, so in
> > +      * that case the phys addr is just invalidated.
> > +      */
> > +     if (aux->cec.adap && edid) {
> > +             cec_s_phys_addr_from_edid(aux->cec.adap, edid);
> > +     }
>
> And here
>
> >       mutex_unlock(&aux->cec.lock);
> >  }
> >  EXPORT_SYMBOL(drm_dp_cec_set_edid);
> > @@ -418,6 +418,7 @@ EXPORT_SYMBOL(drm_dp_cec_unset_edid);
> >   * drm_dp_cec_register_connector() - register a new connector
> >   * @aux: DisplayPort AUX channel
> >   * @connector: drm connector
> > + * @is_mst: set to true if this is an MST branch
> >   *
> >   * A new connector was registered with associated CEC adapter name and
> >   * CEC adapter parent device. After registering the name and parent
> > @@ -425,12 +426,13 @@ EXPORT_SYMBOL(drm_dp_cec_unset_edid);
> >   * CEC and to register a CEC adapter if that is the case.
> >   */
> >  void drm_dp_cec_register_connector(struct drm_dp_aux *aux,
> > -                                struct drm_connector *connector)
> > +                                struct drm_connector *connector, bool is_mst)
> >  {
> >       WARN_ON(aux->cec.adap);
> >       if (WARN_ON(!aux->transfer))
> >               return;
> >       aux->cec.connector = connector;
> > +     aux->cec.is_mst = is_mst;
>
> Also JFYI, you can also check aux->is_remote, but maybe you've got another
> reason for copying this here
>

I think this was just an artefact of this patch originally being
written before aux->is_remote was added. Switching to it mostly
removes the need for this patch, and leaving drm_dp_cec_set_edid()
unchanged, as Hans suggests, removes the rest.

> Either way:
>
> Reviewed-by: Lyude Paul <lyude@redhat.com>
>
> ...Also, maybe this is just a coincidence - but do I know your name from
> somewhere? Perhaps an IRC community from long ago?
>

Not that I can think of; it's probably just a coincidence.

> >       INIT_DELAYED_WORK(&aux->cec.unregister_work,
> >                         drm_dp_cec_unregister_work);
> >  }
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 82b9de274f65..744cb55572f9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -6261,7 +6261,7 @@ intel_dp_connector_register(struct drm_connector
> > *connector)
> >       intel_dp->aux.dev = connector->kdev;
> >       ret = drm_dp_aux_register(&intel_dp->aux);
> >       if (!ret)
> > -             drm_dp_cec_register_connector(&intel_dp->aux, connector);
> > +             drm_dp_cec_register_connector(&intel_dp->aux, connector, false);
> >       return ret;
> >  }
> >
> > diff --git a/drivers/gpu/drm/nouveau/nouveau_connector.c
> > b/drivers/gpu/drm/nouveau/nouveau_connector.c
> > index 49dd0cbc332f..671a70e95cd1 100644
> > --- a/drivers/gpu/drm/nouveau/nouveau_connector.c
> > +++ b/drivers/gpu/drm/nouveau/nouveau_connector.c
> > @@ -1414,7 +1414,7 @@ nouveau_connector_create(struct drm_device *dev,
> >       switch (type) {
> >       case DRM_MODE_CONNECTOR_DisplayPort:
> >       case DRM_MODE_CONNECTOR_eDP:
> > -             drm_dp_cec_register_connector(&nv_connector->aux, connector);
> > +             drm_dp_cec_register_connector(&nv_connector->aux, connector,
> > false);
> >               break;
> >       }
> >
> > diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
> > index 85513eeb2196..12bca1b9512b 100644
> > --- a/include/drm/drm_dp_helper.h
> > +++ b/include/drm/drm_dp_helper.h
> > @@ -1495,12 +1495,14 @@ struct drm_connector;
> >   * @lock: mutex protecting this struct
> >   * @adap: the CEC adapter for CEC-Tunneling-over-AUX support.
> >   * @connector: the connector this CEC adapter is associated with
> > + * @is_mst: this is an MST branch
> >   * @unregister_work: unregister the CEC adapter
> >   */
> >  struct drm_dp_aux_cec {
> >       struct mutex lock;
> >       struct cec_adapter *adap;
> >       struct drm_connector *connector;
> > +     bool is_mst;
> >       struct delayed_work unregister_work;
> >  };
> >
> > @@ -1746,7 +1748,7 @@ drm_dp_has_quirk(const struct drm_dp_desc *desc, u32
> > edid_quirks,
> >  #ifdef CONFIG_DRM_DP_CEC
> >  void drm_dp_cec_irq(struct drm_dp_aux *aux);
> >  void drm_dp_cec_register_connector(struct drm_dp_aux *aux,
> > -                                struct drm_connector *connector);
> > +                                struct drm_connector *connector, bool
> > is_mst);
> >  void drm_dp_cec_unregister_connector(struct drm_dp_aux *aux);
> >  void drm_dp_cec_set_edid(struct drm_dp_aux *aux, const struct edid *edid);
> >  void drm_dp_cec_unset_edid(struct drm_dp_aux *aux);
> > @@ -1757,7 +1759,7 @@ static inline void drm_dp_cec_irq(struct drm_dp_aux
> > *aux)
> >
> >  static inline void
> >  drm_dp_cec_register_connector(struct drm_dp_aux *aux,
> > -                           struct drm_connector *connector)
> > +                           struct drm_connector *connector, bool is_mst)
> >  {
> >  }
> >
> --
> Sincerely,
>       Lyude Paul (she/her)
>       Software Engineer at Red Hat
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
