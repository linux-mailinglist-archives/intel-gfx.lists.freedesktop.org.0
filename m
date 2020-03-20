Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BDC18CE89
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 14:15:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57D1589DB2;
	Fri, 20 Mar 2020 13:15:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8BD589DB2
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 13:15:09 +0000 (UTC)
IronPort-SDR: lg/1rhTLAI4n7THTtkE4wE4BoWYJv4Tm7KXXMm/ouBdxkQZnEI99gfEeuy9rtpFGzeaK1N0qxr
 BhB5rmDLnJiQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 06:15:09 -0700
IronPort-SDR: Ws9nfWZcz033Mw6up0zYVY/QsE9CGHE6fAYI7FzEMi887bCXoHIQTrdUaheysVmI5CPXNXh7jL
 dbVZ54dq8lYQ==
X-IronPort-AV: E=Sophos;i="5.72,284,1580803200"; d="scan'208";a="418710922"
Received: from ebrown1-mobl1.ger.corp.intel.com (HELO [10.252.54.178])
 ([10.252.54.178])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 06:15:07 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200320130159.3922-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <4570b5fb-a9ff-aae6-f36d-f06ce2749197@linux.intel.com>
Date: Fri, 20 Mar 2020 13:15:03 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200320130159.3922-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/gt: Report context-is-closed
 prior to pinning
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


On 20/03/2020 13:01, Chris Wilson wrote:
> Our assertion caught that we do try to pin a closed context if userspace
> is viciously racing context-closure with execbuf, so make it fail
> gracefully.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1492
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_context.c | 7 +++++--
>   1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
> index aea992e46c42..7132bf616cc4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.c
> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> @@ -97,8 +97,6 @@ int __intel_context_do_pin(struct intel_context *ce)
>   {
>   	int err;
>   
> -	GEM_BUG_ON(intel_context_is_closed(ce));
> -
>   	if (unlikely(!test_bit(CONTEXT_ALLOC_BIT, &ce->flags))) {
>   		err = intel_context_alloc_state(ce);
>   		if (err)
> @@ -114,6 +112,11 @@ int __intel_context_do_pin(struct intel_context *ce)
>   		goto out_release;
>   	}
>   
> +	if (unlikely(intel_context_is_closed(ce))) {
> +		err = -ENOENT;
> +		goto out_release;
> +	}
> +
>   	if (likely(!atomic_add_unless(&ce->pin_count, 1, 0))) {
>   		err = intel_context_active_acquire(ce);
>   		if (unlikely(err))
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
