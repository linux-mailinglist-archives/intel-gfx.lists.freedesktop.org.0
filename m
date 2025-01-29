Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC34EA22015
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 16:20:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E4CF10E818;
	Wed, 29 Jan 2025 15:20:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Dcf5ATEt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
 [209.85.214.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDF6710E818;
 Wed, 29 Jan 2025 15:20:37 +0000 (UTC)
Received: by mail-pl1-f175.google.com with SMTP id
 d9443c01a7336-21636268e43so8646375ad.2; 
 Wed, 29 Jan 2025 07:20:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1738164037; x=1738768837; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qFGmRLdcnEHphoxu4YASMEMuX4i5VL6d/Y/97Aq2pSQ=;
 b=Dcf5ATEtTWhzqZZKFwYokZ/CcOYlITCPhv1Ey2yVq0JSzyFiQfWO6vgL8lt3NcNU7R
 EA0PdOyaPmf22PMmni/F0nyJp3ppdt79AA7KizF8rOEucq/3cvGrTnHNYlySOTq74n/E
 Jtumgozt1x/g+O/Jv1rOUk2KAckdlMy5+o44Q2ZxSy8oytaep5u8mJKs5ws8OGfWDnsB
 pu291s+YCjEY7azpXPPNWYvH5tQb4TNlwNG7bUoKV6JnQFrU2ML8wuRQgxFzqIwhGHgo
 p+bBIE4t69VZBseNuBq5YkX5i2jguPYOqUfTquapdv2VO3LT7BfQ/C1bya3WsdfnfFZv
 2lgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738164037; x=1738768837;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=qFGmRLdcnEHphoxu4YASMEMuX4i5VL6d/Y/97Aq2pSQ=;
 b=RHChRedpqDc3LI/8LXqH7cvPaQT7V2TybrNaUXWGgBzncQxScOLLG7poOIwVANZFaW
 UYu3+eQciRFilqF7kQItSmcxlJWXbYJovYoZI/NfrdasE3M8wkL02gFM45YooxOZherh
 /IKwKs+hxkkRjIgEops5d6073vEz2+CeTjpssxmcnWVDdiCPEI8o8DSdJn5tYRIQ0Agy
 p7Js5TjCTfprIzc4kRKxpqHylchV9IbiXnoZsgl+GYichuMJXKoTJ96SBrhMUEuwGI1u
 4NuIJbsoT2ZJ165Rr5hMmqpx4bDgxI7J/J5BpDpiYbDk5HHP3WYk1yub52xeXQxxdph/
 njsw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVTlnYAXg9hBUcQBOybEqwWGSC8n+lM14ne7WvR+FPcz3QEWrPcMr30amEJdnV4vwlvodfB6Z0wvk0=@lists.freedesktop.org,
 AJvYcCVatMig7+zqbZLQbUOANyY/f26Sd+jS4u8cJ/rHZUI+oQSXFPfmZ5sjq7K7L4v/JUlPFRZDy1bG30U=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwI+Sw122+rYMeDbgxVmlVTZmdSd8lR55mPkVQZUuCA7aksXMUx
 iG23XuMlsXHeegeaG9TAcLRkmf8mzs3tOfwslYLMggYqSlkLj4Sfoy3MvNDlpTqEeBiZXTZLHbb
 zCznyaKBLHX8QxUCrdIpT92XecvJ9u3GC
X-Gm-Gg: ASbGnctetd8qHZi3qDuz5orogk1CClLam/S0tsScJltEJYzhqdCAeyxlSp1QDTFkiVS
 LGI9qDotVFFvZ90aPAw7R02pZkqsGQYZNh+H/wTVV4zjbEBBmTe0u3KYKb8AFyHqgCdeMhbh/FQ
 ==
X-Google-Smtp-Source: AGHT+IEsvuaabO2fi3xyQsQB500rcIfT5RlObw3msbMY6qBoq5QnjUbLobPdfEudPmNJJN5tkeY3m1v/DINMJefvppU=
X-Received: by 2002:a17:903:124a:b0:21c:1140:1379 with SMTP id
 d9443c01a7336-21dd7c6230emr54001275ad.13.1738164035793; Wed, 29 Jan 2025
 07:20:35 -0800 (PST)
MIME-Version: 1.0
References: <20240228140225.858145-1-juhapekka.heikkila@gmail.com>
 <875xy01vd8.fsf@intel.com> <72a58a16-d7aa-4b85-bd67-40cd87366b0b@ursulin.net>
 <CAJ=qYWRZZd4FmYXxqaT5hm5RqOQsNow4UbG=fdQFr_odSGUrEQ@mail.gmail.com>
 <71c2213c-4445-4285-aab8-6d7ad6f5a723@ursulin.net>
In-Reply-To: <71c2213c-4445-4285-aab8-6d7ad6f5a723@ursulin.net>
From: =?UTF-8?Q?Juha=2DPekka_Heikkil=C3=A4?= <juhapekka.heikkila@gmail.com>
Date: Wed, 29 Jan 2025 17:20:25 +0200
X-Gm-Features: AWEUYZlc96AN0KERHpUlrol2XWP5ChuUjiZsC5efRyDaFeJUMblB8c4NLrl98pM
Message-ID: <CAJ=qYWQuCQtVU9nu-xFj5OPBK87cQU9uqRKk=NWuzSsSns39-A@mail.gmail.com>
Subject: Re: [PATCH] drm/i915/display: Disable AuxCCS framebuffers if built
 for Xe
To: Tvrtko Ursulin <tursulin@ursulin.net>, 
 =?UTF-8?Q?Zbigniew_Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
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

On Wed, Jan 29, 2025 at 10:44=E2=80=AFAM Tvrtko Ursulin <tursulin@ursulin.n=
et> wrote:
>
>
> On 28/01/2025 15:55, Juha-Pekka Heikkil=C3=A4 wrote:
> > On Tue, Jan 28, 2025 at 3:08=E2=80=AFPM Tvrtko Ursulin <tursulin@ursuli=
n.net> wrote:
> >>
> >>
> >> Hi,
> >>
> >> On 05/03/2024 16:44, Jani Nikula wrote:
> >>> On Wed, 28 Feb 2024, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.co=
m> wrote:
> >>>> AuxCCS framebuffers don't work on Xe driver hence disable them
> >>>> from plane capabilities until they are fixed. FlatCCS framebuffers
> >>>> work and they are left enabled. CCS is left untouched for i915
> >>>> driver.
> >>
> >> I couldn't find the answer in the below linked issue or in the thread =
-
> >> is it known what exactly is missing/broken to make this work and are
> >> there any plans to do it? Or perhaps not if gen12lp is not intended to
> >> be supported?
> >
> > As far as I know devices with AuxCCS are not intended to be supported.
> >
> > As for this patch, from display point of view these would work the same
> > as before, just put compressed fb on screen and enable decompression
> > but I figure there are parts missing from gem side to support AuxCCS.
>
> Right, I can dig in and try to figure out what are those missing GEM
> bits but I was hoping someone might know straight away to save me that
> initial digging around.

I wonder if Zbigniew would be able to give pointers, he's been working
with this stuff at least on igt side.

/Juha-Pekka
