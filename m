Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 354CF17432A
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Feb 2020 00:33:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01FC26F52A;
	Fri, 28 Feb 2020 23:33:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AAC06F529;
 Fri, 28 Feb 2020 23:33:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20391391-1500050 for multiple; Fri, 28 Feb 2020 23:32:56 +0000
MIME-Version: 1.0
To: Andi Shyti <andi@etezian.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200228232704.GD11891@jack.zhora.eu>
References: <20200228104340.2895082-1-chris@chris-wilson.co.uk>
 <20200228104340.2895082-3-chris@chris-wilson.co.uk>
 <20200228232704.GD11891@jack.zhora.eu>
Message-ID: <158293277426.29794.2343133378704199477@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 28 Feb 2020 23:32:54 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t 3/5] i915: Exercise preemption timeout
 controls in sysfs
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Andi Shyti (2020-02-28 23:27:04)
> Hi Chris,
> 
> > +static int create_ext_ioctl(int i915,
> > +                         struct drm_i915_gem_context_create_ext *arg)
> > +{
> > +     int err;
> > +
> > +     err = 0;
> > +     if (igt_ioctl(i915, DRM_IOCTL_I915_GEM_CONTEXT_CREATE_EXT, arg)) {
> > +             err = -errno;
> > +             igt_assume(err);
> > +     }
> > +
> > +     errno = 0;
> > +     return err;
> > +}
> > +
> >  /**
> >   * gem_has_contexts:
> >   * @fd: open i915 drm file descriptor
> > @@ -324,17 +339,14 @@ __gem_context_clone(int i915,
> >               .flags = flags | I915_CONTEXT_CREATE_FLAGS_USE_EXTENSIONS,
> >               .extensions = to_user_pointer(&clone),
> >       };
> > -     int err = 0;
> > +     int err;
> >  
> > -     if (igt_ioctl(i915, DRM_IOCTL_I915_GEM_CONTEXT_CREATE_EXT, &arg)) {
> > -             err = -errno;
> > -             igt_assume(err);
> > -     }
> > +     err = create_ext_ioctl(i915, &arg);
> > +     if (err)
> > +             return err;
> >  
> >       *out = arg.ctx_id;
> > -
> > -     errno = 0;
> > -     return err;
> > +     return 0;
> >  }
> >  
> >  static bool __gem_context_has(int i915, uint32_t share, unsigned int flags)
> > @@ -382,16 +394,8 @@ bool gem_has_context_clone(int i915)
> >               .flags = I915_CONTEXT_CREATE_FLAGS_USE_EXTENSIONS,
> >               .extensions = to_user_pointer(&ext),
> >       };
> > -     int err;
> > -
> > -     err = 0;
> > -     if (igt_ioctl(i915, DRM_IOCTL_I915_GEM_CONTEXT_CREATE_EXT, &create)) {
> > -             err = -errno;
> > -             igt_assume(err);
> > -     }
> > -     errno = 0;
> >  
> > -     return err == -ENOENT;
> > +     return create_ext_ioctl(i915, &create) == -ENOENT;
> >  }
> 
> I'd like to see the above in a separate patch.

It's part of the test, I can put it back inside each .c if you prefer.

> > +void dyn_sysfs_engines(int i915, int engines, const char *file,
> > +                    void (*test)(int, int))
> > +{
> > +     char buf[512];
> > +     int len;
> > +
> > +     lseek(engines, 0, SEEK_SET);
> > +     while ((len = syscall(SYS_getdents64, engines, buf, sizeof(buf))) > 0) {
> > +             void *ptr = buf;
> > +
> > +             while (len) {
> > +                     struct linux_dirent64 {
> > +                             ino64_t        d_ino;
> > +                             off64_t        d_off;
> > +                             unsigned short d_reclen;
> > +                             unsigned char  d_type;
> > +                             char           d_name[];
> > +                     } *de = ptr;
> 
> what is the need for having your own linux_dirent64?

fdopendir() takes ownership of the fd, preventing reuse. And
fdopendir(dup()) is getting ridiculous.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
