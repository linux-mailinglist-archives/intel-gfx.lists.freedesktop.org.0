Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2271FC8AC00
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 16:50:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A048810E046;
	Wed, 26 Nov 2025 15:50:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="ierv6rtQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82AAA10E046
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Nov 2025 15:50:19 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id C70FC60215;
 Wed, 26 Nov 2025 15:50:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1096C4CEF7;
 Wed, 26 Nov 2025 15:50:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1764172218;
 bh=GYYAmaWtwUa86nHNyNl2RjbzDEhJ3dVjwY+T5X4wBHo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ierv6rtQ6v1Kdw7rhzIbPTyP1oQKbL1qFtXpdvSVI/HNgwi/98nyeekpphDzL6wIX
 YcqLn1v/ytMpiLAquKwjsNpClPGpEuew/R1usJFvXPopwcD1Gz6JenyVruOS1n2uCH
 Wq2butDBo6ZijPiUgGzTZaqdz2RCwVdDgOQN99zNzJUBDZWukEfV2H5cHA4gNcRNGA
 Gz/D44YDFJYGO+PHbigTtaoSX0WEWEjopm7cJwoAwPHDWr4POazVYmlHJYxc+X4iKc
 GNWtYrlTJeMKU2yZUUHwGUUKVg4FhB3VuAUZqEGYEetKX9TdmZ2kEV7RlzxH1DC8To
 h3JY4G6DDMN6Q==
Date: Wed, 26 Nov 2025 16:50:11 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Nareshkumar Gollakoti <naresh.kumar.g@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] fixeup! drm/xe/xe_pagefault: Fix potential uninitialized
 fence usage in xe_pagefault_handle_vma
Message-ID: <yww5rsowvo4kcfthcdadunedrcobjemskcmbld4ezzbpxfbasb@72lt2tf2btuk>
References: <20251125101841.2325554-2-naresh.kumar.g@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251125101841.2325554-2-naresh.kumar.g@intel.com>
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

Hi Nareshkumar,

On Tue, Nov 25, 2025 at 03:48:42PM +0530, Nareshkumar Gollakoti wrote:
> The variable "fence" should be initialized to NULL,
> and any usage of fence should be guarded
> by a check to ensure it is not NULL
> 
> Signed-off-by: Nareshkumar Gollakoti <naresh.kumar.g@intel.com>

is this a fix?

...

> @@ -122,8 +122,10 @@ static int xe_pagefault_handle_vma(struct xe_gt *gt, struct xe_vma *vma,
>  		}
>  	}
>  
> -	dma_fence_wait(fence, false);
> -	dma_fence_put(fence);
> +	if (fence) {
> +		dma_fence_wait(fence, false);
> +		dma_fence_put(fence);
> +	}

have you seen a case where fence is NULL at this point?

Thanks,
Andi
