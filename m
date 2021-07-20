Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB433D029D
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 22:25:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBCA189ECD;
	Tue, 20 Jul 2021 20:25:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 746CB89ECD
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 20:25:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10051"; a="296883497"
X-IronPort-AV: E=Sophos;i="5.84,256,1620716400"; d="scan'208";a="296883497"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 13:25:21 -0700
X-IronPort-AV: E=Sophos;i="5.84,256,1620716400"; d="scan'208";a="494984197"
Received: from emacedox-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.209.165.51])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 13:25:21 -0700
Date: Tue, 20 Jul 2021 16:25:20 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YPcxMC1oULxcCSSO@intel.com>
References: <20210720182108.2761496-1-jason@jlekstrand.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210720182108.2761496-1-jason@jlekstrand.net>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Correct the docs for
 intel_engine_cmd_parser
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 20, 2021 at 01:21:08PM -0500, Jason Ekstrand wrote:
> In c9d9fdbc108a ("drm/i915: Revert "drm/i915/gem: Asynchronous
> cmdparser""), the parameters to intel_engine_cmd_parser() were altered
> without updating the docs, causing Fi.CI.DOCS to start failing.
> 
> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> ---
>  drivers/gpu/drm/i915/i915_cmd_parser.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
> index 322f4d5955a4f..e0403ce9ce692 100644
> --- a/drivers/gpu/drm/i915/i915_cmd_parser.c
> +++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
> @@ -1416,9 +1416,7 @@ static unsigned long *alloc_whitelist(u32 batch_length)
>   * @batch_offset: byte offset in the batch at which execution starts
>   * @batch_length: length of the commands in batch_obj
>   * @shadow: validated copy of the batch buffer in question
> - * @jump_whitelist: buffer preallocated with intel_engine_cmd_parser_alloc_jump_whitelist()
> - * @shadow_map: mapping to @shadow vma
> - * @batch_map: mapping to @batch vma
> + * @trampoline: true if we need to trampoline into privileged execution

I was wondering if we should also return the original text, but this one
here looks better.


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


>   *
>   * Parses the specified batch buffer looking for privilege violations as
>   * described in the overview.
> -- 
> 2.31.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
