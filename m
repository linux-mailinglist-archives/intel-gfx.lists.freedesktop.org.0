Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A9C5AFC26
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 08:09:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FC1B10E32F;
	Wed,  7 Sep 2022 06:08:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30CC510E32B
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 06:08:44 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id u6so18062863eda.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 06 Sep 2022 23:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date;
 bh=s4afVmtZrj2yE4ZH0qN126RX1/YJ7bOqfTTyi6e2VfQ=;
 b=iNvn+xFvBU3gG202ZB3IxSE7E2zfsCPETADmVVvwwTaGefLtdfoy13uL4QSQFdeNan
 9KOVmrIvNndmzBekqn1tpdVMjkUJ+CBJlvMm8KODLzsp7jZnH0z23WCuZHdkPqOVkM/8
 NW9A/F0g4Z5oKQjAcynPAWs3/rgX/QQTVAs7s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
 bh=s4afVmtZrj2yE4ZH0qN126RX1/YJ7bOqfTTyi6e2VfQ=;
 b=ka5OML8sZZoaB7ZBt0MApMl4LF6XDYSrePa8C1tsRv4I49zo4+qoB/USVW1FWURTjm
 3SyPw69B0IcHZXIHI4w3BC/fTfkG8sUFZ2YhENhZFyG+R4mTnygCpnC5PqY7DtYiWv49
 0CYU/LGWxnhHXtrrgO8UfWEZtQYT6Um6QY0NjPWXk1bnL2fzq/HVYEt/PX921q3XmRZp
 wYi8LA3Q8EShMeL1tUMZfj89D9oSODZsf1d6IsGINoASf49zHl0P4hKtmGHbw9BoZCXH
 IsRve0TQDgCDo+p1uDmVUpXAm+qTiAtummWi/jF6LDa2ZihDswIQ9FBxRE0rxcMa0cg8
 dtFQ==
X-Gm-Message-State: ACgBeo26d+wjnSO0LUFqHrFSHPPsMDluvvGiWambBlxd7lqwv6ADChpr
 nrBsoHDYx9Du+v8mdE90W+EWww==
X-Google-Smtp-Source: AA6agR77BAciYBgwqpKnAc9x8rLCWXKGOPypzZ9RHfLUvfx/sMK/oygA+CUYL6PI6U3Cntlx11hJhQ==
X-Received: by 2002:a05:6402:2804:b0:439:83c2:8be2 with SMTP id
 h4-20020a056402280400b0043983c28be2mr1748729ede.292.1662530922538; 
 Tue, 06 Sep 2022 23:08:42 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 m14-20020a1709062b8e00b0072f42ca292bsm7642841ejg.129.2022.09.06.23.08.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Sep 2022 23:08:41 -0700 (PDT)
Date: Wed, 7 Sep 2022 08:08:39 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <Yxg1Z8SzpcuTpRAC@phenom.ffwll.local>
References: <20220720153233.144129-1-jim.cromie@gmail.com>
 <CAJfuBxxPRj-u5S45pPfAEaE46ji0--MTVxryEAUPe1+1c1jgEw@mail.gmail.com>
 <17628790-3905-460d-8734-981cfa8e7e51@akamai.com>
 <YvUz2Nk6YHl+jVwR@phenom.ffwll.local> <YvXtQ7/FJFSVXlGU@kroah.com>
 <Yxec8VRCQT5fJdqk@phenom.ffwll.local> <YxgwXgEpzyqg0cjR@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YxgwXgEpzyqg0cjR@kroah.com>
X-Operating-System: Linux phenom 5.18.0-4-amd64 
Subject: Re: [Intel-gfx] [PATCH v4 00/41] DYNDBG: opt-in class'd debug for
 modules, use in drm.
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
Cc: jim.cromie@gmail.com, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 amd-gfx mailing list <amd-gfx@lists.freedesktop.org>,
 Jason Baron <jbaron@akamai.com>, Sean Paul <seanpaul@chromium.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 07, 2022 at 07:47:10AM +0200, Greg KH wrote:
> On Tue, Sep 06, 2022 at 09:18:09PM +0200, Daniel Vetter wrote:
> > On Fri, Aug 12, 2022 at 08:03:47AM +0200, Greg KH wrote:
> > > On Thu, Aug 11, 2022 at 06:52:40PM +0200, Daniel Vetter wrote:
> > > > On Wed, Aug 03, 2022 at 04:13:05PM -0400, Jason Baron wrote:
> > > > > 
> > > > > 
> > > > > On 8/3/22 15:56, jim.cromie@gmail.com wrote:
> > > > > > On Wed, Jul 20, 2022 at 9:32 AM Jim Cromie <jim.cromie@gmail.com> wrote:
> > > > > >>
> > > > > > 
> > > > > >> Hi Jason, Greg, DRM-folk,
> > > > > >>
> > > > > >> This adds 'typed' "class FOO" support to dynamic-debug, where 'typed'
> > > > > >> means either DISJOINT (like drm debug categories), or VERBOSE (like
> > > > > >> nouveau debug-levels).  Use it in DRM modules: core, helpers, and in
> > > > > >> drivers i915, amdgpu, nouveau.
> > > > > >>
> > > > > > 
> > > > > > This revision fell over, on a conflict with something in drm-MUMBLE
> > > > > > 
> > > > > > Error: patch https://urldefense.com/v3/__https://patchwork.freedesktop.org/api/1.0/series/106427/revisions/2/mbox/__;!!GjvTz_vk!UCPl5Uf32cDVwwysMTfaLwoGLWomargFXuR8HjBA3xsUOjxXHXC5hneAkP4iWK91yc-LjjJxWW89-51Z$ 
> > > > > > not applied
> > > > > > Applying: dyndbg: fix static_branch manipulation
> > > > > > Applying: dyndbg: fix module.dyndbg handling
> > > > > > Applying: dyndbg: show both old and new in change-info
> > > > > > Applying: dyndbg: reverse module walk in cat control
> > > > > > Applying: dyndbg: reverse module.callsite walk in cat control
> > > > > > Applying: dyndbg: use ESCAPE_SPACE for cat control
> > > > > > Applying: dyndbg: let query-modname override actual module name
> > > > > > Applying: dyndbg: add test_dynamic_debug module
> > > > > > Applying: dyndbg: drop EXPORTed dynamic_debug_exec_queries
> > > > > > 
> > > > > > Jason,
> > > > > > those above are decent maintenance patches, particularly the drop export.
> > > > > > It would be nice to trim this unused api this cycle.
> > > > > 
> > > > > Hi Jim,
> > > > > 
> > > > > Agreed - I was thinking the same thing. Feel free to add
> > > > > Acked-by: Jason Baron <jbaron@akamai.com> to those first 9.
> > > > 
> > > > Does Greg KH usually pick up dyndbg patches or someone else or do I need
> > > > to do something? Would be great to get some movement here since -rc1 goes
> > > > out and merging will restart next week.
> > > 
> > > Yes, I can take these into my tree after -rc1 is out.
> > 
> > [uncovering from an absolutely impressive cascade of holes :-(]
> > 
> > Did this happen and I can stop worrying here? I'd like to make sure these
> > drm debug infra improvements keep moving.
> 
> I didn't take these, and I think I saw a 6th series sent:
> 	https://lore.kernel.org/r/20220904214134.408619-1-jim.cromie@gmail.com
> 
> If you ack them, I will pick them up.

Hm here we only talked about the first 9 or so patches from the series, do
you still want my ack on those?

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Since yeah I do like the direction of this :-)
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
