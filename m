Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A043596286
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 20:36:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C58EB113298;
	Tue, 16 Aug 2022 18:36:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56497112DB0
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 18:36:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1660674972;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vZ54moplpvPdL/wHH71E1xm/y/yfzS3drqv2XjiZKiI=;
 b=eWtbrV5uyXwDvZGuxn0zeK7oM8+Ca4H+0qGU/pqwxz3TzlHs0d7YfYnEooxXwEyyJGuNw5
 5wkGqh9PZjoNHKh8lkkglOFAYlfkpIkeiPEnadygrw5ViTybXyx4s4TfB1iIDiG01q+/5Q
 ON5qXfuY0+tzWKPWblp3SpD1HhPm1O8=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-404-D7clogTNN32C1rm98SWzpQ-1; Tue, 16 Aug 2022 14:36:09 -0400
X-MC-Unique: D7clogTNN32C1rm98SWzpQ-1
Received: by mail-qv1-f71.google.com with SMTP id
 lp9-20020a056214590900b0048e2923a373so3629000qvb.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 11:36:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:user-agent:organization
 :references:in-reply-to:date:cc:to:from:subject:message-id
 :x-gm-message-state:from:to:cc;
 bh=vZ54moplpvPdL/wHH71E1xm/y/yfzS3drqv2XjiZKiI=;
 b=F0XU1RwtIWDxmZeL+6JLPdbjA6h30rp/D20dY4rzsYqQy/Z2iIz4gTct8JSiV6oliX
 Je5UK8y2wyP8s6KxsaiYEGcHVsqUUmxmutjcP9hA6yXkcUzhd6uEI4cCO9rK6W9iqJX7
 an+4Y5m4eZbEEC9QXC38rRrIcZq12olm1BSIpf5kGvefj6jJuZAPT+7WllMJXeSFRice
 TVIUNI05MmDdQkX+vC0B4gB33yssYwvnvYih8TfMxKvbFHqxvC/xMJ8uSrCGtg4u0Q4r
 dJigrP83OjMjU6pK8/kF3zb3i1Jtm7uiTcFmZDLPe+cvOsnLos5sHbDXg/TGB4AtsTKW
 sZfQ==
X-Gm-Message-State: ACgBeo0BzHUA7HSI5ov49v3SneC2n7Zsu1qOeKO6xpJjQDUvOL13vXkk
 dEjIZl7fVkCHPo413Z0Ephz5Pur9BCGjvC5BYztL0P7heqHcjDIZJJF17N3636DR/xH9k+Qa2EI
 9w6UgyCc1JoKm1/L11zMb0dwykHuS
X-Received: by 2002:a05:620a:1a16:b0:6b8:7789:8ca4 with SMTP id
 bk22-20020a05620a1a1600b006b877898ca4mr15412820qkb.292.1660674968936; 
 Tue, 16 Aug 2022 11:36:08 -0700 (PDT)
X-Google-Smtp-Source: AA6agR4pBMBPqG1MbQXxD8HnOKy/7fIUAIk8c46xMr2no8av4BkE3TC1MFkX6/q9a32Znp2C+k72IQ==
X-Received: by 2002:a05:620a:1a16:b0:6b8:7789:8ca4 with SMTP id
 bk22-20020a05620a1a1600b006b877898ca4mr15412789qkb.292.1660674968609; 
 Tue, 16 Aug 2022 11:36:08 -0700 (PDT)
Received: from [192.168.8.138] (pool-100-0-245-4.bstnma.fios.verizon.net.
 [100.0.245.4]) by smtp.gmail.com with ESMTPSA id
 bb12-20020a05622a1b0c00b0031ef67386a5sm10612124qtb.68.2022.08.16.11.36.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Aug 2022 11:36:06 -0700 (PDT)
Message-ID: <d1bf4ebe8378e32fa047ecd8912abf772695534c.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
Date: Tue, 16 Aug 2022 14:36:03 -0400
In-Reply-To: <b8ebc447ea464371102df765882fc5010cc0c784.camel@redhat.com>
References: <20220816025217.618181-1-kai.heng.feng@canonical.com>
 <87leror4sl.fsf@intel.com>
 <CAAd53p76ut7QRFdM4NjaRua=Hc4bu9_=7+Q_t8ExJysEAhJf=Q@mail.gmail.com>
 <b8ebc447ea464371102df765882fc5010cc0c784.camel@redhat.com>
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

On Tue, 2022-08-16 at 14:24 -0400, Lyude Paul wrote:
> On Tue, 2022-08-16 at 19:29 +0800, Kai-Heng Feng wrote:
> > On Tue, Aug 16, 2022 at 4:06 PM Jani Nikula <jani.nikula@linux.intel.com> wrote:
> > > 
> > > On Tue, 16 Aug 2022, Kai-Heng Feng <kai.heng.feng@canonical.com> wrote:
> > > > On mobile workstations like HP ZBook Fury G8, iGFX's DP-IN can switch to
> > > > dGFX so external monitors are routed to dGFX, and more monitors can be
> > > > supported as result.
> > > > 
> > > > To switch the DP-IN to dGFX, the driver needs to invoke _DSM function 20
> > > > on intel_dsm_guid2. This method is described in Intel document 632107.
> 
> Is this documentation released anywhere? We've been wondering about these
> interfaces for quite a long time, and it would be good to know if there's docs
> for this we haven't really been seeing.
> 
> > > 
> > > Is this the policy decision that we want to unconditionally make,
> > > though?
> > 
> > I believes so, so more external monitors can be supported at the same time.
> > 
> > Kai-Heng
> 
> Is this for systems with dual Intel GPUs? I ask because if this affects
> Intel/Nvidia hybrid systems then this is a huge no from me. Nouveau is able to
> support these systems, but at a limited capacity. This would imply that we are
> making external displays work for users of the nvidia proprietary driver, at
> the expense making external display support for mainline kernel users
> substantially worse for people who are using the mainline kernel. Which isn't
> a choice we should be making, because nvidia's OOT driver is not a mainline
> kernel driver.

Doing some quick research, unless the models mentioned in the commit message
are unreleased some of them are definitely Intel/Nvidia hybrids. So I'm going
to say:

NAK-by: Lyude Paul <lyude@redhat.com>

If you'd like to resubmit this for systems with amdgpus and Intel only, that's
perfectly fine with me if the Intel folks are ok with it. But please hold off
on this for Nvidia systems, at least until we've got GSP reworks functional in
nouveau. If nvidia's interested in making this work for their driver, they're
welcome to do the work there. For reference: the main limitations you would
hit as a result of this patch would be lagginess on the external displays as a
result of us not being able to reclock the GPU, which means PCIe bandwidth
will be pretty limited.

> 
> If this is just for Intel/Intel systems though that's probably fine, and it
> might also be fine for AMD systems.
> 
> > 
> > > 
> > > BR,
> > > Jani.
> > > 
> > > > 
> > > > Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_acpi.c | 18 +++++++++++++++++-
> > > >  1 file changed, 17 insertions(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_acpi.c b/drivers/gpu/drm/i915/display/intel_acpi.c
> > > > index e78430001f077..3bd5930e2769b 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_acpi.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_acpi.c
> > > > @@ -20,6 +20,7 @@ static const guid_t intel_dsm_guid =
> > > >                 0xa8, 0x54, 0x0f, 0x13, 0x17, 0xb0, 0x1c, 0x2c);
> > > > 
> > > >  #define INTEL_DSM_FN_GET_BIOS_DATA_FUNCS_SUPPORTED 0 /* No args */
> > > > +#define INTEL_DSM_FN_DP_IN_SWITCH_TO_DGFX 20 /* No args */
> > > > 
> > > >  static const guid_t intel_dsm_guid2 =
> > > >       GUID_INIT(0x3e5b41c6, 0xeb1d, 0x4260,
> > > > @@ -187,6 +188,7 @@ void intel_dsm_get_bios_data_funcs_supported(struct drm_i915_private *i915)
> > > >       struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> > > >       acpi_handle dhandle;
> > > >       union acpi_object *obj;
> > > > +     int supported = 0;
> > > > 
> > > >       dhandle = ACPI_HANDLE(&pdev->dev);
> > > >       if (!dhandle)
> > > > @@ -194,8 +196,22 @@ void intel_dsm_get_bios_data_funcs_supported(struct drm_i915_private *i915)
> > > > 
> > > >       obj = acpi_evaluate_dsm(dhandle, &intel_dsm_guid2, INTEL_DSM_REVISION_ID,
> > > >                               INTEL_DSM_FN_GET_BIOS_DATA_FUNCS_SUPPORTED, NULL);
> > > > -     if (obj)
> > > > +     if (obj) {
> > > > +             if (obj->type == ACPI_TYPE_INTEGER)
> > > > +                     supported = obj->integer.value;
> > > > +
> > > >               ACPI_FREE(obj);
> > > > +     }
> > > > +
> > > > +     /* Tiger Lake H DP-IN Boot Time Switching from iGfx to dGfx */
> > > > +     if (supported & BIT(20)) {
> > > > +             obj = acpi_evaluate_dsm(dhandle, &intel_dsm_guid2,
> > > > +                                     INTEL_DSM_REVISION_ID,
> > > > +                                     INTEL_DSM_FN_DP_IN_SWITCH_TO_DGFX,
> > > > +                                     NULL);
> > > > +             if (obj)
> > > > +                     ACPI_FREE(obj);
> > > > +     }
> > > >  }
> > > > 
> > > >  /*
> > > 
> > > --
> > > Jani Nikula, Intel Open Source Graphics Center
> > 
> 

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

