Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5700974EBBB
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 12:31:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E72C10E35D;
	Tue, 11 Jul 2023 10:31:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C0E010E35D
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 10:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689071489; x=1720607489;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=zZ+AVxDhAF0jvf14a8aNPwjDcY4odYESoYn+hoFc99s=;
 b=UyPtLr6NX2E9PZ28sNc4gSeRxM/P5ha3jfx+7V+XPmAuqC6WiBVqBdSv
 Wtzp4O7wCoIyQi2RA65p9Q1K2IM7qsHTP3BdQDC24KvSeBimhF9Ml1XOo
 fTqW8xvTLsGIMKqhWL6HOzQCQKnNeo32S92wpUzwupUIlTpqv1kQNINnV
 kt/mu+HvxEKQuZuTJSlSRuzmtNcdU0zkxrilmFSR7sSNwM/FqnSLzAIxJ
 RodYzQHfwlqZzaf+cVK2VlAwEs1ZCb8RBKwg0XkcPnALbntooFMiEv/t/
 KQohH5K5zANvWQmWh+7o45u+UfUOjgSK0J8uHoW6aP7kln3SyU+UO8hX8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="364618949"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="364618949"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 03:31:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="724399185"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="724399185"
Received: from sbodin-mobl3.ger.corp.intel.com (HELO intel.com)
 ([10.252.53.13])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 03:31:25 -0700
Date: Tue, 11 Jul 2023 12:31:16 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>
Message-ID: <ZK0vdPlGUbHKa6jo@ashyti-mobl2.lan>
References: <20230704080727.2665-1-shawn.c.lee@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230704080727.2665-1-shawn.c.lee@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Refine mmio debug flow to avoid
 bad unlock balance detected.
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
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Lee,

I'm really sorry for the late reply, I had some holidays in
between.

On Tue, Jul 04, 2023 at 04:07:27PM +0800, Lee Shawn C wrote:
> Perform reboot stresss test on a kernel build with lockdebug flag enabled.
> Bad unlock balanace detected would happened sometimes. Below is the
> problematic scenario. If params.mmio_debug value was changed at step #4.
> And it would trigger this issue. Modify code flow that decide to
> enable/disable mmio debug before unclaimed_reg_debug() can avoid
> this symptom.
> 
>     1. GEN6_READ_HEADER is called with params.mmio_debug = 0
>     2. unclaimed_reg_debug(before = true) is called
>     3. unclaimed_reg_debug return without taking a lock
>        because params.mmio_debug == 0
>     4. other thread modifies params.mmio_debug to 1
>     5. GEN6_READ_FOOTER is called with params.mmio_debug != 0
>     6. unclaimed_reg_debug tries to assert non-taken lock (first WARN)
>     7. unclaimed_reg_debug tries to release non-taken lock (second WARN)
> 
> Closes:https://gitlab.freedesktop.org/drm/intel/-/issues/8749
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_uncore.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index 796ebfe6c550..9d665978cc43 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -1931,9 +1931,6 @@ unclaimed_reg_debug(struct intel_uncore *uncore,
>  		    const bool read,
>  		    const bool before)
>  {
> -	if (likely(!uncore->i915->params.mmio_debug) || !uncore->debug)
> -		return;
> -

this is a very good catch! I'm fine with the change from my side:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

But I'd like to hear from someone else, as well, Matt, Daniele?

Thank you,
Andi
