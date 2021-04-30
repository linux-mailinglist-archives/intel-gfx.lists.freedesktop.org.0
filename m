Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66EBC36FFC7
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Apr 2021 19:42:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1FAB6F57B;
	Fri, 30 Apr 2021 17:42:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 652876F57B
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Apr 2021 17:42:24 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id r12so106459130ejr.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Apr 2021 10:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=m6XRCfyd1sWEB+fFN+giyD+trqUKGzlWK2yo8Go96QU=;
 b=SLpmW4OTB3LG+4ygGNIuhVDWx1yiktvAKSGgTwm+rDfLZSUffW5kUQrs4/QCo7rmpL
 98ERI1r2BbIFBPXLoHDIkNeonzKH4XIAyoH/Yfnzo+vuXW9sOqXyC9XNIfKR23wnCXXB
 2GcnNPlPHH0RaZujrIibm7QhPbiZpSlkALgCE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=m6XRCfyd1sWEB+fFN+giyD+trqUKGzlWK2yo8Go96QU=;
 b=e2crKyUy+IspGi8Tj7jahlzqzh3nbGrCv/kAecsjiH3k8+/uuii6AjKYPaFkgKSSrx
 h721SUde1Kh2dQ3CpEImpwjQUj86fqfLNl8lX36mHg9ozJskbJikya4OufDXTjX4JYW0
 0K0W+4uCnPCH+RfeC0NxM0hQGppbTzqoyTaNAGq52GpC+Qf3d602jJDZMc2XA8m560o8
 MMmuH993lKCz7ZWDHVSdltiXtxwmpw2E0B2ysYn7VB+FVGX23Ou1ezNSQX0F9k+H+7Uu
 Fl7H8VpryA/Gi/v6awCtiYfwsFsFehjl0xpScM1v0pHXYFrehdOCuk9h6+EUBkpYJyHO
 TZJw==
X-Gm-Message-State: AOAM533u7Q0Lh212jnDZiRe4Ks+qLrmra+uVjKcpSBXX11TZ7cPwIsL0
 Vq1Gr5d60bsXWcZb+c1GJFTdPQ==
X-Google-Smtp-Source: ABdhPJyG/LGvN/gXpgR1joI/FT5exj2RMZlCjVCMRiv6H1m9f0mh6m55PbrKcqLw14tRZSsGhLYd3Q==
X-Received: by 2002:a17:907:174a:: with SMTP id
 lf10mr5876970ejc.433.1619804543070; 
 Fri, 30 Apr 2021 10:42:23 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u1sm1864523edv.90.2021.04.30.10.42.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Apr 2021 10:42:22 -0700 (PDT)
Date: Fri, 30 Apr 2021 19:42:20 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: kernel test robot <lkp@intel.com>
Message-ID: <YIxBfNnwA/7nEenj@phenom.ffwll.local>
Mail-Followup-To: kernel test robot <lkp@intel.com>,
 Bernard Zhao <bernard@vivo.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 kbuild-all@lists.01.org
References: <20210429024211.58245-1-bernard@vivo.com>
 <202104300054.AZxXGIKu-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202104300054.AZxXGIKu-lkp@intel.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use might_alloc()
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
Cc: kbuild-all@lists.01.org, David Airlie <airlied@linux.ie>,
 Bernard Zhao <bernard@vivo.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 30, 2021 at 12:31:27AM +0800, kernel test robot wrote:
> Hi Bernard,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on drm-intel/for-linux-next]
> [also build test ERROR on v5.12 next-20210429]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Bernard-Zhao/drm-i915-Use-might_alloc/20210429-104516
> base:   git://anongit.freedesktop.org/drm-intel for-linux-next
> config: x86_64-rhel-8.3-kselftests (attached as .config)
> compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
> reproduce (this is a W=1 build):
>         # https://github.com/0day-ci/linux/commit/9fbd0c1741ce06241105d753ff3432ab55f3e94a
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Bernard-Zhao/drm-i915-Use-might_alloc/20210429-104516
>         git checkout 9fbd0c1741ce06241105d753ff3432ab55f3e94a
>         # save the attached .config to linux build tree
>         make W=1 W=1 ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    drivers/gpu/drm/i915/i915_sw_fence.c: In function '__i915_sw_fence_await_sw_fence':
> >> drivers/gpu/drm/i915/i915_sw_fence.c:344:2: error: implicit declaration of function 'might_alloc'; did you mean 'might_lock'? [-Werror=implicit-function-declaration]
>      344 |  might_alloc(gfp);
>          |  ^~~~~~~~~~~
>          |  might_lock
>    cc1: some warnings being treated as errors

I think you're missing an include or something. The other patch you've
done seems good, I queued that up in drm-intel-gt-next for 5.14.

Thanks, Daniel

> 
> 
> vim +344 drivers/gpu/drm/i915/i915_sw_fence.c
> 
>    335	
>    336	static int __i915_sw_fence_await_sw_fence(struct i915_sw_fence *fence,
>    337						  struct i915_sw_fence *signaler,
>    338						  wait_queue_entry_t *wq, gfp_t gfp)
>    339	{
>    340		unsigned int pending;
>    341		unsigned long flags;
>    342	
>    343		debug_fence_assert(fence);
>  > 344		might_alloc(gfp);
>    345	
>    346		if (i915_sw_fence_done(signaler)) {
>    347			i915_sw_fence_set_error_once(fence, signaler->error);
>    348			return 0;
>    349		}
>    350	
>    351		debug_fence_assert(signaler);
>    352	
>    353		/* The dependency graph must be acyclic. */
>    354		if (unlikely(i915_sw_fence_check_if_after(fence, signaler)))
>    355			return -EINVAL;
>    356	
>    357		pending = I915_SW_FENCE_FLAG_FENCE;
>    358		if (!wq) {
>    359			wq = kmalloc(sizeof(*wq), gfp);
>    360			if (!wq) {
>    361				if (!gfpflags_allow_blocking(gfp))
>    362					return -ENOMEM;
>    363	
>    364				i915_sw_fence_wait(signaler);
>    365				i915_sw_fence_set_error_once(fence, signaler->error);
>    366				return 0;
>    367			}
>    368	
>    369			pending |= I915_SW_FENCE_FLAG_ALLOC;
>    370		}
>    371	
>    372		INIT_LIST_HEAD(&wq->entry);
>    373		wq->flags = pending;
>    374		wq->func = i915_sw_fence_wake;
>    375		wq->private = fence;
>    376	
>    377		i915_sw_fence_await(fence);
>    378	
>    379		spin_lock_irqsave(&signaler->wait.lock, flags);
>    380		if (likely(!i915_sw_fence_done(signaler))) {
>    381			__add_wait_queue_entry_tail(&signaler->wait, wq);
>    382			pending = 1;
>    383		} else {
>    384			i915_sw_fence_wake(wq, 0, signaler->error, NULL);
>    385			pending = 0;
>    386		}
>    387		spin_unlock_irqrestore(&signaler->wait.lock, flags);
>    388	
>    389		return pending;
>    390	}
>    391	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
