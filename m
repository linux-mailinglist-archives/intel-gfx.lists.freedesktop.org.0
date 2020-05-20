Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 531081DB0A1
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 12:52:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEDE389FA6;
	Wed, 20 May 2020 10:52:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58CE289FA6
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 May 2020 10:52:04 +0000 (UTC)
IronPort-SDR: nLk5GSjEZE6Rumn4FfM+I9mntbEOcUffEnUtmqdeRwEnq+6nS3NfvB69fkuH0KOFbhfwCQqAOU
 22YbQrwMmsjg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 03:52:03 -0700
IronPort-SDR: i36MF3NVVm11K4BRtrzTtkXt7nIoEb4QPyGEzZdLUhtR9CgL4mdKAFLgUh7ZH1aQdR0Pw5yRO4
 iLFO3/tx6MxA==
X-IronPort-AV: E=Sophos;i="5.73,413,1583222400"; d="scan'208";a="439984493"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.21.116])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 03:52:02 -0700
MIME-Version: 1.0
In-Reply-To: <20200520073048.2394034-1-chris@chris-wilson.co.uk>
References: <20200520073048.2394034-1-chris@chris-wilson.co.uk>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Wed, 20 May 2020 13:51:59 +0300
Message-ID: <158997191957.12226.15894364832653611297@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.8.1
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Remove errant assertion in
 __intel_context_do_pin
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-05-20 10:30:48)
> This assertion was removed in b412c63f1cba ("drm/i915/gt: Report
> context-is-closed prior to pinning"), but accidentally restored by a
> cherry-pick into drm-next and now has percolated back to
> drm-intel-next-queued.
> 
> Fixes: 2e46a2a0b014 ("drm/i915: Use explicit flag to mark unreachable intel_context")
> Fixes: 2b703bbda271 ("Merge drm/drm-next into drm-intel-next-queued")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

Regards, Joonas

> ---
>  drivers/gpu/drm/i915/gt/intel_context.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
> index 74ddb49b2941..e4aece20bc80 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.c
> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> @@ -97,8 +97,6 @@ int __intel_context_do_pin(struct intel_context *ce)
>  {
>         int err;
>  
> -       GEM_BUG_ON(intel_context_is_closed(ce));
> -
>         if (unlikely(!test_bit(CONTEXT_ALLOC_BIT, &ce->flags))) {
>                 err = intel_context_alloc_state(ce);
>                 if (err)
> -- 
> 2.27.0.rc0
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
