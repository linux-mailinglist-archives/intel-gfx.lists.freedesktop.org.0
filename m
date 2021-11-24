Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D361445CBD7
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 19:08:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D248089A98;
	Wed, 24 Nov 2021 18:07:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3666389A57
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 18:07:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10178"; a="321573963"
X-IronPort-AV: E=Sophos;i="5.87,261,1631602800"; d="scan'208";a="321573963"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 10:07:42 -0800
X-IronPort-AV: E=Sophos;i="5.87,261,1631602800"; d="scan'208";a="509973823"
Received: from mhoppe-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.8.191])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 10:07:40 -0800
Date: Wed, 24 Nov 2021 19:07:37 +0100
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20211124180737.GA3786@zkempczy-mobl2>
References: <20211122191314.47254-1-zbigniew.kempczynski@intel.com>
 <82e3fcaf-d676-ea6e-3cc3-ef8ca5d9f176@linux.intel.com>
 <20211124080420.GA5295@zkempczy-mobl2>
 <6201d241-ebe3-0769-62d6-0cfb2d1b48ed@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6201d241-ebe3-0769-62d6-0cfb2d1b48ed@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 0/1] Ensure zero alignment on gens < 4
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 24, 2021 at 08:45:50AM +0000, Tvrtko Ursulin wrote:
> 
> On 24/11/2021 08:04, Zbigniew Kempczyński wrote:
> > On Tue, Nov 23, 2021 at 09:49:04AM +0000, Tvrtko Ursulin wrote:
> > > 
> > > On 22/11/2021 19:13, Zbigniew Kempczyński wrote:
> > > > In short - we want to enforce alignment == 0 for gen4+ GEM object
> > > > settings.
> > > > 
> > > > Before we merge this we need to inspect all UMD we expect can use
> > > > this. My investigation was narrowed to UMD code:
> > > > 
> > > > 1. IGT
> > > > 2. Mesa
> > > > 3. Media-Driver
> > > > 4. NEO
> > > > 5. libdrm
> > > > 6. xf86-intel-video
> > > > 
> > > > I would like to ask subsystem developers / maintainers to confirm
> > > > my analysis.
> > > > 
> > > > 1. IGT:
> > > >      We've already removed / fixed most of the code where alignment != 0.
> > > >      What left was few multi-card subtests I'm not able to rewrite due
> > > >      to lack of such hw (nv + intel on the board).
> > > > 
> > > > 2. Mesa:
> > > >      gallium/drivers/iris/iris_batch.c,iris_bufmgr.c - it uses softpinning
> > > >      only with alignment handled by allocator, so drm_i915_gem_exec_object2
> > > >      alignment field == 0.
> > > > 
> > > >      drivers/dri/i965/brw_batch.c,brw_screen.c - it uses relocations but
> > > >      it is supported by allocator, there're no direct alignment settings
> > > >      to value != 0.
> > > > 
> > > >      vulcan/anv_batch_chain.c: drm_i915_gem_exec_object2 objects are
> > > >      initialized within anv_execbuf_add_bo() and .alignment field
> > > >      is set to 0 there. There's no other place where I've found vulcan
> > > >      driver touches it both for softpinning / relocations.
> > > > 
> > > > 3. Media-Driver:
> > > >      It contains modified libdrm code and three functions which do
> > > >      allocations, all of them uses mos_gem_bo_alloc_internal():
> > > >      - mos_gem_bo_alloc() - internally uses alignment == 0, that's ok
> > > >      - mos_gem_bo_alloc_tiled() - same as mos_gem_bo_alloc()
> > > >      - mos_gem_bo_alloc_for_render() - this one passes alignment from
> > > >        the caller and it may be != 0. But I haven't found practical
> > > >        usage of this function externally (using mos_bo_alloc_for_render()
> > > >        wrapper).
> > > >      There's another userptr allocation function: mos_bo_alloc_userptr()
> > > >      but it doesn't use alignment.
> > > > 
> > > > 4. NEO:
> > > >      Uses softpinning only with alignment == 0:
> > > >      source/os_interface/linux/drm_buffer_object.cpp:
> > > >      void BufferObject::fillExecObject() has execObject.alignment = 0;
> > > > 
> > > > 5. libdrm:
> > > >      Corresponding functions to Media-Driver:
> > > >      drm_intel_bo_alloc(), drm_intel_bo_alloc_for_render(),
> > > >      drm_intel_bo_alloc_userptr() and drm_intel_bo_alloc_tiled().
> > > >      Alignment field is used in drm_intel_bo_alloc_for_render()
> > > >      so couple not rewritten IGTs may encounter issue here (alignment
> > > >      passed in IGTs which still uses libdrm == 4096).
> > > > 
> > > > 6. xf86-intel-video:
> > > >      src/sna/kgem.c: _kgem_submit() - alignment is set to 0 so this
> > > >      shouldn't be a problem.
> > > 
> > > You also need to figure out not only what codebase currently uses this, but
> > > what maybe has an older version in the field which used to, right? Otherwise
> > > kernel upgrade can break someones old userspace which is not allowed. Just
> > > raising this for consideration if it isn't already on your radar.
> > > 
> > 
> > Do you mean should I for example check each Ubuntu LTS (14.04, 16.04 and so on),
> > find commit id used to build above and examine above source code again? And also
> > do this for other distros?
> 
> I think from another direction, for each of the above listed libraries see
> in their git history (inputs from owners should help) if they ever used
> non-zero alignment and if they have map it to released versions. Then see is
> those released versions shipped in any distro, maybe via distro watch, if
> they have a database going far enough.
> 
> I don't know what would be the best plan of looking through codebase
> history. Maybe git log -S/-G with strings which would catch assignemnts to
> alignments, or passing in those parameters? Or just git log at first
> instance.
> 
> In the ideal world each userspace library above can say they never ever used
> it and then it's simpler. Unless there is some obscure thing linking
> directly to libdrm out in the wild? Maybe check distro packages to see all
> that depend on it.

Thanks for hints, you're right. I should walk over rev-list history and find
any problematic code. Problematic I mean direct obj alignment setting or 
usage of libdrm bo_alloc_for_render() where alignment can be passed as an
argument. I've missed UXA also uses libdrm and bo_alloc_for_render() but 
alignment was set to 0 in whole history so this driver shouldn't be a problem.

If anyone knows which project would directly use libdrm with intel bo bufmgr
I would appreciate.

--
Zbigniew
 
> 
> Regards,
> 
> Tvrtko
