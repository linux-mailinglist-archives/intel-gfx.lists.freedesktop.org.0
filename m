Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A40F51BAB60
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 19:33:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 816B289E38;
	Mon, 27 Apr 2020 17:33:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 246D689E38
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 17:33:40 +0000 (UTC)
IronPort-SDR: Qcqcs8Tg+NJh1B5+gwCO4K5pkq2iNxrMLzaH4iYjnjRiqzxfjbsSq0ImGRMN9aiyxIi+el2103
 9kP00IvQFfkQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2020 10:33:37 -0700
IronPort-SDR: JCwlUT3l1fmJr8ZL823wWuNQhoyQFM9p46C+bVQV+38vqx2RfKlVgEDdr1Hi5UuQTKG/VwOs5q
 QjlUp4CZfUuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,324,1583222400"; d="scan'208";a="367230931"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga001.fm.intel.com with ESMTP; 27 Apr 2020 10:33:36 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 99A685C1F9A; Mon, 27 Apr 2020 20:31:37 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200427170513.24019-2-chris@chris-wilson.co.uk>
References: <20200427170513.24019-1-chris@chris-wilson.co.uk>
 <20200427170513.24019-2-chris@chris-wilson.co.uk>
Date: Mon, 27 Apr 2020 20:31:37 +0300
Message-ID: <87368olts6.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/execlists: Verify we don't
 submit two identical CCIDs
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

> Check that we do not submit two contexts into ELSP with the same CCID
> [upper portion of the descriptor].
>
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/1793
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index d68a04f2a9d5..f8a8cd72f227 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1621,6 +1621,7 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
>  	struct i915_request * const *port, *rq;
>  	struct intel_context *ce = NULL;
>  	bool sentinel = false;
> +	u32 ccid = -1;
>  
>  	trace_ports(execlists, msg, execlists->pending);
>  
> @@ -1654,6 +1655,14 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
>  		}
>  		ce = rq->context;
>  
> +		if (ccid == upper_32_bits(ce->lrc_desc)) {
> +			GEM_TRACE_ERR("Dup ccid:%x context:%llx in pending[%zd]\n",
> +				      ccid, ce->timeline->fence_context,
> +				      port - execlists->pending);

The trace was lost, atleast from me, on the previous logs I looked
and thus the value. trace buffer overflowed? But if it
was reader error, then perhaps putting this explicitly in dmesg
is not necessary.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> +			return false;
> +		}
> +		ccid = upper_32_bits(ce->lrc_desc);
> +
>  		/*
>  		 * Sentinels are supposed to be lonely so they flush the
>  		 * current exection off the HW. Check that they are the
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
