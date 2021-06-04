Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B9539BFE5
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 20:50:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62A4A6F8A3;
	Fri,  4 Jun 2021 18:50:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAAB26E252
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 18:50:24 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id f30so15568160lfj.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Jun 2021 11:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nEXgvCMo9WTLs7kL4lbNpIEMBy8O7bBVKP07NstWIdE=;
 b=NyLEzNt7BL2X11T3iKfMhln+6pptqlTdqOLycNBV6YdJXkyk0tepxRNo3gseLvFYtL
 soan/fxIj58QZ4vIQcSo3LpSXTAb3EglfbvC4lRFf8oUk5UmFRhjaFxYMDyiuZ85aZpl
 cb+QkVTinmlOOnE1HRSWzx78r74pr4/KKHCEg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nEXgvCMo9WTLs7kL4lbNpIEMBy8O7bBVKP07NstWIdE=;
 b=fALJCh21TBrOBen1uDQ1NQ3E25YUh/bV1t1iN0u+0AFsCEdWv9/C5P4pTNXwMKCO7Q
 4XsVFRo8lEoyL/u7KH8mgNapnikwn2Spen+P0Qktg4WulCsgFRmxL5aSEVU8t9sLHElb
 s3bb+pUQQGWWcGfsNXBTguFwG8kkeWassE8RWArXkknsPFdzqWICc1zochlQvpIkiL2d
 HW1kucVYHfbaYIkvOZYpTtGYnCJ/Et7e6P4p8FKNn2bxOttwClr4QaiS+VCz4ft7GmkB
 XjaG+ixT+oMOg+dyApxpPCQDZFlpYZ6CPXe0x6dfKGkXMoZ5qTq/g4dtYruuwZhA+8Gn
 voEg==
X-Gm-Message-State: AOAM533M6hYpxdm8nsGp6ZYgUAfRqH9qf2bKSMW+cAmy73bC43A5n/sx
 GRF2pi/sJB1nc+ht3lLKsRTHhFqfrI1WBC5Zfks3kw==
X-Google-Smtp-Source: ABdhPJxCNq90RfhzVP7zMGBR/feNJjARhD4J2yd4l523Y3uKab7HDg0+6m+cp2YuSdpJXBzWJAvAh+Gm1ZdXy6rBH6E=
X-Received: by 2002:a05:6512:3c86:: with SMTP id
 h6mr3685896lfv.366.1622832623247; 
 Fri, 04 Jun 2021 11:50:23 -0700 (PDT)
MIME-Version: 1.0
References: <1622176025-12499-1-git-send-email-vidya.srinivas@intel.com>
In-Reply-To: <1622176025-12499-1-git-send-email-vidya.srinivas@intel.com>
From: Mark Yacoub <markyacoub@chromium.org>
Date: Fri, 4 Jun 2021 14:50:12 -0400
Message-ID: <CAJUqKUpEJZXGLcktaS8Jaaf-N0pPpjKP0Fi4UjmBx+Zs_DrvdQ@mail.gmail.com>
To: Vidya Srinivas <vidya.srinivas@intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_big_fb: Wait for
 vblank before collecting CRC
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 charlton.lin@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 28, 2021 at 12:36 AM Vidya Srinivas
<vidya.srinivas@intel.com> wrote:
>
> Without wait for vblank, CRC mismatch is seen
> between big and small CRC on few Gen11 systems.
>
Tested on ChromeOS on JSL (Drawlat).
Tested-by: Mark Yacoub <markyacoub@chromium.org>
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>  tests/kms_big_fb.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/tests/kms_big_fb.c b/tests/kms_big_fb.c
> index b35727a09bd0..f90363c3beb2 100644
> --- a/tests/kms_big_fb.c
> +++ b/tests/kms_big_fb.c
> @@ -254,6 +254,7 @@ static void unset_lut(data_t *data)
>  static bool test_plane(data_t *data)
>  {
>         igt_plane_t *plane = data->plane;
> +       igt_display_t *display = &data->display;
>         struct igt_fb *small_fb = &data->small_fb;
>         struct igt_fb *big_fb = &data->big_fb;
>         int w = data->big_fb_width - small_fb->width;
> @@ -337,16 +338,17 @@ static bool test_plane(data_t *data)
>                 igt_display_commit2(&data->display, data->display.is_atomic ?
>                                     COMMIT_ATOMIC : COMMIT_UNIVERSAL);
>
> -
> +               igt_wait_for_vblank(data->drm_fd, display->pipes[data->pipe].crtc_offset);
>                 igt_pipe_crc_collect_crc(data->pipe_crc, &small_crc);
>
>                 igt_plane_set_fb(plane, big_fb);
>                 igt_fb_set_position(big_fb, plane, x, y);
>                 igt_fb_set_size(big_fb, plane, small_fb->width, small_fb->height);
> +
>                 igt_plane_set_size(plane, data->width, data->height);
>                 igt_display_commit2(&data->display, data->display.is_atomic ?
>                                     COMMIT_ATOMIC : COMMIT_UNIVERSAL);
> -
> +               igt_wait_for_vblank(data->drm_fd, display->pipes[data->pipe].crtc_offset);
>                 igt_pipe_crc_collect_crc(data->pipe_crc, &big_crc);
>
>                 igt_plane_set_fb(plane, NULL);
> --
> 2.7.4
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
