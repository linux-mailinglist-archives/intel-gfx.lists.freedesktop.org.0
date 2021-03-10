Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C5E3349DF
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 22:38:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78D816EA6A;
	Wed, 10 Mar 2021 21:38:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7FDE6EA6A
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 21:38:02 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id e19so41821839ejt.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 13:38:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=49lTcl9+z8gB3/w364mtMHoHRS9BAnd5W8Tg+oEQqqs=;
 b=FZjizwThSsxnf8x5QljRL01V/HSFtwbkUQJxbuW5d7pqR5pCQXCIxizXnVb10vYbCK
 h12D/g/iafqyiKpLgMkqe6/snXL4YTtHCTjLuXei7wdNaoq3kE8uHqZFKwZvn5IFwEqL
 6SeaGr7bF8zznyNPrUexBYBDklZpp7VQubuNR69PAqiGbqGaDm8PMHbh2rM/QulZVLSq
 a8KFXV/KpnXw9BGQm9/MRmtzlF5fsGYq98K8FC6EUkEutvZWvveGFrYZS/NAELprDFPa
 lNY6wOHchUVTaE47Sov62kwqApP+LDpAC88fJK12VpLh1RKwTKGE7YGsfrdLErMSCz+h
 3p8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=49lTcl9+z8gB3/w364mtMHoHRS9BAnd5W8Tg+oEQqqs=;
 b=czb2GUBdFo6DYSHnpSjESfntwcC5D7wP+U4Wsrs+O7d3XG9n+79sc14pzbs4U4XRFM
 gh+ACR5Rln5MnawbqzP0Ppj9Ad80dAwvg/j9WATI4gTkJTiwV1YQI1q3NSsFz9q9n6Jv
 +rbV6LHXrUyy3BJ0koqBBxUlMj2i1lX371e7oW8fOTE9h/lAqFB+htpWBO52xOc47nwc
 JgXYsi3j/9IZcSAeKLbl1qSsx2DAZyDlHWh9XW6JqmNfRGFm420MZwcAD3N1Sh67iU3/
 vx2/iUEHUZ9PUKoEcy9M3DTUblSI8AvOT9eZYwI/7D7n7SaRlQy2qnMPC+ZVDv8Mk80o
 8HMQ==
X-Gm-Message-State: AOAM532JPEPJ/aWMXW9yV7XnETQQFFt9MeShyyDnadhpMy09mpgUkwId
 yNP+HcB1ml7FSv/E0FXQXo7TY3gYZZOvk+LRSZgRFw==
X-Google-Smtp-Source: ABdhPJwoKpUasGbp/uxSVI+0EiuyfT6PV5PwNyKq5lpB07VchYg1h4Xh7Z8gFHWJXtG9WEGS4E0nBzyLqKf3R3TP9Ic=
X-Received: by 2002:a17:906:a86:: with SMTP id y6mr456211ejf.354.1615412281386; 
 Wed, 10 Mar 2021 13:38:01 -0800 (PST)
MIME-Version: 1.0
References: <cover.1611354210.git.ashutosh.dixit@intel.com>
 <c66f9d344da63daf7530f29b442dc2e5ee1eb2b2.1611354210.git.ashutosh.dixit@intel.com>
In-Reply-To: <c66f9d344da63daf7530f29b442dc2e5ee1eb2b2.1611354210.git.ashutosh.dixit@intel.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Wed, 10 Mar 2021 15:37:50 -0600
Message-ID: <CAOFGe96_8nq2p73kgQ=0dOfEsZNNL0uKwRnTyhnnUU85aVyROQ@mail.gmail.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Start disabling pread/pwrite
 ioctl's for future platforms
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 22, 2021 at 4:40 PM Ashutosh Dixit <ashutosh.dixit@intel.com> wrote:
>
> The guidance for i915 at this time is to start phasing out pread/pwrite
> ioctl's, the rationale being (a) the functionality can be done entirely in
> userspace with a combination of mmap + memcpy, and (b) no existing user
> mode clients actually use the pread/pwrite interface.
>
> In this patch we disable these ioctls for dGfx platforms with the
> expectation that this will be done for all future platforms (both discrete
> and integrated). IGT changes which handle this kernel change have also been
> submitted [1].
>
> [1] https://patchwork.freedesktop.org/series/81384/
>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h          | 1 +
>  drivers/gpu/drm/i915/i915_gem.c          | 6 ++++++
>  drivers/gpu/drm/i915/i915_pci.c          | 3 ++-
>  drivers/gpu/drm/i915/intel_device_info.h | 1 +
>  4 files changed, 10 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 7efb501e22d2..66edffadf4a0 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1674,6 +1674,7 @@ tgl_stepping_get(struct drm_i915_private *dev_priv)
>  #define HAS_SECURE_BATCHES(dev_priv) (INTEL_GEN(dev_priv) < 6)
>  #define HAS_WT(dev_priv)       HAS_EDRAM(dev_priv)
>
> +#define HAS_PREAD_PWRITE(dev_priv)     (!INTEL_INFO(dev_priv)->no_pread_pwrite)
>  #define HWS_NEEDS_PHYSICAL(dev_priv)   (INTEL_INFO(dev_priv)->hws_needs_physical)
>
>  #define HAS_LOGICAL_RING_CONTEXTS(dev_priv) \
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index 9b04dff5eb32..9f3ef68fadf3 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -382,6 +382,9 @@ i915_gem_pread_ioctl(struct drm_device *dev, void *data,
>         struct drm_i915_gem_object *obj;
>         int ret;
>
> +       if (!HAS_PREAD_PWRITE(to_i915(dev)))
> +               return -EOPNOTSUPP;
> +
>         if (args->size == 0)
>                 return 0;
>
> @@ -687,6 +690,9 @@ i915_gem_pwrite_ioctl(struct drm_device *dev, void *data,
>         struct drm_i915_gem_object *obj;
>         int ret;
>
> +       if (!HAS_PREAD_PWRITE(to_i915(dev)))
> +               return -EOPNOTSUPP;
> +
>         if (args->size == 0)
>                 return 0;
>
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 6cff7cf0f17b..3231d989275c 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -910,7 +910,8 @@ static const struct intel_device_info rkl_info = {
>         .has_master_unit_irq = 1, \
>         .has_llc = 0, \
>         .has_snoop = 1, \
> -       .is_dgfx = 1
> +       .is_dgfx = 1, \
> +       .no_pread_pwrite = 1
>
>  static const struct intel_device_info dg1_info __maybe_unused = {
>         GEN12_DGFX_FEATURES,
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index e6ca1023ffcf..8edd2cfb0bab 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -114,6 +114,7 @@ enum intel_ppgtt_type {
>         func(is_lp); \
>         func(require_force_probe); \
>         func(is_dgfx); \
> +       func(no_pread_pwrite); \

Is it really better to add a device_info flag here or would we be
better off making it dependent on HW generation?  This is what I did
for relocs:

       /* Relocations are disallowed for all platforms after TGL-LP */
       if (INTEL_GEN(eb->i915) >= 12 && !IS_TIGERLAKE(eb->i915))
               return -EINVAL;

       /* All discrete memory platforms are Gen12 or above */
       BUG_ON(HAS_LMEM(eb->i915));

At least to me, that makes the code more obvious.

--Jason
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
