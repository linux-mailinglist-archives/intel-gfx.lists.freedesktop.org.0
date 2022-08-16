Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65ECB596256
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 20:25:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EFBE1133E2;
	Tue, 16 Aug 2022 18:25:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C75511362C
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1660674292;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4APrCzNvCJvZdPPei2VGvsAl7TnezkG7b9sD5lHxu5w=;
 b=PfzHpa37dE6ryhVNKBOUHupbNCw7EV1bE5KIjsG2iodkICchYYjThHUHtqIhMNeIyUTnHo
 Q12AiCBef7UQPxBvaB8iSPYPeaK6+GiGW2BdB0Kd5m197dzBJZV0DcKSw4J6ozSnZ4Hwe5
 q5kYrVDBNM0dCozcvNthYpa3WSS4cLA=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-130-UE93mhwDOc2aocRV-kn4pw-1; Tue, 16 Aug 2022 14:24:49 -0400
X-MC-Unique: UE93mhwDOc2aocRV-kn4pw-1
Received: by mail-qt1-f199.google.com with SMTP id
 ff27-20020a05622a4d9b00b0034306b77c08so8881581qtb.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 11:24:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:user-agent:organization
 :references:in-reply-to:date:cc:to:from:subject:message-id
 :x-gm-message-state:from:to:cc;
 bh=4APrCzNvCJvZdPPei2VGvsAl7TnezkG7b9sD5lHxu5w=;
 b=41HBF88QfdYPmx15YpD/WK1aRw0mzr2nUvfEPdmKN7RkoQOoBOFspZjpPcCLR1Q7we
 yQFa3tujYR+AFbdXwXfr257iMP86Hewx/kgM8ERh1Dx0M+qHXMbqQ6l/SNOcFB3zio9A
 yvIXohH0r5ckUTKtnMtrgORvoBcHys1fu3ZVsTMGNoR2uUlfxZEHxTpsvr/hYnTqoURq
 uLwUIhVPTA6pXZi62S2dZP7prJjyhWIYbM8iQ86RagBwr5XfQRSmXZyTbaAE1xYHdVTS
 /IPYXlmLj4M/TjdvKzkV3vvD0z4WbbpSGSVJFvBzlP92vo4WhmRss+oUNbjavwoR8uql
 NSIQ==
X-Gm-Message-State: ACgBeo2ulxx7Fp7yGdIODrn8UPINSpCMaWKA/P/eGe0ag40CyJwlF6vt
 JsEHTQX9nWs0Pb341rUOZYgycGjDnvGE3Z7PuH/QCKckZdhzNYETF+cmfFMwt6XCjdsMJMzzCz4
 CtkEXWdme2bHQWTa9oNphqcUKxglu
X-Received: by 2002:a05:6214:1cc8:b0:46e:1920:70f8 with SMTP id
 g8-20020a0562141cc800b0046e192070f8mr19091599qvd.6.1660674288850; 
 Tue, 16 Aug 2022 11:24:48 -0700 (PDT)
X-Google-Smtp-Source: AA6agR6Ti0MgWn0jiwlVJ6LdWNLM26lzw3bFgeBehbTERAFTZ4fs8kfkv9GKykgPccJegrzfWy3cMQ==
X-Received: by 2002:a05:6214:1cc8:b0:46e:1920:70f8 with SMTP id
 g8-20020a0562141cc800b0046e192070f8mr19091582qvd.6.1660674288564; 
 Tue, 16 Aug 2022 11:24:48 -0700 (PDT)
Received: from [192.168.8.138] (pool-100-0-245-4.bstnma.fios.verizon.net.
 [100.0.245.4]) by smtp.gmail.com with ESMTPSA id
 t3-20020a05620a450300b006b5df4d2c81sm13607026qkp.94.2022.08.16.11.24.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Aug 2022 11:24:47 -0700 (PDT)
Message-ID: <b8ebc447ea464371102df765882fc5010cc0c784.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
Date: Tue, 16 Aug 2022 14:24:46 -0400
In-Reply-To: <CAAd53p76ut7QRFdM4NjaRua=Hc4bu9_=7+Q_t8ExJysEAhJf=Q@mail.gmail.com>
References: <20220816025217.618181-1-kai.heng.feng@canonical.com>
 <87leror4sl.fsf@intel.com>
 <CAAd53p76ut7QRFdM4NjaRua=Hc4bu9_=7+Q_t8ExJysEAhJf=Q@mail.gmail.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Switch TGL-H DP-IN to dGFX when
 it's supported
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
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, rodrigo.vivi@intel.com,
 Zenghui Yu <yuzenghui@huawei.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 2022-08-16 at 19:29 +0800, Kai-Heng Feng wrote:
> On Tue, Aug 16, 2022 at 4:06 PM Jani Nikula <jani.nikula@linux.intel.com> wrote:
> > 
> > On Tue, 16 Aug 2022, Kai-Heng Feng <kai.heng.feng@canonical.com> wrote:
> > > On mobile workstations like HP ZBook Fury G8, iGFX's DP-IN can switch to
> > > dGFX so external monitors are routed to dGFX, and more monitors can be
> > > supported as result.
> > > 
> > > To switch the DP-IN to dGFX, the driver needs to invoke _DSM function 20
> > > on intel_dsm_guid2. This method is described in Intel document 632107.

Is this documentation released anywhere? We've been wondering about these
interfaces for quite a long time, and it would be good to know if there's docs
for this we haven't really been seeing.

> > 
> > Is this the policy decision that we want to unconditionally make,
> > though?
> 
> I believes so, so more external monitors can be supported at the same time.
> 
> Kai-Heng

Is this for systems with dual Intel GPUs? I ask because if this affects
Intel/Nvidia hybrid systems then this is a huge no from me. Nouveau is able to
support these systems, but at a limited capacity. This would imply that we are
making external displays work for users of the nvidia proprietary driver, at
the expense making external display support for mainline kernel users
substantially worse for people who are using the mainline kernel. Which isn't
a choice we should be making, because nvidia's OOT driver is not a mainline
kernel driver.

If this is just for Intel/Intel systems though that's probably fine, and it
might also be fine for AMD systems.

> 
> > 
> > BR,
> > Jani.
> > 
> > > 
> > > Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_acpi.c | 18 +++++++++++++++++-
> > >  1 file changed, 17 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_acpi.c b/drivers/gpu/drm/i915/display/intel_acpi.c
> > > index e78430001f077..3bd5930e2769b 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_acpi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_acpi.c
> > > @@ -20,6 +20,7 @@ static const guid_t intel_dsm_guid =
> > >                 0xa8, 0x54, 0x0f, 0x13, 0x17, 0xb0, 0x1c, 0x2c);
> > > 
> > >  #define INTEL_DSM_FN_GET_BIOS_DATA_FUNCS_SUPPORTED 0 /* No args */
> > > +#define INTEL_DSM_FN_DP_IN_SWITCH_TO_DGFX 20 /* No args */
> > > 
> > >  static const guid_t intel_dsm_guid2 =
> > >       GUID_INIT(0x3e5b41c6, 0xeb1d, 0x4260,
> > > @@ -187,6 +188,7 @@ void intel_dsm_get_bios_data_funcs_supported(struct drm_i915_private *i915)
> > >       struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> > >       acpi_handle dhandle;
> > >       union acpi_object *obj;
> > > +     int supported = 0;
> > > 
> > >       dhandle = ACPI_HANDLE(&pdev->dev);
> > >       if (!dhandle)
> > > @@ -194,8 +196,22 @@ void intel_dsm_get_bios_data_funcs_supported(struct drm_i915_private *i915)
> > > 
> > >       obj = acpi_evaluate_dsm(dhandle, &intel_dsm_guid2, INTEL_DSM_REVISION_ID,
> > >                               INTEL_DSM_FN_GET_BIOS_DATA_FUNCS_SUPPORTED, NULL);
> > > -     if (obj)
> > > +     if (obj) {
> > > +             if (obj->type == ACPI_TYPE_INTEGER)
> > > +                     supported = obj->integer.value;
> > > +
> > >               ACPI_FREE(obj);
> > > +     }
> > > +
> > > +     /* Tiger Lake H DP-IN Boot Time Switching from iGfx to dGfx */
> > > +     if (supported & BIT(20)) {
> > > +             obj = acpi_evaluate_dsm(dhandle, &intel_dsm_guid2,
> > > +                                     INTEL_DSM_REVISION_ID,
> > > +                                     INTEL_DSM_FN_DP_IN_SWITCH_TO_DGFX,
> > > +                                     NULL);
> > > +             if (obj)
> > > +                     ACPI_FREE(obj);
> > > +     }
> > >  }
> > > 
> > >  /*
> > 
> > --
> > Jani Nikula, Intel Open Source Graphics Center
> 

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

