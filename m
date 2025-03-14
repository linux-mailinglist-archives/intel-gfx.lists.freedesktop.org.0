Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67834A614A5
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 16:19:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AA7C10EA0B;
	Fri, 14 Mar 2025 15:18:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mIqef95I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE33010E979
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Mar 2025 15:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741965535; x=1773501535;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=cn2fc2xUbaLF3hRR38gqNbH3q7jlSobgGL9m9sI6F6o=;
 b=mIqef95IS+/NV/Xt3u0RZV4PA4WNlDMc0B0o8FAn0IR1IrKycrUixi2Y
 6M6WW4VxSBvD/pvMzDtlxVXpCfkzbpy+LR5rowxBaP9CCNmaJKftX3syN
 olk6zmimzVO5f1x66XK4cPC8bW6O2LH7/hSMfRpwAM62Zd0lvKLwWPboY
 a7tMFxH0t2VvnzDBbWyEakaEvGJAMwbZY63bA7bKaTexTGj5uXepfug6V
 CE+dyo50KtJbxU3gFnuw+2+gyckgOvMzEHX5GD/zf9AIIwXxGzMLlmcoY
 hhfvJN71OjUXWrdLO4Mkf0WPcqYrGXUPlm4suxEB1kwUhdLSC09tGfgMv Q==;
X-CSE-ConnectionGUID: ET7xS04DR/qF/g76lcbK+w==
X-CSE-MsgGUID: NflSUo7GST+HqPf2H88pAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11373"; a="47017046"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="47017046"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 08:18:55 -0700
X-CSE-ConnectionGUID: 4e1ASJ6WRjGdOdQrqZxU4g==
X-CSE-MsgGUID: mNegyR4ZToGi21OzM0UBPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="152257793"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 08:18:54 -0700
Date: Fri, 14 Mar 2025 16:18:50 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Krzysztof Karas <krzysztof.karas@intel.com>, chris.p.wilson@intel.com
Subject: Re: [PATCH v2] i915/selftest/igt_mmap: let mmap tests run in kthread
Message-ID: <Z9RI2tcFb7e2-jwb@ashyti-mobl2.lan>
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

merged to drm-intel-gt-next.

Thanks,
Andi

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
