Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A17918B98F
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 15:40:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DDBF6EA1B;
	Thu, 19 Mar 2020 14:40:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3A166EA1B
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 14:40:04 +0000 (UTC)
IronPort-SDR: xibh8QKfeNnIe6sGX2OEJUG5Lf4+epYsr5GDSM5r3+9pHcxCzJPS0Y06C8UBD29iVbrwFYpvY1
 USYJS9G6uTCQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 07:40:04 -0700
IronPort-SDR: DOK8wE/ybfO2Ys+0AfeZJBbP7hpv74YhzBqLEyEImUNdYYCoMihw6T6wpSYuDzWX+PXteIRpEN
 PVyYCR0+EwPg==
X-IronPort-AV: E=Sophos;i="5.70,571,1574150400"; d="scan'208";a="245177631"
Received: from amgotede-mobl.ger.corp.intel.com (HELO [10.254.158.140])
 ([10.254.158.140])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 07:40:03 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200319091943.7815-1-chris@chris-wilson.co.uk>
 <20200319091943.7815-6-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b5220941-797b-ade1-d6b6-78afe8c71601@linux.intel.com>
Date: Thu, 19 Mar 2020 14:40:00 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200319091943.7815-6-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/gt: Cancel a hung context if
 already closed
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


On 19/03/2020 09:19, Chris Wilson wrote:
> Use the restored ability to check if a context is closed to decide
> whether or not to immediately ban the context from further execution
> after a hang.
> 
> Fixes: be90e344836a ("drm/i915/gt: Cancel banned contexts after GT reset")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_reset.c | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 9a15bdf31c7f..003f26b42998 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -88,6 +88,11 @@ static bool mark_guilty(struct i915_request *rq)
>   	bool banned;
>   	int i;
>   
> +	if (intel_context_is_closed(rq->context)) {
> +		intel_context_set_banned(rq->context);
> +		return true;
> +	}
> +
>   	rcu_read_lock();
>   	ctx = rcu_dereference(rq->context->gem_context);
>   	if (ctx && !kref_get_unless_zero(&ctx->ref))
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
