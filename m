Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 495FF392BE2
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 12:33:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A17486EE65;
	Thu, 27 May 2021 10:33:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4A8C6EE65
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 10:33:55 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id m18so4237417wrv.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 03:33:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=eUx4Ww94ghT1OFJYFV4k9kBh2hCOi+Z+Yz3tYP5DhzI=;
 b=AFJ00knjSZZRyeNi0sR41ZdQpTt1HZ4n5swMbRpwTy4JehjZ+iQ3b9O9JeFWhuTXDH
 +Q04s3vxSKD3LCRICT7h00PydUT7UAML3x/I6wU+t1w6WWBS+zp+dBzzYsWphLwfIbK3
 2na3QgUZuk0TlpL3slXn28V6TA4ZIgEXREhqo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=eUx4Ww94ghT1OFJYFV4k9kBh2hCOi+Z+Yz3tYP5DhzI=;
 b=XSVseAzRNFf8qtC8uMyYhx6koI5lyIeA1I03qbIhje6Ryn/+8Kqjz8v/iwXf5lt2me
 E1hnuPRTBQhOmMi1GgRL9ZTE0EP/N+0bGj+/Yjw7RiKDIffBENEc6ud+RdGTTnkCiu/e
 0sVUkNr4nJE8SN+inOKlSYwzfBGPtgZsqQRebkBt9s+1VcfTREM21wIJyDXYvE4E81xi
 4n0xmnJsaQejF25o69Fkrh9H7mKJCAfKpqkDiJ4ji2n+CKxyNksb+LJycrSv9oRer28n
 K6jl+DdJ+O/cSCgiG4Tx2E9/Z/H5gN8/WyiYoxSIFng5t5L2KjGgcCnJz0Gg2QlKwjLt
 swIQ==
X-Gm-Message-State: AOAM532HZBPf0g2K+jjwPi5IqLbjVYsvWNYNKgYWu5RVaxBaDKk4rNbj
 pjYJ9NNgeEFe0HeNZgUvNw2Mrg==
X-Google-Smtp-Source: ABdhPJznwqtO3kpYhHjv+rwBJ46VyzmMAk9vedbccVxp4EAUNtvI1Dz5Xu5QJO82xXHa4GKwCTtSdA==
X-Received: by 2002:a05:6000:c2:: with SMTP id
 q2mr2637793wrx.288.1622111634527; 
 Thu, 27 May 2021 03:33:54 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b135sm1234200wmb.5.2021.05.27.03.33.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 03:33:54 -0700 (PDT)
Date: Thu, 27 May 2021 12:33:52 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YK91kB0ikqxurHN1@phenom.ffwll.local>
References: <20210525211753.1086069-1-jason@jlekstrand.net>
 <20210525211753.1086069-6-jason@jlekstrand.net>
 <acc1737c-261d-9da5-7ea7-759063136c56@amd.com>
 <CAPj87rN_7vmmWcL1vqhvM=etaTjwts_L0vYbsgvYF0_qZw83gw@mail.gmail.com>
 <770eb698-1dde-9e46-da83-44911d96abec@amd.com>
 <CAPj87rPdMthO2Wv7QxMGnO__BiZVauMa9HaRk+35Sgvm69QSjw@mail.gmail.com>
 <a9de44fc-aa7c-60d7-d7ed-2229d41fb306@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a9de44fc-aa7c-60d7-d7ed-2229d41fb306@amd.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 5/7] dma-buf: Add an API for exporting sync
 files (v11)
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
Cc: Simon Ser <contact@emersion.fr>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 26, 2021 at 03:23:01PM +0200, Christian K=F6nig wrote:
> =

> =

> Am 26.05.21 um 15:12 schrieb Daniel Stone:
> > Hi,
> > =

> > On Wed, 26 May 2021 at 13:46, Christian K=F6nig <christian.koenig@amd.c=
om> wrote:
> > > Am 26.05.21 um 13:31 schrieb Daniel Stone:
> > > > How would we insert a syncobj+val into a resv though? Like, if we p=
ass
> > > > an unmaterialised syncobj+val here to insert into the resv, then an
> > > > implicit-only media user (or KMS) goes to sync against the resv, wh=
at
> > > > happens?
> > > Well this is for exporting, not importing. So we don't need to worry
> > > about that.
> > > =

> > > It's just my thinking because the drm_syncobj is the backing object on
> > > VkSemaphore implementations these days, isn't it?
> > Yeah, I can see that to an extent. But then binary vs. timeline
> > syncobjs are very different in use (which is unfortunate tbh), and
> > then we have an asymmetry between syncobj export & sync_file import.
> > =

> > You're right that we do want a syncobj though. This is probably not
> > practical due to smashing uAPI to bits, but if we could wind the clock
> > back a couple of years, I suspect the interface we want is that export
> > can either export a sync_file or a binary syncobj, and further that
> > binary syncobjs could transparently act as timeline semaphores by
> > mapping any value (either wait or signal) to the binary signal. In
> > hindsight, we should probably just never have had binary syncobj. Oh
> > well.
> =

> Well the later is the case IIRC. Don't ask me for the detail semantics, b=
ut
> in general the drm_syncobj in timeline mode is compatible to the binary
> mode.
> =

> The sync_file is also import/exportable to a certain drm_syncobj timeline
> point (or as binary signal). So no big deal, we are all compatible here :)
> =

> I just thought that it might be more appropriate to return a drm_syncobj
> directly instead of a sync_file.

I think another big potential user for this is a vk-based compositor which
needs to interact/support implicit synced clients. And compositor world I
think is right now still more sync_file (because that's where we started
with atomic kms ioctl).

The other slight nudge is that drm_syncobj is a drm thing, so we'd first
need to lift it out into drivers/dma-buf (and hand-wave the DRM prefix
away) for it to be a non-awkward fit for dma-buf.

Plus you can convert them to the other form anyway, so really doesn't
matter much. But for the above reasons I'm leaning slightly towards
sync_file. Except if compositor folks tell me I'm a fool and why :-)
-Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
