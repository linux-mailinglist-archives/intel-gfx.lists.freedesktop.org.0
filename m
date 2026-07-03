Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7BdCGmLRR2rlfgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 17:12:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E02FC703BF1
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 17:12:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=De070to2;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09CA810F83A;
	Fri,  3 Jul 2026 15:12:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FD7810F83A
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2026 15:12:30 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 27EEC60051;
 Fri,  3 Jul 2026 15:12:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CAD041F000E9;
 Fri,  3 Jul 2026 15:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1783091548;
 bh=jr5IVxRHAwxWCAC4MfReiKZ7aaVtoxwOCFZ2WmFMnhM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=De070to2yUXdHkgQz8/QU2nGuuc6UBP4WDj7ADvSTfWhq7yIkTsAB1Iab7zXli0X/
 7uKBi/tjsmKJ1ztAkW0pAeWujSF0cNeFEdq9bxCGNSZ41KHF/XWbWK1bMXh+BXR3A0
 9zWOi98rh82VD33Vk9lF5LGoHqRhV3XPLVw616Wb3LhsZN2kYC5cx4UfXDXzrS4JN8
 8n0cgw9gUE2O6urVM0Wf8sreJOFFpxXZK2ObhpWFsY1kkLwufyflMy2kjlvrTsuSCz
 U1pu32u00QNSo9pE2d4izcv0kG2gMIdFNu5GnAG4GRI72Rrl5LAa7xl8dgJ8mfWGvd
 r2qggHAm8LamA==
Date: Fri, 3 Jul 2026 17:12:22 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org, alex.zuo@intel.com, 
 jani.nikula@linux.intel.com, andi.shyti@intel.com
Subject: Re: [PATCH v3] drm/i915/gt: Use poll_timeout_us in place of sliding
 sleep window
Message-ID: <akfLRFswIyWZgcby@zenone.zhora.eu>
References: <20260630152511.1401029-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260630152511.1401029-1-jonathan.cavitt@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jonathan.cavitt@intel.com,m:alex.zuo@intel.com,m:jani.nikula@linux.intel.com,m:andi.shyti@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[andi.shyti@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,zenone.zhora.eu:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E02FC703BF1

Hi Jonathan,

...

> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index 1c455d84bf9d..dc4a5486b42c 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -716,7 +716,6 @@ static int ct_send(struct intel_guc_ct *ct,
>  	struct intel_guc_ct_buffer *ctb = &ct->ctbs.send;
>  	struct ct_request request;
>  	unsigned long flags;
> -	unsigned int sleep_period_ms = 1;
>  	bool send_again;
>  	u32 fence;
>  	int err;
> @@ -736,22 +735,18 @@ static int ct_send(struct intel_guc_ct *ct,
>  	 * rare. Reserving the maximum size in the G2H credits as we don't know
>  	 * how big the response is going to be.
>  	 */
> -retry:
>  	spin_lock_irqsave(&ctb->lock, flags);
> -	if (unlikely(!h2g_has_room(ct, len + GUC_CTB_HDR_LEN) ||
> -		     !g2h_has_room(ct, GUC_CTB_HXG_MSG_MAX_LEN))) {
> +	err = poll_timeout_us_atomic(err = 0,
> +				     !h2g_has_room(ct, len + GUC_CTB_HDR_LEN) ||
> +				     !g2h_has_room(ct, GUC_CTB_HXG_MSG_MAX_LEN),
> +				     USEC_PER_MSEC, 600 * USEC_PER_SEC, false);

This changes the original flow quite a bit.

Before, the code checks whether there is room in the buffers. If
there is not, it drops the lock, checks for deadlock, sleeps, and
retries.

With this change, we keep polling for room until timeout, and
only then check for deadlock. On top of that, the polling is done
while holding the spinlock and with interrupts disabled.

I do not think this is a good tradeoff.

If we want to use poll_timeout_us_atomic(), I think the better
approach would be to move the current retry logic into a small
helper or callback replacing the condition inside
poll_timeout_use_atomic() that:

- takes the lock
- checks whether there is room
- drops the lock
- checks for deadlock
- returns the condition to the poll_timeout_timeout_us_atomic()

That would keep the old logic intact.

Andi
