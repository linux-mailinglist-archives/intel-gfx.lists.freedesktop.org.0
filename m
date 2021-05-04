Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D973731B4
	for <lists+intel-gfx@lfdr.de>; Tue,  4 May 2021 23:00:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF3876EB6F;
	Tue,  4 May 2021 21:00:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB2E46EB6F
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 May 2021 21:00:09 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id a4so15297558ejk.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 May 2021 14:00:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=1AcyG3YwCnsWMwTvM+Pn3Ao7Xmgt8vILAYXbDtBCY3w=;
 b=OrKQyxYHSM+ldmwoGS+Qiuae7r7ocytoYiXfaxWndL9q9Wq3UA+VwJ0TUByWJdpTvo
 Z1a9f20hMIzysQ5c7eQcC/rh3JHZ1lD9xbwtlqvxXuoWWJuFAdovb/QGZeTN8k8vprUL
 KkYoKoqmsaqubYJoupThmEN+CQGLWwf9cFEW0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1AcyG3YwCnsWMwTvM+Pn3Ao7Xmgt8vILAYXbDtBCY3w=;
 b=S2GV8UMDLjU7chDISwON8FcR9JCg3yS2ZjfLsQm2FNPaQBbadx+ML98w4YlIgaW7NV
 PzvsLo9un0kLrA54PJLtOPFVtZjplSNt7qcnY1K4ENoBHa7LLQ02D/Nrwg7o+2R2avz5
 MeaOJG7do5wWmX0pJuf3qUotuxVO5Vf1FHe6oTwwDyRYso8bgqvCDOV/eQs6o4zds+QU
 TKSrdp+WVf9s6z7J5zDAcRoGrJOLFJzyBhT25NLevT9ZCfwqly/m3ZU4LnQ/Hdju3LBj
 QEwlpkCbve3qkTbR34nMbr1vXehcHpPC7N3gT/zX15imqJzIvW4pLGeGB80Kf7JwCcnA
 StOw==
X-Gm-Message-State: AOAM531eumj28fbwRdH/cGq8zjqr2b+Qugpdp1kc3Rr3em4QbSJzHcID
 v6Sx4ILJhfwyNtKdbbTEyt5AKQ==
X-Google-Smtp-Source: ABdhPJz3+MYBmQbJvmpZgPXe09lD3Odh4Gc+wUwCtIUbXTXollrJAAaB59EKJ4UhXsxD5EEyvFpmwA==
X-Received: by 2002:a17:907:9620:: with SMTP id
 gb32mr9329464ejc.331.1620162008366; 
 Tue, 04 May 2021 14:00:08 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id aj8sm1931202ejc.64.2021.05.04.14.00.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 May 2021 14:00:07 -0700 (PDT)
Date: Tue, 4 May 2021 23:00:05 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: kernel test robot <lkp@intel.com>
Message-ID: <YJG11YpJQVDK7WQl@phenom.ffwll.local>
References: <20210503155748.1961781-24-jason@jlekstrand.net>
 <202105040213.dxlJPZ0l-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202105040213.dxlJPZ0l-lkp@intel.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 23/27] drm/i915/gem: Don't allow changing
 the VM on running contexts
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
Cc: intel-gfx@lists.freedesktop.org, kbuild-all@lists.01.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 04, 2021 at 02:52:03AM +0800, kernel test robot wrote:
> Hi Jason,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on drm-intel/for-linux-next]
> [also build test WARNING on drm-tip/drm-tip drm-exynos/exynos-drm-next next-20210503]
> [cannot apply to tegra-drm/drm/tegra/for-next drm/drm-next v5.12]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Jason-Ekstrand/drm-i915-gem-ioctl-clean-ups-v5/20210504-000132
> base:   git://anongit.freedesktop.org/drm-intel for-linux-next
> config: i386-randconfig-s002-20210503 (attached as .config)
> compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
> reproduce:
>         # apt-get install sparse
>         # sparse version: v0.6.3-341-g8af24329-dirty
>         # https://github.com/0day-ci/linux/commit/6af12f5ca765ecd59075344f3be4c4c0b68ef95e
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Jason-Ekstrand/drm-i915-gem-ioctl-clean-ups-v5/20210504-000132
>         git checkout 6af12f5ca765ecd59075344f3be4c4c0b68ef95e
>         # save the attached .config to linux build tree
>         make W=1 C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__' W=1 ARCH=i386 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>

Just from staring at this I have no idea, so I guess you have to
reproduce. What sparse does is primarily check these special bit and
pointer values the kernel has, like __rcu and __user, where you need
special functions to access them. But since the code is using
rcu_dereference I have no idea what the complaint is about.
-Daniel

> 
> 
> sparse warnings: (new ones prefixed by >>)
>    drivers/gpu/drm/i915/gt/intel_reset.c:1329:5: sparse: sparse: context imbalance in 'intel_gt_reset_trylock' - different lock contexts for basic block
>    drivers/gpu/drm/i915/gt/intel_reset.c: note: in included file:
> >> drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: sparse: sparse: incompatible types in comparison expression (different address spaces):
> >> drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: sparse:    struct i915_address_space [noderef] __rcu *
> >> drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: sparse:    struct i915_address_space *
> --
>    drivers/gpu/drm/i915/gt/intel_execlists_submission.c: note: in included file (through drivers/gpu/drm/i915/selftests/igt_spinner.h, drivers/gpu/drm/i915/gt/selftest_execlists.c):
> >> drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: sparse: sparse: incompatible types in comparison expression (different address spaces):
> >> drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: sparse:    struct i915_address_space [noderef] __rcu *
> >> drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: sparse:    struct i915_address_space *
> --
>    drivers/gpu/drm/i915/gem/i915_gem_object.c: note: in included file:
> >> drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: sparse: sparse: incompatible types in comparison expression (different address spaces):
> >> drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: sparse:    struct i915_address_space [noderef] __rcu *
> >> drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: sparse:    struct i915_address_space *
> >> drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: sparse: sparse: incompatible types in comparison expression (different address spaces):
> >> drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: sparse:    struct i915_address_space [noderef] __rcu *
> >> drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: sparse:    struct i915_address_space *
>    drivers/gpu/drm/i915/gem/i915_gem_context.h:154:16: sparse: sparse: incompatible types in comparison expression (different address spaces):
>    drivers/gpu/drm/i915/gem/i915_gem_context.h:154:16: sparse:    struct i915_address_space [noderef] __rcu *
>    drivers/gpu/drm/i915/gem/i915_gem_context.h:154:16: sparse:    struct i915_address_space *
> --
>    drivers/gpu/drm/i915/i915_gem_gtt.c: note: in included file (through drivers/gpu/drm/i915/selftests/i915_gem_gtt.c):
> >> drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: sparse: sparse: incompatible types in comparison expression (different address spaces):
> >> drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: sparse:    struct i915_address_space [noderef] __rcu *
> >> drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: sparse:    struct i915_address_space *
> >> drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: sparse: sparse: incompatible types in comparison expression (different address spaces):
> >> drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: sparse:    struct i915_address_space [noderef] __rcu *
> >> drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: sparse:    struct i915_address_space *
> --
>    drivers/gpu/drm/i915/i915_vma.c: note: in included file:
> >> drivers/gpu/drm/i915/selftests/i915_vma.c:42:24: sparse: sparse: incompatible types in comparison expression (different address spaces):
> >> drivers/gpu/drm/i915/selftests/i915_vma.c:42:24: sparse:    struct i915_address_space [noderef] __rcu *
> >> drivers/gpu/drm/i915/selftests/i915_vma.c:42:24: sparse:    struct i915_address_space *
>    drivers/gpu/drm/i915/i915_vma.c: note: in included file (through drivers/gpu/drm/i915/selftests/i915_vma.c):
> >> drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: sparse: sparse: incompatible types in comparison expression (different address spaces):
> >> drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: sparse:    struct i915_address_space [noderef] __rcu *
> >> drivers/gpu/drm/i915/gem/i915_gem_context.h:163:14: sparse:    struct i915_address_space *
> 
> vim +163 drivers/gpu/drm/i915/gem/i915_gem_context.h
> 
> a4e7ccdac38ec8 Chris Wilson 2019-10-04  156  
> a4e7ccdac38ec8 Chris Wilson 2019-10-04  157  static inline struct i915_address_space *
> a4e7ccdac38ec8 Chris Wilson 2019-10-04  158  i915_gem_context_get_vm_rcu(struct i915_gem_context *ctx)
> a4e7ccdac38ec8 Chris Wilson 2019-10-04  159  {
> a4e7ccdac38ec8 Chris Wilson 2019-10-04  160  	struct i915_address_space *vm;
> a4e7ccdac38ec8 Chris Wilson 2019-10-04  161  
> a4e7ccdac38ec8 Chris Wilson 2019-10-04  162  	rcu_read_lock();
> a4e7ccdac38ec8 Chris Wilson 2019-10-04 @163  	vm = rcu_dereference(ctx->vm);
> a4e7ccdac38ec8 Chris Wilson 2019-10-04  164  	if (!vm)
> a4e7ccdac38ec8 Chris Wilson 2019-10-04  165  		vm = &ctx->i915->ggtt.vm;
> a4e7ccdac38ec8 Chris Wilson 2019-10-04  166  	vm = i915_vm_get(vm);
> a4e7ccdac38ec8 Chris Wilson 2019-10-04  167  	rcu_read_unlock();
> a4e7ccdac38ec8 Chris Wilson 2019-10-04  168  
> a4e7ccdac38ec8 Chris Wilson 2019-10-04  169  	return vm;
> a4e7ccdac38ec8 Chris Wilson 2019-10-04  170  }
> a4e7ccdac38ec8 Chris Wilson 2019-10-04  171  
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
