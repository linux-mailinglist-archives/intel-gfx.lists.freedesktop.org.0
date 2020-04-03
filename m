Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB31019DA0E
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 17:26:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A747D6EC09;
	Fri,  3 Apr 2020 15:25:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DD206EC09
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 15:25:58 +0000 (UTC)
IronPort-SDR: zsLQby888FQP0HXbvaB1DvbqhnGj+EUhjSW6kMLQszliWxRtwv+MDwbPUpmiuF9DIkYzYNfYZq
 V/Mjz1rgKaPg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2020 08:25:57 -0700
IronPort-SDR: yKj88O3fqf4DAzmDcgATyFIS7iu84Myc93h7gHXatWTAwWu2DcSy6umzPlVYRRn4ZBNEFfy1o7
 Y6D0xYvxsuGQ==
X-IronPort-AV: E=Sophos;i="5.72,340,1580803200"; d="scan'208";a="423560861"
Received: from melentuc-mobl1.ger.corp.intel.com (HELO [10.249.90.224])
 ([10.249.90.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2020 08:25:56 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200403073657.13427-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8eb7307b-57e7-1082-e92c-49105ce1d10f@linux.intel.com>
Date: Fri, 3 Apr 2020 16:25:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200403073657.13427-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Avoid setting timer->expires to 0
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


On 03/04/2020 08:36, Chris Wilson wrote:
> We use timer->expires == 0 to detect if a timer had been cancelled, but
> it's a valid expiration we could set. Just skip using 0 and set the
> expiry for the next jiffie.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/i915_utils.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_utils.c b/drivers/gpu/drm/i915/i915_utils.c
> index 029854ae65fc..9769d278e800 100644
> --- a/drivers/gpu/drm/i915/i915_utils.c
> +++ b/drivers/gpu/drm/i915/i915_utils.c
> @@ -101,5 +101,5 @@ void set_timer_ms(struct timer_list *t, unsigned long timeout)
>   	 */
>   	barrier();
>   
> -	mod_timer(t, jiffies + timeout);
> +	mod_timer(t, jiffies + timeout ?: 1);
>   }
> 

"Glitch in the matrix" type workaround for timeslicing and preemption 
timeout, at the moment at least. No big deal given the frequency of the 
event and low accuracy requirements.

But since it is a generic helper I think we need a comment pointing that 
out. With that:

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
