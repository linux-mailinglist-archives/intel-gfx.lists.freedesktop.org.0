Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA06B2F1A66
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 17:04:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A30556E105;
	Mon, 11 Jan 2021 16:04:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 364096E105
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jan 2021 16:04:42 +0000 (UTC)
IronPort-SDR: S2cOUZA1zUSosylLyeNHS3zE0KWL7ATGfu1/3ayjOLfYsxCGgB9kozjn7q3v6UdTtTNv0KaVbB
 +slFIkxOK/ow==
X-IronPort-AV: E=McAfee;i="6000,8403,9860"; a="165566498"
X-IronPort-AV: E=Sophos;i="5.79,338,1602572400"; d="scan'208";a="165566498"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 08:03:53 -0800
IronPort-SDR: 8tujQAmFug7v9RHVXje0ojmpu05U7NqHI3VQEZ7QAI+NEFk2orAbwOWvFH17iyHi1wNTK0hHjQ
 DNjy32sH2E6A==
X-IronPort-AV: E=Sophos;i="5.79,338,1602572400"; d="scan'208";a="352651660"
Received: from sbrooks8-mobl.ger.corp.intel.com (HELO [10.214.224.70])
 ([10.214.224.70])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 08:03:51 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210111105735.21515-1-chris@chris-wilson.co.uk>
 <20210111105735.21515-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <38984801-1e30-29ce-a6f3-c846bea7eab3@linux.intel.com>
Date: Mon, 11 Jan 2021 16:03:48 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210111105735.21515-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/gt: Check for arbitration
 after writing start seqno
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 11/01/2021 10:57, Chris Wilson wrote:
> On the off chance that we need to arbitrate before launching the
> payload, perform the check after we signal the request is ready to
> start. Assuming instantaneous processing of the CS event, the request
> will then be treated as having started when we make the decisions as to
> how to process that CS event.

What is the wider context with this change?

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 12 ++++++------
>   1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index 2e36e0a9d8a6..9a182652a35e 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -361,19 +361,19 @@ int gen8_emit_init_breadcrumb(struct i915_request *rq)
>   	if (IS_ERR(cs))
>   		return PTR_ERR(cs);
>   
> +	*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
> +	*cs++ = hwsp_offset(rq);
> +	*cs++ = 0;
> +	*cs++ = rq->fence.seqno - 1;
> +

Strictly this movement even makes the existing comment (below) more correct.

>   	/*
>   	 * Check if we have been preempted before we even get started.
>   	 *
>   	 * After this point i915_request_started() reports true, even if
>   	 * we get preempted and so are no longer running.
>   	 */
> -	*cs++ = MI_ARB_CHECK;
>   	*cs++ = MI_NOOP;
> -
> -	*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
> -	*cs++ = hwsp_offset(rq);
> -	*cs++ = 0;
> -	*cs++ = rq->fence.seqno - 1;
> +	*cs++ = MI_ARB_CHECK;

Special reason to have NOOP before MI_ARB_CHECK or would more common 
NOOP padding at the end be suitable?

Regards,

Tvrtko

>   
>   	intel_ring_advance(rq, cs);
>   
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
