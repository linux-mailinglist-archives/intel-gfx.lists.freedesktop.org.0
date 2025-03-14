Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA18A61397
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 15:26:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1D2810E9F3;
	Fri, 14 Mar 2025 14:26:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JRL9qXF1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 455CD10E9F3
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Mar 2025 14:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741962380; x=1773498380;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=lpHHxVoPFF6bbk8E1cL2RNQEmTj9Krg3edtwBHksJRo=;
 b=JRL9qXF1QLU+uYtX7nxp5XeLEhMb3F9l8fMjdGakrVy3c+5msjSdZMdC
 +U5MknBVIhIOK8A8i/pVVrxRWcHpCZhFlYhnGvfn2GVYqYCzqrLAOQLAW
 6EuF0kq/Ts+4RfOtjg+rs+gucbSNtY3ynY4r2o+lR3a917lnnFFy/ZEr/
 GnEUQa1qhy0Kxzg1xHwGrGduzkAJo3TaItXfpj/U1zb0NlKtMs2W2thq1
 FWIEnFGlm41w3WgkNW1f3BSdAJBHu7kMzjkFT9kcjfyzXlR4ejkZgTrG+
 jGR3Q0L0IPae/h6MF9viRG4AscN8TcwExhH2SfgHvTn/fS5XnS0Ol4Zh1 g==;
X-CSE-ConnectionGUID: suG+KAS8RnW4Sa20lP4EIw==
X-CSE-MsgGUID: vTrC1OZYRE6sOkdtZKrdxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11373"; a="42286277"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="42286277"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 07:26:13 -0700
X-CSE-ConnectionGUID: 6nTKvGYXQ6WuWTAvkouYgA==
X-CSE-MsgGUID: hw64pTcqSSSjFzU9aIJeaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="152249931"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 07:26:07 -0700
Date: Fri, 14 Mar 2025 15:26:04 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Krzysztof Karas <krzysztof.karas@intel.com>, chris.p.wilson@intel.com
Subject: Re: [PATCH v2] i915/selftest/igt_mmap: let mmap tests run in kthread
Message-ID: <Z9Q8fOIHHLCdDYnT@ashyti-mobl2.lan>
References: <2w6pt2hnemndwmanwhyn3keexa6vtha7rmo6rqoerkmyxhbrh2@ls7lndjpia6z>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2w6pt2hnemndwmanwhyn3keexa6vtha7rmo6rqoerkmyxhbrh2@ls7lndjpia6z>
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

Hi Mikolaj,

On Tue, Mar 04, 2025 at 09:43:26AM +0100, Mikolaj Wasiak wrote:
> When the driver is loaded on the system with numa nodes it might be run in
> a kthread, which makes it impossible to use current->mm in the selftest.
> This patch allows the selftest to use current->mm by using active_mm.
> 
> Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
> Reviewed-by: Eugene Kobyak <eugene.kobyak@intel.com>
> ---
> v1 -> v2: Simplify logic of enabling and disabling active_mm
> 
>  drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> index 804f74084bd4..9c3f17e51885 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> @@ -1837,6 +1837,8 @@ static int igt_mmap_revoke(void *arg)
>  
>  int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
>  {
> +	int ret;
> +	bool unuse_mm = false;
>  	static const struct i915_subtest tests[] = {
>  		SUBTEST(igt_partial_tiling),
>  		SUBTEST(igt_smoke_tiling),
> @@ -1848,5 +1850,15 @@ int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
>  		SUBTEST(igt_mmap_gpu),
>  	};
>  
> -	return i915_live_subtests(tests, i915);
> +	if (!current->mm) {
> +		kthread_use_mm(current->active_mm);

I still think this is somehow a brutal approach, but for a
selftest that is going to die soon it shouldn't be a big issue.

I'm going to take this in:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi

> +		unuse_mm = true;
> +	}
> +
> +	ret = i915_live_subtests(tests, i915);
> +
> +	if (unuse_mm)
> +		kthread_unuse_mm(current->active_mm);
> +
> +	return ret;
>  }
> -- 
> 2.43.0
