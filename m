Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4388B1C92DC
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 17:00:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A0D86E9D6;
	Thu,  7 May 2020 15:00:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEE026E9D6
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 14:59:59 +0000 (UTC)
IronPort-SDR: FXGaNdSemG14DG+Gs8QrCVWGTr43++Q61uOmpMz9SBCGuMPvYgU5gjiCQgtjOR3JUacHvlyajs
 LcVBRWXs0VyA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 07:59:59 -0700
IronPort-SDR: gc2VWJTo6gXXQa6SqlOO4TU5HP4rQm7m30AWZJHDFHibJE0+Dc+zrQBQ0vgHPh5/0st0DaAQA5
 xrQ5gmXBOEYA==
X-IronPort-AV: E=Sophos;i="5.73,364,1583222400"; d="scan'208";a="435314264"
Received: from nstgemme-mobl1.ger.corp.intel.com (HELO [10.252.42.100])
 ([10.252.42.100])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 07:59:58 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200507082124.1673-1-chris@chris-wilson.co.uk>
 <20200507082124.1673-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <746f07e6-7e85-d11e-3e7a-2fe850891b01@linux.intel.com>
Date: Thu, 7 May 2020 15:59:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200507082124.1673-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/gem: Treat submit-fence as
 weak dependency for new clients
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


On 07/05/2020 09:21, Chris Wilson wrote:
> The submit-fence adds a weak dependency to the requests, and for the
> purpose of our FQ_CODEL hinting we do not want to treat as a
> restriction. This is primarily because clients may treat submit-fences
> as a bidirectional bonding between a pair of co-ordinating requests.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 13 ++++++++++++-
>   1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 966523a8503f..e8bf0cf02fd7 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -2565,6 +2565,17 @@ static void retire_requests(struct intel_timeline *tl, struct i915_request *end)
>   			break;
>   }
>   
> +static bool new_client(struct i915_request *rq)
> +{
> +	struct i915_dependency *p;
> +
> +	list_for_each_entry(p, &rq->sched.signalers_list, signal_link)
> +		if (!(p->flags & I915_DEPENDENCY_WEAK))
> +			return false;
> +
> +	return true;
> +}
> +
>   static void eb_request_add(struct i915_execbuffer *eb)
>   {
>   	struct i915_request *rq = eb->request;
> @@ -2604,7 +2615,7 @@ static void eb_request_add(struct i915_execbuffer *eb)
>   		 * Allow interactive/synchronous clients to jump ahead of
>   		 * the bulk clients. (FQ_CODEL)
>   		 */
> -		if (list_empty(&rq->sched.signalers_list))
> +		if (new_client(rq))
>   			attr.priority |= I915_PRIORITY_WAIT;
>   	} else {
>   		/* Serialise with context_close via the add_to_timeline */
> 

Did absence of this have any functional effect? I hope not, but anyway:

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
