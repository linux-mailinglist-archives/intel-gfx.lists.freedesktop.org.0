Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E47A61D2887
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 09:08:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 431916EAB9;
	Thu, 14 May 2020 07:08:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com
 [IPv6:2607:f8b0:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE1B36EABB
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 07:08:36 +0000 (UTC)
Received: by mail-oi1-x244.google.com with SMTP id o24so23739073oic.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 00:08:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=biA9r0T5Sv8YCx33FWjEpY/1dzcGIkDdNQS4u+MoouI=;
 b=RagWkUEEVxT3M0/6JygfpeHFqxjNSK9bLGwanXl+yLlMcDld9yavXpnYjhC9HsYTyt
 IpbbT6bHMaMd2f9vY6YNn+nUwDS2OMydKVzTrB2VzDs5z9m/uiV2W+qu69XkVhRE9U/D
 JCKPy6/hBAHyVbbUSJo1VFF3mcNxHW3TBhsy4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=biA9r0T5Sv8YCx33FWjEpY/1dzcGIkDdNQS4u+MoouI=;
 b=GyuBRVFLZHpl3M1sU5mMBKehUHu+EHqcZR2S/qTJo8k8GboKN9LH0mQ4wxjezaXjdI
 5WZkJvDgCK+unD6KFtu2U6BW9id2F0obQMbz21L7VmpY6y8A3x2Uv3ar74Hjgngf/IU4
 i834lAbnxkmpRmekw+dZZxGCNWnvMezjrQnt6fuz/yAqazQ/gowp/AosH9FD319pXkX/
 L7kQbHdQLfYf1C6ZO7vnBZt/P7lsvubB7eBIqXwsTUS8En4+Z9ugNIaVcRWrCf3/JaAx
 h16+JLPJa2UJR9MEVk3JTL27/n9dFa3klebXJ0kUCsLpSX6I/02q8+pNey/jP5fmb9MY
 M6hQ==
X-Gm-Message-State: AGi0PuZ7xndwMrtqzZ/vd8KbRoosTx1KzW3FlfHEJ1i8fvnJB/TUXoxo
 AFoRrJwesZKjMmK6toPCewlqOxscvUOO6QjRMQHAFA==
X-Google-Smtp-Source: APiQypKJ6btuyR96uWgPEvWVBRFi5eTdiYG7q16E+P138IuV2y8xg7pd1Cxf/tBRYAklxwLz52LrYL47V81D1ObHYgU=
X-Received: by 2002:aca:3b41:: with SMTP id i62mr11137374oia.101.1589440116176; 
 Thu, 14 May 2020 00:08:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200408162403.3616785-1-daniel.vetter@ffwll.ch>
 <CAPj87rMJNwp0t4B0KxH7J_2__4eT7+ZJeG-=_juLSDhPc2hLHQ@mail.gmail.com>
In-Reply-To: <CAPj87rMJNwp0t4B0KxH7J_2__4eT7+ZJeG-=_juLSDhPc2hLHQ@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 14 May 2020 09:08:24 +0200
Message-ID: <CAKMK7uFU7ST9LWmpfhTuk1-_ES6VU-cUogMnPjA15BWFsEVacw@mail.gmail.com>
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

On Thu, May 14, 2020 at 8:42 AM Daniel Stone <daniel@fooishbar.org> wrote:
>
> On Wed, 8 Apr 2020 at 17:24, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> > Resending because last attempt failed CI and meanwhile the results are
> > lost :-/
>
> Did anything happen with this?

Nope. There's an igt now that fails with this, and I'm not sure
whether changing the igt is the right idea or not.

I'm kinda now thinking about changing this to instead document under
which exact situations you can get a spurious EBUSY, and enforcing
that in the code with some checks. Essentially only possible if you do
a ALLOW_MODESET | NONBLOCKING on the other crtc. And then tell
userspace you get to eat that. We've been shipping with this for so
long by now that's defacto the uapi anyway :-/

Thoughts? Too horrible?
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
