Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D27461C5DA7
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 18:32:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A7C16E7E5;
	Tue,  5 May 2020 16:32:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66B966E554
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 07:27:49 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id f12so930925edn.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 May 2020 00:27:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=662qM0PS3uWGQuroRV2WQUYJ0E5+YLCW7yDli6cu13k=;
 b=DZNmWKWkp0uw05x8wjqL2yM2xCduC/OqMBHsd2xLwJd4/t1jJNaSrEY5gqWxdPK6mC
 MTswzgDUMD0TiWYOEzXRt/Hyt4pyLDjb8aOpllcjN4aGwlNFWbJqF/gMeK1ZmtyUrxoj
 h2K4yg7OnkM+6WhAfI0t942ei43WsNMWPTU2T3g+rwti3aV6EOzfXunPC+b1VwE6dnuW
 O1Wqww0qrJ2XpkQka4NTzSZFzDcuJDeYop5hnP9N1Q9sgHvlwakkpnf/gNPYjGncmOiZ
 UXOJMytzTh+JRB9MqLSoRrdFxaCM5bJbB7auWlB7NY+bj3KGKtYLoufKR2hHYVTlPr+W
 igYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=662qM0PS3uWGQuroRV2WQUYJ0E5+YLCW7yDli6cu13k=;
 b=m4wdWHjWKzIS+JGOKOpmPFKuhCGirjPMuKcf3+LwJ8VB+479djF2Tl1vauVZrvPbnV
 EglpAVyI1UVCC0KjLIKOoiXF36sNMApbkTn9flhp5cpen+rSz95qqSUgeSE+fVael17Q
 Rwz+T5BAE4nWBomfyOlVPydCw5Yp2mnlK2L/6Vjrbi8pnVrBJduzzX5txAimR5qPrmg5
 f+OFGV4xSZsTfqCFLNJNvXdyssOPoA1XMnGdhADib+ZCK+eVNLPpR7nHhUc0mygx4Ylp
 Q1IAvbbOreFkPkj2aXdiXJ0VX1gz+izGxZAvnzWEOEvmLx7+QR6l/B7KCnpO5plWCROL
 PNcA==
X-Gm-Message-State: AGi0PuZbgv7GceWTRi/qiUx1hkQ1h3mG1mR1ZjKDzHT5HCcuXhQdcpxA
 +DBfsz1TfcFpVZeTWMXd/xE/C1FZsXieY/UpWvM=
X-Google-Smtp-Source: APiQypJN36lFIwM6yDg7qw2XmSb9N1LBXscihHRY8GWB4qCzVmizo9ng7s1ydRy1YGCNOUhFWv0M9ElOHyvOP6zCd2I=
X-Received: by 2002:aa7:de0b:: with SMTP id h11mr1393844edv.133.1588663668002; 
 Tue, 05 May 2020 00:27:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200504123524.7731-1-oliver.barta@aptiv.com>
 <CAMavQKJezSBt_KX_miWOums-CXy4iuxrCmoOgMYfSposiaGN5w@mail.gmail.com>
In-Reply-To: <CAMavQKJezSBt_KX_miWOums-CXy4iuxrCmoOgMYfSposiaGN5w@mail.gmail.com>
From: Oliver Barta <o.barta89@gmail.com>
Date: Tue, 5 May 2020 09:27:31 +0200
Message-ID: <CALJK04PXY-4mAoaQZ8UAv=6LgD6AYpbNHFHLn0HxTGvNG6EGwg@mail.gmail.com>
To: Sean Paul <sean@poorly.run>
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
 Ravisankar Madasamy <ravisankar.madasamy@intel.com>,
 Sean Paul <seanpaul@chromium.org>, Oliver Barta <oliver.barta@aptiv.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 4, 2020 at 10:24 PM Sean Paul <sean@poorly.run> wrote:
>
> On Mon, May 4, 2020 at 1:32 PM Oliver Barta <o.barta89@gmail.com> wrote:
> >
> > From: Oliver Barta <oliver.barta@aptiv.com>
> >
> > A single Ri mismatch doesn't automatically mean that the link integrity
> > is broken. Update and check of Ri and Ri' are done asynchronously. In
> > case an update happens just between the read of Ri' and the check against
> > Ri there will be a mismatch even if the link integrity is fine otherwise.
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
> >         struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
> >         struct intel_connector *connector =
> > @@ -1563,8 +1563,7 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
> >         if (wait_for((intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)) &
> >                       (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC)) ==
> >                      (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1)) {
>
> Why doesn't the wait_for catch this?
>
> Sean
>

Hello Sean,

thank you for having a look on my patch. The wait_for can't catch this
because it is Ri' which is outdated compared to Ri. Ri' however needs
to be read over DDC interface which is done only once during the check
sequence. It is not updated during the waiting time.

Oliver

> > -               drm_err(&i915->drm,
> > -                       "Ri' mismatch detected, link check failed (%x)\n",
> > +               drm_dbg_kms(&i915->drm, "Ri' mismatch detected (%x)\n",
> >                         intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder,
> >                                                         port)));
> >                 return false;
> > @@ -1572,6 +1571,20 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
> >         return true;
> >  }
> >
> > +static
> > +bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
> > +{
> > +       struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
> > +       int retry;
> > +
> > +       for (retry = 0; retry < 3; retry++)
> > +               if (intel_hdmi_hdcp_check_link_once(intel_dig_port))
> > +                       return true;
> > +
> > +       drm_err(&i915->drm, "Link check failed\n");
> > +       return false;
> > +}
> > +
> >  struct hdcp2_hdmi_msg_timeout {
> >         u8 msg_id;
> >         u16 timeout;
> > --
> > 2.20.1
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
