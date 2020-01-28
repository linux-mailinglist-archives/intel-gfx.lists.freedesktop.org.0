Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2EE814BD25
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 16:42:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C01216EE81;
	Tue, 28 Jan 2020 15:42:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E85476EE81
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 15:42:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 07:42:36 -0800
X-IronPort-AV: E=Sophos;i="5.70,374,1574150400"; d="scan'208";a="222141416"
Received: from lodierna-mobl.ger.corp.intel.com (HELO [10.252.22.225])
 ([10.252.22.225])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 28 Jan 2020 07:42:35 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200128151647.3820659-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <89e7840d-a680-4af6-0749-c48fa5436da7@linux.intel.com>
Date: Tue, 28 Jan 2020 15:42:33 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200128151647.3820659-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/trace: i915_request.prio is a
 signed value
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


On 28/01/2020 15:16, Chris Wilson wrote:
> Don't confuse the poor developer by writing a negative value as a very
> large positive, as the flow of requests is already complex enough.
> 
> Reported-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_trace.h | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
> index 162c76a9d1e8..bc854ad60954 100644
> --- a/drivers/gpu/drm/i915/i915_trace.h
> +++ b/drivers/gpu/drm/i915/i915_trace.h
> @@ -800,7 +800,7 @@ TRACE_EVENT(i915_request_in,
>   			     __field(u16, instance)
>   			     __field(u32, seqno)
>   			     __field(u32, port)
> -			     __field(u32, prio)
> +			     __field(s32, prio)
>   			    ),
>   
>   	    TP_fast_assign(
> @@ -813,7 +813,7 @@ TRACE_EVENT(i915_request_in,
>   			   __entry->port = port;
>   			   ),
>   
> -	    TP_printk("dev=%u, engine=%u:%u, ctx=%llu, seqno=%u, prio=%u, port=%u",
> +	    TP_printk("dev=%u, engine=%u:%u, ctx=%llu, seqno=%u, prio=%d, port=%u",
>   		      __entry->dev, __entry->class, __entry->instance,
>   		      __entry->ctx, __entry->seqno,
>   		      __entry->prio, __entry->port)
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
