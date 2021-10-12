Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1725D429C3B
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Oct 2021 06:18:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B1F089C97;
	Tue, 12 Oct 2021 04:18:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7988989C97
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Oct 2021 04:18:18 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id g8so75787855edt.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Oct 2021 21:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=lorAAogfhx75ijUnnYbBd7GCQZ/IAVgc9KmMZuhBP1Q=;
 b=RfHW1/rPjm378wJJsmYtDa9cRy9aluxaaBFJ8Nz6PCuOsR7+yBOsPyB5kVETmDyBHo
 aErxc9KAEDT2YjbRWO4LA1438vGJcc6OShSfDXyLAg04Wn7eB4bt7i4wY/P8WpcUNOOa
 wkMWNpauV1GeGbqS4gp8F9ZYVt5WPJPf0IkR4rnV6Kiiw5oZKkp+4Pm/mZiwypC3Exmc
 sLjzq5YreQd+E7yPHsvqAwAal24NrwDwiVFxB+wMhgft1PMV0pPoMDbTvtBNj7Rv17rN
 yomQ9e8NnMriJk6TpaQTeJBiLF9T4HoMUzeM7Rh2piZoJCOCRXlSrVfqdIHbDWAMXDVp
 46vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=lorAAogfhx75ijUnnYbBd7GCQZ/IAVgc9KmMZuhBP1Q=;
 b=wAZpnZjpfhwxdCs9l1kV/Otp8m7pQvulJ+vSP25TQK23Q1/pUehgn4aLehinvLUZ8a
 wSM4HyMjeG7kNZSWZeAQ5VTtjAKV+s1XYuvoEwnz3ESrLQFA+B//KBpBhhGb7tGduEUz
 ZWna1s2GdTTySrggKlGxGioc/JH2TEGHSDoDP9ew6YG6cz5YjGNzWibVmrx4lVXSMQTG
 MyMCitkBHZpvQ/3fx1n6Ib5PmEc0addgeOK66DhQUEPVCVh9HQaTY/m0q2fyZZO//nEv
 KQW/yuHiQvrQqcaFItd6xXLr8Y6Og4pW8xPsc+JL+hJ1TITB05e9EKLR1xehBzo0sk/5
 oUxg==
X-Gm-Message-State: AOAM530l1m2RFPezM9IwNLDrpbYNrKA1lrUv4wyWS9WXJcRRSRsRkwG1
 WHa6vIsqPvkTje42pRcemHCIlluFUihIMy2TJEA=
X-Google-Smtp-Source: ABdhPJzYmfIR1oIG2+UHm1oThsuxffWS1V6UIG/H4iKtQoSgIM5VYt0WZ8/3M0FWm5b7Y16Em1TwopxujrliG05inGE=
X-Received: by 2002:a50:da48:: with SMTP id a8mr46013924edk.155.1634012296922; 
 Mon, 11 Oct 2021 21:18:16 -0700 (PDT)
MIME-Version: 1.0
References: <20211007031318.3088987-1-airlied@gmail.com>
 <87ee8xyumd.fsf@intel.com> <YV7VWyYyeNF4ep0d@intel.com>
In-Reply-To: <YV7VWyYyeNF4ep0d@intel.com>
From: Dave Airlie <airlied@gmail.com>
Date: Tue, 12 Oct 2021 14:18:05 +1000
Message-ID: <CAPM=9tzGY2miiYePCw6dY5J3QOtzvKZze=cqwXxDWczOOWKrjA@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>, 
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [RFC PATCH 0/8] drm/i915/display: refactor plane
 config + pin out
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

On Thu, 7 Oct 2021 at 21:09, Ville Syrj=C3=A4l=C3=A4
<ville.syrjala@linux.intel.com> wrote:
>
> On Thu, Oct 07, 2021 at 01:52:42PM +0300, Jani Nikula wrote:
> > On Thu, 07 Oct 2021, Dave Airlie <airlied@gmail.com> wrote:
> > > This is another series in the refactor intel_display.c into more mana=
geable
> > > places.
> > >
> > > This moves the initial plane config and all the fb pin/unpin code out=
.
> > >
> > > It also refactors both a little to make the interfaces cleaner.
> >
> > I had a few nitpicks I commented on. Overall this looks good to me, but
> > I'd like Ville's input on the code movement at the high level, are the
> > split and files sane etc. I can do the detailed review after that.
>
> Some of it feels a bit ad-hoc, but I don't really have a better
> idea for splitting some of these right now. So might as well go
> with this I guess. cscope will find the stuff for me in the end,
> at least after I remember to have it reindex.

My main goal was separation of things that interface with gem into
separate files for now.

I'd like to formalise that interface a bit more if we can, it might
not bear fruit but I think it would be independently useful cleanup
anyways.

Dave.
