Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C83E84247CC
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 22:14:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2B816EE65;
	Wed,  6 Oct 2021 20:14:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEEC46EE64
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 20:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1633551276;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cagY2D5F5NT1bAs4th+N+T0RHoiMV1A9dmi9z8s6Y24=;
 b=BB4inVb88wRsKiPciEeTocyjphvruBbnhCSBsx7xgzkfQNdz0NS+/qET9lBcSLtvY8Ar++
 fB/QRm35l4tAluFSfNTg//RwozqOxv3RKDtF9AT4TH7dHj1uDFqWVhukJhSGVDTa2yuskK
 op6LPVWgdlG8YSrJQFZVH5W6mEFfoo4=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-153-680y96MdPw2F068d_ARopw-1; Wed, 06 Oct 2021 16:14:33 -0400
X-MC-Unique: 680y96MdPw2F068d_ARopw-1
Received: by mail-qt1-f198.google.com with SMTP id
 c19-20020ac81e93000000b002a71180fd3dso3195914qtm.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 06 Oct 2021 13:14:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=cagY2D5F5NT1bAs4th+N+T0RHoiMV1A9dmi9z8s6Y24=;
 b=bMGtKhFUc4q7xWLeJh7IXjCUCFtToyutLOMhfOxOX56eEZ5uqf5QKDuBNoipGwyT1Q
 rPkS0HYAwbHc6o50cFh6O9YGujG+OQ+Ws0okfPD5jnniudgpaJS9cbKOshWNm9z4ryJU
 nqIN9hxmqN3tJrEeARywSN8SKv+cWC16HqG+wQrC9dfGvnSkQhjStgceGlc4io7BiQQo
 PFfLyyEA2uo0eXptgI+nRD7A/IPzjEyY1RiKJJEqu0x0V7lCGtK8VKcC8WwW9eD9tSWb
 3gKqPy6MX58EJnH45RNEcjjpddqYi4AxFJPexp5fDztk81dcbn5RpMw/P5HJn893KHdq
 crVQ==
X-Gm-Message-State: AOAM533CbXChGcyr+x9A4wMcJE4RzQgJJdCLGln/VwjUy8OXTe7DdvKV
 24wg9YpzurCXFDzWAF+kMGu7A6as0oQs2O8dCIV2Oas2EgKTciu3qzeNp1Dvjsq3dRlrYNsby/s
 g/xoXyMUIAzhxntULwbtg+uUi/upE
X-Received: by 2002:a37:2e03:: with SMTP id u3mr104160qkh.313.1633551273296;
 Wed, 06 Oct 2021 13:14:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy67uYZrgGccEL/pHmqUgpGEvM4fHcBT6qlvJsJt9Y4Bhg/bkAcrUOLDF6lDPANJdbr6kVesg==
X-Received: by 2002:a37:2e03:: with SMTP id u3mr104131qkh.313.1633551272978;
 Wed, 06 Oct 2021 13:14:32 -0700 (PDT)
Received: from [192.168.8.206] (pool-96-230-249-157.bstnma.fios.verizon.net.
 [96.230.249.157])
 by smtp.gmail.com with ESMTPSA id h17sm13302582qtp.13.2021.10.06.13.14.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Oct 2021 13:14:32 -0700 (PDT)
Message-ID: <f9c4bd7a1ac1a43a4cd2cde8e6d23a60a245b7e7.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Karol Herbst <kherbst@redhat.com>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>, dri-devel
 <dri-devel@lists.freedesktop.org>, nouveau <nouveau@lists.freedesktop.org>,
 Ben Skeggs <bskeggs@redhat.com>, David Airlie <airlied@linux.ie>, Daniel
 Vetter <daniel@ffwll.ch>,  open list <linux-kernel@vger.kernel.org>
Date: Wed, 06 Oct 2021 16:14:31 -0400
In-Reply-To: <CACO55tuMWVgsd44s1sAvgrKDHFZT2Z3F+CSqAh34_XaekYWuHA@mail.gmail.com>
References: <20211006024018.320394-1-lyude@redhat.com>
 <20211006024018.320394-3-lyude@redhat.com>
 <CACO55tuMWVgsd44s1sAvgrKDHFZT2Z3F+CSqAh34_XaekYWuHA@mail.gmail.com>
Organization: Red Hat
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [Nouveau] [PATCH v3 2/5] drm/nouveau/kms/nv50-:
 Explicitly check DPCD backlights for aux enable/brightness
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

On Wed, 2021-10-06 at 18:30 +0200, Karol Herbst wrote:
> On Wed, Oct 6, 2021 at 4:41 AM Lyude Paul <lyude@redhat.com> wrote:
> > 
> > Since we don't support hybrid AUX/PWM backlights in nouveau right now,
> > let's add some explicit checks so that we don't break nouveau once we
> > enable support for these backlights in other drivers.
> > 
> > Signed-off-by: Lyude Paul <lyude@redhat.com>
> > ---
> >  drivers/gpu/drm/nouveau/nouveau_backlight.c | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/nouveau/nouveau_backlight.c
> > b/drivers/gpu/drm/nouveau/nouveau_backlight.c
> > index 1cbd71abc80a..ae2f2abc8f5a 100644
> > --- a/drivers/gpu/drm/nouveau/nouveau_backlight.c
> > +++ b/drivers/gpu/drm/nouveau/nouveau_backlight.c
> > @@ -308,7 +308,10 @@ nv50_backlight_init(struct nouveau_backlight *bl,
> >                 if (ret < 0)
> >                         return ret;
> > 
> > -               if (drm_edp_backlight_supported(edp_dpcd)) {
> > +               /* TODO: Add support for hybrid PWM/DPCD panels */
> > +               if (drm_edp_backlight_supported(edp_dpcd) &&
> > +                   (edp_dpcd[1] & DP_EDP_BACKLIGHT_AUX_ENABLE_CAP) &&
> 
> where does the DP_EDP_BACKLIGHT_AUX_ENABLE_CAP come from? afaik
> drm_edp_backlight_supported checks for
> DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP and
> DP_EDP_TCON_BACKLIGHT_ADJUSTMENT_CAP so wondering if this was
> intentional or a typo

This is intentional - drm_edp_backlight_supported() does check for these, but
in the patch after this we remove the BRIGHTNESS_AUX_SET_CAP from
drm_edp_backlight_supported() in order to implement support for panels lacking
BRIGHTNESS_AUX_SET_CAP in i915. Since we don't have support for this in
nouveau yet but such backlights are likely to mostly work without the use of
DPCD if we avoid trying to set it up, this patch is just here to make sure
that the changes to drm_edp_backlight_supported() don't result in nouveau
suddenly trying (and failing) to enable DPCD backlight controls on those
backlights.

> 
> > +                   (edp_dpcd[2] &
> > DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP)) {
> >                         NV_DEBUG(drm, "DPCD backlight controls supported
> > on %s\n",
> >                                  nv_conn->base.name);
> > 
> > --
> > 2.31.1
> > 
> 

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

