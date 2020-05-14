Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B717F1D28F6
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 09:42:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9895D6EACE;
	Thu, 14 May 2020 07:42:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1F246EACF
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 07:42:00 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id w19so16504144wmc.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 00:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZWA9/LMqA4b3VlkBF3EXJYQj3K5659B/XXUAdyVkaXU=;
 b=SSi66/0Y6hCtpBzDagUQu9nsZHe3sRZSl8P800sQoFV2TAZ5v4l3iaf4v8fz6VmXko
 nOv7BPDtFdnDMQjNIod9HVy4irAHLWTfwE7H2uqirVq3ARJ/g9Z+wOzaV8rVyH/P5Rpy
 pA0x/k4IqKeUmpP5+c/Te+umtmZ/SY74KHWVsIA+8Mg9KjnhRDrFyjcKIDF1WPTfneWz
 Ddc36yuLnqp5QnSguImjev5Kw/DzWkbjWGGJXAielnV+px3Gr4Y+cWe+3msptsslr4q5
 cwJlVeVjCt9vl9AO1Tqfn/CGMtMpP5eGQDSjCuMMjTzm32WmF9GkRw9YUvYVfvdBy8LV
 US+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZWA9/LMqA4b3VlkBF3EXJYQj3K5659B/XXUAdyVkaXU=;
 b=Iszo61jNCIb1g6UEqTLYkp9py0fHROah9HE8XD9R1V9ohk07yHCq674dVZN6oBWCE9
 PR+wyVr6Z/AgI+Z0XM46t3D2EKWsBiWEjSwKjJCNG5Lyr3Lv3t809JqT97wreNQki3eS
 JMNHHstdyppn2pidOnEaEGDlhKBAvXcO/TvmnJ0vCRks6eKxHdNbI0eDWJp+7a+4xEfX
 vTnCHoHHKJzgYGBq8Qds9LwPLG11MgMg0ouCyk76isMMtHUbFSadyJfKsw0qSa25OdXd
 Hxew+2KpE6IFD7LH2/gFdbTPEYlVznwvYi3XHzalvfGtgm3Hl8rkm/85sjM70UeXBU9R
 DYmg==
X-Gm-Message-State: AGi0Pua6Cg4mnl45XOpmXp1+UXr2GxOQCcKHPBBblbTBPkvUXjNG1lIw
 PQ36z1TJ7uZEQMtKQmxZ4KcmB+EZKdxdnYKkMp1r+A==
X-Google-Smtp-Source: APiQypIg1w3Jf7o/5wr4EHLUqu7AUcSm30r5cMiIA6xX1z8nEimMwDLIWcsrEf5C1hR1JZLcNv66F+pEKdDXTKTaHmU=
X-Received: by 2002:a1c:9e52:: with SMTP id h79mr46889694wme.84.1589442119280; 
 Thu, 14 May 2020 00:41:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200408162403.3616785-1-daniel.vetter@ffwll.ch>
 <CAPj87rMJNwp0t4B0KxH7J_2__4eT7+ZJeG-=_juLSDhPc2hLHQ@mail.gmail.com>
 <CAKMK7uFU7ST9LWmpfhTuk1-_ES6VU-cUogMnPjA15BWFsEVacw@mail.gmail.com>
 <CAPj87rNRLsGJcGEM3dYnitYMwjh7iMNjo9KT=xcDZ0hebRC9iw@mail.gmail.com>
 <CAKMK7uG6krmntPW6Mud7aouvM=NRspYHoBdKeSwxS8wDwDZRkQ@mail.gmail.com>
In-Reply-To: <CAKMK7uG6krmntPW6Mud7aouvM=NRspYHoBdKeSwxS8wDwDZRkQ@mail.gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 14 May 2020 08:40:21 +0100
Message-ID: <CAPj87rO1oG00ipUA57a1kGu7K2=-ugTreM7QXy_tWjbZ+KzkFg@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
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

On Thu, 14 May 2020 at 08:25, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> On Thu, May 14, 2020 at 9:18 AM Daniel Stone <daniel@fooishbar.org> wrote:
> > On Thu, 14 May 2020 at 08:08, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> > I'd be very much in favour of putting the blocking down in the kernel
> > at least until the kernel can give us a clear indication to tell us
> > what's going on, and ideally which other resources need to be dragged
> > in, in a way which is distinguishable from your compositor having
> > broken synchronisation.
>
> We know, the patch already computes that ... So would be a matter of
> exporting that to userspace. We have a mask of all additional crtc
> that will get an event and will -EBUSY until that's done.

Yep, but unless and until that happens, could we please get this in?
Given it would require uAPI changes, we'd need to modify all the
compositors to work with the old path (random EBUSY) and the new path
(predictable and obvious), so at least preserving the promise that
per-CRTC updates are really independent would be good.

Cheers,
Daniel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
