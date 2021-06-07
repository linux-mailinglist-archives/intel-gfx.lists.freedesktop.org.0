Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 257DF39E6EF
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jun 2021 20:59:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C7BA6E51D;
	Mon,  7 Jun 2021 18:59:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F6126E48E
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Jun 2021 18:59:32 +0000 (UTC)
Received: by mail-lf1-x12b.google.com with SMTP id w33so28055244lfu.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 07 Jun 2021 11:59:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mGRoup6CGNLviWj1xjNihKwDhb/cVmyNXZU4RqzBG30=;
 b=oPlK4kukkPKtjizMzBchZyE0XS7mg+YWh+rA4q2KBPQDsnTGOPZgtSH1Nd1+b8EID1
 S5JIjFlU2Qf+FoqDbOJn7PgA2iA5h6Qw5oOwS7adWcp+Xg1/VtzzRwYMKWK6PmxMxA5/
 jBpTN6+6RmbAHA8Y64oW6bjeCn57Ug/qY8F90=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mGRoup6CGNLviWj1xjNihKwDhb/cVmyNXZU4RqzBG30=;
 b=OG5h2hU6yMDbgIav1Plv3ybJdRcyxb5J7XLBAOkSEB9u/yuIrU0Inw9OD1xgusGPUP
 K2c/5Yf7woQLRgTp93SVUnyl/1wikQU74E3bV+mDp/k8eRkSMUwLcd8sk9Gqo6j3GIs0
 0SqolGn4LowWrMwqg41fscZLlt1dmZQy6dgGuN3j4G4kdVelpuq8b/DryK9evx98r4Az
 kh1GshGMugfZ/LRzJ/74+tNSiJrr/ZqUDZNDzJL3hnuy+hAWwosVmW002jsJzsEEUn91
 bS3XH10c3gwF+bXrVc/2/1JVDa5GJN558C+QeCcNuldopU8IClYMDsyZ9EsD3VtZSX4f
 JnAA==
X-Gm-Message-State: AOAM5323YDjmnNzpAnOCiOV0z2nWVXv/JwQgw4qGR8TITb4RHYeWqYhs
 y4isga6dn7Z+b0wRXRPG8FDNZhGgoIGAzSnLLqHgTw==
X-Google-Smtp-Source: ABdhPJzxBCq3SEu2aoVwBv4Hz/MFVOjtTg9YedHlxv2HQEwTdYGdQhzmvR+mfv8KTm+eoluPRDPC+AwAA5IYz6NHEnQ=
X-Received: by 2002:a05:6512:31c4:: with SMTP id
 j4mr5608069lfe.493.1623092370442; 
 Mon, 07 Jun 2021 11:59:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210531153922.4683-1-shawn.c.lee@intel.com>
 <CAJUqKUo+ZK_rVCxHfuGD+xQN6DbJUz-qM4n6jD5co0WuFk1Nhg@mail.gmail.com>
In-Reply-To: <CAJUqKUo+ZK_rVCxHfuGD+xQN6DbJUz-qM4n6jD5co0WuFk1Nhg@mail.gmail.com>
From: Mark Yacoub <markyacoub@chromium.org>
Date: Mon, 7 Jun 2021 14:59:19 -0400
Message-ID: <CAJUqKUq4bw9X=zwb3-Wxfebosbr8K0DsZ3Uf=WQxTeXyDPy44A@mail.gmail.com>
To: Lee Shawn C <shawn.c.lee@intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/kms_dp_dsc: Avoid SIGSEGV when
 release DRM connector.
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, "Lin,
 Charlton" <charlton.lin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 4, 2021 at 2:48 PM Mark Yacoub <markyacoub@chromium.org> wrote:
>
> On Mon, May 31, 2021 at 11:34 AM Lee Shawn C <shawn.c.lee@intel.com> wrote:
> >
> > Got SIGSEGV fault while running kms_dp_dsc test but did not
> > connect DP DSC capable monitor on eDP/DP port. This test daemon
> > should "SKIP" test without any problem. We found kms_dp_dsc
> > can't get proper drmModeConnector and caused this SIGSEGV fault
> > when release it. Make sure drmModeConnector is available before
> > free it can avoid this issue.
> >
> Tested on ChromeOS on TGL (Delbin) and JSL (Drawlat).
Tested on ChromeOS AMD (Zork) with Kernel 5.4
> Tested-by: Mark Yacoub <markyacoub@chromium.org>
> > Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> > ---
> >  tests/kms_dp_dsc.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/tests/kms_dp_dsc.c b/tests/kms_dp_dsc.c
> > index 2446fd82bba3..ea7c9f4f72ce 100644
> > --- a/tests/kms_dp_dsc.c
> > +++ b/tests/kms_dp_dsc.c
> > @@ -262,7 +262,7 @@ igt_main
> >         data_t data = {};
> >         igt_output_t *output;
> >         drmModeRes *res;
> > -       drmModeConnector *connector;
> > +       drmModeConnector *connector = NULL;
> >         int i, test_conn_cnt, test_cnt;
> >         int tests[] = {DRM_MODE_CONNECTOR_eDP, DRM_MODE_CONNECTOR_DisplayPort};
> >
> > @@ -311,7 +311,8 @@ igt_main
> >         }
> >
> >         igt_fixture {
> > -               drmModeFreeConnector(connector);
> > +               if (connector)
> > +                       drmModeFreeConnector(connector);
> >                 drmModeFreeResources(res);
> >                 close(data.debugfs_fd);
> >                 close(data.drm_fd);
> > --
> > 2.17.1
> >
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
