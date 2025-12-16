Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5F4CC4648
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 17:47:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A27DE10E838;
	Tue, 16 Dec 2025 16:47:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="QsXyKuGl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91CCD10E838
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Dec 2025 16:47:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 4949C437B3;
 Tue, 16 Dec 2025 16:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EE7AC4CEF1;
 Tue, 16 Dec 2025 16:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1765903628;
 bh=y68FvCumxCoudz7H+zeMRVm+Yp6jVup194iz5lh5aBY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QsXyKuGly21NOW+nbeu+3rViHDk6D6Kma8vz9++PRB1ceHuFdrVVRb3H+11OrqpuW
 peShf2nq4TDIttEZW6L+eDqDBcPuIIBrjFWNT5MkQeHghpzBjvJOXkKJ/qjDnYIHqX
 /GElUBsEAIVemFYornHuQuR6uEP95Y5PwQhDY2mN1q5vmmffFTRynbTxxPA6uQUB29
 nYAMMUOjYi8XoIvupDazT/F67BXrFulrRYcoiF79MfaBpEd8DK9WG14F39ENuIUIOH
 m5TOE+08DX2E5K/RUYR5FlYl9/bQ2pSxPsJXvlKZjeP/gFCMGLxD+hoZz9gh1ZC7Br
 RvfHwtFPzUDZQ==
Date: Tue, 16 Dec 2025 17:47:03 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, 
 Jani Nikula <jani.nikula@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>, 
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>, 
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH v5] drm/i915/selftests: Keep mock file open during
 unfaultable migrate with fill
Message-ID: <2y3fzglbad6nsjd5mg2spj6oe2j3yxddly2movb5wlayxcmkvq@4qjpb5kdxf3v>
References: <osapjeuydjklsnzluarewwhb4h3thsjvipxlynd2465wk26prw@huo4rflrfrql>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <osapjeuydjklsnzluarewwhb4h3thsjvipxlynd2465wk26prw@huo4rflrfrql>
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

Hi Krzysztof,

one error here that I also missed in the previous versions:

> @@ -1159,6 +1159,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
>  	struct drm_i915_gem_object *obj;
>  	struct i915_request *rq = NULL;
>  	struct vm_area_struct *area;
> +	struct file *mock_file;
>  	unsigned long addr;
>  	LIST_HEAD(objects);
>  	u64 offset;
> @@ -1178,13 +1179,22 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
>  		goto out_put;
>  
>  	/*
> -	 * This will eventually create a GEM context, due to opening dummy drm
> -	 * file, which needs a tiny amount of mappable device memory for the top
> -	 * level paging structures(and perhaps scratch), so make sure we
> -	 * allocate early, to avoid tears.
> +	 * Pretend to open("/dev/dri/card0"), which will eventually create a GEM
> +	 * context along with multiple GEM objects (for paging structures and
> +	 * scratch) that are placed in mappable portion of GPU memory.
> +	 * Calling fput() on the file places objects' cleanup routines in delayed
> +	 * worqueues, which execute after unspecified amount of time.
> +	 * Keep the file open until migration and page fault checks are done to
> +	 * make sure object cleanup is not executed after igt_fill_mappable()
> +	 * finishes and before migration is attempted - that would leave a gap
> +	 * large enough for the migration to succeed, when we'd expect it to fail.
>  	 */
> -	addr = igt_mmap_offset(i915, offset, obj->base.size,
> -			       PROT_WRITE, MAP_SHARED);
> +	mock_file = mock_drm_getfile(i915->drm.primary, O_RDWR);
> +	if (IS_ERR(mock_file))
> +		return PTR_ERR(mock_file);
> +
> +	addr = igt_mmap_offset_with_file(i915, offset, obj->base.size,
> +					 PROT_WRITE, MAP_SHARED, mock_file);
>  	if (IS_ERR_VALUE(addr)) {
>  		err = addr;
>  		goto out_put;
> @@ -1295,6 +1305,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
>  	vm_munmap(addr, obj->base.size);
>  
>  out_put:
> +	fput(mock_file);

Please place fput() in a different label as the first time it's
called the mock_file is not initialized yet.

Other than this, I don't want to hold this fix any further and I
think I'm going to ack the next patch.

Chris, do you have any more inputs here?

Thanks,
Andi
