Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B7B6F5985
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 16:08:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1A3310E1E4;
	Wed,  3 May 2023 14:08:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5BFB10E1E4
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 14:08:01 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 48C2660C1D;
 Wed,  3 May 2023 14:08:01 +0000 (UTC)
Received: from rdvivi-mobl4 (fmdmzpr02-ext.fm.intel.com [192.55.54.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id 8EEE8C433EF;
 Wed,  3 May 2023 14:07:59 +0000 (UTC)
Date: Wed, 3 May 2023 10:07:57 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZFJqvf38Nzm15JR7@rdvivi-mobl4>
References: <cover.1683041799.git.jani.nikula@intel.com>
 <9213214c9caa296ebd349a5d5b44c2bbb45cdf99.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9213214c9caa296ebd349a5d5b44c2bbb45cdf99.1683041799.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 01/24] drm/i915/gvt: fix
 intel_vgpu_alloc_resource() kernel-doc parameter
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

On Tue, May 02, 2023 at 06:37:18PM +0300, Jani Nikula wrote:
> drivers/gpu/drm/i915/gvt/aperture_gm.c:344: warning: Function parameter or member 'conf' not described in 'intel_vgpu_alloc_resource'
> drivers/gpu/drm/i915/gvt/aperture_gm.c:344: warning: Excess function parameter 'param' description in 'intel_vgpu_alloc_resource'
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/gvt/aperture_gm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gvt/aperture_gm.c b/drivers/gpu/drm/i915/gvt/aperture_gm.c
> index 076c779f776a..eedd1865bb98 100644
> --- a/drivers/gpu/drm/i915/gvt/aperture_gm.c
> +++ b/drivers/gpu/drm/i915/gvt/aperture_gm.c
> @@ -330,7 +330,7 @@ void intel_vgpu_reset_resource(struct intel_vgpu *vgpu)
>  /**
>   * intel_vgpu_alloc_resource() - allocate HW resource for a vGPU
>   * @vgpu: vGPU
> - * @param: vGPU creation params
> + * @conf: vGPU creation params
>   *
>   * This function is used to allocate HW resource for a vGPU. User specifies
>   * the resource configuration through the creation params.
> -- 
> 2.39.2
> 
