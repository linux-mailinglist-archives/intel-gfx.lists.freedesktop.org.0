Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6AAA1969E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 17:36:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADC3310E721;
	Wed, 22 Jan 2025 16:36:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fK2vw8Tc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com
 [209.85.214.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6AE610E721
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2025 16:36:09 +0000 (UTC)
Received: by mail-pl1-f178.google.com with SMTP id
 d9443c01a7336-2163dc5155fso136544845ad.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2025 08:36:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1737563709; x=1738168509; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=MVIaB137biLGpErj2KjwNh44b2DmuGfpvSe4vZ4dke8=;
 b=fK2vw8Tc2Aj6wdrWugAhSS4S7hnaUge/wtcQbXMw0Lq08PQCRZv0l7G36WQ9ZY4X8s
 lf8fW5OBL5GQ2ZWjNPeWq46ztJpF0vJ8YTUyOLyPf+a8zvAIahVqL+IWNg2r+TVWzaoy
 lK7ymqLJSjZVwrNeF/Tm+1eVYXCZFhQpUeNRP0/mTTPDg7GQqsyBj0wQk36FzomQ1mb3
 nT4tR7vDyyCXU5QQ27XskqQuREkeeUvYAVaeAgAsSEXCOntQIHyDGyqgI/Wm+WbG05KF
 0IqxaI4yaUO+9jZVUaIVlyOxv469WAQZjR8bIyw1Jp9GEARZhQJv/ccuxzLJGJpbB9JR
 miiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737563709; x=1738168509;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=MVIaB137biLGpErj2KjwNh44b2DmuGfpvSe4vZ4dke8=;
 b=M963pvY2x4+NnrmX/IgziUF+jwv8C3RJifhm3bx0gIJ6dRRSiAJMe6/mPYrE8lDf+e
 JSAFaCuCgLZHRDMWONrDGmDvs0fv4779NQX940DcTn2DYn8zSgGlY6TBQ2CHyl5peNEo
 1D4BiMSKEGOEzog0/yjxDGP6qNZVZmQ/7RKrYzLaWV5+zRoC+MZVZfOm91+Bgtfg5MW1
 U+9bMzxCd/vAM+UFaPUY0vxn8KiH4sOwknZy7Gwb1HYY4ocA9GjxqWvBnIEG5B7bVxbQ
 3T45qXZOuJDwiHpeFpNocWradIA8AH+U/SoI70AofB59zemgrIc6pWLXNjbEKrzhpggO
 X7og==
X-Gm-Message-State: AOJu0YwJ6U/21EYWdMrS5TlclZAZzMylGKGZF8IzYQPlB+s7zykXwl+W
 42xBpYfztolEk3Uj/wLD05Czwt78GnKQifI3RN5kPGuFw/8Ewo/aen7NqxAzD6QXhdMxi9YQu8c
 uJWSRJ1+srZuPi84H+ZGKPf2loHFCS0Aql8w=
X-Gm-Gg: ASbGncsWbWyQaLSVC2wZcjmA6nq8nJqiFI/ogiXbzlvh4Vque6Drpr2JYSVt7LXhK7p
 wwLZSvDDWJ5ii4PY/4Kr+G84IiNe5wguIbVPic5KvB3SG4HBf+OqB
X-Google-Smtp-Source: AGHT+IH/dlHr4zsoKgwlGufdj/ZA5LDlUzWIKdZWenlaKLKfA+HiUPG7sW6d8S8kbGJ/q31bZPMva/Sm+9cbMCowi9g=
X-Received: by 2002:a05:6a20:1595:b0:1e1:b60c:5bcf with SMTP id
 adf61e73a8af0-1eb215684afmr37527125637.32.1737563709271; Wed, 22 Jan 2025
 08:35:09 -0800 (PST)
MIME-Version: 1.0
References: <20241218173650.19782-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241218173650.19782-1-ville.syrjala@linux.intel.com>
From: =?UTF-8?Q?Juha=2DPekka_Heikkil=C3=A4?= <juhapekka.heikkila@gmail.com>
Date: Wed, 22 Jan 2025 18:34:57 +0200
X-Gm-Features: AbW1kvaZk8H6NNLkPMLY8mObKooLeUPtJCLOSnPSE645mfKeluud9-Eh9ERl5W8
Message-ID: <CAJ=qYWRASBghQxgUnWNHXWA7+R-0fCDTQkhb_itbG4QaKyjLAQ@mail.gmail.com>
Subject: Re: [PATCH 0/4] drm/i915: Drop 64bpp YUV formats for SDR planes and
 improve tracepoints
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
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

Set look ok to me and those missing ci results seem to never arrive..

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

On Wed, Dec 18, 2024 at 7:48=E2=80=AFPM Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Get rid of the 64bpp YUV formats on ICL+ SDR planes due to
> some weird underruns they're causing on TGL, and also bspec
> seems to be telling us to not use them either.
>
> Also included some improvements to the tracepoints
> that I used to hunt this down.
>
> Ville Syrj=C3=A4l=C3=A4 (4):
>   drm/i915: Drop 64bpp YUV formats from ICL+ SDR planes
>   drm/i915: Drop the extra "plane" from tracpoints
>   drm/i915: Pass the plane state explicitly to tracpoints
>   drm/i915: Include pixel format in plane tracpoints
>
>  .../gpu/drm/i915/display/intel_atomic_plane.c |  4 +-
>  .../drm/i915/display/intel_display_trace.h    | 47 ++++++++++---------
>  .../drm/i915/display/skl_universal_plane.c    |  4 --
>  3 files changed, 28 insertions(+), 27 deletions(-)
>
> --
> 2.45.2
>
