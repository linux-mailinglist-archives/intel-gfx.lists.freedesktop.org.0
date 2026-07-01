Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HtcbCnwgRWrs7QoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 16:13:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D86CA6EE92B
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 16:13:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hEXwOwDz;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34B6510E3BC;
	Wed,  1 Jul 2026 14:13:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D8E510E3BC;
 Wed,  1 Jul 2026 14:13:12 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id 0CC1841A79;
 Wed,  1 Jul 2026 14:13:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6924F1F000E9;
 Wed,  1 Jul 2026 14:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1782915191;
 bh=RfU7bZHw588z2tR//rNfbsQEpkucqzOcm8xzNYEhTQQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=hEXwOwDzt6MuZoLzrdB/v9H/UPJKnYMciWL4Gu/xPMgRXJmRuxx3+BCQS01nXn9Yx
 iTEC8gZU7DPOux4ZCq4pzSOo9FsgJ3gN2ptFiRMMRrc8QiD5tfSiKrtlijsJzzblx5
 dbNmYSzj0lwH+2NgzNmnF7Yi5FEOMHC42dF+a2bDm6iG0dTlAsEMOdkJjR3ghgKQbr
 ZqEMf/bnn7hshNKglnWx7HGQdnjZpzn7ioQt/6//viCffyEQsWy8SlXQg8c9DQ2IO1
 jFsc5rQ9E0+Hl6JaEXfXnutlcoEgV5W4z5PAyIULZ+lrq17iTuChF/LzeScSIEwPu7
 rTZ929i1AXumA==
Date: Wed, 1 Jul 2026 16:13:04 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>, 
 Direct Rendering Infrastructure - Development
 <dri-devel@lists.freedesktop.org>, Martin Hodo <martin.hodo@intel.com>, 
 Matthew Brost <matthew.brost@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, stable@vger.kernel.org
Subject: Re: [PATCH] drm/i915/gt: Fix NULL deref on sched_engine alloc failure
Message-ID: <akUcJk-H3BiTVP0L@zenone.zhora.eu>
References: <20260701114513.221254-1-joonas.lahtinen@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260701114513.221254-1-joonas.lahtinen@linux.intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,ursulin.net:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D86CA6EE92B

Hi Joonas,

On Wed, Jul 01, 2026 at 02:45:13PM +0300, Joonas Lahtinen wrote:
> Avoid using intel_context_put() before intel_context_init() in
> execlists_create_virtual() as the kref_put() inside would lead
> to NULL deref on the IOCTL path when sched_engine allocation fails.
> 
> Discovered using AI-assisted static analysis confirmed by
> Intel Product Security.
> 
> Reported-by: Martin Hodo <martin.hodo@intel.com>
> Fixes: 3e28d37146db ("drm/i915: Move priolist to new i915_sched_engine object")
> Cc: Matthew Brost <matthew.brost@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Tvrtko Ursulin <tursulin@ursulin.net>
> Cc: <stable@vger.kernel.org> # v5.15+
> Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

looks correct!

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
