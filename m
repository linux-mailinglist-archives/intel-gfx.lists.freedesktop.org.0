Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0D214A3B9
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 13:21:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CB926EB58;
	Mon, 27 Jan 2020 12:21:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71D736EB58
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 12:21:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 04:21:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,369,1574150400"; d="scan'208";a="401316065"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga005.jf.intel.com with ESMTP; 27 Jan 2020 04:21:43 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id ED87A5C1E08; Mon, 27 Jan 2020 14:20:57 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200126194618.2131078-1-chris@chris-wilson.co.uk>
References: <20200126193107.2097477-1-chris@chris-wilson.co.uk>
 <20200126194618.2131078-1-chris@chris-wilson.co.uk>
Date: Mon, 27 Jan 2020 14:20:57 +0200
Message-ID: <87o8upm6om.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Restore the kernel context after
 verifying the w/a
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

Chris Wilson <chris@chris-wilson.co.uk> writes:

> As a safety net, flush the engine verifications and restore the kernel
> context.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/971
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Acked-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_gt.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index da2b6e2ae692..88b6c904607c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -538,6 +538,10 @@ static int __engines_verify_workarounds(struct intel_gt *gt)
>  			err = -EIO;
>  	}
>  
> +	/* Flush and restore the kernel context for safety */
> +	if (intel_gt_wait_for_idle(gt, I915_GEM_IDLE_TIMEOUT) == -ETIME)
> +		err = -EIO;
> +
>  	return err;
>  }
>  
> -- 
> 2.25.0
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
