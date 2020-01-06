Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A481313E7
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 15:42:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F4FF6E356;
	Mon,  6 Jan 2020 14:42:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D5906E356
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jan 2020 14:42:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jan 2020 06:42:11 -0800
X-IronPort-AV: E=Sophos;i="5.69,402,1571727600"; d="scan'208";a="222266635"
Received: from kumarjai-mobl1.ger.corp.intel.com (HELO [10.251.83.12])
 ([10.251.83.12])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 06 Jan 2020 06:42:10 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200106123921.2543886-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <7af25d92-8320-88d5-d705-b42347e8204f@linux.intel.com>
Date: Mon, 6 Jan 2020 14:42:08 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200106123921.2543886-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Mark up virtual engine
 uabi_instance
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
Cc: stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 06/01/2020 12:39, Chris Wilson wrote:
> Be sure to initialise the uabi_instance on the virtual engine to the
> special invalid value, just in case we ever peek at it from the uAPI.
> 
> Reported-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Fixes: 750e76b4f9f6 ("drm/i915/gt: Move the [class][inst] lookup for engines onto the GT")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: <stable@vger.kernel.org> # v5.4+
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 170b5a0139a3..f07d93514a7c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -4601,9 +4601,11 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
>   	ve->base.gt = siblings[0]->gt;
>   	ve->base.uncore = siblings[0]->uncore;
>   	ve->base.id = -1;
> +
>   	ve->base.class = OTHER_CLASS;
>   	ve->base.uabi_class = I915_ENGINE_CLASS_INVALID;
>   	ve->base.instance = I915_ENGINE_CLASS_INVALID_VIRTUAL;
> +	ve->base.uabi_instance = I915_ENGINE_CLASS_INVALID_VIRTUAL;
>   
>   	/*
>   	 * The decision on whether to submit a request using semaphores
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
