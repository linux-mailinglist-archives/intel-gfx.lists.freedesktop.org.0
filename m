Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBB71D28AF
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 09:25:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0D5B6EAC6;
	Thu, 14 May 2020 07:25:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com
 [IPv6:2607:f8b0:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1ED46EAC6
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 07:25:18 +0000 (UTC)
Received: by mail-ot1-x342.google.com with SMTP id v17so1616122ote.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 00:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4m4GsWsg3moFd2EMtxekqKsuJbaE5pcNAv0WoPBeQ3I=;
 b=etx/9+3k/PN31xvhF9ZvlqlxADInKL8MNC1uIGe0Pc5i7/kRGLG1Jmz0DDD4A/2qZt
 Bgsd7L79bH35Mwl6gRK8nf2gCm9a1XYeW410LR/c0YTun6fIoLql2v8UzE8i+yQii1m8
 oikTiCHcQlCNu3RjEl/aMSKKGmA8jcj2+z4w8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4m4GsWsg3moFd2EMtxekqKsuJbaE5pcNAv0WoPBeQ3I=;
 b=iuT39KYtVjq2iY2ljFOnuKq50tPg9HjflOWbYTNdyN06wmrnCsUJ+e6kP4km99R+p/
 lzmc2RP6YsXiwjsoBVDVeaaIHNECgVWBiqiUBbsuIdsUN0Bfeie7Mz200drbj5ObmbO3
 WbaFHswJlm/NoMBqgBmrJNAKs6MAOiewKL+M8LZCDkRkWBKDiKZ05BoOOqkQ6hFeuIBZ
 P2ERMHxTXqk8WSw+I88KgkwXs8a2hsDY6JMtrILR4ZHoJb+vhn4IjxjX6e8WgdrpKP6u
 VCiYbXSfUfmkGIytvlLuxmeozK6MyBqGXbAVp0j7jHC3GVy9rRFU33lEpr0IACcTqUPZ
 1OVg==
X-Gm-Message-State: AOAM530Si8Wr811ue+Q5O+18gow3p2Qyjt+C96OLORtWt6WR930BJUhW
 y142S4U2HQMOSflHnDodJelWEPy192oBz7CLVXw+uA==
X-Google-Smtp-Source: ABdhPJx4+owiZJ/zx4xR1kDM6DcrXQiTCwgv8pUXCsVluHYgsIYT+dirW430+vSExoNU/GRYPcidlxUcRCrvrPsNHBM=
X-Received: by 2002:a05:6830:1d0:: with SMTP id
 r16mr2368598ota.303.1589441118124; 
 Thu, 14 May 2020 00:25:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200408162403.3616785-1-daniel.vetter@ffwll.ch>
 <CAPj87rMJNwp0t4B0KxH7J_2__4eT7+ZJeG-=_juLSDhPc2hLHQ@mail.gmail.com>
 <CAKMK7uFU7ST9LWmpfhTuk1-_ES6VU-cUogMnPjA15BWFsEVacw@mail.gmail.com>
 <CAPj87rNRLsGJcGEM3dYnitYMwjh7iMNjo9KT=xcDZ0hebRC9iw@mail.gmail.com>
In-Reply-To: <CAPj87rNRLsGJcGEM3dYnitYMwjh7iMNjo9KT=xcDZ0hebRC9iw@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 14 May 2020 09:25:06 +0200
Message-ID: <CAKMK7uG6krmntPW6Mud7aouvM=NRspYHoBdKeSwxS8wDwDZRkQ@mail.gmail.com>
To: Daniel Stone <daniel@fooishbar.org>
Subject: Re: [Intel-gfx] [PATCH] drm: avoid spurious EBUSY due to
 nonblocking atomic modesets
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
Cc: Daniel Stone <daniels@collabora.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 stable <stable@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Pekka Paalanen <pekka.paalanen@collabora.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 14, 2020 at 9:18 AM Daniel Stone <daniel@fooishbar.org> wrote:
>
> Hi,
>
> On Thu, 14 May 2020 at 08:08, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> > > Did anything happen with this?
> >
> > Nope. There's an igt now that fails with this, and I'm not sure
> > whether changing the igt is the right idea or not.
> >
> > I'm kinda now thinking about changing this to instead document under
> > which exact situations you can get a spurious EBUSY, and enforcing
> > that in the code with some checks. Essentially only possible if you do
> > a ALLOW_MODESET | NONBLOCKING on the other crtc. And then tell
> > userspace you get to eat that. We've been shipping with this for so
> > long by now that's defacto the uapi anyway :-/
> >
> > Thoughts? Too horrible?
>
> I've been trying to avoid that, to be honest. Taking a random delay
> because the kernel needs to do global things is fine. But making
> userspace either do an expensive/complicated cross-CRTC
> synchronisation is less easy; for some compositors, that means
> reaching across threads to make sure all CRTCs are quiescent. Either
> that, or deferring your ALLOW_MODESET to somewhere else, like an idle
> handler, far away from where you were originally trying to do it,
> which wouldn't be pleasant. The other option is that we teach people
> to ignore EBUSY as random noise which can just sometimes happen and to
> try again (when? how often? and you still have cross-CRTC
> synchronisation issues), which doesn't scream compositor best practice
> to me.
>
> I'd be very much in favour of putting the blocking down in the kernel
> at least until the kernel can give us a clear indication to tell us
> what's going on, and ideally which other resources need to be dragged
> in, in a way which is distinguishable from your compositor having
> broken synchronisation.

We know, the patch already computes that ... So would be a matter of
exporting that to userspace. We have a mask of all additional crtc
that will get an event and will -EBUSY until that's done.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
