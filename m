Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA6B66DFB3
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jan 2023 14:57:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CD5010E193;
	Tue, 17 Jan 2023 13:57:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D22510E2FD;
 Tue, 17 Jan 2023 13:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673963838; x=1705499838;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=54CJ7Zt2a0MiIuLXJPIZZY3zINuv2XU8CIceWxKiRoE=;
 b=iasFD1JDqUr055qB43YfsoFKr4LxmICd0x/VRJmtusfvqfTrUz5JCMEk
 qUaiz1/15QFMe7IrHv8RVP+QS9CJ94eqZRuYg+uhdq96nn6/SVWMgTtjd
 Qnq9v/pEOcQhjJoRo/Po4WURsM27ncZ5lbscY02eOcWPznrAzXu10BjAP
 758iLzNRvrzmNybfYT2k/UBse5kyvbOUsXLnO3u8iTIdpbkGHkXF2Kttt
 XP21+eAPvcskbIsyRbjwZVTpCJFySs+SxLsPNS8MkMpV2dxpMTUsKG4K5
 tkFC1VMD1QoHw0SsIXuY/Mna47XgtwmNGDU98QaHHZmGWVY0mz0IqOiyc g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="312564049"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="312564049"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 05:57:17 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="801746743"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="801746743"
Received: from dmitriim-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.45.175])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 05:57:14 -0800
Date: Tue, 17 Jan 2023 14:57:11 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <Y8apNwaM+/tZg+9r@ashyti-mobl2.lan>
References: <20230117123234.26487-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230117123234.26487-1-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/selftests: Unwind hugepages to
 drop wakeref on error
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Matthew Auld <matthew.auld@intel.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
 chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

On Tue, Jan 17, 2023 at 01:32:34PM +0100, Nirmoy Das wrote:
> From: Chris Wilson <chris.p.wilson@linux.intel.com>
> 
> Make sure that upon error after we have acquired the wakeref we do
> release it again.
> 
> v2: add another missing "goto out_wf"(Andi).
> 
> Fixes: 027c38b4121e ("drm/i915/selftests: Grab the runtime pm in shrink_thp")
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi

> ---
>  drivers/gpu/drm/i915/gem/selftests/huge_pages.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> index c281b0ec9e05..defece0bcb81 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> @@ -1855,7 +1855,7 @@ static int igt_shrink_thp(void *arg)
>  			I915_SHRINK_ACTIVE);
>  	i915_vma_unpin(vma);
>  	if (err)
> -		goto out_put;
> +		goto out_wf;
>  
>  	/*
>  	 * Now that the pages are *unpinned* shrinking should invoke
> @@ -1871,19 +1871,19 @@ static int igt_shrink_thp(void *arg)
>  		pr_err("unexpected pages mismatch, should_swap=%s\n",
>  		       str_yes_no(should_swap));
>  		err = -EINVAL;
> -		goto out_put;
> +		goto out_wf;
>  	}
>  
>  	if (should_swap == (obj->mm.page_sizes.sg || obj->mm.page_sizes.phys)) {
>  		pr_err("unexpected residual page-size bits, should_swap=%s\n",
>  		       str_yes_no(should_swap));
>  		err = -EINVAL;
> -		goto out_put;
> +		goto out_wf;
>  	}
>  
>  	err = i915_vma_pin(vma, 0, 0, flags);
>  	if (err)
> -		goto out_put;
> +		goto out_wf;
>  
>  	while (n--) {
>  		err = cpu_check(obj, n, 0xdeadbeaf);
> -- 
> 2.39.0
