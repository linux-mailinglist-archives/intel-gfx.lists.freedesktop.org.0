Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD19922799E
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jul 2020 09:42:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A90FD6E0CD;
	Tue, 21 Jul 2020 07:42:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C55E46E0CD
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jul 2020 07:42:01 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id g75so1777441wme.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jul 2020 00:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=8I4d3yfRPKUddAXMH4OKFOkQh1gH0jweTktqrHFJPqI=;
 b=SVvv7WmMU/Y5r7Bz1LS9CJ5KZudcoOtUtpIHe4inw8Fdgpk0vWbt2aZSxRVvT1RbGP
 +dIqAIlwAMOTZjCAL5PJnhSHjxfyl5xPlAcgOiAUQtvZYQZ1VAnxWN3lgsNyuZh9PE+7
 ShZBr3S4wXdEzKLr/G5+xzpOoA5vtHu1FCB8Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=8I4d3yfRPKUddAXMH4OKFOkQh1gH0jweTktqrHFJPqI=;
 b=sA2jq6/23HYcAlzfdlBsRf18Atj3+ZS7Y3iP63TGCOch3XnZJcc0McPJhIYrP6KPWE
 vBfYDarPZc/7JocWCXvYwxxTFcq9DRrWBNf//e/UnH1bbgt/4uHS0vNzovCgKxEJDqY+
 82fw4GKeICgUI2dqf7XtBbNJXWHm96zHV7zn+4QJUIR2s+Syl6FO9LwU1QS2qTWZ9Pm/
 xTc+LHuFfhwELd6UCR9aGF57fZdPDTCqCn7HsFfAPAhg1r/khsauGnolWyZ/Us6YGv5P
 0/bc4AWHQLS0kRpqIniKA9DAGKZAcPq/QA1HgSzhujgD1dI42NvrW5aGw11IcztoB9K2
 GpOQ==
X-Gm-Message-State: AOAM530uCPyfl6mXOhZw67CngzgttaYrgORksyoLA5bCjPidwgeeEEmZ
 /pWbLBnRiNVhOB04ypoqiQi3bg==
X-Google-Smtp-Source: ABdhPJwELMZ3FDmnBcjPCFuUIAq0UQy6OzxYenXzQ86GtS8M6350pulmMr/zJSvRpUKbu1kZupVbTQ==
X-Received: by 2002:a1c:2349:: with SMTP id j70mr2752286wmj.22.1595317320339; 
 Tue, 21 Jul 2020 00:42:00 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id w1sm5246860wra.73.2020.07.21.00.41.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jul 2020 00:41:59 -0700 (PDT)
Date: Tue, 21 Jul 2020 09:41:57 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <20200721074157.GB3278063@phenom.ffwll.local>
References: <20200707201229.472834-4-daniel.vetter@ffwll.ch>
 <20200709123339.547390-1-daniel.vetter@ffwll.ch>
 <93b673b7-bb48-96eb-dc2c-bd4f9304000e@shipmail.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <93b673b7-bb48-96eb-dc2c-bd4f9304000e@shipmail.org>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
Subject: Re: [Intel-gfx] [Linaro-mm-sig] [PATCH 1/2] dma-buf.rst: Document
 why indefinite fences are a bad idea
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
Cc: Daniel Stone <daniels@collabora.com>, linux-rdma@vger.kernel.org,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Steve Pronovost <spronovo@microsoft.com>,
 amd-gfx@lists.freedesktop.org, Jesse Natalie <jenatali@microsoft.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jul 20, 2020 at 01:15:17PM +0200, Thomas Hellstr=F6m (Intel) wrote:
> Hi,
> =

> On 7/9/20 2:33 PM, Daniel Vetter wrote:
> > Comes up every few years, gets somewhat tedious to discuss, let's
> > write this down once and for all.
> > =

> > What I'm not sure about is whether the text should be more explicit in
> > flat out mandating the amdkfd eviction fences for long running compute
> > workloads or workloads where userspace fencing is allowed.
> =

> Although (in my humble opinion) it might be possible to completely untang=
le
> kernel-introduced fences for resource management and dma-fences used for
> completion- and dependency tracking and lift a lot of restrictions for the
> dma-fences, including prohibiting infinite ones, I think this makes sense
> describing the current state.

Yeah I think a future patch needs to type up how we want to make that
happen (for some cross driver consistency) and what needs to be
considered. Some of the necessary parts are already there (with like the
preemption fences amdkfd has as an example), but I think some clear docs
on what's required from both hw, drivers and userspace would be really
good.
>
> Reviewed-by: Thomas Hellstrom <thomas.hellstrom@intel.com>

Thanks for taking a look, first 3 patches here with annotations and docs
merged to drm-misc-next. I'll ask Maarten/Dave whether another pull is ok
for 5.9 so that everyone can use this asap.
-Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
