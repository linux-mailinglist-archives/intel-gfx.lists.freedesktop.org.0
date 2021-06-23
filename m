Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CFB3B1D4F
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 17:12:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B4D56E930;
	Wed, 23 Jun 2021 15:12:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A6186E930
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Jun 2021 15:12:18 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id ji1so4600704ejc.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Jun 2021 08:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=3y+KpMWjSfkunjXUwYFJ6kZNhxpq+5TW5mhxInmbGtQ=;
 b=f9nn3ewCrvOiVb3SWt5bua/7cj86/IBQcQMF1DdCGwJlxfQWvebySb8uxawzkSA9CN
 rX2zZKh2lC3wyJ0K779VU+fBuEB6e/sTNpa3sa136q6hgOTSxHv/Mfu0DbjvwCQlGMgZ
 tgFzgzibr8TZupKFlnfvS76s7KNMf5rpO5s54=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=3y+KpMWjSfkunjXUwYFJ6kZNhxpq+5TW5mhxInmbGtQ=;
 b=UrKTIgtL72SRrICJLglA+8M2rh7pRT82NAFMX2SoFChycQhqghCE0O1nDmHk5fvvXj
 SQZdHDXeuapX0zkfr2IJR9NZm7sK3SDJke/Efi4CpCUvdWm6xkcd95IVW72JTL/bV7rx
 pNbdOTHuCH7PX2Z9mKpWEoU5+OZ2ZrKRRSZHpgTG+bI/aNY3qZ4nGfwn3so53gJMoaIl
 0rw+JdGGTRTITeC8Lo+OeY2vJDLhGNN3vjUAC42Huxa1HE75IctARW6INey8b6KX+9kS
 W1WOXCC4h877Ti4I8sLphJosEDqqcnvc2In8mC2ziLoM4n71tuO2Gi6w/o/RYA/r5Cqp
 1yRw==
X-Gm-Message-State: AOAM533Y48mi+tS/uM40/4tvyeFL2LfaxI7G9DUE4PQZLfMkeQAd9QF9
 QYSQNG8b1DKWzHZoaR7y1XV/MA==
X-Google-Smtp-Source: ABdhPJy2MWq3jqWweX7Me0GG0dXd1oIOG+tty2iSml+Y5qyNGuE2xo4pxVIIqI9VGfKR1D38BZCf5A==
X-Received: by 2002:a17:907:a8f:: with SMTP id
 by15mr502158ejc.91.1624461136049; 
 Wed, 23 Jun 2021 08:12:16 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id yh13sm43863ejb.28.2021.06.23.08.12.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Jun 2021 08:12:15 -0700 (PDT)
Date: Wed, 23 Jun 2021 17:12:13 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YNNPTV/uxBJTsk5S@phenom.ffwll.local>
References: <CAKMK7uGOrro7-2+OVJse3CcuZO66kreq-XjL45Ay5vhL=2TZvQ@mail.gmail.com>
 <3bf45006-4256-763d-601b-3a25a7057820@amd.com>
 <CAP+8YyH1xyYVfEkYVudCn+=jyiWxoZgDndrcSLM0Qq=E9_GDKg@mail.gmail.com>
 <421cb10d-92a7-0780-3d38-d4cabd008c0c@amd.com>
 <CAKMK7uEjc+tZCKB8Yu3_zAjOgYLPBhnYebHOXgxpFaSunuPCfA@mail.gmail.com>
 <682d2f3b-8ba3-cccb-1385-1f74f0b06ada@amd.com>
 <CAKMK7uGNNJZBMLvqXE9GkXESf-uZDWVxA5y+J2eKX9giNPXdZw@mail.gmail.com>
 <CAP+8YyEGZFFVOaRW+AB4iTX_4qjqg-Wo9K21N2y1ScWK2Stzmg@mail.gmail.com>
 <YNNNWATIKtvzFTsb@phenom.ffwll.local>
 <5a3c9ea8-adb9-4662-55e2-19672e14b163@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5a3c9ea8-adb9-4662-55e2-19672e14b163@amd.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 15/15] RFC: drm/amdgpu: Implement a proper
 implicit fencing uapi
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
 Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Kevin Wang <kevin1.wang@amd.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Chen Li <chenli@uniontech.com>, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>,
 Alex Deucher <alexander.deucher@amd.com>,
 mesa-dev <mesa-dev@lists.freedesktop.org>, Dave Airlie <airlied@gmail.com>,
 Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>,
 Dennis Li <Dennis.Li@amd.com>, Deepak R Varma <mh12gx2825@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 23, 2021 at 05:07:17PM +0200, Christian K=F6nig wrote:
> Am 23.06.21 um 17:03 schrieb Daniel Vetter:
> > On Wed, Jun 23, 2021 at 04:58:27PM +0200, Bas Nieuwenhuizen wrote:
> > > On Wed, Jun 23, 2021 at 4:50 PM Daniel Vetter <daniel.vetter@ffwll.ch=
> wrote:
> > > > On Wed, Jun 23, 2021 at 4:02 PM Christian K=F6nig
> > > > <christian.koenig@amd.com> wrote:
> > > > > Am 23.06.21 um 15:49 schrieb Daniel Vetter:
> > > > > > On Wed, Jun 23, 2021 at 3:44 PM Christian K=F6nig
> > > > > > <christian.koenig@amd.com> wrote:
> > > > > > > Am 23.06.21 um 15:38 schrieb Bas Nieuwenhuizen:
> > > > > > > > On Wed, Jun 23, 2021 at 2:59 PM Christian K=F6nig
> > > > > > > > <christian.koenig@amd.com> wrote:
> > > > > > > > > Am 23.06.21 um 14:18 schrieb Daniel Vetter:
> > > > > > > > > > On Wed, Jun 23, 2021 at 11:45 AM Bas Nieuwenhuizen
> > > > > > > > > > <bas@basnieuwenhuizen.nl> wrote:
> > > > > > > > > > > On Tue, Jun 22, 2021 at 6:55 PM Daniel Vetter <daniel=
.vetter@ffwll.ch> wrote:
> > > > > > > > > > > > WARNING: Absolutely untested beyond "gcc isn't dyin=
g in agony".
> > > > > > > > > > > > =

> > > > > > > > > > > > Implicit fencing done properly needs to treat the i=
mplicit fencing
> > > > > > > > > > > > slots like a funny kind of IPC mailbox. In other wo=
rds it needs to be
> > > > > > > > > > > > explicitly. This is the only way it will mesh well =
with explicit
> > > > > > > > > > > > fencing userspace like vk, and it's also the bare m=
inimum required to
> > > > > > > > > > > > be able to manage anything else that wants to use t=
he same buffer on
> > > > > > > > > > > > multiple engines in parallel, and still be able to =
share it through
> > > > > > > > > > > > implicit sync.
> > > > > > > > > > > > =

> > > > > > > > > > > > amdgpu completely lacks such an uapi. Fix this.
> > > > > > > > > > > > =

> > > > > > > > > > > > Luckily the concept of ignoring implicit fences exi=
sts already, and
> > > > > > > > > > > > takes care of all the complexities of making sure t=
hat non-optional
> > > > > > > > > > > > fences (like bo moves) are not ignored. This suppor=
t was added in
> > > > > > > > > > > > =

> > > > > > > > > > > > commit 177ae09b5d699a5ebd1cafcee78889db968abf54
> > > > > > > > > > > > Author: Andres Rodriguez <andresx7@gmail.com>
> > > > > > > > > > > > Date:   Fri Sep 15 20:44:06 2017 -0400
> > > > > > > > > > > > =

> > > > > > > > > > > >         drm/amdgpu: introduce AMDGPU_GEM_CREATE_EXP=
LICIT_SYNC v2
> > > > > > > > > > > > =

> > > > > > > > > > > > Unfortuantely it's the wrong semantics, because it'=
s a bo flag and
> > > > > > > > > > > > disables implicit sync on an allocated buffer compl=
etely.
> > > > > > > > > > > > =

> > > > > > > > > > > > We _do_ want implicit sync, but control it explicit=
ly. For this we
> > > > > > > > > > > > need a flag on the drm_file, so that a given usersp=
ace (like vulkan)
> > > > > > > > > > > > can manage the implicit sync slots explicitly. The =
other side of the
> > > > > > > > > > > > pipeline (compositor, other process or just differe=
nt stage in a media
> > > > > > > > > > > > pipeline in the same process) can then either do th=
e same, or fully
> > > > > > > > > > > > participate in the implicit sync as implemented by =
the kernel by
> > > > > > > > > > > > default.
> > > > > > > > > > > > =

> > > > > > > > > > > > By building on the existing flag for buffers we avo=
id any issues with
> > > > > > > > > > > > opening up additional security concerns - anything =
this new flag here
> > > > > > > > > > > > allows is already.
> > > > > > > > > > > > =

> > > > > > > > > > > > All drivers which supports this concept of a usersp=
ace-specific
> > > > > > > > > > > > opt-out of implicit sync have a flag in their CS io=
ctl, but in reality
> > > > > > > > > > > > that turned out to be a bit too inflexible. See the=
 discussion below,
> > > > > > > > > > > > let's try to do a bit better for amdgpu.
> > > > > > > > > > > > =

> > > > > > > > > > > > This alone only allows us to completely avoid any s=
talls due to
> > > > > > > > > > > > implicit sync, it does not yet allow us to use impl=
icit sync as a
> > > > > > > > > > > > strange form of IPC for sync_file.
> > > > > > > > > > > > =

> > > > > > > > > > > > For that we need two more pieces:
> > > > > > > > > > > > =

> > > > > > > > > > > > - a way to get the current implicit sync fences out=
 of a buffer. Could
> > > > > > > > > > > >       be done in a driver ioctl, but everyone needs=
 this, and generally a
> > > > > > > > > > > >       dma-buf is involved anyway to establish the s=
haring. So an ioctl on
> > > > > > > > > > > >       the dma-buf makes a ton more sense:
> > > > > > > > > > > > =

> > > > > > > > > > > >       https://nam11.safelinks.protection.outlook.co=
m/?url=3Dhttps%3A%2F%2Flore.kernel.org%2Fdri-devel%2F20210520190007.534046-=
4-jason%40jlekstrand.net%2F&amp;data=3D04%7C01%7Cchristian.koenig%40amd.com=
%7C517f0d3467324e7ce05008d936581f60%7C3dd8961fe4884e608e11a82d994e183d%7C0%=
7C0%7C637600574408265873%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIj=
oiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3DgntXLzlrqPxYj4Q=
3mQflD3arT9ad40S9AqsvtOXV4nk%3D&amp;reserved=3D0
> > > > > > > > > > > > =

> > > > > > > > > > > >       Current drivers in upstream solves this by ha=
ving the opt-out flag
> > > > > > > > > > > >       on their CS ioctl. This has the downside that=
 very often the CS
> > > > > > > > > > > >       which must actually stall for the implicit fe=
nce is run a while
> > > > > > > > > > > >       after the implicit fence point was logically =
sampled per the api
> > > > > > > > > > > >       spec (vk passes an explicit syncobj around fo=
r that afaiui), and so
> > > > > > > > > > > >       results in oversync. Converting the implicit =
sync fences into a
> > > > > > > > > > > >       snap-shot sync_file is actually accurate.
> > > > > > > > > > > > =

> > > > > > > > > > > > - Simillar we need to be able to set the exclusive =
implicit fence.
> > > > > > > > > > > >       Current drivers again do this with a CS ioctl=
 flag, with again the
> > > > > > > > > > > >       same problems that the time the CS happens ad=
ditional dependencies
> > > > > > > > > > > >       have been added. An explicit ioctl to only in=
sert a sync_file (while
> > > > > > > > > > > >       respecting the rules for how exclusive and sh=
ared fence slots must
> > > > > > > > > > > >       be update in struct dma_resv) is much better.=
 This is proposed here:
> > > > > > > > > > > > =

> > > > > > > > > > > >       https://nam11.safelinks.protection.outlook.co=
m/?url=3Dhttps%3A%2F%2Flore.kernel.org%2Fdri-devel%2F20210520190007.534046-=
5-jason%40jlekstrand.net%2F&amp;data=3D04%7C01%7Cchristian.koenig%40amd.com=
%7C517f0d3467324e7ce05008d936581f60%7C3dd8961fe4884e608e11a82d994e183d%7C0%=
7C0%7C637600574408265873%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIj=
oiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3DYtqHT756jlt5NX7=
Ydr3Kk1UMTb98nQhlcOlrnr%2B48HE%3D&amp;reserved=3D0
> > > > > > > > > > > > =

> > > > > > > > > > > > These three pieces together allow userspace to full=
y control implicit
> > > > > > > > > > > > fencing and remove all unecessary stall points due =
to them.
> > > > > > > > > > > > =

> > > > > > > > > > > > Well, as much as the implicit fencing model fundame=
ntally allows:
> > > > > > > > > > > > There is only one set of fences, you can only choos=
e to sync against
> > > > > > > > > > > > only writers (exclusive slot), or everyone. Hence s=
uballocating
> > > > > > > > > > > > multiple buffers or anything else like this is fund=
amentally not
> > > > > > > > > > > > possible, and can only be fixed by a proper explici=
t fencing model.
> > > > > > > > > > > > =

> > > > > > > > > > > > Aside from that caveat this model gets implicit fen=
cing as closely to
> > > > > > > > > > > > explicit fencing semantics as possible:
> > > > > > > > > > > > =

> > > > > > > > > > > > On the actual implementation I opted for a simple s=
etparam ioctl, no
> > > > > > > > > > > > locking (just atomic reads/writes) for simplicity. =
There is a nice
> > > > > > > > > > > > flag parameter in the VM ioctl which we could use, =
except:
> > > > > > > > > > > > - it's not checked, so userspace likely passes garb=
age
> > > > > > > > > > > > - there's already a comment that userspace _does_ p=
ass garbage in the
> > > > > > > > > > > >       priority field
> > > > > > > > > > > > So yeah unfortunately this flag parameter for setti=
ng vm flags is
> > > > > > > > > > > > useless, and we need to hack up a new one.
> > > > > > > > > > > > =

> > > > > > > > > > > > v2: Explain why a new SETPARAM (Jason)
> > > > > > > > > > > > =

> > > > > > > > > > > > v3: Bas noticed I forgot to hook up the dependency-=
side shortcut. We
> > > > > > > > > > > > need both, or this doesn't do much.
> > > > > > > > > > > > =

> > > > > > > > > > > > v4: Rebase over the amdgpu patch to always set the =
implicit sync
> > > > > > > > > > > > fences.
> > > > > > > > > > > So I think there is still a case missing in this impl=
ementation.
> > > > > > > > > > > Consider these 3 cases
> > > > > > > > > > > =

> > > > > > > > > > > (format: a->b: b waits on a. Yes, I know arrows are h=
ard)
> > > > > > > > > > > =

> > > > > > > > > > > explicit->explicit: This doesn't wait now, which is g=
ood
> > > > > > > > > > > Implicit->explicit: This doesn't wait now, which is g=
ood
> > > > > > > > > > > explicit->implicit : This still waits as the explicit=
 submission still
> > > > > > > > > > > adds shared fences and most things that set an exclus=
ive fence for
> > > > > > > > > > > implicit sync will hence wait on it.
> > > > > > > > > > > =

> > > > > > > > > > > This is probably good enough for what radv needs now =
but also sounds
> > > > > > > > > > > like a risk wrt baking in new uapi behavior that we d=
on't want to be
> > > > > > > > > > > the end result.
> > > > > > > > > > > =

> > > > > > > > > > > Within AMDGPU this is probably solvable in two ways:
> > > > > > > > > > > =

> > > > > > > > > > > 1) Downgrade AMDGPU_SYNC_NE_OWNER to AMDGPU_SYNC_EXPL=
ICIT for shared fences.
> > > > > > > > > > I'm not sure that works. I think the right fix is that =
radeonsi also
> > > > > > > > > > switches to this model, with maybe a per-bo CS flag to =
set indicate
> > > > > > > > > > write access, to cut down on the number of ioctls that =
are needed
> > > > > > > > > > otherwise on shared buffers. This per-bo flag would ess=
entially select
> > > > > > > > > > between SYNC_NE_OWNER and SYNC_EXPLICIT on a per-buffer=
 basis.
> > > > > > > > > Yeah, but I'm still not entirely sure why that approach i=
sn't sufficient?
> > > > > > > > > =

> > > > > > > > > Problem with the per context or per vm flag is that you t=
hen don't get
> > > > > > > > > any implicit synchronization any more when another proces=
s starts using
> > > > > > > > > the buffer.
> > > > > > > > That is exactly what I want for Vulkan :)
> > > > > > > Yeah, but as far as I know this is not something we can do.
> > > > > > > =

> > > > > > > See we have use cases like screen capture and debug which rel=
y on that
> > > > > > > behavior.
> > > > > > They will keep working, if (and only if) the vulkan side sets t=
he
> > > > > > winsys fences correctly. Also, everything else in vulkan aside =
from
> > > > > > winsys is explicitly not synced at all, you have to import drm =
syncobj
> > > > > > timeline on the gl side.
> > > > > > =

> > > > > > > The only thing we can do is to say on a per buffer flag that =
a buffer
> > > > > > > should not participate in implicit sync at all.
> > > > > > Nah, this doesn't work. Because it's not a global decision, is =
a local
> > > > > > decision for the rendered. Vulkan wants to control implicit sync
> > > > > > explicitly, and the kernel can't force more synchronization. If=
 a
> > > > > > buffer is shared as a winsys buffer between vulkan client and g=
l using
> > > > > > compositor, then you _have_ to use implicit sync on it. But vk =
needs
> > > > > > to set the fences directly (and if the app gets it wrong, you g=
et
> > > > > > misrendering, but that is the specified behavour of vulkan).
> > > > > Yeah, but that's exactly what we tried to avoid.
> > > > > =

> > > > > Mhm, when we attach the flag to the process/VM then this would br=
eak the
> > > > > use case of VA-API and Vulkan in the same process.
> > > > > =

> > > > > But I think if you attach the flag to the context that should ind=
eed
> > > > > work fine.
> > > > Yeah that's a question I have, whether the drm_file is shared within
> > > > one process among everything, or whether radeonsi/libva/vk each have
> > > > their own. If each have their own drm_file, then we should be fine,
> > > > otherwise we need to figure out another place to put this (worst ca=
se
> > > > as a CS extension that vk just sets on every submit).
> > > libdrm_amdgpu dedupes it all so we mostly end up with one drm_file per
> > > process (modulo minigbm on chromeos and modulo a master fd).
> > > =

> > > That said the current proposal is for the context right? And on the
> > > context this should pretty much work? So I'm not sure why this is the
> > > part we are discussing?
> > It's on the fpriv->vm, so on the FD. I assumed vulkan at least would wa=
nt
> > to have it's private VM for this. And on the quick I didn't see any oth=
er
> > way to create a VM than to have an FD of your own.
> =

> You can't have your own FD in libdrm_amdgpu userspace. We had a pretty ha=
rd
> design discussion about that already.
> =

> What you could do is to load your own copy of libdrm_amdgpu, but I won't
> recommend that.
> =

> Just putting the flag on the context instead of the VM is much cleaner as
> far as I can see anyway.

Helper for the blind? If you gues expect me to move that myself ...
-Daniel

> =

> Christian.
> =

> > If there's something else that means "gpu context with it's own vm" then
> > the flag would need to be moved there, pointers appreciated (but maybe
> > someone with hw + userspace can do that quicker).
> > -Daniel
> > =

> > > > Also yes this risks that a vk app which was violationing the winsys
> > > > spec will now break, which is why I think we should do this sooner
> > > > than later. Otherwise the list of w/a we might need to apply in vk
> > > > userspace will become very long :-( At least since this is purely
> > > > opt-in from userspace, we only need to have the w/a list in userspa=
ce,
> > > > where mesa has the infrastructure for that already.
> > > > -Daniel
> > > > =

> > > > > Christian.
> > > > > =

> > > > > > -Daniel
> > > > > > =

> > > > > > > Regards,
> > > > > > > Christian.
> > > > > > > =

> > > > > > > > > > The current amdgpu uapi just doesn't allow any other mo=
del without an
> > > > > > > > > > explicit opt-in. So current implicit sync userspace jus=
t has to
> > > > > > > > > > oversync, there's not much choice.
> > > > > > > > > > =

> > > > > > > > > > > 2) Have an EXPLICIT fence owner that is used for expl=
icit submissions
> > > > > > > > > > > that is ignored by AMDGPU_SYNC_NE_OWNER.
> > > > > > > > > > > =

> > > > > > > > > > > But this doesn't solve cross-driver interactions here.
> > > > > > > > > > Yeah cross-driver is still entirely unsolved, because
> > > > > > > > > > amdgpu_bo_explicit_sync() on the bo didn't solve that e=
ither.
> > > > > > > > > Hui? You have lost me. Why is that still unsolved?
> > > > > > > > The part we're trying to solve with this patch is Vulkan sh=
ould not
> > > > > > > > participate in any implicit sync at all wrt submissions (an=
d then
> > > > > > > > handle the implicit sync for WSI explicitly using the fence
> > > > > > > > import/export stuff that Jason wrote). As long we add share=
d fences to
> > > > > > > > the dma_resv we participate in implicit sync (at the level =
of an
> > > > > > > > implicit sync read) still, at least from the perspective of=
 later jobs
> > > > > > > > waiting on these fences.
> > > > > > > > =

> > > > > > > > > Regards,
> > > > > > > > > Christian.
> > > > > > > > > =

> > > > > > > > > > -Daniel
> > > > > > > > > > =

> > > > > > > > > > > > Cc: mesa-dev@lists.freedesktop.org
> > > > > > > > > > > > Cc: Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>
> > > > > > > > > > > > Cc: Dave Airlie <airlied@gmail.com>
> > > > > > > > > > > > Cc: Rob Clark <robdclark@chromium.org>
> > > > > > > > > > > > Cc: Kristian H. Kristensen <hoegsberg@google.com>
> > > > > > > > > > > > Cc: Michel D=E4nzer <michel@daenzer.net>
> > > > > > > > > > > > Cc: Daniel Stone <daniels@collabora.com>
> > > > > > > > > > > > Cc: Sumit Semwal <sumit.semwal@linaro.org>
> > > > > > > > > > > > Cc: "Christian K=F6nig" <christian.koenig@amd.com>
> > > > > > > > > > > > Cc: Alex Deucher <alexander.deucher@amd.com>
> > > > > > > > > > > > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> > > > > > > > > > > > Cc: Deepak R Varma <mh12gx2825@gmail.com>
> > > > > > > > > > > > Cc: Chen Li <chenli@uniontech.com>
> > > > > > > > > > > > Cc: Kevin Wang <kevin1.wang@amd.com>
> > > > > > > > > > > > Cc: Dennis Li <Dennis.Li@amd.com>
> > > > > > > > > > > > Cc: Luben Tuikov <luben.tuikov@amd.com>
> > > > > > > > > > > > Cc: linaro-mm-sig@lists.linaro.org
> > > > > > > > > > > > Signed-off-by: Daniel Vetter <daniel.vetter@intel.c=
om>
> > > > > > > > > > > > ---
> > > > > > > > > > > >      drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c  |  7 +=
++++--
> > > > > > > > > > > >      drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c | 21 +=
++++++++++++++++++++
> > > > > > > > > > > >      drivers/gpu/drm/amd/amdgpu/amdgpu_vm.h  |  6 +=
+++++
> > > > > > > > > > > >      include/uapi/drm/amdgpu_drm.h           | 10 +=
+++++++++
> > > > > > > > > > > >      4 files changed, 42 insertions(+), 2 deletions=
(-)
> > > > > > > > > > > > =

> > > > > > > > > > > > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c=
 b/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
> > > > > > > > > > > > index 65df34c17264..c5386d13eb4a 100644
> > > > > > > > > > > > --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
> > > > > > > > > > > > +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
> > > > > > > > > > > > @@ -498,6 +498,7 @@ static int amdgpu_cs_parser_bos=
(struct amdgpu_cs_parser *p,
> > > > > > > > > > > >             struct amdgpu_bo *gds;
> > > > > > > > > > > >             struct amdgpu_bo *gws;
> > > > > > > > > > > >             struct amdgpu_bo *oa;
> > > > > > > > > > > > +       bool no_implicit_sync =3D READ_ONCE(fpriv->=
vm.no_implicit_sync);
> > > > > > > > > > > >             int r;
> > > > > > > > > > > > =

> > > > > > > > > > > >             INIT_LIST_HEAD(&p->validated);
> > > > > > > > > > > > @@ -577,7 +578,8 @@ static int amdgpu_cs_parser_bos=
(struct amdgpu_cs_parser *p,
> > > > > > > > > > > > =

> > > > > > > > > > > >                     e->bo_va =3D amdgpu_vm_bo_find(=
vm, bo);
> > > > > > > > > > > > =

> > > > > > > > > > > > -               if (bo->tbo.base.dma_buf && !amdgpu=
_bo_explicit_sync(bo)) {
> > > > > > > > > > > > +               if (bo->tbo.base.dma_buf &&
> > > > > > > > > > > > +                   !(no_implicit_sync || amdgpu_bo=
_explicit_sync(bo))) {
> > > > > > > > > > > >                             e->chain =3D dma_fence_=
chain_alloc();
> > > > > > > > > > > >                             if (!e->chain) {
> > > > > > > > > > > >                                     r =3D -ENOMEM;
> > > > > > > > > > > > @@ -649,6 +651,7 @@ static int amdgpu_cs_sync_rings=
(struct amdgpu_cs_parser *p)
> > > > > > > > > > > >      {
> > > > > > > > > > > >             struct amdgpu_fpriv *fpriv =3D p->filp-=
>driver_priv;
> > > > > > > > > > > >             struct amdgpu_bo_list_entry *e;
> > > > > > > > > > > > +       bool no_implicit_sync =3D READ_ONCE(fpriv->=
vm.no_implicit_sync);
> > > > > > > > > > > >             int r;
> > > > > > > > > > > > =

> > > > > > > > > > > >             list_for_each_entry(e, &p->validated, t=
v.head) {
> > > > > > > > > > > > @@ -656,7 +659,7 @@ static int amdgpu_cs_sync_rings=
(struct amdgpu_cs_parser *p)
> > > > > > > > > > > >                     struct dma_resv *resv =3D bo->t=
bo.base.resv;
> > > > > > > > > > > >                     enum amdgpu_sync_mode sync_mode;
> > > > > > > > > > > > =

> > > > > > > > > > > > -               sync_mode =3D amdgpu_bo_explicit_sy=
nc(bo) ?
> > > > > > > > > > > > +               sync_mode =3D no_implicit_sync || a=
mdgpu_bo_explicit_sync(bo) ?
> > > > > > > > > > > >                             AMDGPU_SYNC_EXPLICIT : =
AMDGPU_SYNC_NE_OWNER;
> > > > > > > > > > > >                     r =3D amdgpu_sync_resv(p->adev,=
 &p->job->sync, resv, sync_mode,
> > > > > > > > > > > >                                          &fpriv->vm=
);
> > > > > > > > > > > > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.=
c b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
> > > > > > > > > > > > index c080ba15ae77..f982626b5328 100644
> > > > > > > > > > > > --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
> > > > > > > > > > > > +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
> > > > > > > > > > > > @@ -1724,6 +1724,26 @@ int amdgpu_file_to_fpriv(str=
uct file *filp, struct amdgpu_fpriv **fpriv)
> > > > > > > > > > > >             return 0;
> > > > > > > > > > > >      }
> > > > > > > > > > > > =

> > > > > > > > > > > > +int amdgpu_setparam_ioctl(struct drm_device *dev, =
void *data,
> > > > > > > > > > > > +                         struct drm_file *filp)
> > > > > > > > > > > > +{
> > > > > > > > > > > > +       struct drm_amdgpu_setparam *setparam =3D da=
ta;
> > > > > > > > > > > > +       struct amdgpu_fpriv *fpriv =3D filp->driver=
_priv;
> > > > > > > > > > > > +
> > > > > > > > > > > > +       switch (setparam->param) {
> > > > > > > > > > > > +       case AMDGPU_SETPARAM_NO_IMPLICIT_SYNC:
> > > > > > > > > > > > +               if (setparam->value)
> > > > > > > > > > > > +                       WRITE_ONCE(fpriv->vm.no_imp=
licit_sync, true);
> > > > > > > > > > > > +               else
> > > > > > > > > > > > +                       WRITE_ONCE(fpriv->vm.no_imp=
licit_sync, false);
> > > > > > > > > > > > +               break;
> > > > > > > > > > > > +       default:
> > > > > > > > > > > > +               return -EINVAL;
> > > > > > > > > > > > +       }
> > > > > > > > > > > > +
> > > > > > > > > > > > +       return 0;
> > > > > > > > > > > > +}
> > > > > > > > > > > > +
> > > > > > > > > > > >      const struct drm_ioctl_desc amdgpu_ioctls_kms[=
] =3D {
> > > > > > > > > > > >             DRM_IOCTL_DEF_DRV(AMDGPU_GEM_CREATE, am=
dgpu_gem_create_ioctl, DRM_AUTH|DRM_RENDER_ALLOW),
> > > > > > > > > > > >             DRM_IOCTL_DEF_DRV(AMDGPU_CTX, amdgpu_ct=
x_ioctl, DRM_AUTH|DRM_RENDER_ALLOW),
> > > > > > > > > > > > @@ -1742,6 +1762,7 @@ const struct drm_ioctl_desc a=
mdgpu_ioctls_kms[] =3D {
> > > > > > > > > > > >             DRM_IOCTL_DEF_DRV(AMDGPU_GEM_VA, amdgpu=
_gem_va_ioctl, DRM_AUTH|DRM_RENDER_ALLOW),
> > > > > > > > > > > >             DRM_IOCTL_DEF_DRV(AMDGPU_GEM_OP, amdgpu=
_gem_op_ioctl, DRM_AUTH|DRM_RENDER_ALLOW),
> > > > > > > > > > > >             DRM_IOCTL_DEF_DRV(AMDGPU_GEM_USERPTR, a=
mdgpu_gem_userptr_ioctl, DRM_AUTH|DRM_RENDER_ALLOW),
> > > > > > > > > > > > +       DRM_IOCTL_DEF_DRV(AMDGPU_SETPARAM, amdgpu_s=
etparam_ioctl, DRM_AUTH|DRM_RENDER_ALLOW),
> > > > > > > > > > > >      };
> > > > > > > > > > > > =

> > > > > > > > > > > >      static const struct drm_driver amdgpu_kms_driv=
er =3D {
> > > > > > > > > > > > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.h=
 b/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.h
> > > > > > > > > > > > index ddb85a85cbba..0e8c440c6303 100644
> > > > > > > > > > > > --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.h
> > > > > > > > > > > > +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.h
> > > > > > > > > > > > @@ -321,6 +321,12 @@ struct amdgpu_vm {
> > > > > > > > > > > >             bool                    bulk_moveable;
> > > > > > > > > > > >             /* Flag to indicate if VM is used for c=
ompute */
> > > > > > > > > > > >             bool                    is_compute_cont=
ext;
> > > > > > > > > > > > +       /*
> > > > > > > > > > > > +        * Flag to indicate whether implicit sync s=
hould always be skipped on
> > > > > > > > > > > > +        * this context. We do not care about races=
 at all, userspace is allowed
> > > > > > > > > > > > +        * to shoot itself with implicit sync to it=
s fullest liking.
> > > > > > > > > > > > +        */
> > > > > > > > > > > > +       bool no_implicit_sync;
> > > > > > > > > > > >      };
> > > > > > > > > > > > =

> > > > > > > > > > > >      struct amdgpu_vm_manager {
> > > > > > > > > > > > diff --git a/include/uapi/drm/amdgpu_drm.h b/includ=
e/uapi/drm/amdgpu_drm.h
> > > > > > > > > > > > index 0cbd1540aeac..9eae245c14d6 100644
> > > > > > > > > > > > --- a/include/uapi/drm/amdgpu_drm.h
> > > > > > > > > > > > +++ b/include/uapi/drm/amdgpu_drm.h
> > > > > > > > > > > > @@ -54,6 +54,7 @@ extern "C" {
> > > > > > > > > > > >      #define DRM_AMDGPU_VM                  0x13
> > > > > > > > > > > >      #define DRM_AMDGPU_FENCE_TO_HANDLE     0x14
> > > > > > > > > > > >      #define DRM_AMDGPU_SCHED               0x15
> > > > > > > > > > > > +#define DRM_AMDGPU_SETPARAM            0x16
> > > > > > > > > > > > =

> > > > > > > > > > > >      #define DRM_IOCTL_AMDGPU_GEM_CREATE    DRM_IOW=
R(DRM_COMMAND_BASE + DRM_AMDGPU_GEM_CREATE, union drm_amdgpu_gem_create)
> > > > > > > > > > > >      #define DRM_IOCTL_AMDGPU_GEM_MMAP      DRM_IOW=
R(DRM_COMMAND_BASE + DRM_AMDGPU_GEM_MMAP, union drm_amdgpu_gem_mmap)
> > > > > > > > > > > > @@ -71,6 +72,7 @@ extern "C" {
> > > > > > > > > > > >      #define DRM_IOCTL_AMDGPU_VM            DRM_IOW=
R(DRM_COMMAND_BASE + DRM_AMDGPU_VM, union drm_amdgpu_vm)
> > > > > > > > > > > >      #define DRM_IOCTL_AMDGPU_FENCE_TO_HANDLE DRM_I=
OWR(DRM_COMMAND_BASE + DRM_AMDGPU_FENCE_TO_HANDLE, union drm_amdgpu_fence_t=
o_handle)
> > > > > > > > > > > >      #define DRM_IOCTL_AMDGPU_SCHED         DRM_IOW=
(DRM_COMMAND_BASE + DRM_AMDGPU_SCHED, union drm_amdgpu_sched)
> > > > > > > > > > > > +#define DRM_IOCTL_AMDGPU_SETPARAM      DRM_IOW(DRM=
_COMMAND_BASE + DRM_AMDGPU_SETPARAM, struct drm_amdgpu_setparam)
> > > > > > > > > > > > =

> > > > > > > > > > > >      /**
> > > > > > > > > > > >       * DOC: memory domains
> > > > > > > > > > > > @@ -306,6 +308,14 @@ union drm_amdgpu_sched {
> > > > > > > > > > > >             struct drm_amdgpu_sched_in in;
> > > > > > > > > > > >      };
> > > > > > > > > > > > =

> > > > > > > > > > > > +#define AMDGPU_SETPARAM_NO_IMPLICIT_SYNC       1
> > > > > > > > > > > > +
> > > > > > > > > > > > +struct drm_amdgpu_setparam {
> > > > > > > > > > > > +       /* AMDGPU_SETPARAM_* */
> > > > > > > > > > > > +       __u32   param;
> > > > > > > > > > > > +       __u32   value;
> > > > > > > > > > > > +};
> > > > > > > > > > > > +
> > > > > > > > > > > >      /*
> > > > > > > > > > > >       * This is not a reliable API and you should e=
xpect it to fail for any
> > > > > > > > > > > >       * number of reasons and have fallback path th=
at do not use userptr to
> > > > > > > > > > > > --
> > > > > > > > > > > > 2.32.0.rc2
> > > > > > > > > > > > =

> > > > =

> > > > --
> > > > Daniel Vetter
> > > > Software Engineer, Intel Corporation
> > > > https://nam11.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2F=
blog.ffwll.ch%2F&amp;data=3D04%7C01%7Cchristian.koenig%40amd.com%7C517f0d34=
67324e7ce05008d936581f60%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C63760=
0574408265873%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiL=
CJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3Dtc6ZdgYzOXpER4vpuOiOlyIsr7=
YTAHLMcuFaNjSs6YE%3D&amp;reserved=3D0
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
