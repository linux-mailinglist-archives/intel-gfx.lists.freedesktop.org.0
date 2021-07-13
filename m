Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 344503C76F1
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 21:26:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6AF46E11A;
	Tue, 13 Jul 2021 19:26:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com
 [IPv6:2a00:1450:4864:20::232])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93F3389C63
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 19:26:16 +0000 (UTC)
Received: by mail-lj1-x232.google.com with SMTP id a6so31676006ljq.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 12:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AbX9Xu9c06giO/U+v639pJu8KA6hGm26Zdj5YP+EUss=;
 b=wJkZmqOLp3rfXdWR0LRg0m1k77k9osElwcslBYsP5olnnrFdbmizZCuiAyJGUbNDrj
 RhP1BkAqsytHhIRPh1S2nuT2JzNd9vOolTErTK/OtfRAD3coj7OqigabzAQgL1vWLCnU
 2j4EBRkGHXIMGhgGfbtH1wK1GumCaRRLyLZKm6mqbRR7ky4VeP5tM9K1Q0/OuImTzIEZ
 Pi4I0sF+5FyuE0HP9tGRK4aUGl3m1Xd4IGaVgNbvlI4PWkh0UnE65BP39sJRy8lH8Nrq
 k2wUNGjLxwwVJsGXQJRcg5t0GovPby8hSzWzHuEArLCOl1tDO2RxyBlwERWmMOuBsIO+
 KIAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AbX9Xu9c06giO/U+v639pJu8KA6hGm26Zdj5YP+EUss=;
 b=T/o9TQc+sJ3k1koE3HxI2d8MGyslIcA2eOpnT46na7z6+gkJoB3sBdzaT2sj2VxtR+
 tlepDP7tx0qDYVgimimYR7ErFaJf7Us3PVy+/+qJDHgaRITuu/1m/WWOq4x/LMm4qN3b
 7kjspIkEOqlpiWQHUk/YmbO4lIobz/4/WXbZh9SsCYWlKPGrw/mtsuOjMTGT9kczwYV7
 WlZz9B7fg1u3Fg8IYcM2wv0Zo5eYWOvqjrKGg7jCS3EoB1IKLEtbokk+ihgvxw2y3++m
 zWqOhiezSsBl5aWC1roVnx4O+9+6dCSDQUKBFYxIPaYBFLz2NjYxskt3b//DiBz+hSu1
 lEYA==
X-Gm-Message-State: AOAM533tXimxMYcR1bOEQZeymHK47lho36Asda99V/Lj4aZRYFdPvD+5
 IKzuYFLhFEVFZe8YU/iq8q43i5b88NiVtVTkRm2VdA==
X-Google-Smtp-Source: ABdhPJwazSjMBKSD1KsMMqLDNHfhs748K2fCEmgqZmF3JvX9SK0I+hv55CRW5kFDjp5Stk4bfpPF2SoviRNY7ckKzGI=
X-Received: by 2002:a2e:8909:: with SMTP id d9mr5534574lji.65.1626204374759;
 Tue, 13 Jul 2021 12:26:14 -0700 (PDT)
MIME-Version: 1.0
References: <88ad0981-0763-9c8d-fb57-70278bcaffd4@redhat.com>
 <0D708B40-20DB-4D5C-BFAD-74A30D5DE477@getmailspring.com>
In-Reply-To: <0D708B40-20DB-4D5C-BFAD-74A30D5DE477@getmailspring.com>
From: Rajat Jain <rajatja@google.com>
Date: Tue, 13 Jul 2021 12:25:33 -0700
Message-ID: <CACK8Z6FPsywe49fP=5pVc5DFm--4xt0daYLDzpbujA1_qoK7Dg@mail.gmail.com>
To: Marco Trevisan <marco.trevisan@canonical.com>
Subject: Re: [Intel-gfx] [PATCH v2 0/9] drm: Add privacy-screen class and
 connector properties
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
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Mark Gross <mgross@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Sebastien Bacher <seb128@ubuntu.com>, David Airlie <airlied@linux.ie>,
 Simon Ser <contact@emersion.fr>, intel-gfx <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Mark Pearson <markpearson@lenovo.com>,
 Mario Limonciello <mario.limonciello@outlook.com>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Hans, Marco, et al,

On Tue, Apr 27, 2021 at 10:03 AM Marco Trevisan
<marco.trevisan@canonical.com> wrote:
>
> Hi,
>
> >>> There now is GNOME userspace code using the new properties:
> >>> https://hackmd.io/@3v1n0/rkyIy3BOw
> >>
> >> Thanks for working on this.
> >>
> >> Can these patches be submitted as merge requests against the upstream
> >> projects? It would be nice to get some feedback from the maintainers,
> >> and be able to easily leave some comments there as well.
>
> FYI, I've discussed with other uptream developers about these while
> doing them, and afterwards on how to improve them.
>
> > I guess Marco was waiting for the kernel bits too land before
> > submitting these,
> > but I agree that it would probably be good to have these submitted
> > now, we
> > can mark them as WIP to avoid them getting merged before the kernel side
> > is finalized.
>
> I'll submit them in the next days once I'm done with the refactor I've
> in mind, and will notify the list.

Any updates on the privacy-screen patchset? Can Hans' patchset be
accepted upstream now?

Thanks,

Rajat

>
> And for sure we can keep them in WIP till the final bits aren't completed.
>
> Cheers
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
