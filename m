Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 571316F59F4
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 16:27:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F13310E13C;
	Wed,  3 May 2023 14:27:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E6C610E13C
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 14:27:26 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 7EED86279E;
 Wed,  3 May 2023 14:27:25 +0000 (UTC)
Received: from rdvivi-mobl4 (fmdmzpr02-ext.fm.intel.com [192.55.54.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id B4D24C433D2;
 Wed,  3 May 2023 14:27:23 +0000 (UTC)
Date: Wed, 3 May 2023 10:27:21 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZFJvSWjkxO1j+N21@rdvivi-mobl4>
References: <cover.1683041799.git.jani.nikula@intel.com>
 <77a7f3044f603bf9f18b93aa3d44517670c37d67.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <77a7f3044f603bf9f18b93aa3d44517670c37d67.1683041799.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 11/24] drm/i915/ttm: fix i915_ttm_to_gem()
 kernel-doc
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

On Tue, May 02, 2023 at 06:37:28PM +0300, Jani Nikula wrote:
> drivers/gpu/drm/i915/gem/i915_gem_ttm.h:50: warning: Function parameter or member 'bo' not described in 'i915_ttm_to_gem'
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_ttm.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.h b/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
> index f8f6bed1b297..70abdc3061a9 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
> @@ -42,6 +42,7 @@ static inline bool i915_ttm_is_ghost_object(struct ttm_buffer_object *bo)
>  /**
>   * i915_ttm_to_gem - Convert a struct ttm_buffer_object to an embedding
>   * struct drm_i915_gem_object.
> + * @bo: Pointer to the ttm buffer object
>   *
>   * Return: Pointer to the embedding struct ttm_buffer_object.

I understand the goal is to fix the warnings, but while at it,
would you mind also fixing the Return?

this was likely a bad copy and paste from i915_gem_to_ttm
and the right one should be something like

Return: Pointer to the embedding struct drm_i915_gem_object.

>   */
> -- 
> 2.39.2
> 
