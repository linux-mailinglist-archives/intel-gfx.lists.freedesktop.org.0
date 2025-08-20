Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 997F2B2E303
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Aug 2025 19:10:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9912210E794;
	Wed, 20 Aug 2025 17:10:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="SyeacAxq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EC5610E794
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Aug 2025 17:10:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 6008B601E5;
 Wed, 20 Aug 2025 17:10:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9FBEC4CEE7;
 Wed, 20 Aug 2025 17:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1755709836;
 bh=8yBYVlTmuSfYyKpGmWLZFO2hyNANnEjDzENZL8tfRTo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SyeacAxqb/19ouF28LEr7auDF68bzFfdtqyhL+r1Bzmm+d5f3GoIOl5ete9PZ7CjC
 0Wu9aOwHTtAerDU0dkjO5Nb4/iZLv9qt2pOi0tV6QMwIZqFE4fMqkB6Ix3ogcj3kDP
 UujfUxWLrAHd2BkY/eM4tK0CULpY2Y0bSjBVl0NosHXwFW1SQhT9yYm37MiOqBC9/Y
 jE3dYpjFScLJPu6iJg8IP6efFpjMpAud2PkXRFY0dbJFm8s5OXLi/eOUbLQWBuplhd
 kNfi/dBaB3I7NyfgIax2kRWfOPXpPUDUSTYgP4K60KzmFxJqsSFPmIo2TK5DXe7Jg+
 mpKGefU62J/Ig==
Date: Wed, 20 Aug 2025 16:10:30 -0100
From: Andi Shyti <andi.shyti@kernel.org>
To: =?utf-8?B?6ZmI5rab5rab?= Taotao Chen <chentaotao@didiglobal.com>
Cc: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, 
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>, 
 "tursulin@ursulin.net" <tursulin@ursulin.net>,
 "airlied@gmail.com" <airlied@gmail.com>, 
 "simona@ffwll.ch" <simona@ffwll.ch>,
 "oe-lkp@lists.linux.dev" <oe-lkp@lists.linux.dev>, 
 "lkp@intel.com" <lkp@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "brauner@kernel.org" <brauner@kernel.org>, 
 "oliver.sang@intel.com" <oliver.sang@intel.com>
Subject: Re: [PATCH 2/2] drm/i915: Fix incorrect error handling in
 shmem_pwrite()
Message-ID: <nd2sd2vdwif242wslgkaonuvskawho36bp6j6a4caghauzx6f5@dgkaow5idqxt>
References: <20250811093050.38930-1-chentaotao@didiglobal.com>
 <20250811093050.38930-2-chentaotao@didiglobal.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250811093050.38930-2-chentaotao@didiglobal.com>
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

Hi Taotao,

On Mon, Aug 11, 2025 at 09:31:00AM +0000, 陈涛涛 Taotao Chen wrote:
> From: Taotao Chen <chentaotao@didiglobal.com>
> 
> shmem_pwrite() currently checks for short writes before negative error
> codes, which can overwrite real errors (e.g., -EFBIG) with -EIO.
> Reorder the checks to return negative errors first, then handle short
> writes.
> 
> Fixes: 048832a3f400 ("drm/i915: Refactor shmem_pwrite() to use kiocb and write_iter")

I don't think we need the Fixes: tag here, in any case we return
an error and -EIO is somehow correct.

With the Fixes removed:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi

> Signed-off-by: Taotao Chen <chentaotao@didiglobal.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> index 2b53aad915f5..702532eef207 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> @@ -441,12 +441,12 @@ shmem_pwrite(struct drm_i915_gem_object *obj,
>  	written = file->f_op->write_iter(&kiocb, &iter);
>  	BUG_ON(written == -EIOCBQUEUED);
>  
> -	if (written != size)
> -		return -EIO;
> -
>  	if (written < 0)
>  		return written;
>  
> +	if (written != size)
> +		return -EIO;
> +
>  	return 0;
>  }
>  
> -- 
> 2.34.1
