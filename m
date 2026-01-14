Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C81D2067E
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 18:04:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4A2610E61A;
	Wed, 14 Jan 2026 17:04:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="euLQdN/b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED61110E61A
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jan 2026 17:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768410286; x=1799946286;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=VOodWDoxHlhvc5ifQB3G3EnQxBtw/0rWIFBm1PxlY1Q=;
 b=euLQdN/b+poj5I+e4zqoi1FMsQRw2yw7OGd+vLsMPLa1g+LFDmZ+xUh5
 VxjJlButbSk+kySdxtZ4ffTjANOK5UVqtXscMhcouTZ6y1UpWOw0JdAwW
 r33z4PAJrXd9JpaNGUGV5ubHihhlgvXvtK88v2owAiubYepDyqrl2KL4a
 Cm+Aa+29tJkWzjWGn2vPWPLP/KLvoHtEzFfems4+LOQSubhAbnfgmjDhY
 RQP1wIR8PKstnuBZpbddWg6lmY8FFo8DDUXoID8wEVh7BK45F+wRsVOX2
 Pj3P370A6QCJg4t5OogZiInXQR9F6lpA6HMOkYF5ZYGmvpwdnlKghgEc+ w==;
X-CSE-ConnectionGUID: +PkWsJ0NQxmE01y6jDrPMA==
X-CSE-MsgGUID: N4fyBbWaSNGkDqE2Ne3ysw==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="95192617"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="95192617"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 09:04:45 -0800
X-CSE-ConnectionGUID: Stoyy/tbSd+f3iAh2EYN0Q==
X-CSE-MsgGUID: vrGneaplR5CMUEwJIhoRWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="208887198"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.94])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 09:04:43 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Andi Shyti <andi.shyti@linux.intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: Re: [PATCH] drm/i915/selftests: Prevent userspace mapping invalidation
In-Reply-To: <ytvsfx65mus7fdwmureaznj3i22kcnqkodncobwaqtgdg6f77l@43jqatwpn3cf>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <ytvsfx65mus7fdwmureaznj3i22kcnqkodncobwaqtgdg6f77l@43jqatwpn3cf>
Date: Wed, 14 Jan 2026 19:04:39 +0200
Message-ID: <930bd54f9d82787f1362d0209d6e9f76ba78266f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 14 Jan 2026, Krzysztof Karas <krzysztof.karas@intel.com> wrote:
> Migration testing in i915 uses current task's address space to
> allocate new userspace mapping, without registering real user
> for that address space in mm_struct.
>
> It was observed that mm->mm_users would occasionally drop to 0
> during the test, which reaped userspace mappings, further
> leading to failures upon reading from userland memory.
>
> Prevent this by artificially increasing mm_users counter for the
> duration of the test.
>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> index 032bc2f17685..2f3104c17324 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> @@ -1193,6 +1193,13 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
>  	if (IS_ERR(mock_file))
>  		return PTR_ERR(mock_file);
>  
> +	/*
> +	 * Artificially increase mm_users for current->mm to ensure the kernel
> +	 * does not try to clean up the userspace mappings of the current task
> +	 * during the test.
> +	 */
> +	atomic_inc(&current->mm->mm_users);

We have no business modifying the guts of mm directly, even if C doesn't
have means for enforcing such boundaries. There just aren't that many
places in the kernel that read, let alone modify, ->mm_users directly.

A pair of mmget_not_zero() and mmput() seem to be a more commonly used
alternative.


BR,
Jani.


> +
>  	addr = igt_mmap_offset_with_file(i915, offset, obj->base.size,
>  					 PROT_WRITE, MAP_SHARED, mock_file);
>  	if (IS_ERR_VALUE(addr)) {
> @@ -1303,6 +1310,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
>  
>  out_addr:
>  	vm_munmap(addr, obj->base.size);
> +	atomic_dec(&current->mm->mm_users);
>  
>  out_fput:
>  	fput(mock_file);
> -- 
> 2.43.0

-- 
Jani Nikula, Intel
