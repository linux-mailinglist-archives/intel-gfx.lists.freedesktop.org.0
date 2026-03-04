Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cKLALEVHqGlOrwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 15:52:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37891201F58
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 15:52:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7949510EA29;
	Wed,  4 Mar 2026 14:52:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AAb+oN43";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CCA710EA29
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2026 14:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772635970; x=1804171970;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=JFHrHcJAKhwG5I94UdW0T9+XmMEyqcoL07+snzsLNIg=;
 b=AAb+oN43d4SPye2I8jF69Y2pfaClsv+slm+DbDOqB3CmlKNYxRFD51PO
 ktzPWTmJ+G3gQMOip9XbhXAP8XYaHT646uYaSFo0xxXQDDxmPLI+I3Gyn
 weYpJr04smSzCBoqRkXoZGPiIbFm7cld5TNp96Fq0u40uE2GS0oUCrz+w
 KdJoQ+htFS99g8pbGkBELY1DVY15o16yAfbtsDIDLNJeaCo6zh+mD3Y1y
 s8nu5hT4sjcVbBsaJSEzehqNHmZ7fu0iwmKFGhQ6vJaYGHkseelGMX03b
 Yods49BsMYnsNAtLdnK3n/JDquShltsVYLCxm3suqI0tGSjGMzwvSgFcQ A==;
X-CSE-ConnectionGUID: deoyo/AHTIm+3Gk0C+6mLg==
X-CSE-MsgGUID: oPQI8bTqTG2As6n/nLySxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="85040825"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="85040825"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 06:52:49 -0800
X-CSE-ConnectionGUID: rH8GxfStQsSAxyr5EDijcg==
X-CSE-MsgGUID: uE95lT2KTXWJ0EQ5U6s4+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="222857372"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.249])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 06:52:47 -0800
Date: Wed, 4 Mar 2026 15:52:43 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org, andi.shyti@linux.intel.com,
 Christian =?iso-8859-15?Q?K=F6nig?= <christian.koenig@amd.com>
Subject: Re: [PATCH v2] drm/ttm: fix NULL deref in ttm_bo_flush_all_fences()
 after fence ops detach
Message-ID: <aahHOyaELQJOQbVK@ashyti-mobl2.lan>
References: <1c2f34351b6fb70ab576aeac07987542a4d480b2.1772540459.git.sebastian.brzezinka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1c2f34351b6fb70ab576aeac07987542a4d480b2.1772540459.git.sebastian.brzezinka@intel.com>
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
X-Rspamd-Queue-Id: 37891201F58
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.brzezinka@intel.com,m:andi.shyti@linux.intel.com,m:christian.koenig@amd.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[andi.shyti@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,amd.com:email]
X-Rspamd-Action: no action

Hi Sebastian,

On Tue, Mar 03, 2026 at 01:26:42PM +0100, Sebastian Brzezinka wrote:
> Since commit 541c8f2468b9 ("dma-buf: detach fence ops on signal v3"),
> fence->ops may be set to NULL via RCU when a fence signals and has no
> release/wait ops. ttm_bo_flush_all_fences() was not updated to handle
> this and directly dereferences fence->ops->signaled, leading to a NULL
> pointer dereference crash:
> 
> ```
> BUG: kernel NULL pointer dereference, address: 0000000000000018
> RIP: 0010:ttm_bo_release+0x1bc/0x330 [ttm]
> ```
> 
> Since dma_fence_enable_sw_signaling() already handles the signaled case
> internally (it checks DMA_FENCE_FLAG_SIGNALED_BIT before doing anything),
> the ops->signaled pre-check is redundant. Simply remove it and call
> dma_fence_enable_sw_signaling() unconditionally for each fence.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759
> Fixes: 541c8f2468b9 ("dma-buf: detach fence ops on signal v3")
> Cc: Christian König <christian.koenig@amd.com>
> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
