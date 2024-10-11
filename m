Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6760C999EDF
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 10:21:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0651810E09D;
	Fri, 11 Oct 2024 08:21:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A9gsPpBh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D8C910E09D;
 Fri, 11 Oct 2024 08:21:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728634911; x=1760170911;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=AmEGZGIaiM0AWUdpgGHPC+8awlOevRtWSnCnq4Ungnc=;
 b=A9gsPpBhCiMBcTvG9Mb1R/qkeCrssa9DxYV8njrsySnxgndoNla+uY85
 ZT6OudLtaTSZ4ewQ231Oz5KB8g43l9x7g58nBSXjiC5lpnRDaMQJ/oTxc
 rcfc2gwhUj5v53y9UVSFeApB4nRrWgzPxI5To5JWUNvE2J+0fxZFquvOT
 BIGJ635VWjFA3QcuNQLjvjBhuFJ1HLQgt5q8TRoKmty+lFni6RGYp347G
 YurAWDQbDCRQpq98ClI4d5Ir0J0yLTMsEh012MjrmDVwx8GaiuXrYQ0xV
 G6tqTZyhHdz0TJ6VA8o2nzNbB0gWCnX/k1q0IK35uLgAb7TGNEibwtFZ3 w==;
X-CSE-ConnectionGUID: 2cRngn40RpukcqMfhgkh4w==
X-CSE-MsgGUID: oZzy4uHwQny7TTSG0/bDoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="15647709"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="15647709"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 01:21:51 -0700
X-CSE-ConnectionGUID: 7hNQPzehTsKQOdV6wcHpsg==
X-CSE-MsgGUID: LOFzj41RQCKkL/80IgN9rQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="107573518"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 01:21:49 -0700
Date: Fri, 11 Oct 2024 10:21:47 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, Tejas Upadhyay <tejas.upadhyay@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Anshuman Gupta <anshuman.gupta@intel.com>
Subject: Re: [PATCH i-g-t] lib/gem_mman: Stop lying about
 I915_MMAP_OFFSET_GTT support
Message-ID: <20241011082147.qiioekalcdqo2g44@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org,
 Tejas Upadhyay <tejas.upadhyay@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Anshuman Gupta <anshuman.gupta@intel.com>
References: <20241010135023.275507-2-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241010135023.275507-2-janusz.krzysztofik@linux.intel.com>
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

Hi Janusz,
On 2024-10-10 at 15:49:06 +0200, Janusz Krzysztofik wrote:
> A few tests depend on for_each_mmap_offset_type() helper used for
> selection of device supported mmap_offset types in loops either around
> dynamic sub-subtests or inside subtest bodies.  That helper in turn
> calls gem_has_mmap_offset_type() to omit unsupported mmap_offset types.
> Unfortunately, its code returns GTT as supported mmap_offset type also on
> new platforms that no longer support that type.  Poorly coded subtests may
> than take unexpected processing paths and return unexpected results that
> are not easy to understand and explain.
> 
> Fix it.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11370
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

LGTM,
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  lib/i915/gem_mman.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/lib/i915/gem_mman.c b/lib/i915/gem_mman.c
> index 0b41ba70dd..cd0c65e213 100644
> --- a/lib/i915/gem_mman.c
> +++ b/lib/i915/gem_mman.c
> @@ -90,6 +90,8 @@ bool gem_has_mmap_offset_type(int fd, const struct mmap_offset *t)
>  	if (gem_has_mmap_offset(fd))
>  		if (gem_has_lmem(fd))
>  			return t->type == I915_MMAP_OFFSET_FIXED;
> +		else if (t->type == I915_MMAP_OFFSET_GTT)
> +			return gem_has_mappable_ggtt(fd);
>  		else
>  			return t->type != I915_MMAP_OFFSET_FIXED;
>  	else
> -- 
> 2.46.2
> 
