Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AKcOO9TZ/WnjjwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 14:40:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DDAD4F677E
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 14:40:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83FAB10F497;
	Fri,  8 May 2026 12:40:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AjS48Seo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A935A10F497
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 May 2026 12:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778244050; x=1809780050;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=2sJkROZAh6Hff/DaVQBve9t+vJREpqTKtF9lHNA9KHE=;
 b=AjS48SeogkR7/IgOQ0ars9rsXjoJNup8gQbDWf9fwxaHfGXg5W740juG
 ax9CfHIojBfFpbXeH455E9mX57HDrMDfvJJQ28RU9Qt9BuQy5XKp81Na8
 gcoR9CSnD5aAHqLFmbzsdBQFOgvBLyx3IbwJ8dkjFTDWegyY6/Gq0PoxP
 7FyDlSl6BR+c41qOOoPE1tlPdURVYrTgJhsiw2WONJya1iqQN4z7ITX5H
 kwFUqKDUHMqHrH+k9VkmtJgUDQUs09PFWzl3Javsl6vSOAFwLLX2K9Tfx
 CISOaBo2RX9RNSywKfMkOKReUmhkkRn9XvQ6bKUtockoJKcCZ8zTvbeCW w==;
X-CSE-ConnectionGUID: l76n9AUKQ/2Vj/UWuNxzGQ==
X-CSE-MsgGUID: 5fRSVwt0QPuZDerJcLd3oQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79317374"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="79317374"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 05:40:49 -0700
X-CSE-ConnectionGUID: atym7dInQ7ey/bmOeotN3w==
X-CSE-MsgGUID: r3K7ItInTs6RKGjTxwOUXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="260201936"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.67])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 05:40:47 -0700
Date: Fri, 8 May 2026 14:40:45 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org, andi.shyti@linux.intel.com,
 krzysztof.karas@intel.com, stable@vger.kernel.org
Subject: Re: [PATCH] drm/i915: skip __i915_request_skip() for already
 signaled requests
Message-ID: <af3ZzUW3dobsTjmC@ashyti-mobl2.lan>
References: <fe76921d35b6ae85aa651822726d0d9815aa5362.1776339012.git.sebastian.brzezinka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fe76921d35b6ae85aa651822726d0d9815aa5362.1776339012.git.sebastian.brzezinka@intel.com>
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
X-Rspamd-Queue-Id: 7DDAD4F677E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.brzezinka@intel.com,m:andi.shyti@linux.intel.com,m:krzysztof.karas@intel.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[andi.shyti@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url,ashyti-mobl2.lan:mid]
X-Rspamd-Action: no action

Hi Sebastian,

On Thu, Apr 16, 2026 at 01:31:18PM +0200, Sebastian Brzezinka wrote:
> After a GPU reset the HWSP is zeroed, so previously completed
> requests appear incomplete. If such a request is picked up during
> reset_rewind() and marked guilty, i915_request_set_error_once()
> returns early (fence already signaled), leaving fence.error without
> a fatal error code. The subsequent __i915_request_skip() then hits:
> ```
> GEM_BUG_ON(!fatal_error(rq->fence.error))
> ```
> 
> Fixes a kernel BUG observed on Sandy Bridge (Gen6) during
> heartbeat-triggered engine resets.
> ```
> kernel BUG at drivers/gpu/drm/i915/i915_request.c:556!
> RIP: __i915_request_skip+0x15e/0x1d0 [i915]
> ...
> __i915_request_reset+0x212/0xa70 [i915]
> reset_rewind+0xe4/0x280 [i915]
> intel_gt_reset+0x30d/0x5b0 [i915]
> heartbeat+0x516/0x530 [i915]
> ```
> 
> Guard __i915_request_skip() with i915_request_signaled(), if the
> fence is already signaled, the ring content is committed and there
> is nothing left to skip.
> 
> Cc: stable@vger.kernel.org
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/13729
> Fixes: 36e191f0644b ("drm/i915: Apply i915_request_skip() on submission")
> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

Merged to drm-intel-gt-next.

Thanks,
Andi
