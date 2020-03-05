Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BDC17A6CD
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 14:55:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6684B6E334;
	Thu,  5 Mar 2020 13:55:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A03B46EB80
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 08:14:33 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id dc19so5642842edb.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Mar 2020 00:14:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SvxbEt0L5nsDATjEGW6AZuNv1DhXG8nykAuawAwlE1g=;
 b=H+8ihrQYueopu3xtNRjU8DleqGzuH4zkXa7NN5FwcYPbz46PUevhOW3WggqPM9vVog
 oR54BSOo2vUtCB28exsGC1PrnBoyB1YjRIxp/pmfWWjsq8gPwf8tm/cyzANPioMx+aer
 WMpJsp2ckqI7IujAy2PE9IUNdVDMvjpMS76hsue9hWBpdzwe4Yluv3IhnF6YMRl2CcNy
 njOVb/vrEoesR7Hieat8MvqVkYmYA3J3aqoyw+oDN2z9ZRzD+9NEU1Qz2CB56OeXCzYq
 KC0i9DvjtteBXHqSTLVJTol6EjIiUdhMxgl1/5ngdnhFL997oEM3P9MGyBrohnKJ+4nO
 XcLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SvxbEt0L5nsDATjEGW6AZuNv1DhXG8nykAuawAwlE1g=;
 b=p7AceV246+Tl857muVWuWQRPujW0xZdKpYOwIdY4+I4t+VsUL41Gy1VjvjSYxO+y0I
 FI5emxKG9qJbQCvPUHN1O/VYmwiYOEwxWcGDH+090DM7wdNq4hy160CyxGaThWRUxWFe
 yGhJ7HCKeqy29cB7WtA7aR5sSJdfyRkcakXTF5K2NAyrJaacyn2yjyYPA/0z5gFb8jit
 pgIIY2Dw1v68BmRKGWoewjzxHcWfvGWgdZoS0uPjiUccitEV5aNEjc51dDyOYkFeU24w
 XXIgg9pN5dPr2csAQF6GwPB7bPvXUmI7ME/sV84LKbdRP3v9uRsS8lQQtzOB3ePEbaPX
 0mdA==
X-Gm-Message-State: ANhLgQ1hDkGdNQFp+tM1kKwlQw1vTqGKoBqQLrG4yxR9KJLSTbl6OJ2f
 xYTsJEWK80ndVTzf/8kn8L5t894amW7sIdmZVac=
X-Google-Smtp-Source: ADFU+vu6lk8LSfOny8s4cepr+cvu6sfGVS51e/22sqf2PBUMkHSdlkciy1aZGTFs2l/EJLz1wZwqQIjj5gZi7+R2LzU=
X-Received: by 2002:a17:906:3c5b:: with SMTP id
 i27mr6095231ejg.360.1583396071995; 
 Thu, 05 Mar 2020 00:14:31 -0800 (PST)
MIME-Version: 1.0
References: <20200229103922.4432-1-oliver.barta@aptiv.com>
 <20200303093256.GC20842@intel.com>
In-Reply-To: <20200303093256.GC20842@intel.com>
From: Oliver Barta <o.barta89@gmail.com>
Date: Thu, 5 Mar 2020 09:14:15 +0100
Message-ID: <CALJK04Mhbk8L4fVfCguSkRp8G2stoMXjdn_Ur=JMTRAjDXqUUw@mail.gmail.com>
To: Ramalingam C <ramalingam.c@intel.com>
X-Mailman-Approved-At: Thu, 05 Mar 2020 13:55:46 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: HDCP: fix Ri prime check done
 during link check
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Sean Paul <seanpaul@chromium.org>, Oliver Barta <oliver.barta@aptiv.com>,
 Ravisankar Madasamy <ravisankar.madasamy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 3, 2020 at 10:33 AM Ramalingam C <ramalingam.c@intel.com> wrote:
>
> On 2020-02-29 at 11:39:22 +0100, Oliver Barta wrote:
> > From: Oliver Barta <oliver.barta@aptiv.com>
> >
> > The check was always succeeding even in case of a mismatch due to the
> > HDCP_STATUS_ENC bit being set. Make sure both bits are actually set.
> >
> > Signed-off-by: Oliver Barta <oliver.barta@aptiv.com>
> Looks good to me. But we need to do same on intel_hdcp_auth(), where we
> check the R0 on authentication.
>
> -Ram
Thanks for review and your suggestion. I have created a separate patch as
the problem is a little bit different in intel_hdcp_auth(). See
https://patchwork.freedesktop.org/series/74271/

Oliver
> > Fixes: 2320175feb74 ("drm/i915: Implement HDCP for HDMI")
> > ---
> >  Submitted before as part of patch series
> >  https://patchwork.freedesktop.org/series/73961/
> >  For some reason the versioning got messed up.
> >  I marked the patch series as superseded and I'm
> >  starting all over. Sorry for spamming you.
> >
> >  drivers/gpu/drm/i915/display/intel_hdmi.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index 0ac9bdfbc094..ac4276157182 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -1536,7 +1536,8 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
> >       intel_de_write(i915, HDCP_RPRIME(i915, cpu_transcoder, port), ri.reg);
> >
> >       /* Wait for Ri prime match */
> > -     if (wait_for(intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)) &
> > +     if (wait_for((intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder,
> > +                  port)) & (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC)) ==
> >                    (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1)) {
> >               DRM_ERROR("Ri' mismatch detected, link check failed (%x)\n",
> >                         intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)));
> > --
> > 2.20.1
> >
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
