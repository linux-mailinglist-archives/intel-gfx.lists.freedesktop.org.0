Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0D227D31A
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 17:48:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAD146E506;
	Tue, 29 Sep 2020 15:48:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0046A6E505
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 15:48:51 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id m6so6003377wrn.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 08:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fR8KuPr8iJhbK+ragO8SvqMFit9K8ZYiP1H85F2xoVI=;
 b=NFjupw6QPB9ND6RAfW+OilzqxHWTXPuY3W1q9+22IWi2YqBvZsPt86vMNZ++RiNme1
 DYdgLO2qc0q+0x6TTRmqmQ7Tg0K8aFmyW5IfFd8sJYWiZsAyfeS4P2KVhOzIGYb6tGN6
 E9rw1KYN64bvG/w65eiez2itH9s/VgiciFrc7WzQkLGizPpteaewyHEDeFLVuxfi4Xfw
 i1u57SZSIm6CAgSv6+34Re8gX980Y6DueLMFf312zNUQPYqMmVfBjGvAr+71KHsX632z
 z58VSr93bekikXil/EYpapCUG4NTKFjv5ibND1IZhUZ2X+oqHja4sOciXHOWHB8OPxj/
 9lVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fR8KuPr8iJhbK+ragO8SvqMFit9K8ZYiP1H85F2xoVI=;
 b=YbRHqOxSHE8X3PHvquh3oSwSYa2rv0jKRnVzh45Z1Rs/IKKFphk9DGXfs5YzwGNf4i
 YW73QcAXdCzwO5jKe2EUvSS6BdD/W/VRfRcFpeYyOmcdXSEQRwzIbekfz7PsepBvqGem
 sBzAtAfcQQlad1Re1HtFVEBod3wCAZ4sbQKxZF6GYM+peJZDCdDHBe46BQoSrXEwJOS6
 N/3jOCRpE9Jn/gqdj3BbUH1KtzHKquFvA4kzLY7yPnhhKIKOwQU7bXfSDgkceYzNDbgN
 NLZGq4eKoUqgNOQdFmcl/JdJfQKc3c0cwDjwKhzZBKfDLYc45GbGeorvWq6o+M9HkrWD
 sxrA==
X-Gm-Message-State: AOAM533VS0v1TYV7INbPrVr1auDA4JKteJepMf/ovHhC5xfScMGiaQXQ
 ws7VhdXl0J+ftnYXdeMwji0gAfHtUR60RvEmq/s8Tw==
X-Google-Smtp-Source: ABdhPJx3EgrxpMEQwzhYaOq9nGmOfOHLK42KHSZJHAiteRM/BsUMzjyJYwBNjBbq8Hv+lvkbEShwj614To8hOvG0i/k=
X-Received: by 2002:adf:f78c:: with SMTP id q12mr5132530wrp.6.1601394530578;
 Tue, 29 Sep 2020 08:48:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200925084651.3250104-1-daniel.vetter@ffwll.ch>
 <20200925084651.3250104-2-daniel.vetter@ffwll.ch>
In-Reply-To: <20200925084651.3250104-2-daniel.vetter@ffwll.ch>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 29 Sep 2020 16:48:39 +0100
Message-ID: <CAPj87rMY+A16uPxpa_xv8pTpF3hi5Zwn5CUH8U0X+RVKjii9Qw@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/atomic: debug output for EBUSY
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
Cc: Simon Ser <contact@emersion.fr>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Sean Paul <seanpaul@chromium.org>, Daniel Vetter <daniel.vetter@intel.com>,
 Pekka Paalanen <pekka.paalanen@collabora.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Fri, 25 Sep 2020 at 09:46, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> Hopefully we'll have the drm crash recorder RSN, but meanwhile
> compositors would like to know a bit better why they get an EBUSY.

Thanks a lot, this is super helpful! Both patches are:
Reviewed-by: Daniel Stone <daniels@collabora.com>

Cheers,
Daniel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
