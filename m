Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF981C5DA4
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 18:32:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D2316E7E2;
	Tue,  5 May 2020 16:32:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ADD56E207
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 12:07:12 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id r16so1556904edw.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 May 2020 05:07:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Y7qeT7qNAd4XLCZCkjNhcCvSdRKn0lUufOojlFjn+TM=;
 b=oyCtifvG+jaK07WIefAH9lHmeLXFCEDZie7Sj1afw6QdnSzPfb4KmrUhnzgtw/TR5m
 HHydKBnk35VybYMA0lg/7DAUh6IVy8ip5++YbWPwzJcffgkwkwPeX8oDEMDVpUhh99ns
 uGUrklieTGj8F4aKutpk6UNVjsHkX5eNI1kjLVx6Q9OjW6SBzxhSDAUQMtZ88sJ62vQR
 9s4zfYVuHyuNlwd5blLhy81sqw7DqnQqz74BedKZTWxL3Yz/3rMgcEQsoE+dETpFiCoy
 geiJbE5dgAG777ZEMp+nOieWHUSMIRhVWWfTkShWCF2kaCxRKJJx4cCYOUP+6BIDfa/y
 o0KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y7qeT7qNAd4XLCZCkjNhcCvSdRKn0lUufOojlFjn+TM=;
 b=UrwMNoa+1I2ijGBydkTe376zVdoTBbWPmrT9fH2LJ1r4mce8GxO/PJlyh7po5/YL7f
 9XQxSF6VeAN+9S3urntNqkouvcLwy//CxAZhgSLjiLYqr56gyZmOLFPE3ZMptbw0/btN
 Ciubbi5ofH91Qrlf83M8vTx04uazHpcr0xBC7WvCbq3qqI32oZl1/uljbdXmkktr4JEg
 v/+dG7tkV0hHKqTaYnk2wrh8sOkzasZzk3X8ixImLzyBphfC0k9PDUI5Z/BvWx8JE2sB
 KAyU5/Fh+NPqi0Z+FSldIsY8sVuLa2suQ6mAZb5inl8YfsGMAD8+70j+vJdrU71sSN+n
 +SPQ==
X-Gm-Message-State: AGi0PuYTjIge4ZIE7M1Xut+4g4v66ZjX9sj5I2LfSQkvOvUCpwwfEVqL
 7cxHG94gQonnAtOXd23qaAd1NGklOODU5ed2+tw=
X-Google-Smtp-Source: APiQypKNkfVq+DDZe3wInbxMUTXIsD9VFtFaWnebXRMCfHpq+iDczmc9KmFvKtTm9M69gFvacwUAcpghvVj8juC+6IU=
X-Received: by 2002:a05:6402:1fc:: with SMTP id
 i28mr2226158edy.18.1588680428398; 
 Tue, 05 May 2020 05:07:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200504123524.7731-1-oliver.barta@aptiv.com>
 <20200505073809.GA24093@intel.com>
In-Reply-To: <20200505073809.GA24093@intel.com>
From: Oliver Barta <o.barta89@gmail.com>
Date: Tue, 5 May 2020 14:06:51 +0200
Message-ID: <CALJK04P5A0TV=eQ3QnmXNGbe76i5eUB+hdDxtTkyhV8kfpPeNQ@mail.gmail.com>
To: Ramalingam C <ramalingam.c@intel.com>
X-Mailman-Approved-At: Tue, 05 May 2020 16:32:36 +0000
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
 Chris Wilson <chris@chris-wilson.co.uk>, Sean Paul <seanpaul@chromium.org>,
 Oliver Barta <oliver.barta@aptiv.com>,
 Ravisankar Madasamy <ravisankar.madasamy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 5, 2020 at 9:38 AM Ramalingam C <ramalingam.c@intel.com> wrote:
>
> On 2020-05-04 at 14:35:24 +0200, Oliver Barta wrote:
> > From: Oliver Barta <oliver.barta@aptiv.com>
> >
> > A single Ri mismatch doesn't automatically mean that the link integrity
> > is broken. Update and check of Ri and Ri' are done asynchronously. In
> > case an update happens just between the read of Ri' and the check against
> > Ri there will be a mismatch even if the link integrity is fine otherwise.
>
> Thanks for working on this. Btw, did you face this sporadic link check
> failure or theoretically you are fixing it?
>
> IMO this change will rule out possible sporadic link check failures as
> mentioned in the commit msg. Though I haven't faced this issue at my
> testings.
>
> Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
>

I found it by code inspection, the probability for this to happen is
very low. In order to test the patch I'm decreasing the value of
DRM_HDCP_CHECK_PERIOD_MS to just a few ms. Once you do that it happens
every few seconds.

Thanks,
Oliver

> >
> > Signed-off-by: Oliver Barta <oliver.barta@aptiv.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdmi.c | 19 ++++++++++++++++---
> >  1 file changed, 16 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index 010f37240710..3156fde392f2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -1540,7 +1540,7 @@ int intel_hdmi_hdcp_toggle_signalling(struct intel_digital_port *intel_dig_port,
> >  }
> >
> >  static
> > -bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
> > +bool intel_hdmi_hdcp_check_link_once(struct intel_digital_port *intel_dig_port)
> >  {
> >       struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
> >       struct intel_connector *connector =
> > @@ -1563,8 +1563,7 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
> >       if (wait_for((intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)) &
> >                     (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC)) ==
> >                    (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1)) {
> > -             drm_err(&i915->drm,
> > -                     "Ri' mismatch detected, link check failed (%x)\n",
> > +             drm_dbg_kms(&i915->drm, "Ri' mismatch detected (%x)\n",
> >                       intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder,
> >                                                       port)));
> >               return false;
> > @@ -1572,6 +1571,20 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
> >       return true;
> >  }
> >
> > +static
> > +bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
> > +{
> > +     struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
> > +     int retry;
> > +
> > +     for (retry = 0; retry < 3; retry++)
> > +             if (intel_hdmi_hdcp_check_link_once(intel_dig_port))
> > +                     return true;
> > +
> > +     drm_err(&i915->drm, "Link check failed\n");
> > +     return false;
> > +}
> > +
> >  struct hdcp2_hdmi_msg_timeout {
> >       u8 msg_id;
> >       u16 timeout;
> > --
> > 2.20.1
> >
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
