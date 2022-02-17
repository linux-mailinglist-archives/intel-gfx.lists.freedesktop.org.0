Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F332D4BA7EF
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 19:15:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD74F10E662;
	Thu, 17 Feb 2022 18:15:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com
 [IPv6:2607:f8b0:4864:20::22b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11B5110E652
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 18:15:33 +0000 (UTC)
Received: by mail-oi1-x22b.google.com with SMTP id j2so481841oie.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 10:15:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LTdIi3omDeTFcEkX2muEvJCXzPVhzD5HrTufMm86oCI=;
 b=GSF0k4x3nPfJK+/zPABl1ZAtXgahSz7RYjSchmHk2bwKgMZF5sdY/KYcg/py1eNnBe
 oEo3hUU91BQ1QHyDl373gmhqHHBjrTt9ZV5zZygLW6ey4BEwP95BsALmYbV8Kh5EVbFc
 w1TQQXbpwAs3Hy1K0135JbMIuaz6JajLOnm94=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LTdIi3omDeTFcEkX2muEvJCXzPVhzD5HrTufMm86oCI=;
 b=o+AdlIB/buq0DWvcpEgxoj7OZWuHmVFAY77lq7a3PM+vMgcUTBTNyFoxCHII5Ddrst
 /D0jW/LZBof4lVwZ32Snow+q7/Bc//+xvpF9DPczW5RZsFO0Wr2AgvPo8FAvuEvGTyyS
 bth+djfvcKJ2UlSv1NL+skG/D9bzQoLZLCESEhnP1a+CAzUjszq9EiV9gomIviHJJPhb
 e5LUuc5tgxU2OS0YK/pbO8tZnvDyZ62LyJWPtQ5LapNflsD4L47X7le5bzChfVpDIHvh
 Vku6cV/7MrfxdRizeHOwPKci2Y0530+jKntSsXSnQ0an3z8DDCl87ys5RDbJ65pEuThr
 /phA==
X-Gm-Message-State: AOAM531HKIbbPOTzst07MOfc9YbMfXY680pMLof2IrzzRFLHcx/LgXKc
 HarJwyT2U39ScpvJGCn1M9tCqmchVljnQJDHoxsQPMs1ROM=
X-Google-Smtp-Source: ABdhPJwkxr5ZAmKTEKFykke3Ix79Qf2hnC81K9ByuxjeKLO3pwvMOeqjqSCvpYhX5BtFRIoe/uhR/8Emp2+x6q8Z+oc=
X-Received: by 2002:a05:6808:1b0c:b0:2d2:fcfc:46a8 with SMTP id
 bx12-20020a0568081b0c00b002d2fcfc46a8mr1666869oib.278.1645121732284; Thu, 17
 Feb 2022 10:15:32 -0800 (PST)
MIME-Version: 1.0
References: <20220209224507.874751-1-jordan.l.justen@intel.com>
 <20220209224507.874751-4-jordan.l.justen@intel.com>
In-Reply-To: <20220209224507.874751-4-jordan.l.justen@intel.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 17 Feb 2022 19:15:21 +0100
Message-ID: <CAKMK7uEMLiMMkLgZgtGtE_1jBH4Rq4+g=9m_mh_jzL6dfH1x7g@mail.gmail.com>
To: Jordan Justen <jordan.l.justen@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH v4 3/4] drm/i915/uapi: Add struct
 drm_i915_query_hwconfig_blob_item
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 9, 2022 at 11:45 PM Jordan Justen <jordan.l.justen@intel.com> wrote:
>
> Also, document DRM_I915_QUERY_HWCONFIG_BLOB with this struct.
>
> v3:
>  * Add various changes suggested by Tvrtko
>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Signed-off-by: Jordan Justen <jordan.l.justen@intel.com>
> Acked-by: Jon Bloomfield <jon.bloomfield@intel.com>

Please check with make htmldocs that the output works&looks good (you
mix up DOC: and struct sections, so that part wont work for sure).
With that addressed:

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  include/uapi/drm/i915_drm.h | 35 +++++++++++++++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
>
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 069d2fadfbd9..8279515ae2ce 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -3276,6 +3276,41 @@ struct drm_i915_gem_create_ext_protected_content {
>         __u32 flags;
>  };
>
> +/**
> + * DOC: GuC HWCONFIG blob uAPI
> + *
> + * The GuC produces a blob with information about the current device.
> + * i915 reads this blob from GuC and makes it available via this uAPI.
> + *
> + * The returned blob is a sequence of items of variable length
> + * described by struct drm_i915_query_hwconfig_blob_item. The
> + * drm_i915_query_hwconfig_blob_item length field gives the length of
> + * the drm_i915_query_hwconfig_blob_item data[] array. The length is
> + * the number of u32 items in the data[] array, and *not* the number
> + * of bytes.
> + *
> + * The key and length fields are required, so the minimum item size is
> + * 2 x u32, or 8 bytes, when the length field is 0. If the length
> + * field is 1, then the item's size is 12 bytes.
> + *
> + * The overall blob returned by DRM_I915_QUERY_HWCONFIG_BLOB will end
> + * at the same location as the end of the final
> + * drm_i915_query_hwconfig_blob_item. In other words, walking through
> + * the individual items is guaranteed to eventually arrive at the
> + * exact end of the entire blob.
> + *
> + * The meaning of the key field and the data values are documented in
> + * the Programmer's Reference Manual.
> + */
> +struct drm_i915_query_hwconfig_blob_item {
> +       /** @key: Enum which defines how to interpret @data values. */
> +       __u32 key;
> +       /** @length: The number of u32 values in the @data array. */
> +       __u32 length;
> +       /** @key: Array of values with meaning defined by @key */
> +       __u32 data[];
> +};
> +
>  /* ID of the protected content session managed by i915 when PXP is active */
>  #define I915_PROTECTED_CONTENT_DEFAULT_SESSION 0xf
>
> --
> 2.34.1
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
