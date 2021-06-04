Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E20839BF99
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 20:28:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77F5D6F898;
	Fri,  4 Jun 2021 18:28:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com
 [IPv6:2a00:1450:4864:20::22d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0ADA6F898
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 18:28:41 +0000 (UTC)
Received: by mail-lj1-x22d.google.com with SMTP id p20so12728552ljj.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Jun 2021 11:28:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qJfjfLKhx6XeYb2Tbbu80SEd5j6TptTyCku5xHFfT5s=;
 b=jxPgE+jbxfiVHyQo/nLEsvs194XwdwmZ1m+LIIqjos91b7z3rgJdrgP2L61VdFqk/k
 HnwEtC5hKrKeIJTNPFi5MPHSQktomVlZf8czIyEQFNnmmCU9s+Ypf1z3j/82v7hWQZK4
 3H1e1GpKqoeXCsEbTNfk546OQ9ib1KQHgWy6g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qJfjfLKhx6XeYb2Tbbu80SEd5j6TptTyCku5xHFfT5s=;
 b=lDTcUkz/9NHC+Ava2cIEmYUYujftkOijvbvZ5KaQWCHS8ygEvQKzc5BtwIg6Xcuqpf
 fzvAnkyH4QL1X4bkZFHitj9vLA3WOjo9WhsOG06UDPMOUdsqYF/4JMFc1Fhb47tyLkHA
 hHkixMU2rMlAlvW60fGlCbfDQbiF2ECyOutc+PBI8SfmNNfiQpYItHG3DkzzVpCyzUVS
 ocgTSh8J0nsaQxPBvRlEw5iBwUVRuuUNFmkdLzXyDUUaBX+4FeiMJT7NkjW53lLL7nux
 LaG4cDWk7wCVePdOIewxpasRtvYPnLu1+65iJipyBCmYwTM5NurSoyxhrkABNbdHxLXH
 UvQQ==
X-Gm-Message-State: AOAM531G00gBI0nei3kdrB9GpbGADdQssPcIqQVZ5HI9ZyvLaMREA+U2
 Ew/2ffrmuWr3Dbk6urnExfSpvs49iArWvlJcNbapgA==
X-Google-Smtp-Source: ABdhPJzkP52xtMNYhfi8H/hkInJyMmwd/QRQ2cJK973l743O4rO1XmU8DQHvuf5/JHNG//NVt+QjMUPg/jILkFWC1rM=
X-Received: by 2002:a2e:a373:: with SMTP id i19mr4340843ljn.49.1622831320312; 
 Fri, 04 Jun 2021 11:28:40 -0700 (PDT)
MIME-Version: 1.0
References: <1622176543-12759-1-git-send-email-vidya.srinivas@intel.com>
 <1622739294-14346-1-git-send-email-vidya.srinivas@intel.com>
In-Reply-To: <1622739294-14346-1-git-send-email-vidya.srinivas@intel.com>
From: Mark Yacoub <markyacoub@chromium.org>
Date: Fri, 4 Jun 2021 14:28:29 -0400
Message-ID: <CAJUqKUqu7QdTszSdDeNMRgVo3LfBd=qjYKb7rWsyVE60YwWYiw@mail.gmail.com>
To: Vidya Srinivas <vidya.srinivas@intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/kms_color: Remove gamma code
 from degamma tests
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

On Thu, Jun 3, 2021 at 1:04 PM Vidya Srinivas <vidya.srinivas@intel.com> wrote:
>
> CRC should be collected without degamma transformation
> and after drawing gradient with degamma LUT.
> This patch removes things which are not related to degamma
> and makes it similar to pipe gamma test.
>
Tested on ChromeOS on TGL (Delbin) and JSL (Drawlat)
Tested-by: Mark Yacoub <markyacoub@chromium.org>
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>  tests/kms_color.c | 16 ++++++----------
>  1 file changed, 6 insertions(+), 10 deletions(-)
>
> diff --git a/tests/kms_color.c b/tests/kms_color.c
> index 3a42532a5c27..2c9821cdecce 100644
> --- a/tests/kms_color.c
> +++ b/tests/kms_color.c
> @@ -31,8 +31,7 @@ static void test_pipe_degamma(data_t *data,
>  {
>         igt_output_t *output;
>         igt_display_t *display = &data->display;
> -       gamma_lut_t *degamma_linear, *degamma_full;
> -       gamma_lut_t *gamma_linear;
> +       gamma_lut_t *degamma_full;
>         color_t red_green_blue[] = {
>                 { 1.0, 0.0, 0.0 },
>                 { 0.0, 1.0, 0.0 },
> @@ -42,11 +41,8 @@ static void test_pipe_degamma(data_t *data,
>         igt_require(igt_pipe_obj_has_prop(primary->pipe, IGT_CRTC_DEGAMMA_LUT));
>         igt_require(igt_pipe_obj_has_prop(primary->pipe, IGT_CRTC_GAMMA_LUT));
>
> -       degamma_linear = generate_table(data->degamma_lut_size, 1.0);
>         degamma_full = generate_table_max(data->degamma_lut_size);
>
> -       gamma_linear = generate_table(data->gamma_lut_size, 1.0);
> -
>         for_each_valid_output_on_pipe(&data->display, primary->pipe->pipe, output) {
>                 drmModeModeInfo *mode;
>                 struct igt_fb fb_modeset, fb;
> @@ -75,8 +71,7 @@ static void test_pipe_degamma(data_t *data,
>
>                 igt_plane_set_fb(primary, &fb_modeset);
>                 disable_ctm(primary->pipe);
> -               disable_degamma(primary->pipe);
> -               set_gamma(data, primary->pipe, gamma_linear);
> +               set_degamma(data, primary->pipe, degamma_full);
>                 igt_display_commit(&data->display);
>
>                 /* Draw solid colors with no degamma transformation. */
> @@ -92,7 +87,6 @@ static void test_pipe_degamma(data_t *data,
>                  */
>                 paint_gradient_rectangles(data, mode, red_green_blue, &fb);
>                 igt_plane_set_fb(primary, &fb);
> -               set_degamma(data, primary->pipe, degamma_full);
>                 igt_display_commit(&data->display);
>                 igt_wait_for_vblank(data->drm_fd,
>                                 display->pipes[primary->pipe->pipe].crtc_offset);
> @@ -105,13 +99,13 @@ static void test_pipe_degamma(data_t *data,
>
>                 igt_plane_set_fb(primary, NULL);
>                 igt_output_set_pipe(output, PIPE_NONE);
> +               igt_display_commit2(&data->display, data->display.is_atomic ?
> +                                                       COMMIT_ATOMIC : COMMIT_LEGACY);
>                 igt_remove_fb(data->drm_fd, &fb);
>                 igt_remove_fb(data->drm_fd, &fb_modeset);
>         }
>
> -       free_lut(degamma_linear);
>         free_lut(degamma_full);
> -       free_lut(gamma_linear);
>  }
>
>  /*
> @@ -191,6 +185,8 @@ static void test_pipe_gamma(data_t *data,
>
>                 igt_plane_set_fb(primary, NULL);
>                 igt_output_set_pipe(output, PIPE_NONE);
> +               igt_display_commit2(&data->display, data->display.is_atomic ?
> +                                                       COMMIT_ATOMIC : COMMIT_LEGACY);
>                 igt_remove_fb(data->drm_fd, &fb);
>                 igt_remove_fb(data->drm_fd, &fb_modeset);
>         }
> --
> 2.7.4
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
