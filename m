Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F79A20DBE
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2025 16:55:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCAE810E696;
	Tue, 28 Jan 2025 15:55:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HoUZeGR4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com
 [209.85.216.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A491910E696;
 Tue, 28 Jan 2025 15:55:11 +0000 (UTC)
Received: by mail-pj1-f45.google.com with SMTP id
 98e67ed59e1d1-2ee50ffcf14so10742476a91.0; 
 Tue, 28 Jan 2025 07:55:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1738079711; x=1738684511; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=aFAvtXb2Cr1GFinla6F1W1eksAtofXFt0+JOMjiHDT8=;
 b=HoUZeGR4H4VDw2qtMmOyedQy5kgfj/r5mwlCTPgsl2a66vsc6Thzmq+RH+zFZpZ/PM
 woOkrh8RKdKmtqijx1wTNCA7Auolebfh4PYznHrtbSX18SSpfalnUqDPihDSYa4b7dPD
 WxMOGMkLHlGZSo6Dq+PZhdp0Gk9BcPBR3zVEDAfQKUVzFIwDA+or5GZyhoE4gBYgO7pC
 UP5ngKUMw+j/l6M7fYhMcnmqw5N5gIu3u9uF4RFx/CyhcbD4E8ay7Kqu+hLsjrurkuZR
 gAF6gKyqjnNnWUgR/xS6fTM080rZndoKhojr+5WCbIz26dUu01hl/vg0NJ+5zHwLJ9rL
 8ZYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738079711; x=1738684511;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=aFAvtXb2Cr1GFinla6F1W1eksAtofXFt0+JOMjiHDT8=;
 b=MNfno7L9+kNHF3yTKd8klJnplxunbJAh+cQiVJUx1jMcuMmfoN72yorQ9vWkViitCz
 1/wyvjtywoxeVHwEeIAdvZgWhw1AX72DCnrcusy9ItV9Omaqkpj9V6PyajcfeaI+jm1K
 YNssttGDn8AtWREK3YpDIc2aBjDe4PacUCXRi2k0VCf/W5spwJbm7pplLGfV/GVuGXYP
 DGvoAYfbdxWdvBi+I85qN584OJ2yBeH4RRQUTXaZu8r1SXMmxT+xNLL1nBMGZXXDd+mB
 NV2JTEezAYmf3dIvMyIrL9po4o29h06Mv5oHDU3CXePykqLE9p0GZmuuHvscv+hJap9+
 iAXA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXJzAssWoZFZGVkKAJO/ecmX4+ifROHGhrT1Drru6O1yEGLyjnW5hRtFR3Am6XVKpst8K67q8yVyYg=@lists.freedesktop.org,
 AJvYcCXoNgxzKu3OO7fm4/kNyJ/BTp/lem4G6VF7u6XhzCYZQnWUTFtHqSQzV/Bs85rbhnIxIn+Y4BR+bR8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yykq3IJ1VH+xCWojvzkuvYGbPEn/3Gc/onivDGKuVroYg2pCvlz
 u1nCVSIcd/T+cMLiepWOJf/qHLDPy6rjzAZB30xLQQYt1PyXGK1lwLR/n6zh6KvCBVJtiAJbvSc
 0LZiK2JX7JVtQ+C81UwKLG35SL6U=
X-Gm-Gg: ASbGncsykIF/MyP9LHVtXSCDnpoc149SP527zkz9NWwnmlUAovhTM8Vrn5EnGdmqtB9
 lUyU9DwOsGqreTl5l0pW3Ftv1l1nQ+Ntzp9ByMyq6Q7Y3GUeShtBwhUr92GqxV25JIxoe8WrBRQ
 ==
X-Google-Smtp-Source: AGHT+IG8Xx0OJQtNIGsCbHD09gG6NYmuqhdZs9ZE6jnStsdHZH1Ad8+dQPBx6nn5mcHfPZPLgAYd+euNPTGSucP4K8k=
X-Received: by 2002:a05:6a00:894:b0:72a:78a3:7f57 with SMTP id
 d2e1a72fcca58-72fc0941e97mr5057177b3a.9.1738079710984; Tue, 28 Jan 2025
 07:55:10 -0800 (PST)
MIME-Version: 1.0
References: <20240228140225.858145-1-juhapekka.heikkila@gmail.com>
 <875xy01vd8.fsf@intel.com> <72a58a16-d7aa-4b85-bd67-40cd87366b0b@ursulin.net>
In-Reply-To: <72a58a16-d7aa-4b85-bd67-40cd87366b0b@ursulin.net>
From: =?UTF-8?Q?Juha=2DPekka_Heikkil=C3=A4?= <juhapekka.heikkila@gmail.com>
Date: Tue, 28 Jan 2025 17:55:00 +0200
X-Gm-Features: AWEUYZn7UwMOVGDSf4E4fICn3tUMCbPXVSz9gR7cV2tQI8BVlWz98ZTDit62eZg
Message-ID: <CAJ=qYWRZZd4FmYXxqaT5hm5RqOQsNow4UbG=fdQFr_odSGUrEQ@mail.gmail.com>
Subject: Re: [PATCH] drm/i915/display: Disable AuxCCS framebuffers if built
 for Xe
To: Tvrtko Ursulin <tursulin@ursulin.net>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, intel-xe@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, "Souza, Jose" <jose.souza@intel.com>
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

On Tue, Jan 28, 2025 at 3:08=E2=80=AFPM Tvrtko Ursulin <tursulin@ursulin.ne=
t> wrote:
>
>
> Hi,
>
> On 05/03/2024 16:44, Jani Nikula wrote:
> > On Wed, 28 Feb 2024, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>=
 wrote:
> >> AuxCCS framebuffers don't work on Xe driver hence disable them
> >> from plane capabilities until they are fixed. FlatCCS framebuffers
> >> work and they are left enabled. CCS is left untouched for i915
> >> driver.
>
> I couldn't find the answer in the below linked issue or in the thread -
> is it known what exactly is missing/broken to make this work and are
> there any plans to do it? Or perhaps not if gen12lp is not intended to
> be supported?

As far as I know devices with AuxCCS are not intended to be supported.

As for this patch, from display point of view these would work the same
as before, just put compressed fb on screen and enable decompression
but I figure there are parts missing from gem side to support AuxCCS.

/Juha-Pekka

> >> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/933
> >> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> >
> > Acked-by: Jani Nikula <jani.nikula@intel.com>
> >
> >
> >> ---
> >>   drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 +++
> >>   1 file changed, 3 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/driv=
ers/gpu/drm/i915/display/skl_universal_plane.c
> >> index e941e2e4fd14..860574d04f88 100644
> >> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> >> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> >> @@ -2295,6 +2295,9 @@ static u8 skl_get_plane_caps(struct drm_i915_pri=
vate *i915,
> >>      if (HAS_4TILE(i915))
> >>              caps |=3D INTEL_PLANE_CAP_TILING_4;
> >>
> >> +    if (!IS_ENABLED(I915) && !HAS_FLAT_CCS(i915))
> >> +            return caps;
> >> +
> >>      if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
> >>              caps |=3D INTEL_PLANE_CAP_CCS_RC;
> >>              if (DISPLAY_VER(i915) >=3D 12)
> >
