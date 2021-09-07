Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5984240254E
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 10:42:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F49E89D60;
	Tue,  7 Sep 2021 08:42:53 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7AD789DA8
 for <Intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 08:42:52 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id n5so13213646wro.12
 for <Intel-gfx@lists.freedesktop.org>; Tue, 07 Sep 2021 01:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=1AjW4Kc6ZGOu180e/pv9qa4D2oUwYVALvaaYfq7mkpU=;
 b=ZXOfQiRF7AoffAtrkihEs3ZF2QqQsHfVGeOqtVJMGJci4ev78qJ/OomWcZHqwwwuCQ
 cdYl/4wVu4jGx8eIMTzDc3LiGSgNw3etgm04wUF7hrcxI8voYj/nUvZcgzpJjBB7511n
 iuYtuhdMyMvLhOn2KOqJGv+gKX6tpDbZp1as4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1AjW4Kc6ZGOu180e/pv9qa4D2oUwYVALvaaYfq7mkpU=;
 b=fGrJBjp8Pu+in+MFI+1m5GaST/VIKCdXxe8elG0BQX4X9c7RNLvUl8o6Nl2Tw0CFqA
 O6W9VeeW9PeJmTU8aRS9H/f8lshZIAjGPyslFEe85jZ5p4+76Bd1E0JyWBvmQJ5WyjvD
 AGL5bp0Mo91jdLkPXMVLyqGN+hh0err2eK7pSGv6SMgS+sCVIQkutNxM7GrQ+ywv5hXt
 uNeW/FRHApnvq6D3FUIQLvAwhDTHqjx6ZrOIxGf87O6QuE0X2BuXvUhEKF/iWryTLdOp
 kOb+8nnRPbtN/bc7AvasYH1nXFrisbOMbnkOi67jYCEK1bwT6CtFDJuSBaFwd9Q+eDLq
 gNsA==
X-Gm-Message-State: AOAM532eUN8TWA2oBpVtqhIauLsJUetbdwafANcveMqE/p5Mni9knvza
 1XCLM8Gax0RZz2AcSccfad2e9g==
X-Google-Smtp-Source: ABdhPJx9yu5rT9NBxVQtAwN/o9g7BfgrQCFHeuntsG69nuWrDkH5b7HdWIETSHoX+KDV9jZV3TswLg==
X-Received: by 2002:adf:ff86:: with SMTP id j6mr17501660wrr.299.1631004171366; 
 Tue, 07 Sep 2021 01:42:51 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id d7sm9197126wrf.3.2021.09.07.01.42.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Sep 2021 01:42:50 -0700 (PDT)
Date: Tue, 7 Sep 2021 10:42:49 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>,
 intel-gfx <Intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Eero Tamminen <eero.t.tamminen@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <YTcmCSr5HJZDeRNH@phenom.ffwll.local>
References: <20210729133420.770672-1-tvrtko.ursulin@linux.intel.com>
 <20210729133420.770672-2-tvrtko.ursulin@linux.intel.com>
 <CAKMK7uE412nf5RisGBR2GrNsvgPH+omHv4K+m5McJv1t55DQMQ@mail.gmail.com>
 <c8aecd1e-f6d6-cec2-3352-e01c9427248b@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c8aecd1e-f6d6-cec2-3352-e01c9427248b@linux.intel.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Use Transparent Hugepages
 when IOMMU is enabled
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

On Fri, Sep 03, 2021 at 01:47:52PM +0100, Tvrtko Ursulin wrote:
> 
> On 29/07/2021 15:06, Daniel Vetter wrote:
> > On Thu, Jul 29, 2021 at 3:34 PM Tvrtko Ursulin
> > <tvrtko.ursulin@linux.intel.com> wrote:
> > > 
> > > From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > 
> > > Usage of Transparent Hugepages was disabled in 9987da4b5dcf
> > > ("drm/i915: Disable THP until we have a GPU read BW W/A"), but since it
> > > appears majority of performance regressions reported with an enabled IOMMU
> > > can be almost eliminated by turning them on, lets just do that.
> > > 
> > > To err on the side of safety we keep the current default in cases where
> > > IOMMU is not active, and only when it is default to the "huge=within_size"
> > > mode. Although there probably would be wins to enable them throughout,
> > > more extensive testing across benchmarks and platforms would need to be
> > > done.
> > > 
> > > With the patch and IOMMU enabled my local testing on a small Skylake part
> > > shows OglVSTangent regression being reduced from ~14% (IOMMU on versus
> > > IOMMU off) to ~2% (same comparison but with THP on).
> > > 
> > > v2:
> > >   * Add Kconfig dependency to transparent hugepages and some help text.
> > >   * Move to helper for easier handling of kernel build options.
> > > 
> > > v3:
> > >   * Drop Kconfig. (Daniel)
> > > 
> > > References: b901bb89324a ("drm/i915/gemfs: enable THP")
> > > References: 9987da4b5dcf ("drm/i915: Disable THP until we have a GPU read BW W/A")
> > > References: https://gitlab.freedesktop.org/drm/intel/-/issues/430
> > > Co-developed-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > > Cc: Matthew Auld <matthew.auld@intel.com>
> > > Cc: Eero Tamminen <eero.t.tamminen@intel.com>
> > > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > Cc: Daniel Vetter <daniel@ffwll.ch>
> > > Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com> # v1
> > 
> > On both patches: Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> 
> Eero's testing results at
> https://gitlab.freedesktop.org/drm/intel/-/issues/430 are looking good -
> seem to show this to be a net win for at least Gen9 and Gen12 platforms.
> 
> Is the ack enough to merge in this case or I should look for an r-b as well?

Since your back to defacto v1 with the 2nd patch I think you have full r-b
already. So more than enough I think.

Please do record the relative perf numbers from Eero in that issue in the
commit message so that we have that on the git log record too. It's easier
to find there than following the link and finding the right comment in the
issue.

Thanks, Daniel

> 
> Regards,
> 
> Tvrtko
> 
> > > ---
> > >   drivers/gpu/drm/i915/gem/i915_gemfs.c | 22 +++++++++++++++++++---
> > >   1 file changed, 19 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gemfs.c b/drivers/gpu/drm/i915/gem/i915_gemfs.c
> > > index 5e6e8c91ab38..dbdbdc344d87 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gemfs.c
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gemfs.c
> > > @@ -6,7 +6,6 @@
> > > 
> > >   #include <linux/fs.h>
> > >   #include <linux/mount.h>
> > > -#include <linux/pagemap.h>
> > > 
> > >   #include "i915_drv.h"
> > >   #include "i915_gemfs.h"
> > > @@ -15,6 +14,7 @@ int i915_gemfs_init(struct drm_i915_private *i915)
> > >   {
> > >          struct file_system_type *type;
> > >          struct vfsmount *gemfs;
> > > +       char *opts;
> > > 
> > >          type = get_fs_type("tmpfs");
> > >          if (!type)
> > > @@ -26,10 +26,26 @@ int i915_gemfs_init(struct drm_i915_private *i915)
> > >           *
> > >           * One example, although it is probably better with a per-file
> > >           * control, is selecting huge page allocations ("huge=within_size").
> > > -        * Currently unused due to bandwidth issues (slow reads) on Broadwell+.
> > > +        * However, we only do so to offset the overhead of iommu lookups
> > > +        * due to bandwidth issues (slow reads) on Broadwell+.
> > >           */
> > > 
> > > -       gemfs = kern_mount(type);
> > > +       opts = NULL;
> > > +       if (intel_vtd_active()) {
> > > +               if (IS_ENABLED(CONFIG_TRANSPARENT_HUGEPAGE)) {
> > > +                       static char huge_opt[] = "huge=within_size"; /* r/w */
> > > +
> > > +                       opts = huge_opt;
> > > +                       drm_info(&i915->drm,
> > > +                                "Transparent Hugepage mode '%s'\n",
> > > +                                opts);
> > > +               } else {
> > > +                       drm_notice(&i915->drm,
> > > +                                  "Transparent Hugepage support is recommended for optimal performance when IOMMU is enabled!\n");
> > > +               }
> > > +       }
> > > +
> > > +       gemfs = vfs_kern_mount(type, SB_KERNMOUNT, type->name, opts);
> > >          if (IS_ERR(gemfs))
> > >                  return PTR_ERR(gemfs);
> > > 
> > > --
> > > 2.30.2
> > > 
> > 
> > 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
