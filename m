Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21EA342048A
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Oct 2021 02:33:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E8D76E131;
	Mon,  4 Oct 2021 00:33:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC2276E131
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Oct 2021 00:33:14 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id p13so29960638edw.0
 for <intel-gfx@lists.freedesktop.org>; Sun, 03 Oct 2021 17:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=86EIGb7xO0zSl69k1atfHFzpfvXSg75aoVbR83VtBsg=;
 b=mZYifjEIuBJ2Cc213Uw8eg5+IZgTvJZLL+lyGr6S9gveSnESZPBgNUQcP1F+CT0kjh
 8Y7a1wb2u/uoIblMMDDbAL0weW5BVZ0HMuwUgYvQiuDpVZQcGsYaEi8irX/XihdF+8L1
 Tsj/xCDueHRQxc6T7myilIAa8nzL4BZ5+tscHT2yrAqAki2NZucgWTv7d9gcmD8rCnlg
 Eosimxwo805A0jvsTukqm0PcALS/WN/jE+7wlgokIi0tJH+epiVmTCAl1a0bO/BCy2k2
 FEFoU3r6WqXmczuy1jIW9MEia6dLoABUSkKMq2POG2pxNrhhhHXnNAhDRXdTLKI1S2iB
 NKRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=86EIGb7xO0zSl69k1atfHFzpfvXSg75aoVbR83VtBsg=;
 b=PudVCGalkpfvFooXUanYld4l6YWv83gw/ANtBgrVo2CECtTVzoger8RSVg6ZnplNVa
 hnjMnY8RhLIJ55mlbBL+GsYkQPWMNwwut/oXlzuyfhQLEEiO6bDkFzz32s50XXUoFITF
 rbTD6A6lqWNs1+G1zIkzv9QMHwvyVwQyR5Vw2v3oms2YHIgjDj+zqtHc/6ESJwnkaLqB
 TPXo842APdBLywvKo/xrC6VJ4UezX3RUpNQMq+jVz/187OdHLb+KVeUuSOEIoppv3L6r
 W6ZIEvYLGJtppx7SdtTDaVCboudgSqJZzZ63UdxReaMkOoNH+VmOrVTCORjgpC9ogw+k
 y7NQ==
X-Gm-Message-State: AOAM532OEmuysOMl1dacJMp+W7K6IZ1iPhbLiqpvmhXWymJpdZhp2E3c
 HZFI3QUwWxJw+7wTJWNHAcI5JTElcj1IGQX35dI=
X-Google-Smtp-Source: ABdhPJyZNrCMJ8J9aI0ZqedkmWVXElvuP4Mab2EyQP6MwYGrWIbwzmd3w+4q/OF+ZTR5gCMjZjq3VPpCl26d8MNrq84=
X-Received: by 2002:a50:d94c:: with SMTP id u12mr14311925edj.371.1633307593240; 
 Sun, 03 Oct 2021 17:33:13 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1632869550.git.jani.nikula@intel.com>
 <41c3e1896162fc08e22e40b00642791365a8c00e.1632869550.git.jani.nikula@intel.com>
 <YViykYGH9KG1B2f/@intel.com>
In-Reply-To: <YViykYGH9KG1B2f/@intel.com>
From: Dave Airlie <airlied@gmail.com>
Date: Mon, 4 Oct 2021 10:33:01 +1000
Message-ID: <CAPM=9txVSOfScH9LZZsYCdcFqikA=EN=y7aJ3BKk0Qtq1PxxJw@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>, 
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Dave Airlie <airlied@redhat.com>, 
 "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/24] drm/i915/uncore: split the fw get
 function into separate vfunc
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

On Sun, 3 Oct 2021 at 05:27, Ville Syrj=C3=A4l=C3=A4
<ville.syrjala@linux.intel.com> wrote:
>
> On Wed, Sep 29, 2021 at 01:57:45AM +0300, Jani Nikula wrote:
> > From: Dave Airlie <airlied@redhat.com>
> >
> > constify it while here. drop the put function since it was never
> > overloaded and always has done the same thing, no point in
> > indirecting it for show.
> >
> > Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Dave Airlie <airlied@redhat.com>
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> This has totally broken snb and ivb machines. Total death
> ensues somewhere in uncore init after some backtraces fly by.
> Didn't get any logs out to disk unfortunately. Please revert.
>
> Sadly CI is still afraid to report when machines disappear.
> For the bat report you at least get a list of machines that
> were awol, but the shard run seems to not even mention that
> all snbs suddenly vanished.
>
> I've said it before and I'll say it again. We really should
> *not* be loading i915 when the machine boots. That way we'd
> at least get the machine up and running and can report that
> loading i915 is the thing that killed it...

That is frustrating, I've sent a oneline fix that should fix it up.
hopefully CI will pick it up.

Dave.
