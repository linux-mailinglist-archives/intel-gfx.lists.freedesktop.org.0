Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B1442AE38
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Oct 2021 22:53:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6145389F19;
	Tue, 12 Oct 2021 20:53:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com
 [IPv6:2607:f8b0:4864:20::529])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34D5689EB4
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Oct 2021 20:53:29 +0000 (UTC)
Received: by mail-pg1-x529.google.com with SMTP id m21so226609pgu.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Oct 2021 13:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=niP7v3xFwLnCjLXmT0nzm06tTYa6qI3k7igZv8TEJsc=;
 b=MrnlfgVEgsrzhHRtZFc5utknl/ytW5WjQcYfTv2HnZ6fS9lKKuW+F42Nrbx+gHripS
 Xc2RIA6gaKDSc/bn3xBmR20a0BtY+7gzFpyZmggMd//w3Ub3xZ+2jCun1uq9tVGlgJIT
 sVMI8bJ+eODJIFrgH34toluuVDOHJLd8ha9UY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=niP7v3xFwLnCjLXmT0nzm06tTYa6qI3k7igZv8TEJsc=;
 b=qmwchODHm2eD6Ya7APWv3RF3hnzsZk42zvDLrpw9e6/iA9fR+pIdyEMAFzA5Dhq559
 Pfw7QeWsof/4o9XfFaxwBMsTH2JvJjyHpVM5Uk7g29RVg+83GrMpm1RRyD5w5wqRe2Hq
 /M/c6FauTsHn0rZSjwRYfYi+R8xN39X074HK9AxHIaaBavfTj5YezlfODCZIZV3zMV8v
 YV3xq/4yxkoAIkZZhcmThspY++lNCGJjh2f2ra6ce8Vr5qEFQOmV9B/zwtdyZFmj6M3X
 snDRf65q1yqs0CffhT0LZ/hGuXNVLLL8/n6TNXJIWJTgVOjfvDGK6rSHPHN326ioBcBV
 MPXA==
X-Gm-Message-State: AOAM533ipzWeAFQxiskceDqmlsD6zVpmxxjjQOGEGJWfqxTJoTyS7SMl
 MHUi2eNeFZ81iYgYckqUUFoS1IzHVtbQiQ==
X-Google-Smtp-Source: ABdhPJxXLDCh6V1BDhkPDb3Qdtq3mHNY43b9aJyuGdSphhL5fcJS6LG+z/ZL/pOdQ5Ej6xYPUaxTaQ==
X-Received: by 2002:a63:f05:: with SMTP id e5mr24310323pgl.226.1634072008545; 
 Tue, 12 Oct 2021 13:53:28 -0700 (PDT)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com.
 [209.85.210.179])
 by smtp.gmail.com with ESMTPSA id w19sm3782988pjy.9.2021.10.12.13.53.28
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 12 Oct 2021 13:53:28 -0700 (PDT)
Received: by mail-pf1-f179.google.com with SMTP id w6so541241pfd.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Oct 2021 13:53:28 -0700 (PDT)
X-Received: by 2002:a6b:f915:: with SMTP id j21mr25937447iog.98.1634071515111; 
 Tue, 12 Oct 2021 13:45:15 -0700 (PDT)
MIME-Version: 1.0
References: <20211006024018.320394-1-lyude@redhat.com>
 <20211006024018.320394-5-lyude@redhat.com>
In-Reply-To: <20211006024018.320394-5-lyude@redhat.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 12 Oct 2021 13:45:04 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WV15+qBBA8ZcgxwOQ=i_LHsytdrUWyqZHZZBwuJJ6CFQ@mail.gmail.com>
Message-ID: <CAD=FV=WV15+qBBA8ZcgxwOQ=i_LHsytdrUWyqZHZZBwuJJ6CFQ@mail.gmail.com>
To: Lyude Paul <lyude@redhat.com>
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>, 
 dri-devel <dri-devel@lists.freedesktop.org>, 
 "open list:DRM DRIVER FOR NVIDIA GEFORCE/QUADRO GPUS"
 <nouveau@lists.freedesktop.org>, Rajeev Nandan <rajeevny@codeaurora.org>, 
 Satadru Pramanik <satadru@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Sean Paul <seanpaul@chromium.org>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH v3 4/5] drm/dp,
 drm/i915: Add support for VESA backlights using PWM for brightness
 control
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Tue, Oct 5, 2021 at 7:41 PM Lyude Paul <lyude@redhat.com> wrote:
>
> @@ -1859,8 +1859,7 @@ drm_dp_sink_can_do_video_without_timing_msa(const u8 dpcd[DP_RECEIVER_CAP_SIZE])
>  static inline bool
>  drm_edp_backlight_supported(const u8 edp_dpcd[EDP_DISPLAY_CTL_CAP_SIZE])
>  {
> -       return (edp_dpcd[1] & DP_EDP_TCON_BACKLIGHT_ADJUSTMENT_CAP) &&
> -               (edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP);
> +       return !!(edp_dpcd[1] & DP_EDP_TCON_BACKLIGHT_ADJUSTMENT_CAP);
>  }

nit: I don't believe that the "!!" is needed in the above. C should
automatically handle this since the return type of the function is
"bool".

I've reviewed the generic (non-intel) code and it looks like a
reasonable approach to me.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
