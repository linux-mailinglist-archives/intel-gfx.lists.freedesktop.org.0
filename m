Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F07616F5A4B
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 16:40:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FA5B10E13C;
	Wed,  3 May 2023 14:40:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E5F610E13C
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 14:40:53 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D985B60F23;
 Wed,  3 May 2023 14:40:52 +0000 (UTC)
Received: from rdvivi-mobl4 (fmdmzpr02-ext.fm.intel.com [192.55.54.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id B48E6C433EF;
 Wed,  3 May 2023 14:40:50 +0000 (UTC)
Date: Wed, 3 May 2023 10:40:47 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZFJyb59sFC82j29K@rdvivi-mobl4>
References: <cover.1683041799.git.jani.nikula@intel.com>
 <0b31edbb33116c8002dd1e72d3ad25efe5dd0176.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0b31edbb33116c8002dd1e72d3ad25efe5dd0176.1683041799.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 23/24] drm/i915/scatterlist: fix kernel-doc
 parameter documentation
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

On Tue, May 02, 2023 at 06:37:40PM +0300, Jani Nikula wrote:
> drivers/gpu/drm/i915/i915_scatterlist.h:164: warning: Function parameter or member 'release' not described in 'i915_refct_sgt_ops'
> drivers/gpu/drm/i915/i915_scatterlist.h:187: warning: Function parameter or member 'rsgt' not described in 'i915_refct_sgt_put'
> drivers/gpu/drm/i915/i915_scatterlist.h:198: warning: Function parameter or member 'rsgt' not described in 'i915_refct_sgt_get'
> drivers/gpu/drm/i915/i915_scatterlist.h:214: warning: Function parameter or member 'rsgt' not described in '__i915_refct_sgt_init'
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_scatterlist.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_scatterlist.h b/drivers/gpu/drm/i915/i915_scatterlist.h
> index fe9ae863f9b9..5a10c1a31183 100644
> --- a/drivers/gpu/drm/i915/i915_scatterlist.h
> +++ b/drivers/gpu/drm/i915/i915_scatterlist.h
> @@ -180,7 +180,7 @@ struct i915_refct_sgt {
>  
>  /**
>   * i915_refct_sgt_put - Put a refcounted sg-table
> - * @rsgt the struct i915_refct_sgt to put.
> + * @rsgt: the struct i915_refct_sgt to put.
>   */
>  static inline void i915_refct_sgt_put(struct i915_refct_sgt *rsgt)
>  {
> @@ -190,7 +190,7 @@ static inline void i915_refct_sgt_put(struct i915_refct_sgt *rsgt)
>  
>  /**
>   * i915_refct_sgt_get - Get a refcounted sg-table
> - * @rsgt the struct i915_refct_sgt to get.
> + * @rsgt: the struct i915_refct_sgt to get.
>   */
>  static inline struct i915_refct_sgt *
>  i915_refct_sgt_get(struct i915_refct_sgt *rsgt)
> @@ -202,7 +202,7 @@ i915_refct_sgt_get(struct i915_refct_sgt *rsgt)
>  /**
>   * __i915_refct_sgt_init - Initialize a refcounted sg-list with a custom
>   * operations structure
> - * @rsgt The struct i915_refct_sgt to initialize.
> + * @rsgt: The struct i915_refct_sgt to initialize.
>   * @size: Size in bytes of the underlying memory buffer.
>   * @ops: A customized operations structure in case the refcounted sg-list
>   * is embedded into another structure.
> -- 
> 2.39.2
> 
