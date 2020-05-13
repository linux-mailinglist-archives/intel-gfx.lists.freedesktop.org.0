Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5441D0C58
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 11:34:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D9C76E9E5;
	Wed, 13 May 2020 09:34:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62DA66E9E5
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 09:34:55 +0000 (UTC)
IronPort-SDR: UlCDBxaeJP4iQUSH+LO2z9C15vcfFbm3hKJ8g8OE8tVOmYOHPgM+qCiBmr2V9PUEMVJLlud+a6
 pXYPCL2EnwRw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 02:34:54 -0700
IronPort-SDR: wpenSpsBWuRa0EyQgJBzM/8wRuRzFpCln2A5yRVka9lRJtLVIOjivstwodo3iZiFDIwxHEFYjH
 4oQd7K1oB34g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,387,1583222400"; d="scan'208";a="298311618"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga008.jf.intel.com with ESMTP; 13 May 2020 02:34:50 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id D269A5C1DF0; Wed, 13 May 2020 12:32:37 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200513085934.9859-1-chris@chris-wilson.co.uk>
References: <20200513085934.9859-1-chris@chris-wilson.co.uk>
Date: Wed, 13 May 2020 12:32:37 +0300
Message-ID: <87ftc42n9m.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Reset execlists registers
 before HWSP
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

> Upon gt resume, we first poison then sanitize the engine. However, our
> testing shows that gen9 will very rarely retain the poisoned value from
> the HWSP mappings of the execlists status registers. This suggests that
> it is reading back from the HWSP, so rejig the register reset.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Acked-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 19 +++++++++++++------
>  1 file changed, 13 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 3d0e0894c015..a7d644a21f14 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -3924,6 +3924,14 @@ static void reset_csb_pointers(struct intel_engine_cs *engine)
>  
>  	ring_set_paused(engine, 0);
>  
> +	/*
> +	 * Sometimes Icelake forgets to reset its pointers on a GPU reset.
> +	 * Bludgeon them with a mmio update to be sure.
> +	 */
> +	ENGINE_WRITE(engine, RING_CONTEXT_STATUS_PTR,
> +		     reset_value << 8 | reset_value);
> +	ENGINE_POSTING_READ(engine, RING_CONTEXT_STATUS_PTR);
> +
>  	/*
>  	 * After a reset, the HW starts writing into CSB entry [0]. We
>  	 * therefore have to set our HEAD pointer back one entry so that
> @@ -3937,16 +3945,15 @@ static void reset_csb_pointers(struct intel_engine_cs *engine)
>  	WRITE_ONCE(*execlists->csb_write, reset_value);
>  	wmb(); /* Make sure this is visible to HW (paranoia?) */
>  
> -	/*
> -	 * Sometimes Icelake forgets to reset its pointers on a GPU reset.
> -	 * Bludgeon them with a mmio update to be sure.
> -	 */
> +	invalidate_csb_entries(&execlists->csb_status[0],
> +			       &execlists->csb_status[reset_value]);
> +
> +	/* Once more for luck and our trusty paranoia */
>  	ENGINE_WRITE(engine, RING_CONTEXT_STATUS_PTR,
>  		     reset_value << 8 | reset_value);
>  	ENGINE_POSTING_READ(engine, RING_CONTEXT_STATUS_PTR);
>  
> -	invalidate_csb_entries(&execlists->csb_status[0],
> -			       &execlists->csb_status[reset_value]);
> +	GEM_BUG_ON(READ_ONCE(*execlists->csb_write) != reset_value);
>  }
>  
>  static void execlists_sanitize(struct intel_engine_cs *engine)
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
