Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E1819DCDB
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 19:35:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BBF66EC45;
	Fri,  3 Apr 2020 17:35:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com
 [IPv6:2a00:1450:4864:20::243])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE1B36EC44
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 17:35:53 +0000 (UTC)
Received: by mail-lj1-x243.google.com with SMTP id f20so7837683ljm.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 10:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=POas12dpN7kN9O3srxn75BiKgA8osyRtABWdm9UHIdc=;
 b=QGH0XZa85F7gf6EtUQ+4zpN0bu7F0YRNIXn5DUG9yPM2ZMXOo1+dzNBiANe3tWY3Qu
 D+k0DuazWhGnHb3+bsPxVPijdtPmfQLrBbXmzcqQVZtFU5atW7YvlAo2a1RVi8hDgY7f
 mqr13el7xCdyZ7DIfyOGqsYkzNCsPt1Qd28GOzaK3BTaMKgw+7PZDqH2euCFXtVxGbhk
 wvPNWa9rET83eVFUnTP/I4dRWg5dMqROJu1Kwii5Am3mDwLUo24qnGlbKhtbk9XgykCJ
 XDlpDAHVJcm3FMxOIcs/xr0FLwiTSIzoWFxWXBt3J5rbCBQy9WrTgr5v9D700wXEKX5T
 5cFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=POas12dpN7kN9O3srxn75BiKgA8osyRtABWdm9UHIdc=;
 b=AYBwQT9oS6qQlYPXhTlOqAnhZJGhMfhDNKJlue9eZWGBl10Uq+hmF/2SSrDssPy28h
 p+g8ynFdRC+57kA4zoH8AvVRPFtL3UdrfpKjAgATL6bf+ShBSGf+cBS/QZzkA6d69ebT
 GAi5SWsZ1WRxgTnH/DPRZMFNDdedAiY01bBFmfLHGPriEuzdUrxvi8sdgsU3ha9lb3Jz
 GKkm+kl2kZDc1N4wBJCn/vasROctPNuBliG+GqTCyRrqczcfcNQV2afLirYqOOyghMV2
 XJ+TDaSZRSUbUkCuRqAfHGTTvmRJvXVP9L6sjKsNKpVnVyNpmLxLamz8O0Kltyoa+Pj7
 ameQ==
X-Gm-Message-State: AGi0PuZphxkHaaFqMNcbWT1iE6TkcSHc5uiLTPKt10/T5i0VepFolJfm
 dwgfGdX8zRVA2glxLt2YlbdyKsoHZIHSxg9wqd3/7w==
X-Google-Smtp-Source: APiQypKMP/RnXTRfLKJD2UC+5Cd91AUzB1nOA2FDBNy5pLCNrQf05sW9Pa++XaIoH4z8MExARwbhTV032DovHlZyPsc=
X-Received: by 2002:a2e:7004:: with SMTP id l4mr5617327ljc.55.1585935352328;
 Fri, 03 Apr 2020 10:35:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
 <20200403135828.2542770-14-daniel.vetter@ffwll.ch>
In-Reply-To: <20200403135828.2542770-14-daniel.vetter@ffwll.ch>
From: Eric Anholt <eric@anholt.net>
Date: Fri, 3 Apr 2020 10:35:40 -0700
Message-ID: <CADaigPWXAwOyEjTEpxrm-wBY9gwSfPsmrVL_0P2EhSktF_rX0A@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 13/44] drm/v3d: Delete v3d_dev->dev
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 3, 2020 at 6:58 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>
> We already have it in v3d_dev->drm.dev with zero additional pointer
> chasing. Personally I don't like duplicated pointers like this
> because:
> - reviewers need to check whether the pointer is for the same or
>   different objects if there's multiple
> - compilers have an easier time too
>
> But also a bit a bikeshed, so feel free to ignore.
>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Eric Anholt <eric@anholt.net>

a-b.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
