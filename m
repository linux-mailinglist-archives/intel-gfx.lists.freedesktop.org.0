Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3AC40FE98
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 19:25:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 857EA6E03E;
	Fri, 17 Sep 2021 17:25:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com
 [IPv6:2607:f8b0:4864:20::f2c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2691E6E039
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 17:25:31 +0000 (UTC)
Received: by mail-qv1-xf2c.google.com with SMTP id w8so6910921qvt.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 10:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=p9Wdpm3PSA3ThdYdzsHmj18B3OFNZmUu9ZK37+B/sXA=;
 b=MiEhajDEtlfmkDMoND8cuyhvIhfBuSMlc/EhJaGD+lkLlcJuKNZ76xtz6U9+KRKV1C
 IyvlpwDvhazxPoMO4zautNbQ+zDTNioitudaWEOuIn7iCvMFKAnnXANt3dye7v6UsYLZ
 ueLzU8q3Mft61+tgDnFm+v6QdiFKePN8WBkNukAKikOZ3+e72vFyRjwJRirDJX794H2P
 guThBiD/SRfY7ilMSZy7NpqGVt+Vxer/a6tf5JEp/dvL7JECXIoWF2mKA7QVJQTdVszS
 iY8aFTcXskm8bNmK3+QAJeZUIR4sd7oZOlDwxlF9MZiE5goDAssZlZXT+fTtHewskAbH
 KlJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=p9Wdpm3PSA3ThdYdzsHmj18B3OFNZmUu9ZK37+B/sXA=;
 b=cs8M08UQ2epbiknjroGbcdQ6+ey+UJlwKJ3u/SCGokCOI2rxg7IBcazlxRxsamw9gH
 24zg7CylUUJ9d7zdklO5SRczBwUpTHI/g9OO8M7tR00UTrMXZrCxom/QzHOa4OjjczsL
 YCeZ4tKOFUV3iDFaReZdC4lYpWAle80obnpCZUXAOwfd4stxVUgd2tOYlLQy7l8Zd5oP
 5QeHb1sQeQ17VF65HgNVrOJXJUZUHIbih2UEPKsRJcu2pIVt8kK4PJUbbfGwmh6Vqcn/
 keYpjkc2fS/8YgCOUkEF2YjWPqnmMct5h4UBDTHFTIWmykzmnLjgtY5CGcBv+SLiCHpw
 ndyA==
X-Gm-Message-State: AOAM533Ly/phKOeLdyj1rNB/BxsNPbdgSimVgwyJMBSmOyG9APaxBjc4
 f/kG4g5UnhHFIeapYhbOqPEblg==
X-Google-Smtp-Source: ABdhPJxy0iPe43C+sb2UJxr4WCzMyQAwirLD6q9JPWwd91MwFYk3IdM0k7kiIIS+zm2T3Xr76odp3A==
X-Received: by 2002:a0c:e2d3:: with SMTP id t19mr12202361qvl.23.1631899530240; 
 Fri, 17 Sep 2021 10:25:30 -0700 (PDT)
Received: from localhost ([167.100.64.199])
 by smtp.gmail.com with ESMTPSA id q7sm5295437qkm.68.2021.09.17.10.25.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 17 Sep 2021 10:25:29 -0700 (PDT)
Date: Fri, 17 Sep 2021 13:25:25 -0400
From: Sean Paul <sean@poorly.run>
To: Stephen Boyd <swboyd@chromium.org>
Cc: Sean Paul <sean@poorly.run>, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Sean Paul <seanpaul@chromium.org>, Rob Clark <robdclark@gmail.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-msm@vger.kernel.org
Message-ID: <20210917172525.GQ2515@art_vandelay>
References: <20210915203834.1439-1-sean@poorly.run>
 <20210915203834.1439-11-sean@poorly.run>
 <CAE-0n53uAEcj8Rpx36cRUU34k9mqtg2_tiXW_4+CYmrcihguHg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAE-0n53uAEcj8Rpx36cRUU34k9mqtg2_tiXW_4+CYmrcihguHg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 10/13] drm/msm/dpu: Remove
 encoder->enable() hack
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

On Thu, Sep 16, 2021 at 08:53:50PM -0700, Stephen Boyd wrote:
> Quoting Sean Paul (2021-09-15 13:38:29)
> > From: Sean Paul <seanpaul@chromium.org>
> >
> > encoder->commit() was being misused because there were some global
> > resources which needed to be tweaked in encoder->enable() which were not
> > accessible in dpu_encoder.c. That is no longer true and the redirect
> > serves no purpose any longer. So remove the indirection.
> 
> When did it become false? Just curious when this became obsolete.

In commit

commit cd6d923167b1bf3e051f9d90fa129456d78ef06e
Author: Rob Clark <robdclark@chromium.org>
Date:   Thu Aug 29 09:45:17 2019 -0700

    drm/msm/dpu: async commit support

There was a call to dpu_crtc_commit_kickoff() which was removed from
dpu_kms_encoder_enable(). That was the bit which required the back-and-forth
between ->enable() and ->commit().

> 
> >
> > Signed-off-by: Sean Paul <seanpaul@chromium.org>
> > Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-11-sean@poorly.run #v1
> >
> > Changes in v2:
> > -None
> > ---
> 
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> Tested-by: Stephen Boyd <swboyd@chromium.org>

Thanks!

-- 
Sean Paul, Software Engineer, Google / Chromium OS
