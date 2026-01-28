Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gMbWHtQ/emmr4wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 17:56:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC652A661A
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 17:56:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33C4210E12C;
	Wed, 28 Jan 2026 16:56:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N85VWZYC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCE3510E12C
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jan 2026 16:56:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769619409; x=1801155409;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=OJ3DHRokHGAcrhvMuXmcDAZpACOL/+JnPcbI0C0bVKk=;
 b=N85VWZYCXbkv9s5Z7Q6eN2TU/Q12F4YJ1jVVtNUrvsO7hz3/vEs/Gdcn
 lZVtPehiGNMJ+PhVAiIYhAdQfOef84bMMmNm8EcHWiphowIcb6FTV4Smi
 P/HKmTWmw082xmZaL5gnocGPAkkT37fg92GqBLXpNi5rtIK3HyL8uR9Ha
 N57rYsOu2Zo6BIvU0Uen41nHDeRPU+yFoIxiLDmD8pqMmjxXj4HkmcHUQ
 Zdn5o3nfOWq8V+rc/YONlruu9qhmCT2nph6zwyQvWta30PkW2AGiIs5o9
 A8E4KUGDqO2uCk69v7jIeD7shWFTdBkgAX/VyDH4ptzXWlzzAAVdWxmuT g==;
X-CSE-ConnectionGUID: 5ohKC5ccRaGhnX5Ye/S4wQ==
X-CSE-MsgGUID: BFRauc7ZTriB/WlK8RIFAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="88413919"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="88413919"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 08:56:28 -0800
X-CSE-ConnectionGUID: B6TKFT0LT7CpufsQ4OVIrQ==
X-CSE-MsgGUID: Y1TlePqWSZ2/Ajt2j9DkhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="207927265"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.221])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 08:56:26 -0800
Date: Wed, 28 Jan 2026 17:56:23 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: Re: [PATCH] drm/i915: Add vgpu.entry list initialization
Message-ID: <aXo_t0nqu-TMow4-@ashyti-mobl2.lan>
References: <7updbd6x7fmw4g3tdf3r27xblf4www7xxsxyrncc35jokiuxvr@rflx6oxm5au5>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7updbd6x7fmw4g3tdf3r27xblf4www7xxsxyrncc35jokiuxvr@rflx6oxm5au5>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.karas@intel.com,m:andi.shyti@linux.intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,m:janusz.krzysztofik@linux.intel.com,s:lists@lfdr.de];
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
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,ashyti-mobl2.lan:mid]
X-Rspamd-Queue-Id: DC652A661A
X-Rspamd-Action: no action

Hi Krzysztof,

nice catch, but the fix looks a bit messy to me.

...

> diff --git a/drivers/gpu/drm/i915/i915_vgpu.c b/drivers/gpu/drm/i915/i915_vgpu.c
> index d29a06ea51a5..362282b20f7b 100644
> --- a/drivers/gpu/drm/i915/i915_vgpu.c
> +++ b/drivers/gpu/drm/i915/i915_vgpu.c
> @@ -67,6 +67,7 @@ void intel_vgpu_detect(struct drm_i915_private *dev_priv)
>  	u64 magic;
>  	u16 version_major;
>  	void __iomem *shared_area;
> +	INIT_LIST_HEAD(&dev_priv->vgpu.entry);

Despite what Sebastian is suggesting, I think the place is right
(or almost right).

But I wouldn't fix it this way. Initializing virtual GPUs is not
mandatory, indeed it fails only during delete that is the only
function that doesn't check whether the list is initialized.

I would rather check whether the list is initialized before
trying to delete it, with a nice comment saying that the list
might not have been initialized and we want to avoid accessing an
invalid list.

Andi

>  	BUILD_BUG_ON(sizeof(struct vgt_if) != VGT_PVINFO_SIZE);
>  
> -- 
> 2.43.0
> 
> 
> -- 
> Best Regards,
> Krzysztof
