Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D21C9F295
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Dec 2025 14:41:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59A6C10E7E4;
	Wed,  3 Dec 2025 13:41:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="seIqWJ6Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5DC010E7E4
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Dec 2025 13:41:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id F1DB46019C
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Dec 2025 13:41:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6B02C4CEFB
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Dec 2025 13:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1764769262;
 bh=WgeCBu7yk+EAa6yjfYBdefiJzHhmgcwaJ/PwZrzocL4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=seIqWJ6Z236TfaiWifLkufCSkhJaCtuFSV7kzMmfS3Wntg0m9xoggeiduBV9GySKc
 OlAPWE69Liys69SXhCf0itYtw0kKZq2EO5Jir3DgjXqWsq8G1WKjpsIJMnVNKBqIa5
 8X+bbbXaEdyGYrAyYMegW9U7pKuvtcvKaUYA9pyYoYrsYh9fetgaitUgD1wCVidmkq
 8AdnQSI1t3wnXhxzqq0DVgGg0BPB6m3rJaQgOAuUtPWiqD6ehT/DJK2JFYw67KwcYG
 G+G6U4tU89ZYKmUdp6WTC1+olc5PgbdyGcYDm/WP5LyIQIlpGB9M8C/RmhvJUwC5x0
 3nXhZ4DpnwPKQ==
Received: by mail-ot1-f53.google.com with SMTP id
 46e09a7af769-7c75fc222c3so2701057a34.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 03 Dec 2025 05:41:02 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCWdQUiII9euiL8/nk3BFoHvGP604m+hg5S90f9HeNxte+gEIMlz21nZ0yDU/fTQ7jkAk2MAtI+5I1c=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzAZaXTMghQlxAOTKNvOoZSxX5IclKKhxsUmBuSXPIR3V362CD1
 lr6hYCHfaqWxrIIjb6nT95e9jVn42OPaGc7uO9yEuJfFzYR7QboNUDj+7Z0THlQUEtKlgvuIDZm
 nAuVg+fwPEP6hH6KcnU7Zp+UC/tgYQQA=
X-Google-Smtp-Source: AGHT+IHGJHeqVkEM2pfPZ2VCgrRsv4aUtjBFxweid51gvGR4ZmOw13QuuV1jRxSVUTQScHlkpe5V8vcP4Q1fSMqF9xI=
X-Received: by 2002:a05:6830:909:b0:7c5:2e2a:d386 with SMTP id
 46e09a7af769-7c94dc0ba4cmr1300869a34.21.1764769261795; Wed, 03 Dec 2025
 05:41:01 -0800 (PST)
MIME-Version: 1.0
References: <03c013c0-be12-42ab-91d1-f87395c890e3@intel.com>
 <c711e3ac455a552c130851d7a45916a3ac992390@intel.com>
 <51f6228d8bb6df524995b5ad4c49cbdfcbafb952@intel.com>
In-Reply-To: <51f6228d8bb6df524995b5ad4c49cbdfcbafb952@intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 3 Dec 2025 14:40:49 +0100
X-Gmail-Original-Message-ID: <CAJZ5v0hw_zUUf1Ns_tvq8zC06T0NKzUrqKrN25VFwaFs5rJPNQ@mail.gmail.com>
X-Gm-Features: AWmQ_blBYlpsZxQ2SlxK-jH9v9TrW3GjxfOR6u6X98onqzEikEtr68AEj2gajoo
Message-ID: <CAJZ5v0hw_zUUf1Ns_tvq8zC06T0NKzUrqKrN25VFwaFs5rJPNQ@mail.gmail.com>
Subject: Re: BISECTED REGRESSION on v6.18 (was: REGRESSION on drm-tip)
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 brauner@kernel.org, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Saarinen,
 Jani" <jani.saarinen@intel.com>, 
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, 
 Thorsten Leemhuis <regressions@leemhuis.info>, 
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Pavel Machek <pavel@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org
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

On Wed, Dec 3, 2025 at 2:36=E2=80=AFPM Jani Nikula <jani.nikula@linux.intel=
.com> wrote:
>
> On Wed, 03 Dec 2025, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> > On Thu, 27 Nov 2025, "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@in=
tel.com> wrote:
> >> Hello Christian,
> >>
> >> This is Chaitanya (again!).
> >>
> >> This mail is regarding another regression we are seeing in our CI
> >> runs[1] on drm-tip (with both xe and i915).
> >
> > Referring to drm-tip is downplaying the problem. The bisected regressio=
n
> > is in v6.18 release. It's breaking suspend/resume across a lot of
> > platforms on two drivers, i915 and xe.
> >
> > a3f8f8662771 ("power: always freeze efivarfs")
> >
> > As far as regressions go, it's pretty bad. Please prioritize.
>
> Added some missing Cc's.

This should fix it:

https://lore.kernel.org/linux-pm/12788397.O9o76ZdvQC@rafael.j.wysocki/
