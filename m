Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E19938C9E3
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 17:16:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 595FA6EA1D;
	Fri, 21 May 2021 15:16:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBEB96EC55
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 15:16:30 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 u4-20020a05600c00c4b02901774b80945cso7612422wmm.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 08:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=1Q2Ew9yc46WJuKj39NJVAEfvl4U967Nhg8KVFP+/TzY=;
 b=M4rfqYr5PqI/F1ZgVW/kusxcWLhR6aAPBbHEDGFPUnQWuqGZz22lq7AZMqgspb8PU0
 yh9G0qhDABo2tv4VABcZMBUP7brzz8wXIjz2SVF0oW3MOJIGZRLzSUSEH4NEdbRYJIGw
 z81dr7IwpJATnYPEyI9CxDx7UfiElLse6CXag=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1Q2Ew9yc46WJuKj39NJVAEfvl4U967Nhg8KVFP+/TzY=;
 b=r0hcCUj9VNhZ2nFnbyVCl0kaSybCIPXIyoo01rpqJxG1bjzUnf/NDgmgXcZQXw0zi+
 +icLnOPgpG3UbMhk14iJLyvYxzlaDzHj40voBZbXqSD+BIozZvW7WdDBH/BHfjXBpf9W
 Laf0OJ+thBnCcshezdHFIa/mMpJgWulEkQ/M82H8TiOjsOmDoN134Z3epjh7hrrjL60o
 ZuES++UCcwah9gN3NoBFLgr+FPj/TX8Zjld/Ph0z3gR7DUV+Kq1XrwHCKRSyJu634TCW
 wWbBgkpMg/pQPNoru6fyuV53WB6AXp9GKtrv8vOx1YzTOoXT5AYbzoNA+OEsqaFGjHFA
 3zTQ==
X-Gm-Message-State: AOAM531e8yYSNwZBGqwPt7ok/SFo5a2l8oWVPmt75fWzl2TynkppbubS
 5iyAsHfRlX11VfUoUwtjGX2Uow==
X-Google-Smtp-Source: ABdhPJxrjpIuptRXcKR15BnNkXK4XByaclZwmXR1GWTObteW974iWeRYDnAC3q6ddoQBgsnzXDJJKg==
X-Received: by 2002:a7b:cd0e:: with SMTP id f14mr9747466wmj.22.1621610189492; 
 Fri, 21 May 2021 08:16:29 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id v12sm2367730wru.73.2021.05.21.08.16.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 May 2021 08:16:28 -0700 (PDT)
Date: Fri, 21 May 2021 17:16:26 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>
Message-ID: <YKfOymXrB7O4cYVb@phenom.ffwll.local>
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
 <CAP+8YyEhRwgz2hCri3K7Kv1OusVa_LGEuKZqQEx5jv+NiDKZrA@mail.gmail.com>
 <YKfFqrlLrikGMn4K@phenom.ffwll.local>
 <CAP+8YyG0o58dQt_tvnJ2ESbeqo02xxvFdifpMwnhz2VYNk8HUw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAP+8YyG0o58dQt_tvnJ2ESbeqo02xxvFdifpMwnhz2VYNk8HUw@mail.gmail.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 01/11] drm/amdgpu: Comply with implicit
 fencing rules
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
Cc: Rob Clark <robdclark@chromium.org>, Daniel Stone <daniels@collabora.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Kevin Wang <kevin1.wang@amd.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Chen Li <chenli@uniontech.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 mesa-dev <mesa-dev@lists.freedesktop.org>,
 Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>,
 Dennis Li <Dennis.Li@amd.com>, Deepak R Varma <mh12gx2825@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 21, 2021 at 05:00:46PM +0200, Bas Nieuwenhuizen wrote:
> On Fri, May 21, 2021 at 4:37 PM Daniel Vetter <daniel@ffwll.ch> wrote:
> >
> > On Fri, May 21, 2021 at 11:46:23AM +0200, Bas Nieuwenhuizen wrote:
> > > On Fri, May 21, 2021 at 11:10 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> > > > ---
> > > >  drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c | 4 ++--
> > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
> > > > index 88a24a0b5691..cc8426e1e8a8 100644
> > > > --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
> > > > +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
> > > > @@ -617,8 +617,8 @@ static int amdgpu_cs_parser_bos(struct amdgpu_cs_parser *p,
> > > >         amdgpu_bo_list_for_each_entry(e, p->bo_list) {
> > > >                 struct amdgpu_bo *bo = ttm_to_amdgpu_bo(e->tv.bo);
> > > >
> > > > -               /* Make sure we use the exclusive slot for shared BOs */
> > > > -               if (bo->prime_shared_count)
> > > > +               /* Make sure we use the exclusive slot for all potentially shared BOs */
> > > > +               if (!(bo->flags & AMDGPU_GEM_CREATE_VM_ALWAYS_VALID))
> > > >                         e->tv.num_shared = 0;
> > >
> > > I think it also makes sense to skip this with
> > > AMDGPU_GEM_CREATE_EXPLICIT_SYNC? It can be shared but I don't think
> > > anyone expects implicit sync to happen with those.
> >
> > Ah yes, I missed this entirely. So the "no implicit flag" is already
> > there, and the _only_ thing that's missing really is a way to fish out the
> > implicit fences, and set them.
> >
> > https://lore.kernel.org/dri-devel/20210520190007.534046-1-jason@jlekstrand.net/
> >
> > So I think all that's really needed in radv is not setting
> > RADEON_FLAG_IMPLICIT_SYNC for winsys buffers when Jason's dma-buf ioctl
> > are present (means you need to do some import/export and keep the fd
> > around for winsys buffers, but shouldn't be too bad), and then control the
> > implicit fences entirely explicitly like vk expects.
> 
> That is the part I'm less sure about. This is a BO wide flag so we are
> also disabling implicit sync in the compositor. If the compositor does
> only do read stuff that is ok, as the inserted exclusive fence will
> work for that. But as I learned recently the app provided buffer may
> end up being written to by the X server which open a whole can of
> potential problems if implicit sync gets disabled between Xserver
> operations on the app provided buffer. Hence setting that on the WSI
> buffer is a whole new can of potential problems and hence I've said a
> submission based flag would be preferred.
> 
> I can certainly try it out though.

Hm yeah that's the wrong flag. We need a flag on the drm_file which the
explicit userspace sets. And which is valid only for itself.

There's a nice flags field when creating a ctx, but it's not validated and
there's already a comment that we have to filter out garbage priority, so
that's not use. I'll whip up something entirely untested just as a draft.
-Daniel



> 
> >
> > Are you bored enough to type this up for radv? I'll give Jason's kernel
> > stuff another review meanwhile.
> > -Daniel
> >
> > > >                 e->bo_va = amdgpu_vm_bo_find(vm, bo);
> > > >         }
> > > > --
> > > > 2.31.0
> > > >
> >
> > --
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
