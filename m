Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3FA4211FFB
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 11:33:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 061E36E138;
	Thu,  2 Jul 2020 09:33:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3D0F6E138
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 09:33:49 +0000 (UTC)
IronPort-SDR: c5kVkXPJ92bpgSeMYcxzoaaXij/QeMR1QBkCYCQKyF5fLIo7Z4NASnwUTp6hwjmrSfD43z0Jq2
 RWzO40L+026g==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="126460640"
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="126460640"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 02:33:49 -0700
IronPort-SDR: lULzvhTRIaUgHQswYRFXHYTWanCe/wUeq4iyyt6k5NByP/wLYJtm3mvZHJsFxtlKUX6Hxsq/Bj
 sk4vCLBPKGjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="322044071"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga007.jf.intel.com with ESMTP; 02 Jul 2020 02:33:48 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 3DADC5C0D84; Thu,  2 Jul 2020 12:33:36 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200701084053.6086-2-chris@chris-wilson.co.uk>
References: <20200701084053.6086-1-chris@chris-wilson.co.uk>
 <20200701084053.6086-2-chris@chris-wilson.co.uk>
Date: Thu, 02 Jul 2020 12:33:36 +0300
Message-ID: <87ftaa45xr.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/33] drm/i915/gt: Move the heartbeat into
 the highprio system wq
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

> As we ensure that the heartbeat is reasonably fast (and should not
> block), move the heartbeat work into the system_highprio_wq to avoid
> having this essential task be blocked behind other slow work, such as
> our own retire_work_handler.
>
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/2119
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> index 1663ab5c68a5..3699fa8a79e8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> @@ -32,7 +32,7 @@ static bool next_heartbeat(struct intel_engine_cs *engine)
>  	delay = msecs_to_jiffies_timeout(delay);
>  	if (delay >= HZ)
>  		delay = round_jiffies_up_relative(delay);
> -	mod_delayed_work(system_wq, &engine->heartbeat.work, delay);
> +	mod_delayed_work(system_highpri_wq, &engine->heartbeat.work, delay);
>  
>  	return true;
>  }
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
