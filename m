Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C174D1841
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 13:50:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D67410E4D1;
	Tue,  8 Mar 2022 12:50:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E117810E18D;
 Mon,  7 Mar 2022 14:23:04 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 68511B8159E;
 Mon,  7 Mar 2022 14:23:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CC2EC340E9;
 Mon,  7 Mar 2022 14:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646662982;
 bh=0Qn7igLK4+VBbSp7gLFhF/fhKeQP55ogIhfNSw2/WLE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cb3j8+IWzXN37rJiLWqQUGEVD4ii6/Oemo4DTwTpiEA4V+gXQjRM4GYfsht+kwvCv
 vkJFpF1Y8Pg+GuNd2qQ+eew6sU/XDArFADYPsScLC8eEggcTV4tGCGKuzP6Qy2e+Nm
 8MpMnjvXXS57bXAShOoZPh7yoFANSySevMH1tJOyg5/bAUisWebkjLlfSpcg/EnJBj
 oyhvWTqMuoUsjTFLX0FkvNwQkf4lsrtYbzNriqlb3hba7r94ECnZbn+REMGSzfW/CT
 V2S6AFBScxSzf4ndu3c4N9itn+XJ+SP9+zowaHjtzJ2J0llO4qZf8qNCIXpl85oQ0b
 7rNZHKbPfu+sA==
Date: Mon, 7 Mar 2022 16:22:21 +0200
From: Jarkko Sakkinen <jarkko@kernel.org>
To: David Hildenbrand <david@redhat.com>
Message-ID: <YiYVHTkS8IsMMw6T@iki.fi>
References: <20220306053211.135762-1-jarkko@kernel.org>
 <d6b09f23-f470-c119-8d3e-7d72a3448b64@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d6b09f23-f470-c119-8d3e-7d72a3448b64@redhat.com>
X-Mailman-Approved-At: Tue, 08 Mar 2022 12:50:53 +0000
Subject: Re: [Intel-gfx] [PATCH RFC 0/3] MAP_POPULATE for device memory
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
Cc: Michal Hocko <mhocko@suse.com>, zhangyiru <zhangyiru3@huawei.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Dave Hansen <dave.hansen@linux.intel.com>, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, linux-mm@kvack.org,
 Alexander Mikhalitsyn <alexander.mikhalitsyn@virtuozzo.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-unionfs@vger.kernel.org,
 codalist@coda.cs.cmu.edu, Matthew Auld <matthew.auld@intel.com>,
 Vasily Averin <vvs@virtuozzo.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, linux-mips@vger.kernel.org,
 Shakeel Butt <shakeelb@google.com>,
 Reinette Chatre <reinette.chatre@intel.com>, linux-sgx@vger.kernel.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Nathaniel McCallum <nathaniel@profian.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Alexey Gladkov <legion@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 07, 2022 at 11:12:44AM +0100, David Hildenbrand wrote:
> On 06.03.22 06:32, Jarkko Sakkinen wrote:
> > For device memory (aka VM_IO | VM_PFNMAP) MAP_POPULATE does nothing. Allow
> > to use that for initializing the device memory by providing a new callback
> > f_ops->populate() for the purpose.
> > 
> > SGX patches are provided to show the callback in context.
> > 
> > An obvious alternative is a ioctl but it is less elegant and requires
> > two syscalls (mmap + ioctl) per memory range, instead of just one
> > (mmap).
> 
> What about extending MADV_POPULATE_READ | MADV_POPULATE_WRITE to support
> VM_IO | VM_PFNMAP (as well?) ?

What would be a proper point to bind that behaviour? For mmap/mprotect it'd
be probably populate_vma_page_range() because that would span both mmap()
and mprotect() (Dave's suggestion in this thread).

For MAP_POPULATE I did not have hard proof to show that it would be used
by other drivers but for madvice() you can find at least a few ioctl
based implementations:

$ git grep -e madv --and \( -e ioc \)  drivers/
drivers/gpu/drm/i915/gem/i915_gem_ioctls.h:int i915_gem_madvise_ioctl(struct drm_device *dev, void *data,
drivers/gpu/drm/i915/i915_driver.c:     DRM_IOCTL_DEF_DRV(I915_GEM_MADVISE, i915_gem_madvise_ioctl, DRM_RENDER_ALLOW),
drivers/gpu/drm/i915/i915_gem.c:i915_gem_madvise_ioctl(struct drm_device *dev, void *data,
drivers/gpu/drm/msm/msm_drv.c:static int msm_ioctl_gem_madvise(struct drm_device *dev, void *data,
drivers/gpu/drm/msm/msm_drv.c:  DRM_IOCTL_DEF_DRV(MSM_GEM_MADVISE,  msm_ioctl_gem_madvise,  DRM_RENDER_ALLOW),
drivers/gpu/drm/panfrost/panfrost_drv.c:static int panfrost_ioctl_madvise(struct drm_device *dev, void *data,
drivers/gpu/drm/vc4/vc4_drv.c:  DRM_IOCTL_DEF_DRV(VC4_GEM_MADVISE, vc4_gem_madvise_ioctl, DRM_RENDER_ALLOW),
drivers/gpu/drm/vc4/vc4_drv.h:int vc4_gem_madvise_ioctl(struct drm_device *dev, void *data,
drivers/gpu/drm/vc4/vc4_gem.c:int vc4_gem_madvise_ioctl(struct drm_device *dev, void *data,

IMHO this also provides supportive claim for MAP_POPULATE, and yeah, I
agree that to be consistent implementation, both madvice() and MAP_POPULATE
should work.

> -- 
> Thanks,
> 
> David / dhildenb

BR, Jarkko
