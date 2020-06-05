Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7631EFBD7
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 16:50:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 724916E92A;
	Fri,  5 Jun 2020 14:50:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC9976E92A
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jun 2020 14:50:10 +0000 (UTC)
IronPort-SDR: z9WwQukdezHC5ijWhTFaaGbEzbQE7YDooX0dmP6GF2FecdCZ7AC9HPbM/7y9INfom9ngo5OKoY
 yuk/H4MDnFUw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 07:50:10 -0700
IronPort-SDR: VzH84+KQZq7CXKTIDmgxiynXFPjeNylKuZEZ0MxcrJExUU/LtY3hhnEWUcHoF6WWW52uikeRUm
 DS9Butp8bgEw==
X-IronPort-AV: E=Sophos;i="5.73,476,1583222400"; d="scan'208";a="445914746"
Received: from ogabay-mobl1.ger.corp.intel.com (HELO [10.214.202.54])
 ([10.214.202.54])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 07:50:09 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200605095858.28455-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <793dd101-48c9-7344-5291-8e7f5b65ca96@linux.intel.com>
Date: Fri, 5 Jun 2020 15:50:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200605095858.28455-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Add
 list_for_each_entry_safe_continue_reverse
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


On 05/06/2020 10:58, Chris Wilson wrote:
> One more list iterator variant, for when we want to unwind from inside
> one list iterator with the intention of restarting from the current
> entry as the new head of the list.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/i915_utils.h | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> index 03a73d2bd50d..6ebccdd12d4c 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -266,6 +266,12 @@ static inline int list_is_last_rcu(const struct list_head *list,
>   	return READ_ONCE(list->next) == head;
>   }
>   
> +#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
> +	for (pos = list_prev_entry(pos, member),			\
> +	     n = list_prev_entry(pos, member);				\
> +	     &pos->member != (head);					\
> +	     pos = n, n = list_prev_entry(n, member))
> +
>   /*
>    * Wait until the work is finally complete, even if it tries to postpone
>    * by requeueing itself. Note, that if the worker never cancels itself,
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
