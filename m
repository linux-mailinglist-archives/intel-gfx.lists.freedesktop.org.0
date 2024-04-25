Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBA58B28ED
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Apr 2024 21:17:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C13E11A7E8;
	Thu, 25 Apr 2024 19:17:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="JsJ7v68Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24642113885
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Apr 2024 19:17:52 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id
 ffacd0b85a97d-349545c3eb8so842662f8f.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Apr 2024 12:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1714072670; x=1714677470;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=TORP8JmPLsgmNgoZFGOZHT7MTm2YWpfB21iCEYUVT4g=;
 b=JsJ7v68Y5c3XR7iGkCerY5igF38KUHUIZXvy1GX22Rn1aXlv+DUDgWdpRmIUrnUW7U
 mBJNljHEb3/1eWsOVo/MOKuobIwORdbVjYG7fTinU7TebcSbnO1NR+jOqV+hMyxzkIR4
 dMPwzOfqBfVdyij6sm0XHilHcCe8iMvSvnrb8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714072670; x=1714677470;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=TORP8JmPLsgmNgoZFGOZHT7MTm2YWpfB21iCEYUVT4g=;
 b=mxrON+gK6pDmDAQ9o+RpQWO1LeRZpE3kN8XDh/uFuKqehYyNfuRbIAZhdY27WTblNv
 4XYG3Gptd7Fn2yZSeqLMF35PEReLkwUp2VPStVqTBGIzkk9Bsc1wXQS2sYPME4LTeQcd
 zHUDiuaEM84pCzV7FD8H/sGhXBgJ9xDKuZKxzNHbbBQP7BHo7H0T+yHm5prjm1mu1ye9
 yYtv0YI/u+V8HTpZDyZMk9dFdpTJuPoDUcs82JOMiS3De8enj5sFyir4HKV8CkBw+4oL
 +B17J7l9fokeeIjvdoduWAWsdI5h71vcvt24W43jQbIDL0U+kq0qv5eM7xOMM39mPray
 CtPQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVFT8Y6YiXIKsm8qhD9xsjYN0CigAO7DVbIy31cXT2opFilqVYwmNGZ/NQq2XDYvlTHM2Mb9jBNEr7DANXV7ABaY+v8PT67bKlkcHUqKqIP
X-Gm-Message-State: AOJu0Yyly1euqX3mOg56eCv3OnJ6RjvF08+tPV7VeZ6H7PDFcL9java+
 dB3tjskg7AS2GVLM8te8Gn1Xa+GYlqRCcLbDdfHl733FfHkJbnl/S31sSao4RZoPDB4CmePSNIL
 JQHNatoWcOJOz12X70NPVDs53/jV0TMhGrf50
X-Google-Smtp-Source: AGHT+IG9K92yKqs8W2lMzB8dBG/qC9LIChhVCwedymWfAuz6JtrzHXcl/KngZ1SL5O3XeaVaoJnnaFweWnBNq4oSPXM=
X-Received: by 2002:a5d:54cd:0:b0:349:efb7:6532 with SMTP id
 x13-20020a5d54cd000000b00349efb76532mr249726wrv.28.1714072670453; Thu, 25 Apr
 2024 12:17:50 -0700 (PDT)
MIME-Version: 1.0
References: <20240221180622.v2.1.I0690aa3e96a83a43b3fc33f50395d334b2981826@changeid>
In-Reply-To: <20240221180622.v2.1.I0690aa3e96a83a43b3fc33f50395d334b2981826@changeid>
From: Karthikeyan Ramasubramanian <kramasub@chromium.org>
Date: Thu, 25 Apr 2024 13:17:39 -0600
Message-ID: <CAJZwx_=5AB=EmG7ANcH4aw6GvCPtb0K2h_SEx4x8xpWA2F0HJA@mail.gmail.com>
Subject: Re: [PATCH v2] drivers/i915/intel_bios: Fix parsing backlight BDB data
To: LKML <linux-kernel@vger.kernel.org>
Cc: stable@vger.kernel.org, Jani Nikula <jani.nikula@intel.com>, 
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 dri-devel@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

A kind reminder to review this change.

On Wed, Feb 21, 2024 at 6:06=E2=80=AFPM Karthikeyan Ramasubramanian
<kramasub@chromium.org> wrote:
>
> Starting BDB version 239, hdr_dpcd_refresh_timeout is introduced to
> backlight BDB data. Commit 700034566d68 ("drm/i915/bios: Define more BDB
> contents") updated the backlight BDB data accordingly. This broke the
> parsing of backlight BDB data in VBT for versions 236 - 238 (both
> inclusive) and hence the backlight controls are not responding on units
> with the concerned BDB version.
>
> backlight_control information has been present in backlight BDB data
> from at least BDB version 191 onwards, if not before. Hence this patch
> extracts the backlight_control information for BDB version 191 or newer.
> Tested on Chromebooks using Jasperlake SoC (reports bdb->version =3D 236)=
.
> Tested on Chromebooks using Raptorlake SoC (reports bdb->version =3D 251)=
.
>
> Fixes: 700034566d68 ("drm/i915/bios: Define more BDB contents")
> Cc: stable@vger.kernel.org
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Karthikeyan Ramasubramanian <kramasub@chromium.org>
> ---
>
> Changes in v2:
> - removed checking the block size of the backlight BDB data
>
>  drivers/gpu/drm/i915/display/intel_bios.c     | 19 ++++---------------
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  5 -----
>  2 files changed, 4 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index aa169b0055e97..8c1eb05fe77d2 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1042,22 +1042,11 @@ parse_lfp_backlight(struct drm_i915_private *i915=
,
>         panel->vbt.backlight.type =3D INTEL_BACKLIGHT_DISPLAY_DDI;
>         panel->vbt.backlight.controller =3D 0;
>         if (i915->display.vbt.version >=3D 191) {
> -               size_t exp_size;
> +               const struct lfp_backlight_control_method *method;
>
> -               if (i915->display.vbt.version >=3D 236)
> -                       exp_size =3D sizeof(struct bdb_lfp_backlight_data=
);
> -               else if (i915->display.vbt.version >=3D 234)
> -                       exp_size =3D EXP_BDB_LFP_BL_DATA_SIZE_REV_234;
> -               else
> -                       exp_size =3D EXP_BDB_LFP_BL_DATA_SIZE_REV_191;
> -
> -               if (get_blocksize(backlight_data) >=3D exp_size) {
> -                       const struct lfp_backlight_control_method *method=
;
> -
> -                       method =3D &backlight_data->backlight_control[pan=
el_type];
> -                       panel->vbt.backlight.type =3D method->type;
> -                       panel->vbt.backlight.controller =3D method->contr=
oller;
> -               }
> +               method =3D &backlight_data->backlight_control[panel_type]=
;
> +               panel->vbt.backlight.type =3D method->type;
> +               panel->vbt.backlight.controller =3D method->controller;
>         }
>
>         panel->vbt.backlight.pwm_freq_hz =3D entry->pwm_freq_hz;
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index a9f44abfc9fc2..b50cd0dcabda9 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -897,11 +897,6 @@ struct lfp_brightness_level {
>         u16 reserved;
>  } __packed;
>
> -#define EXP_BDB_LFP_BL_DATA_SIZE_REV_191 \
> -       offsetof(struct bdb_lfp_backlight_data, brightness_level)
> -#define EXP_BDB_LFP_BL_DATA_SIZE_REV_234 \
> -       offsetof(struct bdb_lfp_backlight_data, brightness_precision_bits=
)
> -
>  struct bdb_lfp_backlight_data {
>         u8 entry_size;
>         struct lfp_backlight_data_entry data[16];
> --
> 2.44.0.rc0.258.g7320e95886-goog
>
