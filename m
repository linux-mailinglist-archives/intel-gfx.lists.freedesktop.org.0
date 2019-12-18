Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD8B12462D
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 12:53:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C55296E2C8;
	Wed, 18 Dec 2019 11:53:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com
 [IPv6:2607:f8b0:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E4C36E2C8
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 11:53:35 +0000 (UTC)
Received: by mail-ot1-x342.google.com with SMTP id k14so2206247otn.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 03:53:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zxFvtFTUUwA+ohr/zrRpzlWmODeoFm2SoCv2eQrZOew=;
 b=J48SMSEiIFOTZZrDBYTL8471LENC+N0zDlbkFHNuPd/2b+nORHyKXx8d+YGno8LNAG
 NtHMUA/vq9d1ti4k0oikgyLm1T9J0OAssIWOJY5Crw9urZmg41ZGRIRDsPY/zGDMqEhx
 66BavbQBE34xD3VQEIkVDXmLLsvxLewI1nvW8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zxFvtFTUUwA+ohr/zrRpzlWmODeoFm2SoCv2eQrZOew=;
 b=e1xUCidY0bZoLoD9WL6g/meedtX4geBfn/aBRshHLkGzcbcqA/kRV0iESaezEllgNP
 9kwRIiasPvAOHRJCsQJUKVGnIcy3hhd53ngYCz2H2J/dpQwjVyYdYRNrNAcMWeyuZfps
 npYrwfvdHIveWuo2DP03wZzDC5voBVxnXlekTBnSybATmiRLXbxYPM8TDw6bqQYuM9kv
 EmDwTCqC2HWkbK4H4sPunqpjA8fyuiRZwXuSEKumwihlEVt8BhCbgTwlmJ2nJLam4Tgm
 /dj4Gca8vfS5NmX91nyr/OiG/d0M2sxTGe4AYy6y/MHuhpBIQYbUIlvPx7lg8kfkH+E0
 dQFw==
X-Gm-Message-State: APjAAAUkhgAJRqXr6+8oq3WWp/uwwn4LU/3hRgN18Qkn2gJXHIajginr
 zjhb1q4ldVJbxvQffyKqlFnaoMJjwrknB8t+gQqCWw==
X-Google-Smtp-Source: APXvYqzOWxFUYC1FyvGnADEA9Hj69nxuYFuE8i0P3qMz16x3t8aw/ipFN63K/R08PfO4EqHEfOLYiOtz+OqGLgE1lF4=
X-Received: by 2002:a05:6830:1415:: with SMTP id
 v21mr2319204otp.188.1576670014731; 
 Wed, 18 Dec 2019 03:53:34 -0800 (PST)
MIME-Version: 1.0
References: <20191216122331.43c766f1@canb.auug.org.au>
 <20191217131937.GZ624164@phenom.ffwll.local>
 <20191218072204.06ca0cd9@canb.auug.org.au>
In-Reply-To: <20191218072204.06ca0cd9@canb.auug.org.au>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 18 Dec 2019 12:53:23 +0100
Message-ID: <CAKMK7uHP2LL=pZA3ppbz-+=wKs6QXY_7360xTjMUc-Qqp1ftrg@mail.gmail.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: [Intel-gfx] linux-next: build failure after merge of the
 drm-misc tree
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
Cc: Wolfram Sang <wsa@the-dreams.de>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 17, 2019 at 9:22 PM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>
> Hi Daniel,
>
> On Tue, 17 Dec 2019 14:19:37 +0100 Daniel Vetter <daniel@ffwll.ch> wrote:
> >
> > On Mon, Dec 16, 2019 at 12:23:31PM +1100, Stephen Rothwell wrote:
> > >
> > > After merging the drm-misc tree, today's linux-next build (x86_64
> > > allmodconfig) failed like this:
> > >
> > > drivers/gpu/drm/bridge/analogix/analogix-anx6345.c: In function 'anx6345_i2c_probe':
> > > drivers/gpu/drm/bridge/analogix/analogix-anx6345.c:738:30: error: implicit declaration of function 'i2c_new_dummy' [-Werror=implicit-function-declaration]
> > >   738 |    anx6345->i2c_clients[i] = i2c_new_dummy(client->adapter,
> > >       |                              ^~~~~~~~~~~~~
> > > drivers/gpu/drm/bridge/analogix/analogix-anx6345.c:738:28: warning: assignment to 'struct i2c_client *' from 'int' makes pointer from integer without a cast [-Wint-conversion]
> > >   738 |    anx6345->i2c_clients[i] = i2c_new_dummy(client->adapter,
> > >       |                            ^
> > >
> > > Caused by commit
> > >
> > >   6aa192698089 ("drm/bridge: Add Analogix anx6345 support")
> > >
> > > interacting with commit
> > >
> > >   2c2f00ab1641 ("i2c: remove i2c_new_dummy() API")
> > >
> > > From Linus' tree.
> > >
> > > I have applied the following fix up patch for today:
> > >
> > > From: Stephen Rothwell <sfr@canb.auug.org.au>
> > > Date: Mon, 16 Dec 2019 12:11:19 +1100
> > > Subject: [PATCH] drm/bridge: fix up for removal of i2c_new_dummy()
> > >
> > > Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>
> >
> > Thanks pulled into drm-next since I just processed the first drm-misc-next
> > pull.
>
> Thanks.  For the future, though, merge fixes like this should be part
> of the actual merge commit to avoid bisection problems.

I flip flop on this one, between retaining your contribution
explicitly and merging them in. Usually I squash them in, but this
felt substantial enough to retain explicitly. Worst case if someone is
unlucky they need to git bisect skip once. I guess next time I should
do a topic branch, apply it there on top of the pull, and then pull
that in so that it's both pretty history and no bisect hole.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
