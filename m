Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5586539BFDA
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 20:48:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B15F36F8A2;
	Fri,  4 Jun 2021 18:48:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 002586F8A2
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 18:47:58 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id v22so14179918lfa.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Jun 2021 11:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1FpQJYCACu5ixG4nOY1XZoKqkzwvSt7+ZzKJ449kYAs=;
 b=WSH4EdsauyStBsoJHLcxIth+Orl+g1P82TYIxaDZx0ytbDR+o146hYaB+xQjQCsaXm
 5ttoRGTU/7/0XJsyYN95gLxCC9aYKVBhSVDpjbDiwjqVWyOpi0tKUzcdOc7eAGcSlqpu
 a6C4zWcGEzXtq967grMO2quMC4gipezyvwC+U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1FpQJYCACu5ixG4nOY1XZoKqkzwvSt7+ZzKJ449kYAs=;
 b=J4YXe9byJTluwVRQeozaAGkv6xgS4uDZvnJTCU4Que+EB0rKTqpMrUqoG3UVuTf8IF
 eXqk2UIkPJki/KuTy1XNccvGsjLMbcPrYism579tzbrwJOoewHtc+S9eUC4ZaEwCxNZj
 3z7JVn5hGWFzJS6nR+U719+7PDXc3yjBmRWuFmTeZuwRtO5dKtqBCkRrDo1hRV9luCmn
 RLEAnYn1PrbQGz3wMxidBhTFCC+9FRr39watmWLCESlXMvrkYkSRMUtZfm0uzWTuN5c5
 78Xyqm2HVYJaKkgVj1zngZVlG3DU4mfvny0avob48LZVzHXP+PYXzNBOUe8yj8xeZnyF
 cLhg==
X-Gm-Message-State: AOAM530gJmbJHqKwcLoNtmH09RjrNAN1aVp7xjt461orTAiMHnqBFFKt
 wkCRUMue5GNS1EUXMCk0Uio73xkv3QoqeVsib44u3A==
X-Google-Smtp-Source: ABdhPJwWPM0DL7d1wYb1yyS2wUK4UIoAcR5KKhVnJTVwCv4qZaXAcnvy6bIJi7uvbuajoYJjR8nWGnQfKlQvDpaKY30=
X-Received: by 2002:ac2:4144:: with SMTP id c4mr3609737lfi.425.1622832477468; 
 Fri, 04 Jun 2021 11:47:57 -0700 (PDT)
MIME-Version: 1.0
References: <20210601034116.8396-1-shawn.c.lee@intel.com>
In-Reply-To: <20210601034116.8396-1-shawn.c.lee@intel.com>
From: Mark Yacoub <markyacoub@chromium.org>
Date: Fri, 4 Jun 2021 14:47:46 -0400
Message-ID: <CAJUqKUpehfv4ua6MDdX4B-vThOhMZP+7WcZqEbppiYrN9dUdzw@mail.gmail.com>
To: Lee Shawn C <shawn.c.lee@intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/kms_dp_dsc: Transmit correct
 DRM connector structure.
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

On Mon, May 31, 2021 at 11:36 PM Lee Shawn C <shawn.c.lee@intel.com> wrote:
>
> 1. Pass one more parameter (current drmModeConnector) when
>    call "run_test()". Use it to retrieve proper connector_type.
> 2. SIGSEGV fault would happen due to "igt_output" did not
>    store properly in "data->output". Main funciton already
>    pass "igt_output" pointer into "run_test()" function.
>    Use this pointer instead of "data->output" to get display mode.
>
> Fixes: a1772be7dede ("tests/kms_dp_dsc: Bug fix for DP on Pipe A")
>
Tested on ChromeOS on TGL (Delbin) and JSL (Drawlat)
Tested-by: Mark Yacoub <markyacoub@chromium.org>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  tests/kms_dp_dsc.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/tests/kms_dp_dsc.c b/tests/kms_dp_dsc.c
> index ea7c9f4f72ce..e434384da369 100644
> --- a/tests/kms_dp_dsc.c
> +++ b/tests/kms_dp_dsc.c
> @@ -224,11 +224,11 @@ static void update_display(data_t *data, enum dsc_test_type test_type)
>  }
>
>  static void run_test(data_t *data, igt_output_t *output,
> -                    enum dsc_test_type test_type)
> +                    drmModeConnector *connector, enum dsc_test_type test_type)
>  {
>         enum pipe pipe;
>
> -       data->mode = igt_output_get_mode(data->output);
> +       data->mode = igt_output_get_mode(output);
>         igt_create_pattern_fb(data->drm_fd, data->mode->hdisplay,
>                               data->mode->vdisplay,
>                               DRM_FORMAT_XRGB8888,
> @@ -239,7 +239,7 @@ static void run_test(data_t *data, igt_output_t *output,
>                 if (is_i915_device(data->drm_fd)) {
>                         uint32_t devid = intel_get_drm_devid(data->drm_fd);
>
> -                       if (data->connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort &&
> +                       if (connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort &&
>                             data->pipe == PIPE_A && IS_GEN11(devid)) {
>                                 igt_debug("DSC not supported on Pipe A on external DP in Gen11 platforms\n");
>                                 continue;
> @@ -304,7 +304,7 @@ igt_main
>                                         continue;
>                                 }
>                                 test_conn_cnt++;
> -                               run_test(&data, output, test_basic_dsc_enable);
> +                               run_test(&data, output, connector, test_basic_dsc_enable);
>                         }
>                         igt_skip_on(test_conn_cnt == 0);
>                 }
> --
> 2.17.1
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
