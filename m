Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF666F5A4A
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 16:40:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2275710E2CA;
	Wed,  3 May 2023 14:40:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D076E10E2CA
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 14:40:16 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3E3D260C6C;
 Wed,  3 May 2023 14:40:16 +0000 (UTC)
Received: from rdvivi-mobl4 (fmdmzpr02-ext.fm.intel.com [192.55.54.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id 39ECBC433EF;
 Wed,  3 May 2023 14:40:14 +0000 (UTC)
Date: Wed, 3 May 2023 10:40:11 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZFJySwnNfMS6ZRaH@rdvivi-mobl4>
References: <cover.1683041799.git.jani.nikula@intel.com>
 <84f89a3332fa323888f1e3241fb51ae10417ecd7.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <84f89a3332fa323888f1e3241fb51ae10417ecd7.1683041799.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 21/24] drm/i915/pxp: fix kernel-doc for
 member dev_link
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

On Tue, May 02, 2023 at 06:37:38PM +0300, Jani Nikula wrote:
> Add /** to make it a kernel-doc.
> 
> drivers/gpu/drm/i915/pxp/intel_pxp_types.h:96: warning: Function parameter or member 'dev_link' not described in 'intel_pxp'
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/pxp/intel_pxp_types.h | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> index 007de49e1ea4..c445f7f2f47a 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> @@ -33,7 +33,9 @@ struct intel_pxp {
>  	 */
>  	struct i915_pxp_component *pxp_component;
>  
> -	/* @dev_link: Enforce module relationship for power management ordering. */
> +	/**
> +	 * @dev_link: Enforce module relationship for power management ordering.
> +	 */
>  	struct device_link *dev_link;
>  	/**
>  	 * @pxp_component_added: track if the pxp component has been added.
> -- 
> 2.39.2
> 
