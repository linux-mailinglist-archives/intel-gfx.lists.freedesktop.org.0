Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7167721D3AE
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2020 12:20:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B4786E1A3;
	Mon, 13 Jul 2020 10:20:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 566DA6E1A3
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jul 2020 10:20:03 +0000 (UTC)
IronPort-SDR: nC8UCU0aNsWj+h7DyCF0iRljH2qIso2aOYVE+mFxZJM6ekIJlDcZcG5wXufGySSHKiL6sU44Lo
 jrnM8+S5cOHQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9680"; a="136057511"
X-IronPort-AV: E=Sophos;i="5.75,347,1589266800"; d="scan'208";a="136057511"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2020 03:20:02 -0700
IronPort-SDR: fGiJdv3yL40M+/PwvDFsAUvrOcMF2Kl8LzIUm9x1KzwKZmfq4EgpN69kY66/dHeOZYZ/0yfnpL
 JxQfO7DF08hQ==
X-IronPort-AV: E=Sophos;i="5.75,347,1589266800"; d="scan'208";a="459242050"
Received: from thoebenx-mobl.ger.corp.intel.com (HELO [10.255.194.109])
 ([10.255.194.109])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2020 03:20:01 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200711203236.12330-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <4d6930b8-80d2-0e74-79fa-9e297beccf26@linux.intel.com>
Date: Mon, 13 Jul 2020 11:19:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200711203236.12330-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Ignore irq enabling on the
 virtual engines
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


On 11/07/2020 21:32, Chris Wilson wrote:
> We do not use the virtual engines for interrupts (they have physical
> components), but we do use them to decouple the fence signaling during
> submission. Currently, when we submit a completed request, we try to
> enable the interrupt handler for the virtual engine, but we never disarm
> it. A quick fix is then to mark the irq as enabled, and it will then
> remain enabled -- and this prevents us from waking the device and never
> letting it sleep again.
> 
> Fixes: f8db4d051b5e ("drm/i915: Initialise breadcrumb lists on the virtual engine")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: <stable@vger.kernel.org> # v5.5+
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index cd4262cc96e2..504e269bb166 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -5727,6 +5727,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
>   	intel_engine_init_active(&ve->base, ENGINE_VIRTUAL);
>   	intel_engine_init_breadcrumbs(&ve->base);
>   	intel_engine_init_execlists(&ve->base);
> +	ve->base.breadcrumbs.irq_armed = true;

Add a comment here saying this is a hack and why please. With that:

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

>   
>   	ve->base.cops = &virtual_context_ops;
>   	ve->base.request_alloc = execlists_request_alloc;
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
