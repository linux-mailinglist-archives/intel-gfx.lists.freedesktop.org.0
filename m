Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0F56F5A03
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 16:29:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FBD910E147;
	Wed,  3 May 2023 14:29:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92B3410E147
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 14:29:07 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 074D360C36;
 Wed,  3 May 2023 14:29:07 +0000 (UTC)
Received: from rdvivi-mobl4 (fmdmzpr02-ext.fm.intel.com [192.55.54.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id 3312AC433EF;
 Wed,  3 May 2023 14:29:05 +0000 (UTC)
Date: Wed, 3 May 2023 10:29:02 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZFJvrlLeUoAsk6eg@rdvivi-mobl4>
References: <cover.1683041799.git.jani.nikula@intel.com>
 <8359a1cef6b5ab268a9dcc1a382281b6e39cfa64.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8359a1cef6b5ab268a9dcc1a382281b6e39cfa64.1683041799.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 13/24] drm/i915/context: fix kernel-doc
 parameter descriptions
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

On Tue, May 02, 2023 at 06:37:30PM +0300, Jani Nikula wrote:
> drivers/gpu/drm/i915/gt/intel_context.h:108: warning: Function parameter or member 'ce' not described in 'intel_context_lock_pinned'
> drivers/gpu/drm/i915/gt/intel_context.h:123: warning: Function parameter or member 'ce' not described in 'intel_context_is_pinned'
> drivers/gpu/drm/i915/gt/intel_context.h:142: warning: Function parameter or member 'ce' not described in 'intel_context_unlock_pinned'
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_context.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
> index 48f888c3da08..6b5eae7b88bc 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context.h
> @@ -97,7 +97,7 @@ void intel_context_bind_parent_child(struct intel_context *parent,
>  
>  /**
>   * intel_context_lock_pinned - Stablises the 'pinned' status of the HW context
> - * @ce - the context
> + * @ce: the context
>   *
>   * Acquire a lock on the pinned status of the HW context, such that the context
>   * can neither be bound to the GPU or unbound whilst the lock is held, i.e.
> @@ -111,7 +111,7 @@ static inline int intel_context_lock_pinned(struct intel_context *ce)
>  
>  /**
>   * intel_context_is_pinned - Reports the 'pinned' status
> - * @ce - the context
> + * @ce: the context
>   *
>   * While in use by the GPU, the context, along with its ring and page
>   * tables is pinned into memory and the GTT.
> @@ -133,7 +133,7 @@ static inline void intel_context_cancel_request(struct intel_context *ce,
>  
>  /**
>   * intel_context_unlock_pinned - Releases the earlier locking of 'pinned' status
> - * @ce - the context
> + * @ce: the context
>   *
>   * Releases the lock earlier acquired by intel_context_unlock_pinned().
>   */
> -- 
> 2.39.2
> 
