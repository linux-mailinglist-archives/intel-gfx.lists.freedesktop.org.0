Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1923FF45A
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 21:49:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E519D6E808;
	Thu,  2 Sep 2021 19:49:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 059B16E808
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 19:49:13 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id x6so4735899wrv.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 Sep 2021 12:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=i6jZ/mZIAosiBmvqbV/8ojQgzhXKqlBrJu3A035ZXr4=;
 b=dkmNg1WvMSCyxdeAW/7O3LZSYhvMvemuouCHOSiojW+kR1wq8+0dCoW1C5MslPq1L0
 qverN2uF8+RSL7FogdvEpM3x5U8IrJ77N939QS/vsFzg1GGjZeP8WJfxXKkruumOOOU6
 LbMAyAgtplQmP9nv/V0G/NuWFJ0cX7rhn0CIs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=i6jZ/mZIAosiBmvqbV/8ojQgzhXKqlBrJu3A035ZXr4=;
 b=FLVmiEABs8B/8EnkKvREmrea20XvGO4ZkQJ8TLT3QohukM97NeAXS+BeLb3YENG8Fp
 gWlzRPhaaf6Emh+IJ58UhfQLSS7GoL9Ni9WY4wCw2k5oGiyEpq1Omp15Z1MSDaxLvhSp
 +C14MhegdeY/lzXRGvlC1GaPKuiogBQ6dXNpcE3acofsDxzY/1xY110/+PndiV4QDhQT
 vqvwWavFtlX+1oRfvzoMEn0M6KNpZZESUYABezdw7TSvHb9Zp+0URjzQ/u5cEaeCUS44
 IhMF/2Z/NNBJDiAemiiyevufykSJb7/0PMEOwRP/wsX/XdgI/ZqKZQiN+EMXlhOayZaC
 QuPA==
X-Gm-Message-State: AOAM531dLSGSUaxAlu5fRhNZhGgrO5rxWE5RwRKw9ikomAyGZMlYrKwP
 DHneDtqjzdn/45D7jYy3N5Ly6Q==
X-Google-Smtp-Source: ABdhPJyNBrWcgsIHmmrpc4eT+VdC9bYYrvVbuF+7aP5ScK+mWvEvlZ+zNSUUMSZJbtW98umzXsJfrw==
X-Received: by 2002:a05:6000:36e:: with SMTP id
 f14mr5852872wrf.196.1630612151727; 
 Thu, 02 Sep 2021 12:49:11 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id c4sm2999464wme.14.2021.09.02.12.49.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Sep 2021 12:49:11 -0700 (PDT)
Date: Thu, 2 Sep 2021 21:49:09 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: "Bloomfield, Jon" <jon.bloomfield@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "Vetter, Daniel" <daniel.vetter@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 "Auld, Matthew" <matthew.auld@intel.com>,
 "Landwerlin, Lionel G" <lionel.g.landwerlin@intel.com>,
 Dave Airlie <airlied@redhat.com>, Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YTEqtXODs4TkSKH4@phenom.ffwll.local>
References: <20210902142057.929669-1-daniel.vetter@ffwll.ch>
 <20210902142057.929669-7-daniel.vetter@ffwll.ch>
 <1cb4b910-ad02-ff02-46ef-7b3b4f393eb3@linux.intel.com>
 <YTDsKX2rQ4Kjr3io@phenom.ffwll.local>
 <68d369f3-b072-e138-8195-f6ff14f708a2@linux.intel.com>
 <608e2c4bbe20443b86f1c62cd95f3e48@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <608e2c4bbe20443b86f1c62cd95f3e48@intel.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 07/11] drm/i915: Add
 i915_gem_context_is_full_ppgtt
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 02, 2021 at 05:05:05PM +0000, Bloomfield, Jon wrote:
> > -----Original Message-----
> > From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > Sent: Thursday, September 2, 2021 9:42 AM
> > To: Daniel Vetter <daniel@ffwll.ch>
> > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>; DRI Development <dri-
> > devel@lists.freedesktop.org>; Intel Graphics Development <intel-
> > gfx@lists.freedesktop.org>; Maarten Lankhorst
> > <maarten.lankhorst@linux.intel.com>; Vetter, Daniel
> > <daniel.vetter@intel.com>; Bloomfield, Jon <jon.bloomfield@intel.com>;
> > Chris Wilson <chris@chris-wilson.co.uk>; Joonas Lahtinen
> > <joonas.lahtinen@linux.intel.com>; Thomas Hellström
> > <thomas.hellstrom@linux.intel.com>; Auld, Matthew
> > <matthew.auld@intel.com>; Landwerlin, Lionel G
> > <lionel.g.landwerlin@intel.com>; Dave Airlie <airlied@redhat.com>; Jason
> > Ekstrand <jason@jlekstrand.net>
> > Subject: Re: [Intel-gfx] [PATCH 07/11] drm/i915: Add
> > i915_gem_context_is_full_ppgtt
> > 
> > 
> > On 02/09/2021 16:22, Daniel Vetter wrote:
> > > On Thu, Sep 02, 2021 at 03:54:36PM +0100, Tvrtko Ursulin wrote:
> > >> On 02/09/2021 15:20, Daniel Vetter wrote:
> > >>> And use it anywhere we have open-coded checks for ctx->vm that really
> > >>> only check for full ppgtt.
> > >>>
> > >>> Plus for paranoia add a GEM_BUG_ON that checks it's really only set
> > >>> when we have full ppgtt, just in case. gem_context->vm is different
> > >>> since it's NULL in ggtt mode, unlike intel_context->vm or gt->vm,
> > >>> which is always set.
> > >>>
> > >>> v2: 0day found a testcase that I missed.
> > >>>
> > >>> Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > >>> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > >>> Cc: Jon Bloomfield <jon.bloomfield@intel.com>
> > >>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > >>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > >>> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > >>> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> > >>> Cc: "Thomas Hellström" <thomas.hellstrom@linux.intel.com>
> > >>> Cc: Matthew Auld <matthew.auld@intel.com>
> > >>> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> > >>> Cc: Dave Airlie <airlied@redhat.com>
> > >>> Cc: Jason Ekstrand <jason@jlekstrand.net>
> > >>> ---
> > >>>    drivers/gpu/drm/i915/gem/i915_gem_context.c           | 2 +-
> > >>>    drivers/gpu/drm/i915/gem/i915_gem_context.h           | 7 +++++++
> > >>>    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c        | 2 +-
> > >>>    drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 6 +++---
> > >>>    4 files changed, 12 insertions(+), 5 deletions(-)
> > >>>
> > >>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > >>> index 7a566fb7cca4..1eec85944c1f 100644
> > >>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > >>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > >>> @@ -1566,7 +1566,7 @@ static int get_ppgtt(struct
> > drm_i915_file_private *file_priv,
> > >>>    	int err;
> > >>>    	u32 id;
> > >>> -	if (!rcu_access_pointer(ctx->vm))
> > >>> +	if (!i915_gem_context_is_full_ppgtt(ctx))
> > >>
> > >> It reads a bit wrong because GEM context cannot *be* full ppggt. It can
> > be
> > >> associated with a VM which is or isn't full ppgtt. So a test on a VM
> > >> retrieved from a context is semnntically more correct. Perhaps you want
> > to
> > >> consider adding a helper to that effect instead? It could mean splitting
> > >> into two helpers (getter + test) or maybe just renaming would work. Like
> > >> i915_gem_context_has_full_ppgtt_vm(ctx)?
> > >
> > > The pointer isn't set when the driver/context isn't running in full ppgtt
> > > mode. This is why I've added the GEM_BUG_ON to check we're not
> > breaking
> > > any invariants. So yeah it is a full ppgtt context or it's not, that is
> > > indeed the question here.
> > >
> > > I'm happy to bikeshed the naming, but I don't see how your suggestion is
> > > an improvement.
> > 
> > I think the pointer being set or not is implementation detail, for
> > instance we could have it always set just like it is in intel_context.
> > 
> > I simply think GEM context *isn't* full ppgtt, but the VM is. And since
> > GEM context *points* to a VM, *has* is the right verb in my mind. You
> > did not write why do you not see has as more correct than is so I don't
> > want to be guessing too much.
> 
> FWIW, I agree with Tvrtko. i915_gem_context_is_full_ppgtt is incorrect
> grammar. It IS a bike shed, but, hey it'll live for a while.

Generally all our feature checks are of the various is_foo variety.
HAS_FULL_PPGTT is one of the very rare exceptions. So it's a question of
"is gem_ctx foo", not "has gem_ctx foo". The fact that we implement the
check by looking at a pointer doesn't matter. And yes if it is full ppgtt,
it also has it's own private vm, but we don't care about that part at all.
It's just a distraction.

Anyway I'll repaint, least because the HAS_FULL_PPGTT thing is almost a
decade old by now :-)
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
