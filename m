Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AFA6F6E61
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 16:56:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4144010E163;
	Thu,  4 May 2023 14:56:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E5FE10E120
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 14:56:11 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 7B52C62C9C;
 Thu,  4 May 2023 14:56:10 +0000 (UTC)
Received: from rdvivi-mobl4 (unknown [192.55.54.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id 50BEAC433D2;
 Thu,  4 May 2023 14:56:08 +0000 (UTC)
Date: Thu, 4 May 2023 10:56:06 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZFPHhhaO6nF8FTNJ@rdvivi-mobl4>
References: <cover.1683041799.git.jani.nikula@intel.com>
 <a0c099707ec4f1911b14b0f286848a298b2b29e0.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a0c099707ec4f1911b14b0f286848a298b2b29e0.1683041799.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 22/24] drm/i915/scatterlist: fix kernel-doc
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

On Tue, May 02, 2023 at 06:37:39PM +0300, Jani Nikula wrote:
> Can't document function pointer members as if they are functions.
> 
> drivers/gpu/drm/i915/i915_scatterlist.h:160: warning: Incorrect use of kernel-doc format:          * release() - Free the memory of the struct i915_refct_sgt
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_scatterlist.h | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_scatterlist.h b/drivers/gpu/drm/i915/i915_scatterlist.h
> index b0a1db44f895..fe9ae863f9b9 100644
> --- a/drivers/gpu/drm/i915/i915_scatterlist.h
> +++ b/drivers/gpu/drm/i915/i915_scatterlist.h
> @@ -157,8 +157,7 @@ bool i915_sg_trim(struct sg_table *orig_st);
>   */
>  struct i915_refct_sgt_ops {
>  	/**
> -	 * release() - Free the memory of the struct i915_refct_sgt
> -	 * @ref: struct kref that is embedded in the struct i915_refct_sgt
> +	 * @release: Free the memory of the struct i915_refct_sgt
>  	 */
>  	void (*release)(struct kref *ref);
>  };
> -- 
> 2.39.2
> 
