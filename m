Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F4C3E01DB
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Aug 2021 15:23:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C928B6EA76;
	Wed,  4 Aug 2021 13:23:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com
 [IPv6:2607:f8b0:4864:20::1033])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2855489A76
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Aug 2021 20:51:32 +0000 (UTC)
Received: by mail-pj1-x1033.google.com with SMTP id
 dw2-20020a17090b0942b0290177cb475142so5672970pjb.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Aug 2021 13:51:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sfftEtgrcdAgJtxxMxV/AMJLSicv+M22mjPBU5y8w/g=;
 b=BmjanVsIy8h7SrXm9eU8iVoxNLRh8Rh2h+NopTulkEHAAKAzGlP0N7s6ioaz9n6j6J
 PIikGOYDwnnmVI9UvPSdZ5YWpEz2XtSqexX1QIWzoM9ELP8AgLiMtLhnk3Y83qElZf65
 9x/znzLAuGTjhm5IFY0VoqMPJykhZ/nEquLa9M3WqZ4mY0GWZD+ToCfuTU7GYvpq6gs1
 J9RQySgCSmenkSOmfcO3akg1qB5sSYEFMTGieXsDUOI0Z2v8R1a/oECtyRVXbrO+pY49
 m1wT61slzmYQ1m2WVgBUvFmBksXzAmO+LY9bKpQnv4rwGm4NaLRlYwea+9yW4xgNsBcr
 MNig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sfftEtgrcdAgJtxxMxV/AMJLSicv+M22mjPBU5y8w/g=;
 b=hf11N/SEuZueUTufH7rKicV5pRW6167HsrjHq9FUmhFcW+9uxOGTs76cIyatAjLVhK
 od5a+rHTAMB/3QLQFaU+Wgw4krn+u+xpIoTnw6IuBolaaktn1RF0DGwT5mHG9vnqZI8E
 kNAkYJvmMkBri/+wKr9UIPWvA9QDgfJwZzitd8ieV9T5O8zZZLAb864CRa1DUhzgzRdE
 M6nM0ZBNRTyPfSQXDz2QmcmXevKvdBff69917+ZHpi9M3PEP4PpNEzsWUt5bYsEjvicc
 w6iOegP92HXN4vQ652KtZ80MhBwZU+VLJejWPN5PDuEODn8pzTjbn9D/uX8FrcZSwclO
 l9zA==
X-Gm-Message-State: AOAM5301vi2d3YPOPWPSSWdSI7R5vs3RnPYGn1zmhxckHM0zT3JFxbKI
 SqexOdqoguWbKXcE/2UOc9uaPxuy8+jh4qZtE4es2w==
X-Google-Smtp-Source: ABdhPJzzMdFIoC4FUQ+5qAmfespQhMKsyzKO9ckAU+1wZnDV562/fTMPvuOXAVghyfE86/6uh2oy9WY2X7eHNFJHgh0=
X-Received: by 2002:a17:90b:4ad1:: with SMTP id
 mh17mr22649805pjb.164.1628023891241; 
 Tue, 03 Aug 2021 13:51:31 -0700 (PDT)
MIME-Version: 1.0
References: <CACK8Z6FPsywe49fP=5pVc5DFm--4xt0daYLDzpbujA1_qoK7Dg@mail.gmail.com>
 <78260D21-AD73-4EBC-8E69-A5B16F1A72D5@getmailspring.com>
In-Reply-To: <78260D21-AD73-4EBC-8E69-A5B16F1A72D5@getmailspring.com>
From: Rajat Jain <rajatja@google.com>
Date: Tue, 3 Aug 2021 13:50:55 -0700
Message-ID: <CACK8Z6ErDLW76hXwK4wFhOdMj4eyOZpceJPt7WX+KT6C2oWO7Q@mail.gmail.com>
To: Marco Trevisan <marco.trevisan@canonical.com>
Cc: Hans de Goede <hdegoede@redhat.com>, Simon Ser <contact@emersion.fr>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Mark Gross <mgross@linux.intel.com>, Andy Shevchenko <andy@infradead.org>, 
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Sebastien Bacher <seb128@ubuntu.com>, 
 intel-gfx <intel-gfx@lists.freedesktop.org>, 
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 Mark Pearson <markpearson@lenovo.com>, 
 Mario Limonciello <mario.limonciello@outlook.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Wed, 04 Aug 2021 13:23:42 +0000
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello DRM / GPU maintainers,

On Tue, Aug 3, 2021 at 8:20 AM Marco Trevisan
<marco.trevisan@canonical.com> wrote:
>
> Hi Rajat,
>
> The merge proposals are now in place after discussing a bit more with upstream:
>
>  - https://gitlab.gnome.org/GNOME/gsettings-desktop-schemas/-/merge_requests/49
>  - https://gitlab.gnome.org/GNOME/mutter/-/merge_requests/1952
>  - https://gitlab.gnome.org/GNOME/gnome-control-center/-/merge_requests/1032

It seems that the subject kernel patch series (privacy screen support)
from Hans, has now satisfied all the requirements that were needed for
it to be accepted upstream, and there aren't any open comments that
need to be addressed.

I was wondering when would it be applied to the upstream kernel?

Thanks,

Rajat


>
> This is all implemented and working for the wayland backend, for X11 I'm
> looking at it right now, even though it seems that we don't get any
> RRScreenChangeNotify on hotkey changes, and monitoring udev directly
> seems overkill. Anything should be adjusted at lower levels?
>
> Cheers
>
> On lug 13 2021, at 9:25 pm, Rajat Jain <rajatja@google.com> wrote:
>
> > Hello Hans, Marco, et al,
> >
> > On Tue, Apr 27, 2021 at 10:03 AM Marco Trevisan
> > <marco.trevisan@canonical.com> wrote:
> >>
> >> Hi,
> >>
> >> >>> There now is GNOME userspace code using the new properties:
> >> >>> https://hackmd.io/@3v1n0/rkyIy3BOw
> >> >>
> >> >> Thanks for working on this.
> >> >>
> >> >> Can these patches be submitted as merge requests against the upstream
> >> >> projects? It would be nice to get some feedback from the maintainers,
> >> >> and be able to easily leave some comments there as well.
> >>
> >> FYI, I've discussed with other uptream developers about these while
> >> doing them, and afterwards on how to improve them.
> >>
> >> > I guess Marco was waiting for the kernel bits too land before
> >> > submitting these,
> >> > but I agree that it would probably be good to have these submitted
> >> > now, we
> >> > can mark them as WIP to avoid them getting merged before the kernel side
> >> > is finalized.
> >>
> >> I'll submit them in the next days once I'm done with the refactor I've
> >> in mind, and will notify the list.
> >
> > Any updates on the privacy-screen patchset? Can Hans' patchset be
> > accepted upstream now?
> >
> > Thanks,
> >
> > Rajat
> >
> >>
> >> And for sure we can keep them in WIP till the final bits aren't completed.
> >>
> >> Cheers
> >
