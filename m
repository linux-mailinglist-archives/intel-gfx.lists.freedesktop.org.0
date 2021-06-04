Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A85FF39B59D
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 11:12:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFB866F5EA;
	Fri,  4 Jun 2021 09:12:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEF056F5E9
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 09:12:51 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id n4so8562795wrw.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Jun 2021 02:12:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=chpk3EQ2hh64dp2WTIOzdpp1txr9bBbfzKuE+CVepDQ=;
 b=OTDC9Dxwwe3JF9gDsQwkUdFwz9Fz/39AZMyVFfV+BKv4STDDZWO4A5MoiANkSW2wzv
 nzUm/BZcIQ+yYfcSUVOrAadWYFILId3jWrQd2vWIlcL+Fxw44r5+CyQRa78F2ijvpFMf
 g2ydOeGcVMRhK6EwfB9dERrX9b9NimRKmYhoQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=chpk3EQ2hh64dp2WTIOzdpp1txr9bBbfzKuE+CVepDQ=;
 b=cleYKXJBd6QeNmj+Yf5zkq5BJviCDSduX1lXqKvz+onzp/Qf3wcH++m8M12cICkWd5
 bEZlzCLmUb/RDQr43/mHOL6VoVzDzCx7Av6jG2DlVCjL1u9at9JBsxM/OkhCItRKzZjg
 Em82MFApRLZ+TT2zkjG1aKm3iXkQ3MAtxT/HhqxNfaX48NR8v+r1GgTH2WbqQ67pNhdl
 rjBQQCkw0MhEcv1R+3YUMVO2PWoFeUTPnLNo2s9wGuXDyocPXR9IL2Ai9hfGEwSqUUa6
 XbBLv29M9BAl6FH4cIcCx2jhxDL3AMqwK6O91/dQZUcvqwG/2Xbm31gJ9KVlwAOG7/sb
 OgHA==
X-Gm-Message-State: AOAM531MTxeR0X38a37LX3KamDAOcM3b5suCqr0t4t3Dk8G9RAbHKBJw
 c/OH8P27N6cu9zkhNHfjyQOoQQ==
X-Google-Smtp-Source: ABdhPJy5fEKV+1sE998yeP/bHOn3KEA0UDF+I7Wk8MJkpzDWnBoHnohVMwd7SXZ1nV0GFc3zGYpKXg==
X-Received: by 2002:adf:df09:: with SMTP id y9mr2837085wrl.108.1622797970411; 
 Fri, 04 Jun 2021 02:12:50 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l10sm3968219wrs.11.2021.06.04.02.12.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Jun 2021 02:12:49 -0700 (PDT)
Date: Fri, 4 Jun 2021 11:12:47 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Dave Airlie <airlied@gmail.com>
Message-ID: <YLnuj0jmF8q05pta@phenom.ffwll.local>
References: <a29eaef9-2457-1393-6757-40956811daf8@linux.intel.com>
 <a6965639-acf6-b5f5-482c-2715e7fa69d4@amd.com>
 <b4c18e45-98c9-ce7f-b22c-c00c795844c2@shipmail.org>
 <baf4f828-76c8-6b47-5bba-9b9c8e7b307b@amd.com>
 <YLfQplT8H6PdCCLX@phenom.ffwll.local>
 <c50fa98f-3735-fe04-d3f9-8a7a08a7562e@linux.intel.com>
 <CAKMK7uE+fB_+UG668O=QMXwQ9_Xb--KhzehT77HLfBoWve-zLg@mail.gmail.com>
 <68e6057c-df17-64ce-3116-cd5e79578795@amd.com>
 <a3f789a0-9e75-280a-7602-4728738024eb@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a3f789a0-9e75-280a-7602-4728738024eb@linux.intel.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] Merging TTM branches through the Intel tree?
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
Cc: DRI Development <dri-devel@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 04, 2021 at 11:01:40AM +0200, Thomas Hellstr=F6m wrote:
> =

> On 6/4/21 9:51 AM, Christian K=F6nig wrote:
> > Am 03.06.21 um 09:36 schrieb Daniel Vetter:
> > > On Thu, Jun 3, 2021 at 8:50 AM Thomas Hellstr=F6m
> > > <thomas.hellstrom@linux.intel.com> wrote:
> > > > =

> > > > On 6/2/21 8:40 PM, Daniel Vetter wrote:
> > > > > On Wed, Jun 02, 2021 at 11:48:41AM +0200, Christian K=F6nig wrote:
> > > > > > Am 02.06.21 um 11:16 schrieb Thomas Hellstr=F6m (Intel):
> > > > > > > On 6/2/21 10:32 AM, Christian K=F6nig wrote:
> > > > > > > > Uff I'm just waiting for feedback from Philip to
> > > > > > > > merge a large patch
> > > > > > > > set for TTM through drm-misc-next.
> > > > > > > > =

> > > > > > > > I'm pretty sure we will run into merge conflicts if you try=
 to push
> > > > > > > > your changes through the Intel tree.
> > > > > > > > =

> > > > > > > > Christian.
> > > > > > > OK, so what would be the best approach here?, Adding
> > > > > > > the TTM patches to
> > > > > > > drm-misc-next when your set has landed?
> > > > > > I think I will send out out my set to Matthew once more
> > > > > > for review, then
> > > > > > push the common TTM stuff to drm-misc-next as much as possible.
> > > > > > =

> > > > > > Then you should be able to land your stuff to
> > > > > > drm-misc-next and rebase on
> > > > > > the end result.
> > > > > > =

> > > > > > Just need to note to David that drm-misc-next should be
> > > > > > merged to drm-next
> > > > > > before the Intel patches depending on that stuff land as well.
> > > > > Other option (because the backmerges tend to be slow) is a
> > > > > topic branch,
> > > > > and we just eat/resolve the conflicts in both drm-misc-next and
> > > > > drm-intel-gt-next in the merge commit. If it's not too bad (I hav=
en't
> > > > > looked at what exactly we need for the i915 side from ttm in deta=
il).
> > > > > =

> > > > > But also often figuring out the topic branch logistics takes
> > > > > longer than
> > > > > just merging to drm-misc-next as the patches get ready.
> > > > > -Daniel
> > > > Daniel: So the thing we need to get into TTM is the iterator-based
> > > > move_memcpy which is more adaptable than the current one and needed=
 to
> > > > support non-linear lmem buffers, some bug-fixes and minor changes t=
o be
> > > > able to keep our short-term-pinning while on the LRU. A necessary e=
vil.
> > > > =

> > > > Christian: it looks like you have landed some TTM changes already, =
in
> > > > particular the &bo->mem -> bo->resource change which is the main
> > > > conflict I think.
> > =

> > Yes, I thought that pushing this with Matthew rb should solve at least a
> > bit of the conflict.
> > =

> > > > Is the 10 patches self-allocation series the main
> > > > remaining part?
> > =

> > Yes, exactly. I only need Matthew's, Daniel's or your ok and I'm good to
> > go as well
> > =

> > > > That will probably cause some conflicts with already
> > > > pushed i915 TTM setup code, but otherwise will not conflict with the
> > > > rest of the TTM code I think, which should make it possible to brin=
g in
> > > > our TTM changes after conflict resolution with what you've already
> > > > pushed. The memcpy code is pretty self-contained.
> > > I think in that case topic branch on top of drm-next (once the ttm
> > > bits we conflict with are there) is probably best, and then pull that
> > > into drm-misc-next and drm-intel-gt-next. Merge window freeze is also
> > > approach, so without topic branch we'd be stuck until like -rc2 when
> > > drm-next reopens. I guess Maarten can do the topic branch logistics in
> > > drm-misc.git for this.
> > =

> > That approach sounds good to me as well.
> > =

> > The amdgpu branch had some merge conflicts as well, but nothing we
> > couldn't fix.
> =

> OK, so this is going to be a little tricky, I guess.
> =

> From what I can tell, the memcpy TTM stuff is resolved locally and can be
> merged to drm-misc-next immediately. It might have a very minor conflict
> with your 10 patches I think, if any.
> =

> Your 10 patches will conflict slightly with current drm-intel-gt-next I
> think.
> =

> Remaining intel patches will conflict only with current drm-misc-next.
> =

> So We could have pull order
> =

> - drm-misc-next up to bot not including your 10 patches,
> - drm-intel-gt-next
> - drm-misc-next from your 10 paches and onwards,
> - Intel's ttm enablement topic branch.

If it's just slight conflicts then I wouldn't bother with careful merge
order. Because if we do this we can get around to the i915 ttm topic
branch only when we're back to -rc2.

We can also validate any conflicts in drm-tip easily before they get baked
in in drm-next.

So I'd just go with
- drm-misc-next gets those 10 patches from Christian and the memcpy prep
  stuff from you, gets send to drm-next (that's probably the last feature
  pull for 5.14 anyway, maybe another one)
- drm-intel-gt-next gets send to drm-next
- topic branch with remaining i915 ttm work that's in flight on top of
  drm-next and we pull that into drm-misc-next and drm-intel-gt-next as
  needed

Only thing we need for this is a few days of testing to make sure any
conflicts between -misc-next and -gt-next are fully validated.

Adding Dave for that so he knows too.

> Whether I push the ttm memcpy stuff before your 10 patches or after
> shouldn't really matter except it might take some time to resolve the 10
> patches - drm-intel-gt-next conflict in drm-tip.
> =

> So OK to merge the memcpy stuff to drm-misc-next now or do you want me to
> hold on?
> =

> I'll take a look at what's remaining to review in your series. I guess it=
's
> in our interest that both these series get merged asap.

Yeah that part I think makes sense.
-Daniel

> =

> /Thomas
> =

> =

> =

> > =

> > Christian.
> > =

> > > -Daniel
> > =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
