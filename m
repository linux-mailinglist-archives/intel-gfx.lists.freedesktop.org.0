Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B68870C16B
	for <lists+intel-gfx@lfdr.de>; Mon, 22 May 2023 16:47:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DEAA10E344;
	Mon, 22 May 2023 14:47:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC64110E344
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 May 2023 14:47:27 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2223161EBB;
 Mon, 22 May 2023 14:47:27 +0000 (UTC)
Received: from rdvivi-mobl4 (unknown [192.55.54.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id DCD87C433EF;
 Mon, 22 May 2023 14:47:24 +0000 (UTC)
Date: Mon, 22 May 2023 10:47:22 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <ZGuAehiEeIkcvKnE@rdvivi-mobl4>
References: <20230522124205.368-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230522124205.368-1-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Wait for active retire before
 i915_active_fini()
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
Cc: chris.p.wilson@linux.intel.com, intel-gfx@lists.freedesktop.org,
 andi.shyti@intel.com, andrzej.hajda@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 22, 2023 at 02:42:05PM +0200, Nirmoy Das wrote:
> i915_active_fini() finalizes the debug object, which can occur before
> the active retires and deactivates the debug object. Wait for one
> final time before calling i915_active_fini();
> 
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/8311
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> ---
>  drivers/gpu/drm/i915/i915_vma.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 20a44788999e..bad698bece27 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -1710,6 +1710,8 @@ static void release_references(struct i915_vma *vma, struct intel_gt *gt,
>  	if (vm_ddestroy)
>  		i915_vm_resv_put(vma->vm);
>  
> +	/* Wait for async active retire */
> +	i915_active_wait(&vma->active);
>  	i915_active_fini(&vma->active);
>  	GEM_WARN_ON(vma->resource);
>  	i915_vma_free(vma);
> -- 
> 2.39.0
> 
