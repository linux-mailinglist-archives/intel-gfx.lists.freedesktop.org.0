Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68DAC1C4812
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 22:25:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCC6E6E4A5;
	Mon,  4 May 2020 20:25:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com
 [IPv6:2607:f8b0:4864:20::143])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77DF56E4A5
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 20:24:59 +0000 (UTC)
Received: by mail-il1-x143.google.com with SMTP id x2so103213ilp.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 04 May 2020 13:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iiI9BStCiK8EZa9m9r7uSeyX2UpLEyYrTFtUKeAcohs=;
 b=ATRq7lixJYyaowrXXnvRXxl/rJ8PDpEAGFb2UwfwTbi2nruP5eonlh4FQMmf8IyJiB
 /IuE08rWYTugZScHs4zuN04HQNrjIbfsGEHYU1uKMV1oVyI9qnSUIFXW14jqjAoUJnZz
 byV1geUl5+AH715jlmwYnol8mpKN6LaiU2aXPc2mCwfD4i5psVrJA2N16TUwZz901xIX
 QQUIXs347VvEx0r8L0WI49MRObAT+8kxZw6tNIUIPe89kOHGBZ4LDQG/lcLlGlLf9dIq
 6H06Cl+txrx3N/KckTjz0r/P4ctZ+K0fGGJ6/oAYmSloShr7RB74GGlK9/pOFfWkVmHI
 hm4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iiI9BStCiK8EZa9m9r7uSeyX2UpLEyYrTFtUKeAcohs=;
 b=cA5rsJsdbemUUFVTjnIiQcA51x3jvi+y1CI7xwHKNhV9zEnfRj3ZGwQQIANMdp0dYn
 E0EEvcyFOQ3hQSpMSg4GSiXzso/UPc7ZTNIyGFEzC+Tg7vjsFVyN80LLwttwPSSF/uHQ
 JQLFJHq/on3eV9FWB+PVqKK691PEZD6LQhpEVViW05amirX+1kg5WlAk+YTu8WfJkhqU
 AepFVfeHQKx1HTmAHoliE5Db7KdxrGzMCMteIYRR0CRL53l51GXhw5m0u6PvGupkFgbj
 HN7M2NxvA0l7jyh6Sz8pJCWdPEKmlQj3BYjHsiZtUUCioXFi+50wlZwLOm3337EFbY1t
 Dc7Q==
X-Gm-Message-State: AGi0PubNELeXfLRqUXq1/lNZQBrtrFq+3Aj96Ql+gZbxBJprPi+Vf7aL
 R/gfbJ8a90ZMj9es7nS85+BfJ88OwdCljsdgnlPtEA==
X-Google-Smtp-Source: APiQypLOf3wMQ3nahgoDyfMir3kjV+R/s79pFgkc6bdApL7mNwp1WC2Nroz57ITxFPEaHV4SYvoT9xg7RewzzknLjcA=
X-Received: by 2002:a92:5f17:: with SMTP id t23mr243825ilb.2.1588623898789;
 Mon, 04 May 2020 13:24:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200504123524.7731-1-oliver.barta@aptiv.com>
In-Reply-To: <20200504123524.7731-1-oliver.barta@aptiv.com>
From: Sean Paul <sean@poorly.run>
Date: Mon, 4 May 2020 16:24:22 -0400
Message-ID: <CAMavQKJezSBt_KX_miWOums-CXy4iuxrCmoOgMYfSposiaGN5w@mail.gmail.com>
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

On Mon, May 4, 2020 at 1:32 PM Oliver Barta <o.barta89@gmail.com> wrote:
>
> From: Oliver Barta <oliver.barta@aptiv.com>
>
> A single Ri mismatch doesn't automatically mean that the link integrity
> is broken. Update and check of Ri and Ri' are done asynchronously. In
> case an update happens just between the read of Ri' and the check against
> Ri there will be a mismatch even if the link integrity is fine otherwise.
>
> Signed-off-by: Oliver Barta <oliver.barta@aptiv.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 19 ++++++++++++++++---
>  1 file changed, 16 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 010f37240710..3156fde392f2 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1540,7 +1540,7 @@ int intel_hdmi_hdcp_toggle_signalling(struct intel_digital_port *intel_dig_port,
>  }
>
>  static
> -bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
> +bool intel_hdmi_hdcp_check_link_once(struct intel_digital_port *intel_dig_port)
>  {
>         struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
>         struct intel_connector *connector =
> @@ -1563,8 +1563,7 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
>         if (wait_for((intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)) &
>                       (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC)) ==
>                      (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1)) {

Why doesn't the wait_for catch this?

Sean

> -               drm_err(&i915->drm,
> -                       "Ri' mismatch detected, link check failed (%x)\n",
> +               drm_dbg_kms(&i915->drm, "Ri' mismatch detected (%x)\n",
>                         intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder,
>                                                         port)));
>                 return false;
> @@ -1572,6 +1571,20 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
>         return true;
>  }
>
> +static
> +bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
> +{
> +       struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
> +       int retry;
> +
> +       for (retry = 0; retry < 3; retry++)
> +               if (intel_hdmi_hdcp_check_link_once(intel_dig_port))
> +                       return true;
> +
> +       drm_err(&i915->drm, "Link check failed\n");
> +       return false;
> +}
> +
>  struct hdcp2_hdmi_msg_timeout {
>         u8 msg_id;
>         u16 timeout;
> --
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
