Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F450174307
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Feb 2020 00:27:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CFF56F51C;
	Fri, 28 Feb 2020 23:27:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 10.mo178.mail-out.ovh.net (10.mo178.mail-out.ovh.net
 [46.105.76.150])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 797396F51C
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 23:27:11 +0000 (UTC)
Received: from player693.ha.ovh.net (unknown [10.110.171.30])
 by mo178.mail-out.ovh.net (Postfix) with ESMTP id 6D0C593509
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Feb 2020 00:27:08 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player693.ha.ovh.net (Postfix) with ESMTPSA id 6FE28FDC4BB5;
 Fri, 28 Feb 2020 23:27:05 +0000 (UTC)
Date: Sat, 29 Feb 2020 01:27:04 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200228232704.GD11891@jack.zhora.eu>
References: <20200228104340.2895082-1-chris@chris-wilson.co.uk>
 <20200228104340.2895082-3-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228104340.2895082-3-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 11658693539473310217
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrleelgddtgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpkedurddujeehrddvvdefrdduudeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrieelfedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
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

Hi Chris,

> +static int create_ext_ioctl(int i915,
> +			    struct drm_i915_gem_context_create_ext *arg)
> +{
> +	int err;
> +
> +	err = 0;
> +	if (igt_ioctl(i915, DRM_IOCTL_I915_GEM_CONTEXT_CREATE_EXT, arg)) {
> +		err = -errno;
> +		igt_assume(err);
> +	}
> +
> +	errno = 0;
> +	return err;
> +}
> +
>  /**
>   * gem_has_contexts:
>   * @fd: open i915 drm file descriptor
> @@ -324,17 +339,14 @@ __gem_context_clone(int i915,
>  		.flags = flags | I915_CONTEXT_CREATE_FLAGS_USE_EXTENSIONS,
>  		.extensions = to_user_pointer(&clone),
>  	};
> -	int err = 0;
> +	int err;
>  
> -	if (igt_ioctl(i915, DRM_IOCTL_I915_GEM_CONTEXT_CREATE_EXT, &arg)) {
> -		err = -errno;
> -		igt_assume(err);
> -	}
> +	err = create_ext_ioctl(i915, &arg);
> +	if (err)
> +		return err;
>  
>  	*out = arg.ctx_id;
> -
> -	errno = 0;
> -	return err;
> +	return 0;
>  }
>  
>  static bool __gem_context_has(int i915, uint32_t share, unsigned int flags)
> @@ -382,16 +394,8 @@ bool gem_has_context_clone(int i915)
>  		.flags = I915_CONTEXT_CREATE_FLAGS_USE_EXTENSIONS,
>  		.extensions = to_user_pointer(&ext),
>  	};
> -	int err;
> -
> -	err = 0;
> -	if (igt_ioctl(i915, DRM_IOCTL_I915_GEM_CONTEXT_CREATE_EXT, &create)) {
> -		err = -errno;
> -		igt_assume(err);
> -	}
> -	errno = 0;
>  
> -	return err == -ENOENT;
> +	return create_ext_ioctl(i915, &create) == -ENOENT;
>  }

I'd like to see the above in a separate patch.

> +void dyn_sysfs_engines(int i915, int engines, const char *file,
> +		       void (*test)(int, int))
> +{
> +	char buf[512];
> +	int len;
> +
> +	lseek(engines, 0, SEEK_SET);
> +	while ((len = syscall(SYS_getdents64, engines, buf, sizeof(buf))) > 0) {
> +		void *ptr = buf;
> +
> +		while (len) {
> +			struct linux_dirent64 {
> +				ino64_t        d_ino;
> +				off64_t        d_off;
> +				unsigned short d_reclen;
> +				unsigned char  d_type;
> +				char           d_name[];
> +			} *de = ptr;

what is the need for having your own linux_dirent64?

All the rest look good.

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
