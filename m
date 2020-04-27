Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7827B1BA7C3
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 17:19:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D169A6E317;
	Mon, 27 Apr 2020 15:18:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com
 [IPv6:2607:f8b0:4864:20::1029])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C6686E316
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 15:18:58 +0000 (UTC)
Received: by mail-pj1-x1029.google.com with SMTP id a32so7639546pje.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 08:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dzIVynL7ezZ8xRib3DngZl2mHZQyTnO4zjqDLXZG7i8=;
 b=eh+y29aiXGf40Nmenzync48FhMIIYYgyzM63LLjxS+FcaAtV7jbXiGpCI4nRPD4tfk
 4o3rdrpxESHNFupxuD4WDJR1GOTq8L4ovAhZHNSa3YADpqx5RyVIJfwHmpwKFIAqCGvt
 e8Dhtrp5Xv809cQjVsj9F/rhOcY7IjIhoAOEAjHYY3ABMM8MtdUhorwGenmLTbsm7seZ
 oT7TMTDtUGprIhP4yXuOrYfp/EQAVSwWEMVmJQAcas8t/s04K7WZWnIo7Yxms6+8OhJK
 JilU1DDQv//89hM6JMkrC6owDJ6AbC9DDIe/q/nWFGrjx3iU/G6dTNVWxMf7S7bnVcZx
 1IPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dzIVynL7ezZ8xRib3DngZl2mHZQyTnO4zjqDLXZG7i8=;
 b=ceh8oRIMbperYVqTit1yZTrHuHC/7nRtLZAPjahfxN22OstpWIIn8cAFxYAnQI9HyB
 OIuEkzzYf+/0TsKiVcRt/Hc6cDlnvjihownBb91rTyo/4vGMXblAG+lBOqiOA05Iitq9
 6BX3Q7uNZTRNE0/V/490LNRR8ZH9Q32cG/JAY7G5tzShs8/bZ/RQZyNGMUStrEmpEnyy
 OcYby17Sn9ZZa0ecSYb7OqOv4uuBj4uJy2+6bLeSQD6QYdAMty52lB9JJEYq7FWV+p5z
 Rp/wxUru95IDWOGL/hnj7OeUWNP5NJ8ZS9zsXfUjRecbpD145KPgC+cApgqjjlU29Ooe
 W0Ug==
X-Gm-Message-State: AGi0PubDY6+1h2mEki+4zx4PQGYA+HqyOe9iST/4etpqtxd66dD1olur
 G8RhxSvYJY6bignpKrfd/4OznagLJl51m1xv3KUfzEn+zLE=
X-Google-Smtp-Source: APiQypLTvxOriop6wVPIPhBPVrj2dbKHV37jzYuVeKbFR33FB0w2k2mCpz7QCSxMjhQSTWlX19yh09C9QnQ+6WhXYCI=
X-Received: by 2002:a17:90a:d985:: with SMTP id
 d5mr23749560pjv.171.1588000738033; 
 Mon, 27 Apr 2020 08:18:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200427032232.4307-1-apodtele@gmail.com>
 <20200427140248.GG6112@intel.com>
 <158799689628.17035.14733867368309109586@build.alporthouse.com>
 <CAJU=AjVj6BPrqXgWbooTd2VSs_ZxoSbJR0LguxXWim2qu7Giug@mail.gmail.com>
 <158799871806.17035.9616562654177490399@build.alporthouse.com>
In-Reply-To: <158799871806.17035.9616562654177490399@build.alporthouse.com>
From: Alexei Podtelezhnikov <apodtele@gmail.com>
Date: Mon, 27 Apr 2020 11:18:46 -0400
Message-ID: <CAJU=AjX8Mhy-KG27r_iQOeuRZ3PtPp9F2TUvA7BL+nNsJEzp1Q@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [patch] PCI ID review
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 27, 2020 at 10:45 AM Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Quoting Alexei Podtelezhnikov (2020-04-27 15:40:42)
> > >
> > > These do not exist. They are fake PCI-ID for Windows95 multi monitor.
> > > The single device appears twice on the bus as a second function. We
> > > never had that restriction and could do multiple monitors on the single
> > > device.
> >
> > Windows 10 drivers list them, they do show up on lspci and I'll quote
> > from Atom datasheet.
> > "This register is unique in Function 1 (the Function 0 DID is
> > separate). This difference in Device ID is necessary for allowing
> > distinct Plug and Play enumeration of function 1 when both function 0
> > and function 1 have the same class code."
> > Whatever this means.
>
> It means it's a hack for the Window's driver. There is no HW behind it.

Intel talks about two separate engines (threads?)
https://www.intel.com/content/www/us/en/support/articles/000005880/graphics-drivers/legacy-graphics.html
https://www.intel.com/content/www/us/en/support/articles/000005747/graphics-drivers.html
Still not buying?
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
