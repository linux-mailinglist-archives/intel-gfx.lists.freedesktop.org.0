Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19EAE3731AC
	for <lists+intel-gfx@lfdr.de>; Tue,  4 May 2021 22:53:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 691B36E2B4;
	Tue,  4 May 2021 20:53:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0F9A6E2B4
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 May 2021 20:53:56 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id y26so12049053eds.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 May 2021 13:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=V8tmuEJLe05V0XWw0LBdwheXUZaiBUdTxjxtrar91Yc=;
 b=c+XL85UVh/ip7blyDygE3+dqGuTpcp3JfDH1GMwMUgGgjM/pp4H6FR/Je5ix9CPJKk
 tBnGuzJ8nbhEL1tv5wbzMB4NWLt/C/mJtrNoeFMeBiTnZ+NOFDjEF2dYVyXl5MUkJEft
 yaxlXHftevAfNRjqTaAgiOv95pk6F2ifzEBGk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=V8tmuEJLe05V0XWw0LBdwheXUZaiBUdTxjxtrar91Yc=;
 b=p1LBRQZfU5n3uA35Yx/KzYoJeNFw1b7Cd9uWddgMGLmtb5OBZtaVbRe03uZlDJPuX0
 /MvHtnE79x9xMpDk3kzJCAh3LZnDOAEFWV0mOX/xYdsAd6h4XH9yyhKFdTqHX/WYONxD
 3lrA/4eSw3lSEQWiGLu66hlGmTaJLyDEWOOM0c29MQsiO+6neB/L8z72Z82107o8Vu1D
 mfNxkCHzOUhONgGOdp57/5vsW7/Ero5u0pJMFnWu7uarUFWlmsqzoGarHN7ddpIhlISZ
 3ZE9U8+GHBZtoSGyFAKnDpajkf805C7opoJdU8bnTy5yJBi/GOyDF+HmqEbJfNY+HHYw
 yNNA==
X-Gm-Message-State: AOAM533w3YaCVFiCMn5lg9ufD7N9YOtWpyGo/PHV9mMeCKuaroK2Xsri
 Yr83NBtdUeer02yDIg7j4pU8sQ==
X-Google-Smtp-Source: ABdhPJwLh+qibQstIQbqMIxnQuO9jlwDejtSt8fbbOo1LIJ1laIFqeUv6WwoXc8p0Bw7ZZXEw30xzw==
X-Received: by 2002:a05:6402:4357:: with SMTP id
 n23mr28821833edc.379.1620161635330; 
 Tue, 04 May 2021 13:53:55 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id m9sm1236744edd.16.2021.05.04.13.53.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 May 2021 13:53:54 -0700 (PDT)
Date: Tue, 4 May 2021 22:53:53 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: kernel test robot <lkp@intel.com>
Message-ID: <YJG0YYs7LwerNThG@phenom.ffwll.local>
References: <20210503155748.1961781-23-jason@jlekstrand.net>
 <202105040338.LIgGSDM8-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202105040338.LIgGSDM8-lkp@intel.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 22/27] drm/i915/gem: Delay context creation
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

On Tue, May 04, 2021 at 03:38:06AM +0800, kernel test robot wrote:
> Hi Jason,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on drm-intel/for-linux-next]
> [also build test ERROR on drm-tip/drm-tip drm-exynos/exynos-drm-next next-20210503]
> [cannot apply to tegra-drm/drm/tegra/for-next v5.12]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Jason-Ekstrand/drm-i915-gem-ioctl-clean-ups-v5/20210504-000132
> base:   git://anongit.freedesktop.org/drm-intel for-linux-next
> config: i386-randconfig-r013-20210503 (attached as .config)
> compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
> reproduce (this is a W=1 build):
>         # https://github.com/0day-ci/linux/commit/66ce6ce447515a302711a65f731d1e6f66abdcdc
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Jason-Ekstrand/drm-i915-gem-ioctl-clean-ups-v5/20210504-000132
>         git checkout 66ce6ce447515a302711a65f731d1e6f66abdcdc
>         # save the attached .config to linux build tree
>         make W=1 W=1 ARCH=i386 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> drivers/gpu/drm/i915/gem/i915_gem_context.c:2543:1: error: no previous prototype for 'lazy_create_context_locked' [-Werror=missing-prototypes]
>     2543 | lazy_create_context_locked(struct drm_i915_file_private *file_priv,
>          | ^~~~~~~~~~~~~~~~~~~~~~~~~~
>    cc1: all warnings being treated as errors

Ah you missed the static, and I missed that in review. That one should be
fixed :-)
-Daniel

> 
> 
> vim +/lazy_create_context_locked +2543 drivers/gpu/drm/i915/gem/i915_gem_context.c
> 
>   2541	
>   2542	struct i915_gem_context *
> > 2543	lazy_create_context_locked(struct drm_i915_file_private *file_priv,
>   2544				   struct i915_gem_proto_context *pc, u32 id)
>   2545	{
>   2546		struct i915_gem_context *ctx;
>   2547		void *old;
>   2548	
>   2549		lockdep_assert_held(&file_priv->proto_context_lock);
>   2550	
>   2551		ctx = i915_gem_create_context(file_priv->dev_priv, pc);
>   2552		if (IS_ERR(ctx))
>   2553			return ctx;
>   2554	
>   2555		gem_context_register(ctx, file_priv, id);
>   2556	
>   2557		old = xa_erase(&file_priv->proto_context_xa, id);
>   2558		GEM_BUG_ON(old != pc);
>   2559		proto_context_close(pc);
>   2560	
>   2561		/* One for the xarray and one for the caller */
>   2562		return i915_gem_context_get(ctx);
>   2563	}
>   2564	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
