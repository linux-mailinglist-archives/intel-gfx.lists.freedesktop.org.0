Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0C99DA449
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 10:01:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CEDD10EA38;
	Wed, 27 Nov 2024 09:01:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="qdYWoj3F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
 [209.85.214.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 286A910EA38
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2024 09:01:02 +0000 (UTC)
Received: by mail-pl1-f172.google.com with SMTP id
 d9443c01a7336-211f1b2bf2bso95625ad.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2024 01:01:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1732698061; x=1733302861;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+4xCdtVbTeJQXLEYoE1ZCs1C5F22i6icVCXFeYipfYY=;
 b=qdYWoj3FQ4K/h/BBRlbP+qF9ZTSFisCx2neR6t2P/hOgf6NnQ+aXvL5bMLHu10xXjR
 F787i5RdHdlci7TyWd0joQbfLvTLs9mHQA41npe3YXXlURA99izg5EkT4EUL0e7d/XjK
 3GkmiXqMhwwZ4//+WEv9uoEPqaMkEk7+BZx8ePpDEIpcf2ErPfZ8iDyojaovQsRt6C0D
 iGDBmmh/BUNCZGzRbAxNaOnj8XqkSwHHlNdG9wJNqcYCOhCOTTkXC3trhQPCU1b9pjCd
 gBFRwCgsnh8QTpp4mecNDrvnQQFT28ACxSagZGSQF20zk0GgBvQq6qOKdqq+38goWy9d
 +vRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732698061; x=1733302861;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=+4xCdtVbTeJQXLEYoE1ZCs1C5F22i6icVCXFeYipfYY=;
 b=Y9+bgQ2L4wsnuUhjqHGye0fNvApgE2uRR0dNpDpI+uuPhC/jz4EIiwaa3LhEerTpZb
 JgUkuBPjfTypUBcXwDJfqn/n6fKyBbCzL8mWF6/fRCsDIvS8khQBAq+RlnW3o8HFIPTL
 o5ZP45I2wdtDdpjAb/EOpP2ZgjNU7ulvXpKDkvm0c0jPwBf5eMrAahnSWbZv4W7E7NQC
 dld34c5dGQOdvm93a7RV1+lXV9Pe3Sca6RHWAhJWNOnPILu0ALLXxHxTc2yU3lavNuba
 ETP+9ob+SkvCNMWwWTI3dlIyQmFSm2rk32Qbz5vkwY/2d0raOTAkFqy3iIPx5TXaK5XQ
 cJnw==
X-Gm-Message-State: AOJu0YxbDW2hs/QiOhYTdAuEcLBYmie7a+NmgjpZO/IMT5DOCNc1crzJ
 nW/DUJq1qa3aSgTx8j4QLZD6eTYy5FCLKUQ9oqeUnbowmm5kaBSeuyIbDInr5TJdD66qfUC1iQP
 jGAoTpbDi5N1PVq9gg+RpMa1IRWalv6QaaOYenVvzX3awUwl0HpP3
X-Gm-Gg: ASbGnctc4wKwrhV08U51nYNdzLgYHntZyRheZnEsKFxf3HtWpyNf+2h6D0GhXwS9ykJ
 +FdnMmSujMMlFzcs4xNyNLWYi1UYK0aKNuw==
X-Google-Smtp-Source: AGHT+IGym3Mxwosvr/sYyn4aG1VM0rq+2JkhAmS0ssW47wrrDql0sk6k8DqDlo/vHXcLW+LDM1RjuXifYe9unvRmZvQ=
X-Received: by 2002:a17:903:238e:b0:1ff:3b0f:d61d with SMTP id
 d9443c01a7336-2150231e2ebmr1763125ad.24.1732698061297; Wed, 27 Nov 2024
 01:01:01 -0800 (PST)
MIME-Version: 1.0
References: <20241127061117.25622-1-ville.syrjala@linux.intel.com>
 <20241127061117.25622-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20241127061117.25622-5-ville.syrjala@linux.intel.com>
From: Brian Geffon <bgeffon@google.com>
Date: Wed, 27 Nov 2024 18:00:24 +0900
Message-ID: <CADyq12w46xHtQWq8vF09rYDpxQrFvfmPfrtG=TVSacKC4c3d4Q@mail.gmail.com>
Subject: Re: [PATCH 4/4] Revert "drm/i915/dpt: Make DPT object unshrinkable"
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, Vidya Srinivas <vidya.srinivas@intel.com>
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

On Wed, Nov 27, 2024 at 3:11=E2=80=AFPM Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> This reverts commit 51064d471c53dcc8eddd2333c3f1c1d9131ba36c.
>
> Now that we forcefully evict all DPT VMAs during suspend
> there should be no problem allowing the shrinker to eat
> the DPT objects.
>
> Cc: Brian Geffon <bgeffon@google.com>
> Cc: Vidya Srinivas <vidya.srinivas@intel.com>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12965
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Acked-by: Brian Geffon <bgeffon@google.com>

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_object.h | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm=
/i915/gem/i915_gem_object.h
> index 3dc61cbd2e11..bb713e096db2 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -283,9 +283,7 @@ bool i915_gem_object_has_iomem(const struct drm_i915_=
gem_object *obj);
>  static inline bool
>  i915_gem_object_is_shrinkable(const struct drm_i915_gem_object *obj)
>  {
> -       /* TODO: make DPT shrinkable when it has no bound vmas */
> -       return i915_gem_object_type_has(obj, I915_GEM_OBJECT_IS_SHRINKABL=
E) &&
> -               !obj->is_dpt;
> +       return i915_gem_object_type_has(obj, I915_GEM_OBJECT_IS_SHRINKABL=
E);
>  }
>
>  static inline bool
> --
> 2.45.2
>
