Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 718803FC4C8
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Aug 2021 11:52:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E339898A3;
	Tue, 31 Aug 2021 09:52:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com
 [IPv6:2607:f8b0:4864:20::d29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4441F898A3
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Aug 2021 09:52:01 +0000 (UTC)
Received: by mail-io1-xd29.google.com with SMTP id f6so23963061iox.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Aug 2021 02:52:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=astier-eu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=HtHyg8rQp5wB2dqxPJUR6f3KHhh9TxPYkel+BqDOL4A=;
 b=FcmrJN7u6bJB28HNRKhVZIUw+ZATnS9aCmqqC48oXwe9wLet89Kb4EGDZ9f0VethpP
 ZKb9YsFZOUnLspfMiunp+rrNWA2qdFPvLrm2TF5bwY0wO96qzmeUnAE8krFxB+ZH5D8T
 of/UHYGQQ/C0cKlSMbjfqvR3BfH1ve0Mv6Kkwq1IIioB4ADpn1bffUqc/r/z49zr7h7e
 LFnsyXhWeb7KLOCmMKvnejEHcE8lqAan8LykhqSf9+ruHqTsBW5sGs/d6bLJlInfRa1k
 B78ut8Ss/J2ZRSh8iYpkmsHsxqHixi9UwTZF1s5dSon30/ujWV+SPj3+Rux9NqYaA2yi
 IqSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HtHyg8rQp5wB2dqxPJUR6f3KHhh9TxPYkel+BqDOL4A=;
 b=OlT55BIebhzEc3KbHXZAKQx0wDDnnJc8C8p+/kIg5VSeMSsaN6tej4inAYa5rBekoe
 N3DvP3PCWCo8BadMNHLqPaZ2q/BzEtRiEeUEnTitiDu/CMJ6Sg8sxT52CfCvlYqUxAAt
 O4Z3ONOsPV3GlqYmsr29muej31zPiFp3fWEOc+0oLvQPjvayixkAb8qi4/Fb2wK58zco
 j1zukRER3eC2zt9iqvec7H8Mqwf1fkEC+RslE7vtLrcw/v1bg38PwH/RSSXNZxOq8saJ
 Ni4T3+gTwDAz6kcyoldGZrV25piNxOdgjyBNJsMQdIPrVZ1lkDa6tKUS2e4425V5KWNt
 60TA==
X-Gm-Message-State: AOAM533gEUSVASsmLodNwwRI5B/6mDXQDausM6vtQJiULeBO2v9P3peY
 NG4W693VLFFN0e7k8WlD+cRW5oax8JB9+TJbxaT0Ng==
X-Google-Smtp-Source: ABdhPJxm+QXPOQqeBc/6xcKSl5KqQc8mT62v9Cr48x+RKcWVtGaGJ9c0kNxiMwl1GPLJJLVB/9aQG3kDxs7/JxEXWl8=
X-Received: by 2002:a6b:8bcf:: with SMTP id
 n198mr12556204iod.178.1630403520626; 
 Tue, 31 Aug 2021 02:52:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210817204329.5457-1-anisse@astier.eu> <87pmtuarhh.fsf@intel.com>
In-Reply-To: <87pmtuarhh.fsf@intel.com>
From: Anisse Astier <anisse@astier.eu>
Date: Tue, 31 Aug 2021 11:51:49 +0200
Message-ID: <CALUN=qJ9DX2nRPXUb08t7orJY1=+O+Y3Th=dgiURc8Z4VYvw8A@mail.gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 Hans de Goede <hdegoede@redhat.com>, Uma Shankar <uma.shankar@intel.com>, 
 Daniel Dadap <ddadap@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 0/2] GPD Win Max display fixes
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

On Tue, Aug 31, 2021 at 11:33 AM Jani Nikula <jani.nikula@intel.com> wrote:
>
> On Tue, 17 Aug 2021, Anisse Astier <anisse@astier.eu> wrote:
> > This patch series is for making the GPD Win Max display usable with
> > Linux.
> >
> > The GPD Win Max is a small laptop, and its eDP panel does not send an
> > EDID over DPCD; the EDID is instead available in the intel opregion, in
> > mailbox #5 [1]
> >
> > The first patch is based on Jani's patch series [2] adding support for
> > the opregion, with changes. I've changed authorship, but I'd be glad to
> > revert it
>
> If you don't mind, please just add:
>
> Co-developed-by: Jani Nikula <jani.nikula@intel.com>

I don't mind at all, I think you should be first author for this
series, I just didn't feel like giving you the blame for the bugs
after this many modifications, without asking first. Will be in next
iteration.

Anisse


>
>
> Thanks,
> Jani.
>
> >
> > The second patch is just to fix the orientation of the panel.
> >
> > Changes since v1:
> >  - rebased on drm-tip
> >  - squashed patch 1 & 2
> >  - picked up Reviewed-by from Hans de Goede (thanks for the review)
> >
> > Changes since v2:
> >  - rebased on drm-tip
> >  - updated commit message
> >
> > When v2 was initially sent [3] Ville Syrj=C3=A4l=C3=A4 suggested that i=
t might be
> > a good idea to use the ACPI _DDC method instead to get the EDID, to
> > cover a wider range of hardware. Unfortunately, it doesn't seem
> > available on GPD Win Max, so I think this work should be done
> > independently, and this patch series considered separately.
> >
> > [1]: https://gitlab.freedesktop.org/drm/intel/-/issues/3454
> > [2]: https://patchwork.kernel.org/project/intel-gfx/patch/2020082806194=
1.17051-1-jani.nikula@intel.com/
> > [3]: https://patchwork.kernel.org/project/intel-gfx/patch/2021053120464=
2.4907-2-anisse@astier.eu/
> >
> >
> > Anisse Astier (2):
> >   drm/i915/opregion: add support for mailbox #5 EDID
> >   drm: Add orientation quirk for GPD Win Max
> >
> >  .../gpu/drm/drm_panel_orientation_quirks.c    |  6 ++
> >  drivers/gpu/drm/i915/display/intel_dp.c       |  3 +
> >  drivers/gpu/drm/i915/display/intel_opregion.c | 69 ++++++++++++++++++-
> >  drivers/gpu/drm/i915/display/intel_opregion.h |  8 +++
> >  4 files changed, 85 insertions(+), 1 deletion(-)
>
> --
> Jani Nikula, Intel Open Source Graphics Center
