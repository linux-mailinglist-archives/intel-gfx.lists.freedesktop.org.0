Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D2BC13D9A
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Oct 2025 10:36:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD20310E5D3;
	Tue, 28 Oct 2025 09:36:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="C+WkTFQA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com
 [209.85.214.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3913210E378
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Oct 2025 09:36:31 +0000 (UTC)
Received: by mail-pl1-f177.google.com with SMTP id
 d9443c01a7336-2698d47e776so45861425ad.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Oct 2025 02:36:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1761644191; x=1762248991; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=E8OqaS0LJf0RhhBIJTbX4O/X0/UHs6OlrEdWf31xwmk=;
 b=C+WkTFQAM0ToU0ErzYFpslT6FwViSH3gfXFXGbtEvzI0sCKnEQoemZVT8RdMX8KZwP
 u0dTkCCyxOR99QJvR8xUMnGRVfQ1ygG3AlwlayLKhUk1RHiqZa3lzXtKKRduwzymghLg
 efK54I9gaeYK7TD7G8Ge6BX88JbdpfO7yDpm5LpI2/I1J3Ug3TDtTaavyDfmQR5Vm/AW
 n1QyVR/uDXr2IxftYkK7QnQMFYcZVpQlJbYd2pHveD0DGRkez67omcz6osS7m5h7xTE4
 X0fVIIOt7KAi4gPnQab2lbyS6CS6hQEkkM/ni8MKzv1DmtuApNdXqozOOdFnGZ2JUOPr
 Cz6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761644191; x=1762248991;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=E8OqaS0LJf0RhhBIJTbX4O/X0/UHs6OlrEdWf31xwmk=;
 b=Ai+mKhOX/N85qQao0cUWd8LQ8Ee/8BO30DRbKXJ413UzKqZ9dKG+1KPpMDfwbSRUDY
 ewOU6/7eceCh/qCd6kzHb5gRUayBR9+A3Xfd9uiyY8O8hUzxyZGInSXSW40V41oeE8ow
 jQSa0hB3QcY4IOpR3sAYP3+XhIRVvsbS06pckzYi6edkofCqeZehYEilsSy543aWIyTm
 b25jlxkWBHfyzg8JXyTAhAnz78+qI+Dp5c/DO2ePImS8TrV8pTckv5SzuOpi6AmfwBsY
 CMJmBagvmyO2gfMQcFF1GI9cJYs7sl42bvSn/aMT3x1kxSR6D7iByQMxAY4pJMTl/aLD
 4ggQ==
X-Gm-Message-State: AOJu0Yw5J4J2uzNYjehyZVgod9yWe4SRropD7V/pyz96Tzf3s2Bk+6ur
 8oVOiUD0E6EfqrCD/Kwa6cf4W3ZnHRBpt+5JgILgt61u3GmbD6c2CYLz5cJz2GB7O1NV9/r/fbp
 wIRNd0ADx9NXuFPS68uOyW2PzfPcR5K8=
X-Gm-Gg: ASbGnctbZ3GUubfemiFl7kQ8QU0WOnd3EV3Co8NQNq7PyH3cWJMagVJNfy2ZiO8+usP
 WUEii9z2n131O4CZYe/D9oTZUasxNM2ZbwdHzTQi+m9lBDFNkUP21Z1+CXmg8s/PhEgSXUZ8PBB
 V3MaJgwMQGL5z+LDdnLdL5Vr/iglG52M4ucpV+FXeKefGKfbqKeAwcKqYtITPbqrad3GszGo3XZ
 14m3Br7igqnrZWc82SWHg07K+QyCtJZP5t92NKnuijkKOPVuhKfVD5X2ctKCgI=
X-Google-Smtp-Source: AGHT+IEbzxI8TMpmBVxJPU+xigYHl23wYN4e45pw2adMfFbiINXzA/tXIQTvxdTLKfrf98TUlttrtNY/pDwtyQ+kiVg=
X-Received: by 2002:a17:902:c40d:b0:292:64ec:8f4b with SMTP id
 d9443c01a7336-294cb4fe1dbmr40998265ad.43.1761644190486; Tue, 28 Oct 2025
 02:36:30 -0700 (PDT)
MIME-Version: 1.0
References: <20251009211313.30234-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20251009211313.30234-1-ville.syrjala@linux.intel.com>
From: =?UTF-8?Q?Juha=2DPekka_Heikkil=C3=A4?= <juhapekka.heikkila@gmail.com>
Date: Tue, 28 Oct 2025 11:36:18 +0200
X-Gm-Features: AWmQ_bk5rO9YX8tLqWKi1c5ooCXfelT5DAN0gIrb8n44mTjNfxQVxtLnbmlKlGM
Message-ID: <CAJ=qYWTASBWWFCDpL4pWkjyMhN9ZUCqEHYdb+hBy8bmXMhLBLQ@mail.gmail.com>
Subject: Re: [PATCH 0/8] drm/i915: Some universal plane fixes and cleanups
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
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

Set is

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

Only thing I was wondering about is that cbcr handling with that plane
min width but I assume you've tested it works as we're not getting
much of ci results for these.

/Juha-Pekka

On Fri, Oct 10, 2025 at 12:13=E2=80=AFAM Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Fix up some of the universal plane min size handling, and do
> a bit of random cleanup.
>
> Ville Syrj=C3=A4l=C3=A4 (8):
>   drm/i915: Rewrite icl_min_plane_width()
>   drm/i915: Drop the min plane width w/a adl+
>   drm/i915: Implement .min_plane_width() for PTL+
>   drm/i915: Start checking plane min size for the chroma plane
>   drm/i915: Introduce intel_plane_min_height()
>   drm/i915: Remove pointless crtc hw.enable check
>   drm/i915: Extract glk_plane_has_planar()
>   drm/i915: Unify the logic in {skl,glk}_plane_has_*()
>
>  .../drm/i915/display/skl_universal_plane.c    | 94 +++++++++----------
>  1 file changed, 44 insertions(+), 50 deletions(-)
>
> --
> 2.49.1
>
