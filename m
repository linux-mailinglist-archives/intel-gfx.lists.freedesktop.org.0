Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KOMUIXaNzWlfewYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 23:26:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4EDC3809A1
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 23:26:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6042D10ECCA;
	Wed,  1 Apr 2026 21:26:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="BMuIL/QR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37A2710ECCA
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2026 21:26:11 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 11D26444AD;
 Wed,  1 Apr 2026 21:26:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FDD2C4CEF7;
 Wed,  1 Apr 2026 21:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1775078770;
 bh=qSSFaZBfLTIqOw+aXnDW/au5YBKlCp2ysGicVT2cvpE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BMuIL/QRK0o7CZ88Dw/NCfPBiUgEyC9utXqkfiZVNW1B/cbPl1Nmc+1wcVF4Qc0aR
 5GdzaOU2GgNs0SLfoW/IdbiYO7TohNmSz5zLGjUe55TmWV3gTwqgnxMCkQ+Ku1dUh4
 5DrD9xwA1oCvu8Mfmy1e4gk3OkOKJVIENZ0AeLM2LJykXu3qCkHi95BdmmbGVzmi63
 VcU+eIzKr5s7iflU9bs3MuzH3W9n3HwEn/rniqPbMm9ZxBHFHG9VNXjAZjNMtZOYi7
 LIfScBCCmQ51TiJLF9tf99q0UwvKUVyu7Uz4zP8vQVJsdj59IPjdQ0jm9LlqoybiBp
 LNq3RpPXXHqhg==
Date: Wed, 1 Apr 2026 23:26:07 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org, andi.shyti@linux.intel.com, 
 krzysztof.karas@intel.com
Subject: Re: [PATCH] drm/i915/gt: fix refcount underflow in
 intel_engine_park_heartbeat
Message-ID: <ac2KBMAJHRkV4d7s@zenone.zhora.eu>
References: <d4c1c14255688dd07cc8044973c4f032a8d1559e.1775038106.git.sebastian.brzezinka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d4c1c14255688dd07cc8044973c4f032a8d1559e.1775038106.git.sebastian.brzezinka@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.brzezinka@intel.com,m:andi.shyti@linux.intel.com,m:krzysztof.karas@intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[andi.shyti@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: E4EDC3809A1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Sebastian,

...

> Fix this by replacing the non-atomic pointer read + separate clear with
> xchg() in both racing paths. xchg() is a single indivisible hardware
> instruction that atomically reads the old pointer and writes NULL. This
> guarantees only one of the two concurrent callers obtains the non-NULL
> pointer and performs the put, the other gets NULL and skips it.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/15880
> Fixes: 058179e72e09 ("drm/i915/gt: Replace hangcheck by heartbeats")

Cc: <stable@vger.kernel.org> # v5.5+

> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> ---
>  .../gpu/drm/i915/gt/intel_engine_heartbeat.c  | 26 +++++++++++++------
>  1 file changed, 18 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> index b279878dca29..a3830627ef81 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> @@ -148,10 +148,12 @@ static void heartbeat(struct work_struct *wrk)
>  	/* Just in case everything has gone horribly wrong, give it a kick */
>  	intel_engine_flush_submission(engine);
>  
> -	rq = engine->heartbeat.systole;
> -	if (rq && i915_request_completed(rq)) {
> -		i915_request_put(rq);
> -		engine->heartbeat.systole = NULL;
> +	rq = xchg(&engine->heartbeat.systole, NULL);
> +	if (rq) {
> +		if (i915_request_completed(rq))
> +			i915_request_put(rq);
> +		else
> +			engine->heartbeat.systole = rq;

Well spotted, Sebastian!

>  	}
>  
>  	if (!intel_engine_pm_get_if_awake(engine))
> @@ -232,8 +234,11 @@ static void heartbeat(struct work_struct *wrk)
>  unlock:
>  	mutex_unlock(&ce->timeline->mutex);
>  out:
> -	if (!engine->i915->params.enable_hangcheck || !next_heartbeat(engine))
> -		i915_request_put(fetch_and_zero(&engine->heartbeat.systole));
> +	if (!engine->i915->params.enable_hangcheck || !next_heartbeat(engine)) {
> +		rq = xchg(&engine->heartbeat.systole, NULL);
> +		if (rq)
> +			i915_request_put(rq);
> +	}
>  	intel_engine_pm_put(engine);
>  }
>  
> @@ -247,8 +252,13 @@ void intel_engine_unpark_heartbeat(struct intel_engine_cs *engine)
>  
>  void intel_engine_park_heartbeat(struct intel_engine_cs *engine)
>  {
> -	if (cancel_delayed_work(&engine->heartbeat.work))
> -		i915_request_put(fetch_and_zero(&engine->heartbeat.systole));
> +	struct i915_request *rq;

nit: this should go inside the if statement.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Nice patch, Sebastian. Two very little nitpicks that I can take
care of before merging.

Thank you,
Andi

> +	if (cancel_delayed_work(&engine->heartbeat.work)) {
> +		rq = xchg(&engine->heartbeat.systole, NULL);
> +		if (rq)
> +			i915_request_put(rq);
> +	}
>  }
>  
>  void intel_gt_unpark_heartbeats(struct intel_gt *gt)
> -- 
> 2.52.0
> 
