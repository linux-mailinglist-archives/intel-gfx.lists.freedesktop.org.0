Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F984B0775A
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 15:51:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9904B10E7C9;
	Wed, 16 Jul 2025 13:51:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="WB6WT20r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13FAB10E7C2
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jul 2025 13:51:52 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id C63A743761;
 Wed, 16 Jul 2025 13:51:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF86BC4CEE7;
 Wed, 16 Jul 2025 13:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1752673911;
 bh=9f8forgOSw7DN5yx2kzROUkolb6nA6vi118W1qoseko=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WB6WT20rfkb9wAq2O2deVMI7xwcqbnTMZDrC6N5Ec3JeXvFYanvlRXwIIgBceSe7P
 gaaTV7NZz+9ObPFRgeGUeu/uNOyeFfIy/V+f9RVcuvXurv9an28joFDxBYhG5sxS/I
 VOGXKqOvaVqUZqHzCVdcFoJIR4p4nk4WMkcxG2B4HQgwtWU+4M3oQOzbwgvr+/2Kqo
 c2+v8Im7Ap92t7YirLoI62R/+gRc811zbpF/Ex1JdVffMUM9Jjx+J2johCZF57ZEbl
 mzC3TlVIzH+qvKFKy+1sJRkJtI566TBqzSX932X/7C+DO5GahAEF03qlAQoka7khoF
 DjVRSAMBt+RCw==
Date: Wed, 16 Jul 2025 15:51:47 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org, andi.shyti@linux.intel.com, 
 krzysztof.karas@intel.com
Subject: Re: [PATCH 2/3] drm/i915: Add braces around the else block in
 clflush_write32()
Message-ID: <wmqxtg4cwswtqphgczopp755ivbohcsrzt6nmxkf4e5bc7lwm4@wgayizzneypo>
References: <20250716093645.432689-1-sebastian.brzezinka@intel.com>
 <20250716093645.432689-3-sebastian.brzezinka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250716093645.432689-3-sebastian.brzezinka@intel.com>
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

On Wed, Jul 16, 2025 at 09:37:18AM +0000, Sebastian Brzezinka wrote:

You could write a few words here in the description to avoid
complaints.

No need to resend, just send me the description you want and i
will add it before applying. This patch is already good to go.

Andi

> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index b2d940e89bbb..b2660445bb51 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1382,8 +1382,9 @@ static void clflush_write32(u32 *addr, u32 value, unsigned int flushes)
>  		 */
>  		if (flushes & CLFLUSH_AFTER)
>  			drm_clflush_virt_range(addr, sizeof(*addr));
> -	} else
> +	} else {
>  		*addr = value;
> +	}
>  }
>  
>  static u64
> -- 
> 2.34.1
> 
