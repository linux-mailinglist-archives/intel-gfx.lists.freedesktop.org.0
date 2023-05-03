Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D3B6F59E8
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 16:24:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42B0210E13C;
	Wed,  3 May 2023 14:24:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3235B10E13C
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 14:24:38 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 97992628A6;
 Wed,  3 May 2023 14:24:37 +0000 (UTC)
Received: from rdvivi-mobl4 (fmdmzpr02-ext.fm.intel.com [192.55.54.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id A7318C433EF;
 Wed,  3 May 2023 14:24:35 +0000 (UTC)
Date: Wed, 3 May 2023 10:24:33 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>, mchehab@kernel.org
Message-ID: <ZFJuoS3zyrYpWSrQ@rdvivi-mobl4>
References: <cover.1683041799.git.jani.nikula@intel.com>
 <a2a81f9ee78591def0534c81a63dbc652c44bbd3.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a2a81f9ee78591def0534c81a63dbc652c44bbd3.1683041799.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 10/24] drm/i915/gem: fix function pointer
 member kernel-doc
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

On Tue, May 02, 2023 at 06:37:27PM +0300, Jani Nikula wrote:
> You can't document function pointer member as functions.
>
> drivers/gpu/drm/i915/gem/i915_gem_region.h:25: warning: Incorrect use of kernel-doc format:          * process_obj - Process the current object
> drivers/gpu/drm/i915/gem/i915_gem_region.h:35: warning: Function parameter or member 'process_obj' not described in 'i915_gem_apply_to_region_ops'
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_region.h | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_region.h b/drivers/gpu/drm/i915/gem/i915_gem_region.h
> index 2dfcc41c0170..8a7650b27cc2 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_region.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_region.h
> @@ -22,9 +22,7 @@ struct i915_gem_apply_to_region;
>   */
>  struct i915_gem_apply_to_region_ops {
>  	/**
> -	 * process_obj - Process the current object
> -	 * @apply: Embed this for private data.
> -	 * @obj: The current object.
> +	 * @process_obj: Process the current object

hmm...
looking to the process_obj itself I wonder if we don't have a better way
to document these function pointer arguments that could be acceptable
instead of simply removing them.

+Mauro in case he has some idea.

and the declaration for reference:

 int (*process_obj)(struct i915_gem_apply_to_region *apply,
                           struct drm_i915_gem_object *obj);

>  	 *
>  	 * Note that if this function is part of a ww transaction, and
>  	 * if returns -EDEADLK for one of the objects, it may be
> --
> 2.39.2
>
