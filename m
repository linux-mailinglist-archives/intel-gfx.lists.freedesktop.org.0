Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA1737AA0A
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 16:58:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BB556EA51;
	Tue, 11 May 2021 14:58:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F33406EA51
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 May 2021 14:58:55 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 n17-20020a7bc5d10000b0290169edfadac9so881075wmk.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 May 2021 07:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XfkDcR1Z2D+6WG001k5mw4iytQ6Bn2suHPz3wHirNdM=;
 b=1X2Hn5l+GTmHIqlFYgTL+PJtmpwu57qUIjGqNsN3u1vixdLZettd+0nPTKe6Ft712/
 dq3I+JXdd/qQc1QYO2r3VkTA8+DvzrM8FAghLAnJ2oV8+XmYBRBrfSXtgpFBdx0TZB6+
 M/lafpMulaTj3SKg3yASa53XuPZ2YLR40TA60GHbcV1jqXQksgS3HatZ0fs2T8ntl9eP
 dCVjPJFqCrBbf0ds7/NQD+QrS7M7SrHWtX0beHK1sOI6lwrt+TPzjq0w2uMcwE3YV/kC
 dPEeyrrocovs69jXAC3T802PomiusJGChL0jsWnR9GDc2RQC24qSY5JtTm5jiM7VQLal
 ziKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XfkDcR1Z2D+6WG001k5mw4iytQ6Bn2suHPz3wHirNdM=;
 b=Z4rCke3bBWpsgz5XeLWoFiUnWEbRQP+GKMSO5aKaReTFJvw05kVbICjW/GbNTTr5gg
 458gmAEBPAzwQvsdyrzW4Av09g/jtCoex4ZqjmsVzMqvUZPdYlajvtv8AOAdmVyoI0TN
 wEAbwLgiW16NSrGgXgqaSt1ZJrXnYH5mVpg5mZBLxJ6NYmujBCu2R7FLboOguMCUUMLf
 kJ+8Hakf3n8bUSgseHt/dHSujVFsGzSc+Ckx8Q+Jo8UhhZarGZviaEZ94ukXijFdjf2F
 JZ3KkQrLUFpd0+JG3UzuqJsalPSwOUjMVdGntM5PIPzIadw+fwZoOC7Y8WDQvAbNe7LC
 mEaA==
X-Gm-Message-State: AOAM53278XxW/OSL8r7HNXvRROuQWcZNGOk6F1Yw52PXcLgyZoLTCmwb
 bfQv6RRJCNCWJoHVIxnLVhbGHckaWanYogQIcm1abg==
X-Google-Smtp-Source: ABdhPJyXR/eZIjxqRWkNmkeB7Nq8zb2Joj11HhZ1cjj0SaoiZle3FicYMwWEolCqITfgi4V/QF+sE5xopAJgBaDXjOw=
X-Received: by 2002:a1c:2704:: with SMTP id n4mr3052559wmn.147.1620745134562; 
 Tue, 11 May 2021 07:58:54 -0700 (PDT)
MIME-Version: 1.0
References: <20210506173049.72503-1-matthew.brost@intel.com>
 <20210506173049.72503-2-matthew.brost@intel.com>
 <YJqV5rzTCRNKwPf1@phenom.ffwll.local>
In-Reply-To: <YJqV5rzTCRNKwPf1@phenom.ffwll.local>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 11 May 2021 15:58:43 +0100
Message-ID: <CAPj87rOdCJMXmCXL9VoJcqvHKWQjLKnwqZ=F=wZ9knGC_8QSNQ@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Intel-gfx] [RFC PATCH 1/5] drm/doc/rfc: i915 GuC submission /
 DRM scheduler integration plan
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, carl.zhang@intel.com,
 Jason Ekstrand <jason.ekstrand@intel.com>, "Vetter,
 Daniel" <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Tue, 11 May 2021 at 15:34, Daniel Vetter <daniel@ffwll.ch> wrote:
> On Thu, May 06, 2021 at 10:30:45AM -0700, Matthew Brost wrote:
> > +No major changes are required to the uAPI for basic GuC submission. The only
> > +change is a new scheduler attribute: I915_SCHEDULER_CAP_STATIC_PRIORITY_MAP.
> > +This attribute indicates the 2k i915 user priority levels are statically mapped
> > +into 3 levels as follows:
> > +
> > +* -1k to -1 Low priority
> > +* 0 Medium priority
> > +* 1 to 1k High priority
> > +
> > +This is needed because the GuC only has 4 priority bands. The highest priority
> > +band is reserved with the kernel. This aligns with the DRM scheduler priority
> > +levels too.
>
> Please Cc: mesa and get an ack from Jason Ekstrand or Ken Graunke on this,
> just to be sure.

A reference to the actual specs this targets would help. I don't have
oneAPI to hand if it's relevant, but the two in graphics world are
https://www.khronos.org/registry/EGL/extensions/IMG/EGL_IMG_context_priority.txt
and https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/chap5.html#devsandqueues-priority
- both of them pretty much say that the implementation may do anything
or nothing at all, so this isn't a problem for spec conformance, only
a matter of user priority (sorry).

Cheers,
Daniel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
