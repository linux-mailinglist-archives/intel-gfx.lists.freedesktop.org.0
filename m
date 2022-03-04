Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3AE4CD5A7
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 14:56:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0678D10F980;
	Fri,  4 Mar 2022 13:56:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com
 [IPv6:2607:f8b0:4864:20::734])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82A2A10E8F7
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 11:26:10 +0000 (UTC)
Received: by mail-qk1-x734.google.com with SMTP id b20so6153867qkn.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Mar 2022 03:26:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=A0godyTPEn2FgOlGrx2QRkrSBkW5MJikxlTCkI4Pnyk=;
 b=ZAwzNTGO8wtVj+U0QClTskN4x1J14p56TsGiFUeS6CeBsuE5ZUPpitJmK7R4hpv6bv
 JJo07K4dRItIO5xXEHo1b/Aezb1mKICt8OsoCrSbfwOTwRR44hwhHI/4DFBFPXCdH7g9
 /v5Iu34zljY1LjplMCHutrkjvGGvqELqnX34uHF2zl9ujv3/VNqNqu966ZKkCkUNQzDP
 0CRNEvUcSySEldP3hkP04IuGL0nKanY84oDdJErFXg35dnqc3qgT54er+vO0uoSTsRYq
 B8M7VSfuJq6kOPaj8O/RYDtsruz2ygQjz5hp5/Xp7bb/bLTYmG7WH2Cc+ZzUFP2lhMry
 wNWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=A0godyTPEn2FgOlGrx2QRkrSBkW5MJikxlTCkI4Pnyk=;
 b=L5p7fmNGZxoAQc1SU8LPbZmq17hx0l0cMkwaWZ8cp20sV0K74ne+EhAjGO6f0+kZoZ
 Wkro+8fPyGIJf6wITqnFKDKCjJAZp29bSeh2diHqk4mNlQ9opeOXqVKpf1hDS+7c2dGY
 k1a3pIfDSIHoXgNOnkhYS5gdk8I0PzugqNBdvIs119RtiUj+yH6MampHjRrmCA/m1PUY
 fns4qQgBKr79dcosOQmHCcYaHbeQ8jKg15/sRUrS9hBKwHmscv83u3tueNb0EBqfvLUp
 yZFc0l4hMIo6x7CbAbnxzFbxHLwr+3Fg7QMtIXp5jMo1UzCTj72rR89kzwz+sRZVuYiX
 0+0w==
X-Gm-Message-State: AOAM530rGSxe/7la4burdzrkRZ7X+bqdb5X1LMDHA19cuYu923xPPSsY
 LxVq1RvjCvZisUlaik4OyGApQOp2PKZYg5iIiXd2Vw==
X-Google-Smtp-Source: ABdhPJzVzQPUSk4nBKVCSHJzDo49mjdGomgO75XctxuXD0fkyEDwyjc3tHXhGI7M4cESOS2ys1tT88G+Gdp9xrs/+yk=
X-Received: by 2002:a37:6215:0:b0:508:c213:72de with SMTP id
 w21-20020a376215000000b00508c21372demr2214499qkb.30.1646393169553; Fri, 04
 Mar 2022 03:26:09 -0800 (PST)
MIME-Version: 1.0
References: <Yfp8Q6OFqTAvESOi@pendragon.ideasonboard.com>
 <87y22ts948.fsf@intel.com>
 <YfqGbqQQz5vrDaLI@pendragon.ideasonboard.com> <87v8xxs2hz.fsf@intel.com>
 <CAF6AEGtdnWWhGp7U7nAPD4r3Uoe5BJKVm2rQ2MS=q5GqF6MYDA@mail.gmail.com>
 <YhyB0WmJDWVFO1se@pendragon.ideasonboard.com> <871qzn6vmc.fsf@intel.com>
 <Yhy/6+z7QshG+qOo@pendragon.ideasonboard.com>
 <YhzROBOwTUkZw3Ez@pendragon.ideasonboard.com>
 <4d8daabe-10d9-a3cf-d305-68414cffe4ed@quicinc.com>
 <Yh+4EOKA5FgrlZrF@pendragon.ideasonboard.com>
 <0cfd36a2-26e4-309d-d8e9-e3bf8a5d2417@quicinc.com>
 <MWHPR11MB174187335183FC24BE0F1EA5E3059@MWHPR11MB1741.namprd11.prod.outlook.com>
 <CAA8EJppTVN1EnytD5mCmr4ZTi4M8u9ENOmJuweNyDRkB3LEHnw@mail.gmail.com>
 <MWHPR11MB1741708DEFD56E02C1BBC7A3E3059@MWHPR11MB1741.namprd11.prod.outlook.com>
In-Reply-To: <MWHPR11MB1741708DEFD56E02C1BBC7A3E3059@MWHPR11MB1741.namprd11.prod.outlook.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 4 Mar 2022 14:25:58 +0300
Message-ID: <CAA8EJppHOJzJt=oapYhshajWt3mSXKjoMUdcnb3T_i+62Xo8NA@mail.gmail.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Fri, 04 Mar 2022 13:56:25 +0000
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/rcar_du: changes to rcar-du driver
 resulting from drm_writeback_connector structure changes
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
Cc: Carsten Haitzler <carsten.haitzler@arm.com>, "Nikula,
 Jani" <jani.nikula@intel.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 4 Mar 2022 at 13:47, Kandpal, Suraj <suraj.kandpal@intel.com> wrote=
:
>
> Hi,
> > > Hi Abhinav,
> > > > Hi Laurent
> > > >
> > > > Ok sure, I can take this up but I need to understand the proposal a
> > > > little bit more before proceeding on this. So we will discuss this
> > > > in another email where we specifically talk about the connector cha=
nges.
> > > >
> > > > Also, I am willing to take this up once the encoder part is done an=
d
> > > > merged so that atleast we keep moving on that as MSM WB
> > > > implementation can proceed with that first.
> > > >
> > > > Hi Jani and Suraj
> > > >
> > > > Any concerns with splitting up the series into encoder and connecto=
r
> > > > OR re- arranging them?
> > > >
> > > > Let me know if you can do this OR I can also split this up keeping
> > > > Suraj's name in the Co-developed by tag.
> > > I was actually thinking of floating a new patch series with both
> > > encoder and connector pointer changes but with a change in
> > > initialization functions wherein we allocate a connector and encoder
> > > incase the driver doesn=E2=80=99t have its own this should minimize t=
he effect
> > > on other drivers already using current drm writeback framework and al=
so
> > allow i915 to create its own connector.
> >
> > I thought that Laurent was quite strict about the connector. So I'd sug=
gest
> > targeting drm_writeback_connector with an optionally created encoder an=
d
> > the builtin connector
> In that case even if we target that i915 will not be able to move forward=
 with its
> implementation of writeback as builtin connector does not work for us rig=
ht now
> as explained earlier, optionally creating encoder and connector will help=
 everyone
> move forward and once done we can actually sit and work on how to side st=
ep this
> issue using Laurent's suggestion

This is up to Laurent & other DRM maintainers to decide whether this
approach would be accepted or not.
So far unfortunately I have mostly seen the pushback and a strong
suggestion to stop treating each drm_connector as i915_connector.
I haven't checked the exact details, but IMO adding a branch if the
connector's type is DRM_CONNECTOR_VIRTUAL should be doable.

> >
> > > We can work on Laurent's suggestion but that would first require the
> > > initial RFC patches and then a rework from both of our drivers side t=
o
> > > see if they gel well with our current code which will take a
> > > considerable amount of time. We can for now however float the patch
> > > series up which minimally affects the current drivers and also allows
> > > i915 and msm to move forward with its writeback implementation off
> > > course with a proper documentation stating new drivers shouldn't try =
to
> > make their own connectors and encoders and that drm_writeback will do
> > that for them.
> > > Once that's done and merged we can work with Laurent on his proposal
> > > to improve the drm writeback framework so that this issue can be side
> > stepped entirely in future.
> > > For now I would like to keep the encoder and connector pointer change=
s
> > together.
>
> Best Regards,
> Suraj Kandpal



--=20
With best wishes
Dmitry
