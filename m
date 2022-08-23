Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CE959DD56
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 14:28:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE88110E797;
	Tue, 23 Aug 2022 12:27:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA47D10FE63
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 12:27:35 +0000 (UTC)
Received: by mail-lf1-x12d.google.com with SMTP id m3so13772463lfg.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 05:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc;
 bh=BgLcHHZg3HSTNtp4Dxlfy0KbhwXSwqY9W/etQBzNVqE=;
 b=ov4BhshY2+n13w/3iL+QFip5jxVitTTwGuwwQF+IcHQTKIUXOCNzLT5z2zfCpcA0t4
 yxUbP1iSYGvz0+NPhRu+YgIx+DUpjZ7VRIBom8s1OeZH0Ui+XkI5nn+ogVM8Cg5ZSvyQ
 W39lfdOQqUcFMFZgT2n/E8NQrhmDxmjyTyCdXRn1iqZ5A775M2lVQ5V8xzYvngDzimBN
 ZkmvyU48X4Jj4x8LLaJ5QJ3R9OkCIdfIShRNHNS8m4UEDb0Bpve6adFOlRFzVsXO4yIM
 isLXU4lt2I6izKdu+EeSxMlupLg59vin6TpTeEcnNCa9XaTxOf8/zlL1s8sir4Flcic/
 Kwfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=BgLcHHZg3HSTNtp4Dxlfy0KbhwXSwqY9W/etQBzNVqE=;
 b=atbdGePEMYmo/X8NRJZcE4IM3MinTyMtF7z7DNDP0l1SYlwzLXTw1iGdiTMlyqtYq4
 NFnw7GIMZ/Q4lkH/dJZj7aCAynzAUDf7a7KBViGfs+41NiI00Yys3WIcxCbobOtGl+9v
 Xpg9+IWl0/niBLNP+nrI4l9qtVbB1esmiqkIfQniI1hHP3Gg1XM3PcPl85Ibfyx6g5W0
 xPHIERgbseKO17uEXNihQ0EQCZq9UJB00cUayYYR/xg7Ka4KsCUFDgA8e34vmurfGwY9
 gT0lgKhs8u6ru0DAVNc5MVWLMUWdspbGv8674VqACsBOrSurb53zv/kaP1a90HW3VR61
 lNRg==
X-Gm-Message-State: ACgBeo3R8F6cFtYemzeWI+Y+stgATW9OUW+ljxbwIFEOxkA/jFg+PPqi
 UAbDLkM3VYJt/ik8lLwh1VIB9GBzZo6Z5TBIobVrByEcxsMoUA==
X-Google-Smtp-Source: AA6agR7MP3bEexz4RDvbjYHTimzHgYLg8lWwdBdRuVKjyuZhl1CKmSOrmBWUXOctNLvlogmxGvnTLvFgoaRlM0HO1zg=
X-Received: by 2002:a05:6512:1312:b0:492:e14d:54d4 with SMTP id
 x18-20020a056512131200b00492e14d54d4mr3665800lfu.469.1661257653853; Tue, 23
 Aug 2022 05:27:33 -0700 (PDT)
MIME-Version: 1.0
References: <20220815080907.3229449-1-jani.nikula@intel.com>
In-Reply-To: <20220815080907.3229449-1-jani.nikula@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 23 Aug 2022 13:27:06 +0100
Message-ID: <CAM0jSHMb48D58NhZ_S8T2k69Pi2DKaeYAQr7D0_06Uqg+xWUFg@mail.gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH] drm/i915/utils: remove unused
 KBps/MBps/GBps macros
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 15 Aug 2022 at 09:09, Jani Nikula <jani.nikula@intel.com> wrote:
>
> Remove unused macros. If needed again, such macros belong in
> <linux/units.h>.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_utils.h | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> index c10d68cdc3ca..6c14d13364bf 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -360,10 +360,6 @@ wait_remaining_ms_from_jiffies(unsigned long timestamp_jiffies, int to_wait_ms)
>  #define KHz(x) (1000 * (x))
>  #define MHz(x) KHz(1000 * (x))
>
> -#define KBps(x) (1000 * (x))
> -#define MBps(x) KBps(1000 * (x))
> -#define GBps(x) ((u64)1000 * MBps((x)))
> -
>  void add_taint_for_CI(struct drm_i915_private *i915, unsigned int taint);
>  static inline void __add_taint_for_CI(unsigned int taint)
>  {
> --
> 2.34.1
>
