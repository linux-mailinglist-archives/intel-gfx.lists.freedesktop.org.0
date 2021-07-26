Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A79C43D5754
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 12:21:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B31C16F4E1;
	Mon, 26 Jul 2021 10:21:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 968E96F49F;
 Mon, 26 Jul 2021 10:21:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10056"; a="210313492"
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="210313492"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 03:21:48 -0700
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="417012377"
Received: from dechasso-mobl3.amr.corp.intel.com (HELO intel.com)
 ([10.212.115.115])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 03:21:47 -0700
Date: Mon, 26 Jul 2021 06:21:46 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <YP6Mui8SAtuVQqzj@intel.com>
References: <20210724001114.249295-1-lucas.demarchi@intel.com>
 <20210724001114.249295-21-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210724001114.249295-21-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH 20/30] drm/i915: remove explicit CNL
 handling from intel_mocs.c
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 23, 2021 at 05:11:04PM -0700, Lucas De Marchi wrote:
> Only one reference to CNL that is not needed, but code is the same for
> GEN9_BC, so leave the code around and just remove the special
> case for CNL.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_mocs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
> index 17848807f111..582c4423b95d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -352,7 +352,7 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
>  		table->size  = ARRAY_SIZE(icl_mocs_table);
>  		table->table = icl_mocs_table;
>  		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
> -	} else if (IS_GEN9_BC(i915) || IS_CANNONLAKE(i915)) {
> +	} else if (IS_GEN9_BC(i915)) {
>  		table->size  = ARRAY_SIZE(skl_mocs_table);
>  		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
>  		table->table = skl_mocs_table;
> -- 
> 2.31.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
