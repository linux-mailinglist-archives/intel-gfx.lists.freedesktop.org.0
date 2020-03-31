Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B03199704
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 15:10:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC7D96E326;
	Tue, 31 Mar 2020 13:10:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 089626E326
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 13:10:34 +0000 (UTC)
IronPort-SDR: zd1Ro/7gXsmaiGVR4c/sIkMqIf9RQtfl5E4ntTjTvD07JxdOH/8yngWef9N6m7MmqAbgCXMsCK
 FWzdUNfarflw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 06:10:33 -0700
IronPort-SDR: hTWfFcqZ9rVWa7p/a+nRnrYCx+5PV2RwvlUTU1xzk9Jpi75s92H9/l1fCYIixiQmQ//e9p/W9q
 /LASDfg0LjAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,327,1580803200"; d="scan'208";a="422290534"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga005.jf.intel.com with ESMTP; 31 Mar 2020 06:10:32 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 9CBD65C0D7B; Tue, 31 Mar 2020 16:08:54 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200331091459.29179-2-chris@chris-wilson.co.uk>
References: <20200331091459.29179-1-chris@chris-wilson.co.uk>
 <20200331091459.29179-2-chris@chris-wilson.co.uk>
Date: Tue, 31 Mar 2020 16:08:54 +0300
Message-ID: <87ftdopt7d.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/execlists: Pause CS flow
 before reset
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Since we may be attempting to reset an active engine, we try to freeze
> it in place before resetting -- to be on the safe side. We can go one
> step further if we are using the CS flow semaphore to prevent the
> context switching into the next.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 9fff4e02cee6..9e18c0896a83 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -3669,6 +3669,7 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
>  	 *
>  	 * FIXME: Wa for more modern gens needs to be validated
>  	 */
> +	ring_set_paused(engine, 1);
>  	intel_engine_stop_cs(engine);
>  }
>  
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
