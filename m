Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6C063D7CE
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Nov 2022 15:11:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6DCE10E473;
	Wed, 30 Nov 2022 14:11:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com
 [IPv6:2607:f8b0:4864:20::62c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 366DA10E474
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 14:10:59 +0000 (UTC)
Received: by mail-pl1-x62c.google.com with SMTP id k7so16768590pll.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 06:10:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=mY9gN84AcxJJfq4ubBnvLL6F+pAMi7N9Mps95qULuYc=;
 b=OsLvuAvbBmKybDjDejqrhM+c18g0OtX8iJCi75eNnSethkruOtsb5qhSpxRIuKbJhn
 bG/1gOX28dKsWkfaKALW6PGB4dXi3b1SIua4CW9n7tfMHSzu6HVVclDB5h5aO9Uy7dYY
 vqS6n7TfM4VlqQCpffeC4Lkcf7vM8VDaL4mtQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=mY9gN84AcxJJfq4ubBnvLL6F+pAMi7N9Mps95qULuYc=;
 b=itxOzWDIbo+3O3ukORM48iVs6cuhzpVIBnwjUXEyYP/LIgu5gbxSZ09txk/GKzX1Sn
 pug5S7bS5X1E0VyWerQHerG/J/XzpYAybJFWS0sCg3Pio7kwJXL2LRpKvIGyqbsKMji0
 d83VhTFG/vjsEpoFl59f3id3obZIqBq6LSOUd+wt6uql+6aoGJOP4TiEBPBxSXNsN6ho
 1h+BgVUId+QxOVmh+9aSbNSRC8XYO3BH3RxRsI2lK6QW4PZM8oZY35gCLr2EK8ieppmM
 YVU3XXdPdtr4bs7YaLNqQqGUbN/9n+w0G1o1XIKy0MJpOSBWfJBnOAeon2O95EDV5dSS
 hLDw==
X-Gm-Message-State: ANoB5plWaVXNIc7jlAArB25ffgXZDsuDuMon5p+JNgD8kz9xIZnA8bxr
 ANcrz8WVv/8i0H98LWFqtDq/UMQxCp6G2FXXUqoq3A==
X-Google-Smtp-Source: AA0mqf6wBtm8iJFnzHNeZdgrVxETvL+4xfq5ZCRQHhI91nyvmzLS8hYvDCPjpg1ViN5/6BKT/fw+UPzQhG9RoNV4inY=
X-Received: by 2002:a17:90b:3c91:b0:219:608a:75c with SMTP id
 pv17-20020a17090b3c9100b00219608a075cmr4170459pjb.33.1669817458838; Wed, 30
 Nov 2022 06:10:58 -0800 (PST)
MIME-Version: 1.0
References: <b37af070-21f9-fa40-89f5-5a1be6aaa20b@linux.intel.com>
 <20221130134301.ia2vhzmupwer5auo@houat>
In-Reply-To: <20221130134301.ia2vhzmupwer5auo@houat>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 30 Nov 2022 15:10:46 +0100
Message-ID: <CAKMK7uHmJ4=yjQc_jeUoaYEoxyrHiwrn-dt_FYeWksw1j6O=Zg@mail.gmail.com>
To: Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PULL] drm-misc-fixes
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
Cc: dim-tools@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Dave Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 30 Nov 2022 at 14:43, Maxime Ripard <maxime@cerno.tech> wrote:
>
> Hi Maarten
>
> On Wed, Nov 30, 2022 at 02:16:05PM +0100, Maarten Lankhorst wrote:
> > A single fix to vmwgfx mks-guest-stats ioctl.
> > I lost my internet connection when pushing the tag, so I put together this mail
> > manually. I hope you remember where drm-misc is hosted. :)
>
> For reference, you can generate the mail content after the fact by using something like:
>
> git request-pull drm/fixes drm-misc drm-misc-fixes-2022-11-30

Maarten, can you pls do that? Otherwise we can't feed the thing into
dim for processing, and have to do that also manually :-)
-Daniel

>
> Maxime



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
