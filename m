Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zxQ8J2SpO2rfawgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 11:54:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4986BD181
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 11:54:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=bCpPfsf6;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96E9E10E05E;
	Wed, 24 Jun 2026 09:54:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5155210E05E
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2026 09:54:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782294881; x=1813830881;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=rDvpvaYZcP47kiFIWItv6ICZQ3SJPZjZ/WRORCigBfA=;
 b=bCpPfsf6af1bjavtq9QtY0YSo0licEUGf/wXNyFwtow53zcqrxfAPG0T
 kn3iKdHqyj6cOloN5iU3UazPHkvMd2ODYpZkZj9RYdvsO6tXV8xIPCC0H
 L1s95G85bwNu51CIaz7HGiKJ2BLN4BW+YStbLzWh8j3Z3yVBbHcY86191
 UOWzAKtO+Qk5VsSykqPtHp4rw4hiz63y5dYLFJheyc4XxNFfBnmPhjULF
 6JUo21ZF/3rM9gxJ2H63QKrarhrd0eLlqNNcgF+LS1pbqbaX5TsTAihnv
 +oo35Ubdexb4aI9I4FYpZQjNBxpA6mgqw8gCHjV6bDen1luiPW8xilRSf Q==;
X-CSE-ConnectionGUID: TT4s5qEiQguWUdzcuDp0Ug==
X-CSE-MsgGUID: GgLfgyZ6QlaISf4U/8NI8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="85608366"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="85608366"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 02:54:41 -0700
X-CSE-ConnectionGUID: Z+/zq73MREiA+JrOowrYvw==
X-CSE-MsgGUID: qbxhvP49TpawkKoCHjA9Fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="246887632"
Received: from abityuts-desk.ger.corp.intel.com (HELO [10.245.244.189])
 ([10.245.244.189])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 02:54:39 -0700
Message-ID: <58985183-67ad-4583-940b-3f96b7ba80a8@linux.intel.com>
Date: Wed, 24 Jun 2026 11:54:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Return NULL on error in active_instance
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>
Cc: Martin Hodo <martin.hodo@intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Simona Vetter <simona.vetter@ffwll.ch>, stable@vger.kernel.org
References: <20260624090940.74840-1-joonas.lahtinen@linux.intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <20260624090940.74840-1-joonas.lahtinen@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:joonas.lahtinen@linux.intel.com,m:martin.hodo@intel.com,m:thomas.hellstrom@linux.intel.com,m:simona.vetter@ffwll.ch,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[maarten.lankhorst@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
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
	FROM_NEQ_ENVFROM(0.00)[maarten.lankhorst@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,lists.freedesktop.org:from_smtp,linux.intel.com:mid,linux.intel.com:from_mime,ffwll.ch:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0D4986BD181

Hi,

On 6/24/26 11:09, Joonas Lahtinen wrote:
> Avoid returning &node->base when node is NULL due to OOM
> during GFP_ATOMIC allocation.
> 
> Discovered using AI-assisted static analysis confirmed by
> Intel Product Security.
> 
> Reported-by: Martin Hodo <martin.hodo@intel.com>
> Fixes: bfaae47db3c0 ("drm/i915: make lockdep slightly happier about execbuf.")
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Simona Vetter <simona.vetter@ffwll.ch>
> Cc: <stable@vger.kernel.org> # v5.13+
> Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> ---
Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

>  drivers/gpu/drm/i915/i915_active.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
> index 5cb7a72774a0..aa77def0bc0d 100644
> --- a/drivers/gpu/drm/i915/i915_active.c
> +++ b/drivers/gpu/drm/i915/i915_active.c
> @@ -318,7 +318,7 @@ active_instance(struct i915_active *ref, u64 idx)
>  	 */
>  	node = kmem_cache_alloc(slab_cache, GFP_ATOMIC);
>  	if (!node)
> -		goto out;
> +		goto err;
>  
>  	__i915_active_fence_init(&node->base, NULL, node_retire);
>  	node->ref = ref;
> @@ -332,6 +332,11 @@ active_instance(struct i915_active *ref, u64 idx)
>  	spin_unlock_irq(&ref->tree_lock);
>  
>  	return &node->base;
> +
> +err:
> +	spin_unlock_irq(&ref->tree_lock);
> +
> +	return NULL;
>  }
>  
>  void __i915_active_init(struct i915_active *ref,

