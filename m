Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C0045B62A
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 09:04:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDC4A6E914;
	Wed, 24 Nov 2021 08:04:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4CA86E914
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 08:04:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="232721228"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="232721228"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 00:04:24 -0800
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="509779779"
Received: from jczachar-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.23.189])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 00:04:22 -0800
Date: Wed, 24 Nov 2021 09:04:20 +0100
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20211124080420.GA5295@zkempczy-mobl2>
References: <20211122191314.47254-1-zbigniew.kempczynski@intel.com>
 <82e3fcaf-d676-ea6e-3cc3-ef8ca5d9f176@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <82e3fcaf-d676-ea6e-3cc3-ef8ca5d9f176@linux.intel.com>
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

On Tue, Nov 23, 2021 at 09:49:04AM +0000, Tvrtko Ursulin wrote:
> 
> On 22/11/2021 19:13, Zbigniew Kempczyński wrote:
> > In short - we want to enforce alignment == 0 for gen4+ GEM object
> > settings.
> > 
> > Before we merge this we need to inspect all UMD we expect can use
> > this. My investigation was narrowed to UMD code:
> > 
> > 1. IGT
> > 2. Mesa
> > 3. Media-Driver
> > 4. NEO
> > 5. libdrm
> > 6. xf86-intel-video
> > 
> > I would like to ask subsystem developers / maintainers to confirm
> > my analysis.
> > 
> > 1. IGT:
> >     We've already removed / fixed most of the code where alignment != 0.
> >     What left was few multi-card subtests I'm not able to rewrite due
> >     to lack of such hw (nv + intel on the board).
> > 
> > 2. Mesa:
> >     gallium/drivers/iris/iris_batch.c,iris_bufmgr.c - it uses softpinning
> >     only with alignment handled by allocator, so drm_i915_gem_exec_object2
> >     alignment field == 0.
> > 
> >     drivers/dri/i965/brw_batch.c,brw_screen.c - it uses relocations but
> >     it is supported by allocator, there're no direct alignment settings
> >     to value != 0.
> > 
> >     vulcan/anv_batch_chain.c: drm_i915_gem_exec_object2 objects are
> >     initialized within anv_execbuf_add_bo() and .alignment field
> >     is set to 0 there. There's no other place where I've found vulcan
> >     driver touches it both for softpinning / relocations.
> > 
> > 3. Media-Driver:
> >     It contains modified libdrm code and three functions which do
> >     allocations, all of them uses mos_gem_bo_alloc_internal():
> >     - mos_gem_bo_alloc() - internally uses alignment == 0, that's ok
> >     - mos_gem_bo_alloc_tiled() - same as mos_gem_bo_alloc()
> >     - mos_gem_bo_alloc_for_render() - this one passes alignment from
> >       the caller and it may be != 0. But I haven't found practical
> >       usage of this function externally (using mos_bo_alloc_for_render()
> >       wrapper).
> >     There's another userptr allocation function: mos_bo_alloc_userptr()
> >     but it doesn't use alignment.
> > 
> > 4. NEO:
> >     Uses softpinning only with alignment == 0:
> >     source/os_interface/linux/drm_buffer_object.cpp:
> >     void BufferObject::fillExecObject() has execObject.alignment = 0;
> > 
> > 5. libdrm:
> >     Corresponding functions to Media-Driver:
> >     drm_intel_bo_alloc(), drm_intel_bo_alloc_for_render(),
> >     drm_intel_bo_alloc_userptr() and drm_intel_bo_alloc_tiled().
> >     Alignment field is used in drm_intel_bo_alloc_for_render()
> >     so couple not rewritten IGTs may encounter issue here (alignment
> >     passed in IGTs which still uses libdrm == 4096).
> > 
> > 6. xf86-intel-video:
> >     src/sna/kgem.c: _kgem_submit() - alignment is set to 0 so this
> >     shouldn't be a problem.
> 
> You also need to figure out not only what codebase currently uses this, but
> what maybe has an older version in the field which used to, right? Otherwise
> kernel upgrade can break someones old userspace which is not allowed. Just
> raising this for consideration if it isn't already on your radar.
> 

Do you mean should I for example check each Ubuntu LTS (14.04, 16.04 and so on),
find commit id used to build above and examine above source code again? And also
do this for other distros?

--
Zbigniew
 

> Regards,
> 
> Tvrtko
> 
> > 
> > 
> > Cc: Petri Latvala <petri.latvala@intel.com>
> > Cc: Jason Ekstrand <jason@jlekstrand.net>
> > Cc: Dmitry Rogozhkin <dmitry.v.rogozhkin@intel.com>
> > Cc: Michal Mrozek <michal.mrozek@intel.com>
> > Cc: José Roberto de Souza <jose.souza@intel.com>
> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> > 
> > Zbigniew Kempczyński (1):
> >    i915/gem/i915_gem_execbuffer: Disallow passing alignment
> > 
> >   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 11 +++++++++++
> >   1 file changed, 11 insertions(+)
> > 
