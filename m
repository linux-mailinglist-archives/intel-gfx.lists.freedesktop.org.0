Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B1F2FEC7D
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 14:59:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEBD36E8EB;
	Thu, 21 Jan 2021 13:59:17 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76C336E8EB
 for <Intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 13:59:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23660948-1500050 for multiple; Thu, 21 Jan 2021 13:59:09 +0000
MIME-Version: 1.0
In-Reply-To: <20210121135430.676447-1-tvrtko.ursulin@linux.intel.com>
References: <20210121135430.676447-1-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Thu, 21 Jan 2021 13:59:08 +0000
Message-ID: <161123754874.3166.3900957572699515626@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Decrease number of subplatform
 bits
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2021-01-21 13:54:30)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Commit 6ce1c33d6c36 ("drm/i915: Kill INTEL_SUBPLATFORM_AML") removed the
> only platform which used bit 2 so could also decrease the
> INTEL_SUBPLATFORM_BITS definition.
> 
> This is not a fixes material but still lets make it precise.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> References: 6ce1c33d6c36 ("drm/i915: Kill INTEL_SUBPLATFORM_AML")
> ---
>  drivers/gpu/drm/i915/intel_device_info.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 79dab5a6f272..1d39a0f706d1 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -93,7 +93,7 @@ enum intel_platform {
>   * it is fine for the same bit to be used on multiple parent platforms.
>   */
>  
> -#define INTEL_SUBPLATFORM_BITS (3)
> +#define INTEL_SUBPLATFORM_BITS (2)

No define SUBPLATFORM use that bit indeed. Our check that we don't
accidentally use that bit is however:

        GEM_BUG_ON(mask & ~INTEL_SUBPLATFORM_BITS);

accidentally treating 3 as the right mask. 

I don't think you can avoid the SUBPLATFORM_MASK bikeshedding :)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
