Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECDB5000A6
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 23:08:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AB7A89852;
	Wed, 13 Apr 2022 21:08:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A64AE897EE
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 21:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1649884102;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eZVOf5puUkexY1KynS709uymjwoQEkyNXAQS55C0ENA=;
 b=O3wfcCpGV9T5zWktN5oP3ZgmpfEDSGWIIgz9pSgsv4RtaYgitWckOcU0T0gpKjwCrpS/Nq
 eXp4VSFjNGhPWdS+n/n2rtagZCWmDgAJCGrWFORXT5Qz7urPhoHPmqpffmQcqGpEjSTbe4
 4n5Y4ZWaP+/fdYrJu4ruCuMDIUOOu5E=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-210-vcx7PVKgPdSkZ_vT-Vm1nQ-1; Wed, 13 Apr 2022 17:08:20 -0400
X-MC-Unique: vcx7PVKgPdSkZ_vT-Vm1nQ-1
Received: by mail-qv1-f72.google.com with SMTP id
 jx11-20020a0562142b0b00b0044444479dcbso2771129qvb.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 14:08:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=eZVOf5puUkexY1KynS709uymjwoQEkyNXAQS55C0ENA=;
 b=nLMmU8h4nDHp6Nj5EHuA2nVtQTAjA+ft1U6kCXBznxxcJ36TtXZ0ebnd2xVMeJD3Nf
 0ODWEeX54ke1r3131n04gB6x99fk0UZqMTypNHepqJBXD84GMF4bcNTkW+E3tOQuEOUL
 G3+h0RZH29imDAsKt1G/xHFlSqhzuuk5jGkYL0eyNkqrbqiNkB4NmIH8zLnDAZUmvjek
 Szg32EuNSbgXvp3mQNcmOsTI56wMs3uBN9x/RubPVxJ0u0duQsPze/iyFBnzmMTSCUFE
 0g9pX7cQ3lPhn6rjzUQFweB+n/Y6St2hakgYH8lELWsoWg1wRKr/+0yQNlXRBoRyIrJz
 XXHg==
X-Gm-Message-State: AOAM531dQm0EwNOQy7xy9lcPZ2w6vAyOCNUxzI99oaH1J9jmw+ezlLZC
 GxJy4UhKcwJvTITr4/0ZGE/RPHxu6HT8JOzhPwo4zCQNffxveycNesbvLEvrRbrvGJctu+czSgo
 mGc5bF0ZgdwEeb8qYFWYyIyTfsjUY
X-Received: by 2002:a05:620a:2889:b0:699:bbc5:9b4b with SMTP id
 j9-20020a05620a288900b00699bbc59b4bmr8389693qkp.712.1649884099926; 
 Wed, 13 Apr 2022 14:08:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxC46NJ+URqWQg3IdrYDRqNuE39Dv8S/K7gT7to0Tipa8Yi+P4S9kIyAx/eANASMSrKKXt50Q==
X-Received: by 2002:a05:620a:2889:b0:699:bbc5:9b4b with SMTP id
 j9-20020a05620a288900b00699bbc59b4bmr8389676qkp.712.1649884099695; 
 Wed, 13 Apr 2022 14:08:19 -0700 (PDT)
Received: from [192.168.8.138] (pool-71-126-244-162.bstnma.fios.verizon.net.
 [71.126.244.162]) by smtp.gmail.com with ESMTPSA id
 b20-20020a05622a021400b002f08f5658a2sm19888qtx.68.2022.04.13.14.08.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 14:08:19 -0700 (PDT)
Message-ID: <7f7d46f3a5021ff4616a6c66a70c99d9120f879e.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Date: Wed, 13 Apr 2022 17:08:18 -0400
In-Reply-To: <2f768d2c5d51c31d507d2d10fbb9c19a39eb2111.camel@intel.com>
References: <20220412052542.681419-1-jouni.hogander@intel.com>
 <5294707cfceb018778f7ff1164f88581acb08015.camel@redhat.com>
 <2f768d2c5d51c31d507d2d10fbb9c19a39eb2111.camel@intel.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Check EDID before dpcd for
 possible HDR aux bl support
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "filippo.falezza@outlook.it" <filippo.falezza@outlook.it>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 2022-04-13 at 08:31 +0000, Hogander, Jouni wrote:
> Hello Lyude,
> 
> See my respose below.
> 
> On Tue, 2022-04-12 at 13:50 -0400, Lyude Paul wrote:
> > On Tue, 2022-04-12 at 08:25 +0300, Jouni Högander wrote:
> > > We have now seen panel (XMG Core 15 e21 laptop) avertizing support
> > > for Intel proprietary eDP backlight control via DPCD registers, but
> > > actually working only with legacy pwm control.
> > > 
> > > This patch adds panel EDID check for possible HDR static metadata
> > > and
> > > does detection from DPCD registers only if this data block exists.
> > > 
> > > Fixes: 4a8d79901d5b ("drm/i915/dp: Enable Intel's HDR backlight
> > > interface
> > > (only SDR for now)")
> > > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5284
> > > Cc: Lyude Paul <lyude@redhat.com>
> > > Cc: Mika Kahola <mika.kahola@intel.com>
> > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > Tested-by: Filippo Falezza <filippo.falezza@outlook.it>
> > > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > > ---
> > >  .../gpu/drm/i915/display/intel_dp_aux_backlight.c   | 13
> > > +++++++++++++
> > >  1 file changed, 13 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > index 97cf3cac0105..f69e185b58c1 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > @@ -108,6 +108,19 @@ intel_dp_aux_supports_hdr_backlight(struct
> > > intel_connector *connector)
> > >         int ret;
> > >         u8 tcon_cap[4];
> > >  
> > > +       /*
> > > +        * If we don't have HDR static metadata there is no way to
> > > +        * runtime detect used range for nits based control. For
> > > now
> > > +        * do not use Intel proprietary eDP backlight control if we
> > > +        * don't have this data in panel EDID. In case we find
> > > panel
> > > +        * which supports only nits based control, but doesn't
> > > provide
> > > +        * HDR static metadata we need to start maintaining table
> > > of
> > > +        * ranges for such panels.
> > > +        */
> > > +       if (!(connector-
> > > > base.hdr_sink_metadata.hdmi_type1.metadata_type &
> > > +             BIT(HDMI_STATIC_METADATA_TYPE1)))
> > > +               return false;
> > 
> > The block used for this is actually for HDMI?? How bizarre…
> > 
> > Anyway yeah - patch looks good to me, but I think we should print a
> > debugging
> > message of some sort when we determine that there's no HDR backlight
> > because
> > of the EDID - along with printing instructions for how the user can
> > override
> > it if we've made the wrong choice along with reporting a bug. Also -
> > we should
> > have the
> 
> hmm, currently there is no override possibility
> in intel_dp_aux_supports_hdr_backlight. Do you think I should add one?

Yes, probably - I think just making it so that i915.enable_dpcd_backlight=3
enables the HDR backlight regardless of the results of the EDID check would
probably be a good idea.

> 
> I sent version 2. Didn't add your rb there as I wasn't sure if I
> understood your comment correctly. Please check new version.
> 
> > Cc: stable@vger.kernel.org
> 
> tag from dim added here using `dim fixes $commit`.
> 
> With that fixed:
> 
> Reviewed-by: Lyude Paul <lyude@redhat.com>
> 
> +
>         intel_dp_wait_source_oui(intel_dp);
>  
>         ret = drm_dp_dpcd_read(aux, INTEL_EDP_HDR_TCON_CAP0,
> tcon_cap,
> sizeof(tcon_cap));
> 
> BR,
> 
> Jouni Högander
> 

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

