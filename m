Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F8F22BAE0
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 02:17:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5F9C6E8AB;
	Fri, 24 Jul 2020 00:17:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com
 [IPv6:2607:f8b0:4864:20::941])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0B3D6E8A9
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 00:17:37 +0000 (UTC)
Received: by mail-ua1-x941.google.com with SMTP id n4so2416274uae.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jul 2020 17:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Tn6bqYg/1KWkV4kpAzCYFhcP+XCPRuDgdoeZet33vWk=;
 b=awreHD28nDVNZexMGVyopatjZJnZVe7HOWZqVLh+RCrrko33Dtr7aUGgwOkz5TkDTZ
 0yYGVwi8WX8RUoZPeer0O6R6Mkxv2fwqIKd57tgnZhCiaJXkJVcV2SPbhNZ3XCGWvsmS
 wfHBen5QSZrel1hvkK/0sXZYsKhLRDS4KyFac=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Tn6bqYg/1KWkV4kpAzCYFhcP+XCPRuDgdoeZet33vWk=;
 b=Z976ws46q/GK+9nkfNbY7owM6FpFdlSg9faiu8nMvR820usChUTfUJVsTDfqRLSG4G
 Hv+Lg5XKa2Qwo9qD9X/N/pz08wL1Qz9A5hfsuEsiXU+xIjmK+Cvzjw3YplfEG3FFXqhp
 2rw4MADJApo4R1GvBOX7Cd7Dn6s8hCvvfO/cj0cNvjL/xKu8rAEHrlkmd4/mUKTZVdW+
 7zsleKVOb1g6Wl2zgzGtHIabiO3Y3m9QU4MqTNyYmHK/SvZWhdlShmfKDwf3IGWfvgtO
 lprk7wb7M5nUOPBEyZH+VfGWDhF1FvpDBiN4lTKz3HDH9DHg5zVcdgieRfqG93DL9HAG
 U1/g==
X-Gm-Message-State: AOAM532yi0egqfX0C9nJKXdAkmB4m/4gDjPOT7fPobs8UwchhWXESFV0
 4IrbNWeRN7Lv/Yf6JYuf6RV8VKmv8PXSXn2rw+9E9w==
X-Google-Smtp-Source: ABdhPJyap0e7CTwf8HrhrJhPhF9DOR7AKPD9OIoxL1bXe7v3Dk4cmLWDUcc1+/hhsto3hTn53fbsk/M7qmHWyPm46q8=
X-Received: by 2002:a9f:22c4:: with SMTP id 62mr6134025uan.135.1595549856863; 
 Thu, 23 Jul 2020 17:17:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200627070307.516803-1-drinkcat@chromium.org>
 <20200627070307.516803-2-drinkcat@chromium.org> <878sfanzft.fsf@kernel.org>
In-Reply-To: <878sfanzft.fsf@kernel.org>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 24 Jul 2020 08:17:25 +0800
Message-ID: <CANMq1KDugXcmvrGOJzcvWvbzScPDsQVuJ4gSDXTJan+FY1H3Ew@mail.gmail.com>
To: Felipe Balbi <balbi@kernel.org>
Subject: Re: [Intel-gfx] [PATCH 1/4] usb: cdns3: gadget: Replace
 trace_printk by dev_dbg
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
Cc: Peter Chen <peter.chen@nxp.com>,
 "Guilherme G . Piccoli" <gpiccoli@canonical.com>,
 Rafael Aquini <aquini@redhat.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@linux.ie>, Todor Tomov <todor.too@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Howells <dhowells@redhat.com>, Tiezhu Yang <yangtiezhu@loongson.cn>,
 Will Deacon <will@kernel.org>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Kees Cook <keescook@chromium.org>, devel@driverdev.osuosl.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Jayshri Pawar <jpawar@cadence.com>, Masahiro Yamada <masahiroy@kernel.org>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Andy Gross <agross@kernel.org>,
 Tomas Winkler <tomas.winkler@intel.com>, Alexey Dobriyan <adobriyan@gmail.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Pawel Laszczak <pawell@cadence.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Chao Yu <chao@kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Roger Quadros <rogerq@ti.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, linux-usb@vger.kernel.org,
 lkml <linux-kernel@vger.kernel.org>, linux-f2fs-devel@lists.sourceforge.net,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Colin Ian King <colin.king@canonical.com>,
 Andrew Morton <akpm@linux-foundation.org>, Divya Indi <divya.indi@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 23, 2020 at 9:17 PM Felipe Balbi <balbi@kernel.org> wrote:
>
> Nicolas Boichat <drinkcat@chromium.org> writes:
>
> > trace_printk should not be used in production code, replace it
> > call with dev_dbg.
> >
> > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> >
> > ---
> >
> > Unclear why a trace_printk was used in the first place, it's
> > possible that some rate-limiting is necessary here.
> >
> >  drivers/usb/cdns3/gadget.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/usb/cdns3/gadget.c b/drivers/usb/cdns3/gadget.c
> > index 5e24c2e57c0d8c8..c303ab7c62d1651 100644
> > --- a/drivers/usb/cdns3/gadget.c
> > +++ b/drivers/usb/cdns3/gadget.c
> > @@ -421,7 +421,7 @@ static int cdns3_start_all_request(struct cdns3_device *priv_dev,
> >               if ((priv_req->flags & REQUEST_INTERNAL) ||
> >                   (priv_ep->flags & EP_TDLCHK_EN) ||
> >                       priv_ep->use_streams) {
> > -                     trace_printk("Blocking external request\n");
> > +                     dev_dbg(priv_dev->dev, "Blocking external request\n");
>
> Instead, I would suggest adding a proper trace event here; one that
> includes "priv_ep->flags" in the output.

The patch was already merged by Greg
(https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/drivers/usb/cdns3/gadget.c?id=b3a5ce874c2619c9b8a6c5bbcfefdb95e0227600),
but feel free to do that as a follow-up CL.

Looks like Peter -- the main author, is ok with dev_dbg (also,
apologies for missing the R-b tag when I sent a v2 -- which is the one
that was merged by Greg).

Thanks,

>
> --
> balbi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
