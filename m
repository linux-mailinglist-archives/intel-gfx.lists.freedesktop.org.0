Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 858F011BF45
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 22:33:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFB1B6EC02;
	Wed, 11 Dec 2019 21:33:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 427 seconds by postgrey-1.36 at gabe;
 Wed, 11 Dec 2019 21:33:10 UTC
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D3256EBF9
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 21:33:10 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 13:26:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,303,1571727600"; d="scan'208";a="296390397"
Received: from akuriata-mobl.ger.corp.intel.com (HELO intel.intel)
 ([10.252.21.24])
 by orsmga001.jf.intel.com with ESMTP; 11 Dec 2019 13:26:00 -0800
Date: Wed, 11 Dec 2019 23:25:59 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191211212559.GA1730@intel.intel>
References: <20191210180111.3958558-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210180111.3958558-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.12.2 (2019-09-21)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Disable manual rc6 for
 Braswell/Baytrail
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

> The initial investigated showed that while the PCU on Braswell/Baytrail
> controlled RC6 itself. setting the software RC6 request made no
> difference. Further testing reveals though that it causes a delay in the
> PCU on enabling RC6.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/763
> Fixes: 730eaeb52426 ("drm/i915/gt: Manual rc6 entry upon parking")
> Testcase: igt/perf/rc6-disable
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Andi Shyti <andi.shyti@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_rc6.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index 4dc82196b285..8ec2b7725141 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -612,6 +612,9 @@ void intel_rc6_park(struct intel_rc6 *rc6)
>  		return;
>  	}
>  
> +	if (!(rc6->ctl_enable & GEN6_RC_CTL_RC6_ENABLE))
> +		return;
> +

Huh? I didn't think this could be necessary! Nice catch!

Acked-by: Andi Shyti <andi.shyti@intel.com>

Thanks,
Andi

>  	/* Turn off the HW timers and go directly to rc6 */
>  	set(uncore, GEN6_RC_CONTROL, GEN6_RC_CTL_RC6_ENABLE);
>  	set(uncore, GEN6_RC_STATE, 0x4 << RC_SW_TARGET_STATE_SHIFT);
> -- 
> 2.24.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
