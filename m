Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6D444EB08
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Nov 2021 17:07:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FD3A6EE7C;
	Fri, 12 Nov 2021 16:07:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C5DA6EE7A
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Nov 2021 16:07:21 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id z200so8146834wmc.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Nov 2021 08:07:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=7E9iL/eLprIevW7uy4RqwOkgOf9krg+VnJZrZfKegfQ=;
 b=Zf2yWJWJu4PsJfxHnjKr82Pwyc35i1qRCfPTYB41QWs+v7Qi6BGRZ1e3EQvm9li2Wu
 X6JQEHJISqvdZ4bb8sjltVPeUjMICp7aSg7SyUR+12pcdE8l651fxchYlUhBkDqUzZNc
 A3qIfC5OTUl1tpTw3X6Lt0SqqEAPyNPaeRUac=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=7E9iL/eLprIevW7uy4RqwOkgOf9krg+VnJZrZfKegfQ=;
 b=qJ6tEqPS+Sv3zihuX4xgC6X58fefR2FoApER/c54b8QF4jbGI7LhJzh9m2AIaQonPY
 FaK5b0Kc9yPsEg5JdKe+rvXjaWPx3omb3wRVM9k522zuHK77sz3C0lZM/1FcfLQSlOjs
 vWHJ+RaQL+5HXzOEpgU5fAdpK3Ympp5GOMcfkyQ6yJSPYiAjOHdWRwz8jahJPOd1BrKV
 aGTcKLrMMPril0bQvWpFdYOBcx3m0Sl75/s5q80yUy9xC1SasN3BSO7/kMTVsJhESo96
 R823pOv0nDYYlYeErYH2qQyhcz+EzPFJgehB+zcykE+QtRvP2lwpq5M9r7CTKd9/Mswr
 hXvg==
X-Gm-Message-State: AOAM531lPod8PAze6vgszP2+Bczqu8yJjZaEB3brPcTZkiadWj5fj6VS
 NpXyqXfzFmrkOkEwt5UlPabRx6b3oPiQPQ==
X-Google-Smtp-Source: ABdhPJwosP1R88zVXHhRelUVav6UrBQSRJv7L7SRdUByTul0J7WbLT2MbSMUFcH1r4bBpH3YgB8rkw==
X-Received: by 2002:a05:600c:3505:: with SMTP id
 h5mr34893578wmq.22.1636733239797; 
 Fri, 12 Nov 2021 08:07:19 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a141sm1913226wme.37.2021.11.12.08.07.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Nov 2021 08:07:17 -0800 (PST)
Date: Fri, 12 Nov 2021 17:07:15 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YY6RMzuF8N4MvHwq@phenom.ffwll.local>
References: <20211021103605.735002-1-maarten.lankhorst@linux.intel.com>
 <20211021103605.735002-2-maarten.lankhorst@linux.intel.com>
 <022f8ecb-37c0-3d67-563f-012f0a3651df@amd.com>
 <c7c82fa5-6fe5-33e2-e224-c5433020100c@linux.intel.com>
 <007050d3-0207-5226-0cbe-7a3d8679811c@linux.intel.com>
 <810de535-0902-04ef-be13-35c978fd80bc@amd.com>
 <YXrCAaGhLVtduUfa@phenom.ffwll.local>
 <f62922a7-344d-3e81-b391-840298f833d4@linux.intel.com>
 <3c419c82-65b7-d9a6-59d9-6683c359933d@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3c419c82-65b7-d9a6-59d9-6683c359933d@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 02/28] drm/i915: use new iterator in
 i915_gem_object_wait_reservation
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 11, 2021 at 12:36:47PM +0100, Christian König wrote:
> Am 01.11.21 um 10:41 schrieb Tvrtko Ursulin:
> > 
> > On 28/10/2021 16:30, Daniel Vetter wrote:
> > > On Thu, Oct 28, 2021 at 10:41:38AM +0200, Christian König wrote:
> > > > Am 21.10.21 um 13:13 schrieb Tvrtko Ursulin:
> > > > > 
> > > > > On 21/10/2021 12:06, Maarten Lankhorst wrote:
> > > > > > Op 21-10-2021 om 12:38 schreef Christian König:
> > > > > > > Am 21.10.21 um 12:35 schrieb Maarten Lankhorst:
> > > > > > > > From: Christian König <christian.koenig@amd.com>
> > > > > > > > 
> > > > > > > > Simplifying the code a bit.
> > > > > > > > 
> > > > > > > > Signed-off-by: Christian König <christian.koenig@amd.com>
> > > > > > > > [mlankhorst: Handle timeout = 0 correctly, use new
> > > > > > > > i915_request_wait_timeout.]
> > > > > > > > Signed-off-by: Maarten Lankhorst
> > > > > > > > <maarten.lankhorst@linux.intel.com>
> > > > > > > 
> > > > > > > LGTM, do you want to push it or should I pick it up
> > > > > > > into drm-misc-next?
> > > > > > 
> > > > > > I think it can be applied to drm-intel-gt-next, after a backmerge.
> > > > > > It needs patch 1 too, which fixes
> > > > > > 
> > > > > > i915_request_wait semantics when used in dma-fence. It exports a
> > > > > > dma-fence compatible i915_request_wait_timeout function, used in
> > > > > > this patch.
> > > > 
> > > > What about the other i915 patches? I guess you then want to merge them
> > > > through drm-intel-gt-next as well.
> > > > 
> > > > > I don't think my open has been resolved, at least I haven't
> > > > > seen a reply
> > > > > from Daniel on the topic of potential for infinite waits
> > > > > with untrusted
> > > > > clients after this change. +Daniel
> > > > 
> > > > Please resolve that internally and let me know the result. I'm
> > > > fine to use
> > > > any of the possible approaches, I just need to know which one.
> > > 
> > > I thought I explained this in the patch set from Maarten. This isn't an
> > > issue, since the exact same thing can happen if you get interrupts and
> > > stuff.
> > 
> > Ah were you trying to point out all this time the infinite wait just got
> > moved from inside the "old" dma_resv_get_fences to the new iterator
> > caller?
> 
> At least I think so, yes. But Daniel needs to answer that.

Well maybe there's also an infinite wait inside the old
dma_resv_get_fences, what I mean is that when you have some signals
interrupting you, then the infinite wait is already there due to a retry
loop outside of the syscall even.

Anyway _any_ userspace which wants to use this wait on a shared bo and
waits to be safe against the other end adding more rendering has to use
something else (like the sync_file export ioctl on the dma-buf that Jason
typed). Trying to make this ioctl here against fence addition is just bs.

> > Regards,
> > 
> > Tvrtko
> > 
> > > 
> > > The only proper fix for bounding the waits is a) compositor grabs a
> > > stable
> > > set of dma_fence from the dma-buf through the proposed fence export
> > > ioctl
> > > b) compositor waits on that fence (or drm_syncobj).
> > > 
> > > Everything else is cargo-culted nonsense, and very much includes
> > > that igt
> > > patch that's floating around internally.
> > > 
> > > I can also whack this into drm-next if this is stuck in this silly
> > > bikeshed.
> 
> Can we move forward with those patches? I still don't see them in
> drm-misc-next.
> 
> I you want I can also pick Maartens modified version here up and send it out
> with the reset of the i915 patches once more.
> 
> Everything else is already pushed.

Please push to drm-misc-next or wherever (assuming CI is happy) and feel
free to add my ack.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
