Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5276F59A7
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 16:17:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0959210E2C2;
	Wed,  3 May 2023 14:17:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E5A310E2C2
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 14:17:04 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 8BF8B616C6;
 Wed,  3 May 2023 14:17:03 +0000 (UTC)
Received: from rdvivi-mobl4 (fmdmzpr02-ext.fm.intel.com [192.55.54.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id E0181C4339B;
 Wed,  3 May 2023 14:17:01 +0000 (UTC)
Date: Wed, 3 May 2023 10:16:59 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZFJs2z9dZWIu9LF8@rdvivi-mobl4>
References: <cover.1683041799.git.jani.nikula@intel.com>
 <50389365e095dc564ab5f1f1e3647934163ffefa.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <50389365e095dc564ab5f1f1e3647934163ffefa.1683041799.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 04/24] drm/i915/vma: document struct
 i915_vma_resource wakeref member
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 02, 2023 at 06:37:21PM +0300, Jani Nikula wrote:
> drivers/gpu/drm/i915/i915_vma_resource.h:129: warning: Function parameter or member 'wakeref' not described in 'i915_vma_resource'
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_vma_resource.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_vma_resource.h b/drivers/gpu/drm/i915/i915_vma_resource.h
> index c1864e3d0b43..2053c037dbfb 100644
> --- a/drivers/gpu/drm/i915/i915_vma_resource.h
> +++ b/drivers/gpu/drm/i915/i915_vma_resource.h
> @@ -47,6 +47,7 @@ struct i915_page_sizes {
>   * @chain: Pointer to struct i915_sw_fence used to await dependencies.
>   * @rb: Rb node for the vm's pending unbind interval tree.
>   * @__subtree_last: Interval tree private member.
> + * @wakeref: wakeref.

if all of these were near their declarations it wouldn't get missed.
But anyway, this is not part of this patch to move all of them, so


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


>   * @vm: non-refcounted pointer to the vm. This is for internal use only and
>   * this member is cleared after vm_resource unbind.
>   * @mr: The memory region of the object pointed to by the vma.
> -- 
> 2.39.2
> 
