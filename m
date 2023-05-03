Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E31946F5A06
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 16:29:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43E5410E13C;
	Wed,  3 May 2023 14:29:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB0BC10E13C
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 14:29:30 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1F35460C36;
 Wed,  3 May 2023 14:29:30 +0000 (UTC)
Received: from rdvivi-mobl4 (fmdmzpr02-ext.fm.intel.com [192.55.54.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id 17CD6C433EF;
 Wed,  3 May 2023 14:29:27 +0000 (UTC)
Date: Wed, 3 May 2023 10:29:25 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZFJvxU32Qw/iEZse@rdvivi-mobl4>
References: <cover.1683041799.git.jani.nikula@intel.com>
 <c22e58e770019667980b3617f6e963b76d7e79a7.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c22e58e770019667980b3617f6e963b76d7e79a7.1683041799.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 14/24] drm/i915/gtt: fix i915_vm_resv_put()
 kernel-doc parameter name
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

On Tue, May 02, 2023 at 06:37:31PM +0300, Jani Nikula wrote:
> drivers/gpu/drm/i915/gt/intel_gtt.h:515: warning: Function parameter or member 'vm' not described in 'i915_vm_resv_put'
> drivers/gpu/drm/i915/gt/intel_gtt.h:515: warning: Excess function parameter 'resv' description in 'i915_vm_resv_put'
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_gtt.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
> index 1910683f03b4..9aff343beaa8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -509,7 +509,7 @@ static inline void i915_vm_put(struct i915_address_space *vm)
>  
>  /**
>   * i915_vm_resv_put - Release a reference on the vm's reservation lock
> - * @resv: Pointer to a reservation lock obtained from i915_vm_resv_get()
> + * @vm: The vm whose reservation lock reference we want to release
>   */
>  static inline void i915_vm_resv_put(struct i915_address_space *vm)
>  {
> -- 
> 2.39.2
> 
