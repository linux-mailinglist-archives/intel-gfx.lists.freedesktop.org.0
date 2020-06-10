Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E60C1F5807
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2020 17:42:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D2476E7D0;
	Wed, 10 Jun 2020 15:42:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B4A86E7D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jun 2020 15:42:36 +0000 (UTC)
IronPort-SDR: 0UROsY6RVYb2AhaFNqsXS5IChxqwyoWaU/KAfaM192Ns1yDtTeQ09mIyjrLH+DRCt84XJ8Zanj
 I++pqGni/Jjw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 08:42:35 -0700
IronPort-SDR: lLIQ8+2bis1UpG2JIIKXDNP+5L4nSDyQMXPQ//yii7HGbBS7wZUu6dxif4KXeJfzZDG4GBzLjH
 Vxr2yadaRjvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,496,1583222400"; d="scan'208";a="473377307"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga006.fm.intel.com with ESMTP; 10 Jun 2020 08:42:34 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 797655C2C9E; Wed, 10 Jun 2020 18:39:59 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200610154046.22449-1-chris@chris-wilson.co.uk>
References: <20200610154046.22449-1-chris@chris-wilson.co.uk>
Date: Wed, 10 Jun 2020 18:39:59 +0300
Message-ID: <874krj9bg0.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Include context status in
 debug dumps
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

Chris Wilson <chris@chris-wilson.co.uk> writes:

> This may be useful to identify contexts that are running even though
> they are supposed to be closed or banned.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 72f0029d490b..6d0a8ac02fb4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1423,9 +1423,11 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
>  			int len;
>  
>  			len = scnprintf(hdr, sizeof(hdr),
> -					"\t\tActive[%d]:  ccid:%08x, ",
> +					"\t\tActive[%d]:  ccid:%08x%s%s, ",
>  					(int)(port - execlists->active),
> -					rq->context->lrc.ccid);
> +					rq->context->lrc.ccid,
> +					intel_context_is_closed(rq->context) ? "!" : "",
> +					intel_context_is_banned(rq->context) ? "*" : "");
>  			len += print_ring(hdr + len, sizeof(hdr) - len, rq);
>  			scnprintf(hdr + len, sizeof(hdr) - len, "rq: ");
>  			print_request(m, rq, hdr);
> @@ -1435,9 +1437,11 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
>  			int len;
>  
>  			len = scnprintf(hdr, sizeof(hdr),
> -					"\t\tPending[%d]: ccid:%08x, ",
> +					"\t\tPending[%d]: ccid:%08x%s%s, ",
>  					(int)(port - execlists->pending),
> -					rq->context->lrc.ccid);
> +					rq->context->lrc.ccid,
> +					intel_context_is_closed(rq->context) ? "!" : "",
> +					intel_context_is_banned(rq->context) ? "*" : "");
>  			len += print_ring(hdr + len, sizeof(hdr) - len, rq);
>  			scnprintf(hdr + len, sizeof(hdr) - len, "rq: ");
>  			print_request(m, rq, hdr);
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
