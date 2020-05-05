Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 335DC1C5D64
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 18:23:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 048B489E98;
	Tue,  5 May 2020 16:23:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com
 [IPv6:2607:f8b0:4864:20::143])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1C3189E98
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 16:23:20 +0000 (UTC)
Received: by mail-il1-x143.google.com with SMTP id r2so1756800ilo.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 May 2020 09:23:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SNI3KTvd4bEpsmHwWBINNbNgRQJiwUmdXQ0r1NaIKZY=;
 b=SaSbiS4c2CZeSFCaUr9r0jWfcA1U6aA99aIIIb/9pVC9P16DRDZlzfNCrvpE4r+3qN
 kZ+JZK/ManqZ3buriaNS7EpRteXYlS6muFkrWT0HQz4eXd0phbYibmjzSQMiDijq83HD
 o514aNkJPlhsmIBpx3mZcsU1Rwf/qQCoMdLprCdxIFATErxzzIFkxdMTGjcGuVy32xZw
 enxcTzONXdx/k58hgKn3ml5u5R8/JEV82ZhbkSWhs3NyCGOxvIRHl5yZeyHL9JmOkOG2
 BaiYN+OKH5LbE2wF74hqdkmllOkS6JQF8S1DWbHb3cDDCgomCQdgYna3eTqmnDGu76xS
 avnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SNI3KTvd4bEpsmHwWBINNbNgRQJiwUmdXQ0r1NaIKZY=;
 b=tVMzJsLPRuOfCJRxPXagKy++o8ZscO/SdknwXIqrdlV8+17OLkpd6rjmDF9T0Kb2LX
 PbUO+DowryKSZadBn4hZ97s1N1L6FWWESM4dgt3eywg7InWesT3JIReHnazkKPRrVoJR
 ihK0xxm7lr6vKAUKfCfKssAlmrf4y6na2xaLg3NGmQZdgsrCnPewgj01FfYfbpK4erD1
 ZOfyFdEF2htlkukMAA5oGGtOVOGbVWz6Ae8iGOMYkbYWMDOd7gxt97i1a6UuEQm7WJ9L
 Ye7WqhS/eVYTCQPpO3/Go9582tr9dJ7GQmMalLMz0imtYmgwlb0isKiuyMmHHt3jIEw2
 1xSg==
X-Gm-Message-State: AGi0Pua80Oeq1uw0MNhrFCkHhF33x4sZiXaRtZi15591bGXLnwxnNjU0
 obimZbK+shtvlOWdUU7PwFLiBVtZv9nLtzWBehKOrQ==
X-Google-Smtp-Source: APiQypK5XXsre1e+XQ++zINTQMQmOkBmyv1KsRIhJidNj3wnYsxOC1IOoBLmTHHK2RcEYyrK5pJBoeEJ4/C3ezv3HA0=
X-Received: by 2002:a05:6e02:c85:: with SMTP id
 b5mr4538107ile.165.1588695800041; 
 Tue, 05 May 2020 09:23:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200504123524.7731-1-oliver.barta@aptiv.com>
 <CAMavQKJezSBt_KX_miWOums-CXy4iuxrCmoOgMYfSposiaGN5w@mail.gmail.com>
 <CALJK04PXY-4mAoaQZ8UAv=6LgD6AYpbNHFHLn0HxTGvNG6EGwg@mail.gmail.com>
In-Reply-To: <CALJK04PXY-4mAoaQZ8UAv=6LgD6AYpbNHFHLn0HxTGvNG6EGwg@mail.gmail.com>
From: Sean Paul <sean@poorly.run>
Date: Tue, 5 May 2020 12:22:43 -0400
Message-ID: <CAMavQK+YWoJHAg9C9rWnaym+R4kpFt3eV__vQuN=seAEJ2zA9A@mail.gmail.com>
To: Oliver Barta <o.barta89@gmail.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: HDCP: retry link integrity check
 on failure
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Ravisankar Madasamy <ravisankar.madasamy@intel.com>,
 Sean Paul <seanpaul@chromium.org>, Oliver Barta <oliver.barta@aptiv.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 5, 2020 at 3:27 AM Oliver Barta <o.barta89@gmail.com> wrote:
>
> On Mon, May 4, 2020 at 10:24 PM Sean Paul <sean@poorly.run> wrote:
> >
> > On Mon, May 4, 2020 at 1:32 PM Oliver Barta <o.barta89@gmail.com> wrote:
> > >
> > > From: Oliver Barta <oliver.barta@aptiv.com>
> > >
> > > A single Ri mismatch doesn't automatically mean that the link integrity
> > > is broken. Update and check of Ri and Ri' are done asynchronously. In
> > > case an update happens just between the read of Ri' and the check against
> > > Ri there will be a mismatch even if the link integrity is fine otherwise.
> > >
> > > Signed-off-by: Oliver Barta <oliver.barta@aptiv.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_hdmi.c | 19 ++++++++++++++++---
> > >  1 file changed, 16 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > index 010f37240710..3156fde392f2 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > @@ -1540,7 +1540,7 @@ int intel_hdmi_hdcp_toggle_signalling(struct intel_digital_port *intel_dig_port,
> > >  }
> > >
> > >  static
> > > -bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
> > > +bool intel_hdmi_hdcp_check_link_once(struct intel_digital_port *intel_dig_port)
> > >  {
> > >         struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
> > >         struct intel_connector *connector =
> > > @@ -1563,8 +1563,7 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
> > >         if (wait_for((intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)) &
> > >                       (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC)) ==
> > >                      (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1)) {
> >
> > Why doesn't the wait_for catch this?
> >
> > Sean
> >
>
> Hello Sean,
>
> thank you for having a look on my patch. The wait_for can't catch this
> because it is Ri' which is outdated compared to Ri. Ri' however needs
> to be read over DDC interface which is done only once during the check
> sequence. It is not updated during the waiting time.
>

Ok, makes sense, thank you.

Reviewed-by: Sean Paul <sean@poorly.run>

> Oliver
>
> > > -               drm_err(&i915->drm,
> > > -                       "Ri' mismatch detected, link check failed (%x)\n",
> > > +               drm_dbg_kms(&i915->drm, "Ri' mismatch detected (%x)\n",
> > >                         intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder,
> > >                                                         port)));
> > >                 return false;
> > > @@ -1572,6 +1571,20 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
> > >         return true;
> > >  }
> > >
> > > +static
> > > +bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
> > > +{
> > > +       struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
> > > +       int retry;
> > > +
> > > +       for (retry = 0; retry < 3; retry++)
> > > +               if (intel_hdmi_hdcp_check_link_once(intel_dig_port))
> > > +                       return true;
> > > +
> > > +       drm_err(&i915->drm, "Link check failed\n");
> > > +       return false;
> > > +}
> > > +
> > >  struct hdcp2_hdmi_msg_timeout {
> > >         u8 msg_id;
> > >         u16 timeout;
> > > --
> > > 2.20.1
> > >
> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
