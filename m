Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EBF43C9D7E
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jul 2021 13:07:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3616B6E825;
	Thu, 15 Jul 2021 11:07:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C27086E824
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 11:07:37 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id d12so7186099wre.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 04:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=m1mEFS+u6luv5SpAYux4dU20h7Ou7Zi475xjguaULhk=;
 b=IBwkzY3Z39MwZRNh0xNiJOYGZHZgym+Qw5XiuYPF4VUv5roKeJ9ZxjwT0kV6MJEl7D
 K3YS4A6VV5uH3zDMEL/N4RdulZt6DqbcqCftar923lh/c4P/TMOxMoQvuTmIQnLqp0bZ
 5VQwPTaoGCR3mYutqd4yFyrAbC2VExRGYDy/A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=m1mEFS+u6luv5SpAYux4dU20h7Ou7Zi475xjguaULhk=;
 b=efSuo+Sb5+t+Qi7fdBbqkk6MT1OIC+2DOXaKj0f6Bau9HjqASk6zv5rrJ6VuYcqhnR
 YwQY0ANAg1nd54LHBySpDCZMQoxyJLsb25AFipsJ1/3G7WpWlyWxH3IG9iCmWkYmi8dF
 eB93+HYCIKyhviYeoMQB9a1W+zMROm2WG6Kd49FyLAAuXgibvMgTo7JwKxR58nvqlusO
 K0n7tIy2RtcoYMwMGLs1HJIPU4AYsjnkGzAvsTcvcshD+h3kvkrKG0M7sMkHyNYjmhU4
 XFzfL71VNiObJhEEwEHE4lKBCWtirKhmoJu/3Y4I61fGoVNVBwNmYH1mP3uwtO20iC/q
 T1Jg==
X-Gm-Message-State: AOAM531llBU6LyTvCORGOzfMoDIA96JUj7+Jh8DZztOGY1cNPbnZF2Aw
 EDyIdtkc3Oqm6LBtbIlklUGZcQ==
X-Google-Smtp-Source: ABdhPJyhB7LGCV5ckfaESvFIe+g2exrn+yj5GVu82V0JeqegtOh5ZPWXbfjWARNZYMc6n7nV12Sl3A==
X-Received: by 2002:a5d:4a4c:: with SMTP id v12mr4766878wrs.256.1626347256451; 
 Thu, 15 Jul 2021 04:07:36 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id g3sm6262492wrv.64.2021.07.15.04.07.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Jul 2021 04:07:35 -0700 (PDT)
Date: Thu, 15 Jul 2021 13:07:33 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YPAW9f/2oJV4UNnB@phenom.ffwll.local>
References: <20210715101536.2606307-1-matthew.auld@intel.com>
 <20210715101536.2606307-4-matthew.auld@intel.com>
 <997238fe-075b-380d-3ef2-b9f528193623@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <997238fe-075b-380d-3ef2-b9f528193623@linux.intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/userptr: Probe existence of
 backing struct pages upon creation
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
Cc: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Kenneth Graunke <kenneth@whitecape.org>, Matthew Auld <matthew.auld@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 15, 2021 at 11:33:10AM +0100, Tvrtko Ursulin wrote:
> =

> On 15/07/2021 11:15, Matthew Auld wrote:
> > From: Chris Wilson <chris@chris-wilson.co.uk>
> > =

> > Jason Ekstrand requested a more efficient method than userptr+set-domain
> > to determine if the userptr object was backed by a complete set of pages
> > upon creation. To be more efficient than simply populating the userptr
> > using get_user_pages() (as done by the call to set-domain or execbuf),
> > we can walk the tree of vm_area_struct and check for gaps or vma not
> > backed by struct page (VM_PFNMAP). The question is how to handle
> > VM_MIXEDMAP which may be either struct page or pfn backed...
> > =

> > With discrete are going to drop support for set_domain(), so offering a
> > way to probe the pages, without having to resort to dummy batches has
> > been requested.
> > =

> > v2:
> > - add new query param for the PROPBE flag, so userspace can easily
> >    check if the kernel supports it(Jason).
> > - use mmap_read_{lock, unlock}.
> > - add some kernel-doc.
> =

> 1)
> =

> I think probing is too weak to be offered as part of the uapi. What probes
> successfully at create time might not be there anymore at usage time. So =
if
> the pointer is not trusted at one point, why should it be at a later stag=
e?
> =

> Only thing which works for me is populate (so get_pages) at create time. =
But
> again with no guarantees they are still there at use time clearly
> documented.

Populate is exactly as racy as probe. We don't support pinned userptr
anymore.

> 2)
> =

> I am also not a fan of getparam for individual ioctl flags since I don't
> think it scales nicely. How about add a param which returns all supported
> flags like I915_PARAM_USERPTR_SUPPORTED_FLAGS?
> =

> Downside is it only works for 32-bit flag fields with getparam. Or it cou=
ld
> be a query to solve that as well.

I expect the actual userspace code will simply try with the probe flag
first, and then without + set_domain. So strictly speaking we might not
even have a need for the getparam.

Otoh, let's not overthink/engineer this, whatever works for userspace is
ok imo. A new query that lists all flags is the kind of fake-generic stuff
that will like mis-estimate where the future actually lands, e.g. how do
you encode if we add extensions to userptr to this? Which is something we
absolutely can, by extending the struct at the end, which doesn't even
need a new flag.

Let's solve the immediate problem at hand, and not try to guess what more
problems we might have in the future.
-Daniel

> Regards,
> =

> Tvrtko
> =

> > Testcase: igt/gem_userptr_blits/probe
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > Cc: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > Cc: Jordan Justen <jordan.l.justen@intel.com>
> > Cc: Kenneth Graunke <kenneth@whitecape.org>
> > Cc: Jason Ekstrand <jason@jlekstrand.net>
> > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> > Cc: Ramalingam C <ramalingam.c@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 40 ++++++++++++++++++++-
> >   drivers/gpu/drm/i915/i915_getparam.c        |  3 ++
> >   include/uapi/drm/i915_drm.h                 | 18 ++++++++++
> >   3 files changed, 60 insertions(+), 1 deletion(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/=
drm/i915/gem/i915_gem_userptr.c
> > index 56edfeff8c02..fd6880328596 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> > @@ -422,6 +422,33 @@ static const struct drm_i915_gem_object_ops i915_g=
em_userptr_ops =3D {
> >   #endif
> > +static int
> > +probe_range(struct mm_struct *mm, unsigned long addr, unsigned long le=
n)
> > +{
> > +	const unsigned long end =3D addr + len;
> > +	struct vm_area_struct *vma;
> > +	int ret =3D -EFAULT;
> > +
> > +	mmap_read_lock(mm);
> > +	for (vma =3D find_vma(mm, addr); vma; vma =3D vma->vm_next) {
> > +		if (vma->vm_start > addr)
> > +			break;
> > +
> > +		if (vma->vm_flags & (VM_PFNMAP | VM_MIXEDMAP))
> > +			break;
> > +
> > +		if (vma->vm_end >=3D end) {
> > +			ret =3D 0;
> > +			break;
> > +		}
> > +
> > +		addr =3D vma->vm_end;
> > +	}
> > +	mmap_read_unlock(mm);
> > +
> > +	return ret;
> > +}
> > +
> >   /*
> >    * Creates a new mm object that wraps some normal memory from the pro=
cess
> >    * context - user memory.
> > @@ -477,7 +504,8 @@ i915_gem_userptr_ioctl(struct drm_device *dev,
> >   	}
> >   	if (args->flags & ~(I915_USERPTR_READ_ONLY |
> > -			    I915_USERPTR_UNSYNCHRONIZED))
> > +			    I915_USERPTR_UNSYNCHRONIZED |
> > +			    I915_USERPTR_PROBE))
> >   		return -EINVAL;
> >   	if (i915_gem_object_size_2big(args->user_size))
> > @@ -504,6 +532,16 @@ i915_gem_userptr_ioctl(struct drm_device *dev,
> >   			return -ENODEV;
> >   	}
> > +	if (args->flags & I915_USERPTR_PROBE) {
> > +		/*
> > +		 * Check that the range pointed to represents real struct
> > +		 * pages and not iomappings (at this moment in time!)
> > +		 */
> > +		ret =3D probe_range(current->mm, args->user_ptr, args->user_size);
> > +		if (ret)
> > +			return ret;
> > +	}
> > +
> >   #ifdef CONFIG_MMU_NOTIFIER
> >   	obj =3D i915_gem_object_alloc();
> >   	if (obj =3D=3D NULL)
> > diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i91=
5/i915_getparam.c
> > index 24e18219eb50..d6d2e1a10d14 100644
> > --- a/drivers/gpu/drm/i915/i915_getparam.c
> > +++ b/drivers/gpu/drm/i915/i915_getparam.c
> > @@ -163,6 +163,9 @@ int i915_getparam_ioctl(struct drm_device *dev, voi=
d *data,
> >   	case I915_PARAM_PERF_REVISION:
> >   		value =3D i915_perf_ioctl_version();
> >   		break;
> > +	case I915_PARAM_HAS_USERPTR_PROBE:
> > +		value =3D true;
> > +		break;
> >   	default:
> >   		DRM_DEBUG("Unknown parameter %d\n", param->param);
> >   		return -EINVAL;
> > diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> > index e20eeeca7a1c..2e4112bf4d38 100644
> > --- a/include/uapi/drm/i915_drm.h
> > +++ b/include/uapi/drm/i915_drm.h
> > @@ -674,6 +674,9 @@ typedef struct drm_i915_irq_wait {
> >    */
> >   #define I915_PARAM_HAS_EXEC_TIMELINE_FENCES 55
> > +/* Query if the kernel supports the I915_USERPTR_PROBE flag. */
> > +#define I915_PARAM_HAS_USERPTR_PROBE 56
> > +
> >   /* Must be kept compact -- no holes and well documented */
> >   typedef struct drm_i915_getparam {
> > @@ -2178,12 +2181,27 @@ struct drm_i915_gem_userptr {
> >   	 * through the GTT. If the HW can't support readonly access, an erro=
r is
> >   	 * returned.
> >   	 *
> > +	 * I915_USERPTR_PROBE:
> > +	 *
> > +	 * Probe the provided @user_ptr range and validate that the @user_ptr=
 is
> > +	 * indeed pointing to normal memory and that the range is also valid.
> > +	 * For example if some garbage address is given to the kernel, then t=
his
> > +	 * should complain.
> > +	 *
> > +	 * Returns -EFAULT if the probe failed.
> > +	 *
> > +	 * Note that this doesn't populate the backing pages.
> > +	 *
> > +	 * The kernel supports this feature if I915_PARAM_HAS_USERPTR_PROBE
> > +	 * returns a non-zero value.
> > +	 *
> >   	 * I915_USERPTR_UNSYNCHRONIZED:
> >   	 *
> >   	 * NOT USED. Setting this flag will result in an error.
> >   	 */
> >   	__u32 flags;
> >   #define I915_USERPTR_READ_ONLY 0x1
> > +#define I915_USERPTR_PROBE 0x2
> >   #define I915_USERPTR_UNSYNCHRONIZED 0x80000000
> >   	/**
> >   	 * @handle: Returned handle for the object.
> > =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
