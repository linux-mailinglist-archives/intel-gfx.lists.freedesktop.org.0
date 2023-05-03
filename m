Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A01DC6F5A35
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 16:38:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2594510E2CE;
	Wed,  3 May 2023 14:38:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA80910E2DC
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 14:38:09 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 35FAC60DDC;
 Wed,  3 May 2023 14:38:09 +0000 (UTC)
Received: from rdvivi-mobl4 (fmdmzpr02-ext.fm.intel.com [192.55.54.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id 156B4C433D2;
 Wed,  3 May 2023 14:38:06 +0000 (UTC)
Date: Wed, 3 May 2023 10:38:04 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZFJxzNn+3mTc0o5u@rdvivi-mobl4>
References: <cover.1683041799.git.jani.nikula@intel.com>
 <c83878163221ed3684a6de5d5e1c5373ddd5c06f.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c83878163221ed3684a6de5d5e1c5373ddd5c06f.1683041799.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 18/24] drm/i915/guc: add
 intel_guc_state_capture member docs for ads_null_cache and
 max_mmio_per_node
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

On Tue, May 02, 2023 at 06:37:35PM +0300, Jani Nikula wrote:
> drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:216: warning: Function parameter or member 'ads_null_cache' not described in 'intel_guc_state_capture'
> drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:216: warning: Function parameter or member 'max_mmio_per_node' not described in 'intel_guc_state_capture'
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
> index 1b6c219e1675..1fc0c17b1230 100644
> --- a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
> +++ b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
> @@ -187,6 +187,10 @@ struct intel_guc_state_capture {
>  	struct __guc_capture_ads_cache ads_cache[GUC_CAPTURE_LIST_INDEX_MAX]
>  						[GUC_CAPTURE_LIST_TYPE_MAX]
>  						[GUC_MAX_ENGINE_CLASSES];
> +
> +	/**
> +	 * @ads_null_cache: ADS null cache.
> +	 */
>  	void *ads_null_cache;
>  
>  	/**
> @@ -202,6 +206,10 @@ struct intel_guc_state_capture {
>  	struct list_head cachelist;
>  #define PREALLOC_NODES_MAX_COUNT (3 * GUC_MAX_ENGINE_CLASSES * GUC_MAX_INSTANCES_PER_CLASS)
>  #define PREALLOC_NODES_DEFAULT_NUMREGS 64
> +
> +	/**
> +	 * @max_mmio_per_node: Max MMIO per node.
> +	 */
>  	int max_mmio_per_node;
>  
>  	/**
> -- 
> 2.39.2
> 
