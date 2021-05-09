Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 203DA377F9D
	for <lists+intel-gfx@lfdr.de>; Mon, 10 May 2021 11:41:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 081216E44C;
	Mon, 10 May 2021 09:41:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com
 [IPv6:2607:f8b0:4864:20::d2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1585E89EAE
 for <intel-gfx@lists.freedesktop.org>; Sun,  9 May 2021 23:20:19 +0000 (UTC)
Received: by mail-io1-xd2f.google.com with SMTP id o21so12683091iow.13
 for <intel-gfx@lists.freedesktop.org>; Sun, 09 May 2021 16:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bkkodwnCdAU48UvO9y0/V9XoTu/uQKyzxNYDNO8KRq4=;
 b=PzcwNtsDyTvjamCuXnR5F3wfitQnkD5U7s4W7TRuEiOO4acVOCA6LDH8wcCiWKG0S7
 7dy22gNoHksr9WXn/oXRIKH8ZyoZGnTaOPqJlbtHMaXSqFuGc0JXrphdrFdEiWOFI6QJ
 xwqLAyRaXePVoCCt0suUH1RaYfldDgXmzfgTR6fJxcRlyrPE/gF6yemKbbriqTE9np71
 lYzO3iYariBJXq4lKnzDTA8qoVdr5GNyEYMIz2jGxt0kSiW8M1j3bvBS2+umFbgSjBP7
 G+kaEYwqWlUc9YDHI/sq7V+3MJn5SNzAFkLVbsGx0ltll74dfkNSTu7x7ck+KIH7rN7d
 Ix9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bkkodwnCdAU48UvO9y0/V9XoTu/uQKyzxNYDNO8KRq4=;
 b=k+TCIw1Fv7/CPT4ShbZJuu/1Zj2mS0WXn8VGJyi0x2f1r4FzL8fDgJYpRKRlafEWge
 nVePaS+36ki6xZ/RdRiiPvwDLVzMD69FKCylv1nmwn7NH8a6XkB72iYzxyge5FoCtYKU
 +ufp27oIjPw6GIlAJ7KVAcAwJLcnQeECu/61PENvNm9VGrkhzvenx6obl8zufKklguF1
 Dgs/Aje8RmG5csqTak99AB4hsTXGJ6rv3b+8KkuCeIbtbWjM4igO4zfPSNGY9eS1FvBm
 N2jll8WHIO5IKogSIpgLWoS7bl1GWlNpADT6/vf5rNHXun5acMN45cxhEcwsLiNQJqHj
 oJzg==
X-Gm-Message-State: AOAM530TUWtYRXzPkNzrfurI6Z7ZVEHfR1FO7RYe5takIGEBSKpPNlbm
 m9JWbZP9GE3H5DhT0zvY1Re87JyGtG9iRtL+V4s=
X-Google-Smtp-Source: ABdhPJxVqyFHKasq9v2Y1K0qL+X2UZlzzIqXpos3LGOjDoyQkt4aDioHgmhu9BOAjGruQjOILiWnREyHE6MhQFvjCxg=
X-Received: by 2002:a05:6602:55:: with SMTP id
 z21mr4947092ioz.54.1620602418318; 
 Sun, 09 May 2021 16:20:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210509044330.4655-1-pauldzim@gmail.com>
In-Reply-To: <20210509044330.4655-1-pauldzim@gmail.com>
From: Paul Zimmerman <pauldzim@gmail.com>
Date: Sun, 9 May 2021 16:19:52 -0700
Message-ID: <CADBGO78C0T8dx9pgvim6oYd1K2DCvh8pctUwdWpgCP_VqRKbBQ@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
X-Mailman-Approved-At: Mon, 10 May 2021 09:41:14 +0000
Subject: Re: [Intel-gfx] [PATCH RFC] Revert "drm/i915: Try to use
 fast+narrow link on eDP again and fall back to the old max strategy on
 failure"
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, May 8, 2021 at 9:44 PM Paul Zimmerman <pauldzim@gmail.com> wrote:
>
> This reverts commit 2bbd6dba84d44219387df051a1c799b7bac46099.
>
> Since 5.12-rc2, my Dell XPS-15 laptop has had a blank screen on boot.
> The system seems to run fine other than having no display, I am able
> to ssh into the machine. I don't see anything interesting in the dmesg
> log. I bisected the problem down to this commit, and reverting it fixes
> the problem.
>
> Signed-off-by: Paul Zimmerman <pauldzim@gmail.com>

Replying to myself, to say that I just tested kernel 5.13-rc1, and the
problem still exists there, and the same revert fixes the problem.

- Paul

> ---
> I am attaching the dmesg log from 5.12.0 when the problem occurs. Any
> other debugging info you want me to provide?
>
>  .../drm/i915/display/intel_display_types.h    |  1 -
>  drivers/gpu/drm/i915/display/intel_dp.c       | 75 +++----------------
>  2 files changed, 9 insertions(+), 67 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 184ecbbcec99..196900100689 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1424,7 +1424,6 @@ struct intel_dp {
>         bool has_hdmi_sink;
>         bool has_audio;
>         bool reset_link_params;
> -       bool use_max_params;
>         u8 dpcd[DP_RECEIVER_CAP_SIZE];
>         u8 psr_dpcd[EDP_PSR_RECEIVER_CAP_SIZE];
>         u8 downstream_ports[DP_MAX_DOWNSTREAM_PORTS];
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 775d89b6c3fc..238ae1099132 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -480,13 +480,6 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
>                 return -1;
>         }
>
> -       if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
> -               drm_dbg_kms(&i915->drm,
> -                           "Retrying Link training for eDP with max parameters\n");
> -               intel_dp->use_max_params = true;
> -               return 0;
> -       }
> -
>         index = intel_dp_rate_index(intel_dp->common_rates,
>                                     intel_dp->num_common_rates,
>                                     link_rate);
> @@ -1174,44 +1167,6 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
>         return -EINVAL;
>  }
>
> -/* Optimize link config in order: max bpp, min lanes, min clock */
> -static int
> -intel_dp_compute_link_config_fast(struct intel_dp *intel_dp,
> -                                 struct intel_crtc_state *pipe_config,
> -                                 const struct link_config_limits *limits)
> -{
> -       const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
> -       int bpp, clock, lane_count;
> -       int mode_rate, link_clock, link_avail;
> -
> -       for (bpp = limits->max_bpp; bpp >= limits->min_bpp; bpp -= 2 * 3) {
> -               int output_bpp = intel_dp_output_bpp(pipe_config->output_format, bpp);
> -
> -               mode_rate = intel_dp_link_required(adjusted_mode->crtc_clock,
> -                                                  output_bpp);
> -
> -               for (lane_count = limits->min_lane_count;
> -                    lane_count <= limits->max_lane_count;
> -                    lane_count <<= 1) {
> -                       for (clock = limits->min_clock; clock <= limits->max_clock; clock++) {
> -                               link_clock = intel_dp->common_rates[clock];
> -                               link_avail = intel_dp_max_data_rate(link_clock,
> -                                                                   lane_count);
> -
> -                               if (mode_rate <= link_avail) {
> -                                       pipe_config->lane_count = lane_count;
> -                                       pipe_config->pipe_bpp = bpp;
> -                                       pipe_config->port_clock = link_clock;
> -
> -                                       return 0;
> -                               }
> -                       }
> -               }
> -       }
> -
> -       return -EINVAL;
> -}
> -
>  static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc)
>  {
>         int i, num_bpc;
> @@ -1435,14 +1390,13 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>         limits.min_bpp = intel_dp_min_bpp(pipe_config->output_format);
>         limits.max_bpp = intel_dp_max_bpp(intel_dp, pipe_config);
>
> -       if (intel_dp->use_max_params) {
> +       if (intel_dp_is_edp(intel_dp)) {
>                 /*
>                  * Use the maximum clock and number of lanes the eDP panel
> -                * advertizes being capable of in case the initial fast
> -                * optimal params failed us. The panels are generally
> +                * advertizes being capable of. The panels are generally
>                  * designed to support only a single clock and lane
> -                * configuration, and typically on older panels these
> -                * values correspond to the native resolution of the panel.
> +                * configuration, and typically these values correspond to the
> +                * native resolution of the panel.
>                  */
>                 limits.min_lane_count = limits.max_lane_count;
>                 limits.min_clock = limits.max_clock;
> @@ -1461,22 +1415,11 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>             intel_dp_can_bigjoiner(intel_dp))
>                 pipe_config->bigjoiner = true;
>
> -       if (intel_dp_is_edp(intel_dp))
> -               /*
> -                * Optimize for fast and narrow. eDP 1.3 section 3.3 and eDP 1.4
> -                * section A.1: "It is recommended that the minimum number of
> -                * lanes be used, using the minimum link rate allowed for that
> -                * lane configuration."
> -                *
> -                * Note that we fall back to the max clock and lane count for eDP
> -                * panels that fail with the fast optimal settings (see
> -                * intel_dp->use_max_params), in which case the fast vs. wide
> -                * choice doesn't matter.
> -                */
> -               ret = intel_dp_compute_link_config_fast(intel_dp, pipe_config, &limits);
> -       else
> -               /* Optimize for slow and wide. */
> -               ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config, &limits);
> +       /*
> +        * Optimize for slow and wide. This is the place to add alternative
> +        * optimization policy.
> +        */
> +       ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config, &limits);
>
>         /* enable compression if the mode doesn't fit available BW */
>         drm_dbg_kms(&i915->drm, "Force DSC en = %d\n", intel_dp->force_dsc_en);
> --
> 2.25.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
