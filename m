Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8Gs2J+L8+WleFwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 16:21:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7394B4CF4A7
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 16:21:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0406410EAD5;
	Tue,  5 May 2026 14:21:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aJywbwxN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94ED110E9D4;
 Tue,  5 May 2026 14:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777990877; x=1809526877;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=wnA2GB9nP8IP98fTklv77efne0MeL9i6WbrGoo3QIb8=;
 b=aJywbwxNvOlioNYOjLUEdhxWadanK58LAelB6ArNuTBWE0v5VpfXhCIg
 3hNMTFj5j84LegT86g44M86i9AxeUWIx8Tl/tVbfrY2yChAq/E9q30IV1
 +738mQzoy/VRdiZx8GQu1Rdx4HracYi8PEtDslgvZtD8jnTV1cpuTQWnW
 5/p+jrzTEBu+btRKG6JTKTFBdtf85qMrMoIpFPwrEtmY2k3JDOXUdNR2m
 JP6ORVPU/cY9GzpfEW4yUe1Oqg4/X6Y0NN36hDeiQXeozLLPj74tU8ddx
 RqCfaMF21KuzSfQ9GdoyyAWn2hWrxflgSU+g67OQP/lMkqnXuJWIwUowS w==;
X-CSE-ConnectionGUID: Wf6CYY8CRt2ECFwMJHaF4w==
X-CSE-MsgGUID: RuWWBkn4RVeHLPTW4vhhSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11777"; a="89167371"
X-IronPort-AV: E=Sophos;i="6.23,217,1770624000"; d="scan'208";a="89167371"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 07:21:17 -0700
X-CSE-ConnectionGUID: rWBFTBIQRFSYGx7kSHKDqg==
X-CSE-MsgGUID: 8xQeJEnRRiyyURmmUMCr6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,217,1770624000"; d="scan'208";a="235907361"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.55])
 by orviesa009-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 May 2026 07:21:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Julian Braha <julianbraha@gmail.com>, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, tursulin@ursulin.net, airlied@gmail.com,
 simona@ffwll.ch
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Julian Braha <julianbraha@gmail.com>
Subject: Re: [PATCH] drm/i915: replace select with dependency for visible
 DEBUG_OBJECTS
In-Reply-To: <20260502191932.4491-1-julianbraha@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260502191932.4491-1-julianbraha@gmail.com>
Date: Tue, 05 May 2026 17:21:12 +0300
Message-ID: <9bf23cfc4489e45fa57e0d5cfd50b02aa811e6c5@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
X-Rspamd-Queue-Id: 7394B4CF4A7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,linux.intel.com,intel.com,ursulin.net,ffwll.ch];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

On Sat, 02 May 2026, Julian Braha <julianbraha@gmail.com> wrote:
> DRM_I915_SW_FENCE_DEBUG_OBJECTS currently selects DEBUG_OBJECTS even though
> DEBUG_OBJECTS is visible to users. Other config options use 'depends on'
> for DEBUG_OBJECTS, so let's do the same here.
>
> This select-visible Kconfig misusage was detected by Kconfirm, a static
> analysis tool for Kconfig.
>
> Signed-off-by: Julian Braha <julianbraha@gmail.com>

Thanks for the patch, pushed to drm-intel-next.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/Kconfig.debug | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
> index 52a3a59b4ba2..028a2c97361d 100644
> --- a/drivers/gpu/drm/i915/Kconfig.debug
> +++ b/drivers/gpu/drm/i915/Kconfig.debug
> @@ -153,7 +153,7 @@ config DRM_I915_TRACE_GTT
>  config DRM_I915_SW_FENCE_DEBUG_OBJECTS
>  	bool "Enable additional driver debugging for fence objects"
>  	depends on DRM_I915
> -	select DEBUG_OBJECTS
> +	depends on DEBUG_OBJECTS
>  	default n
>  	help
>  	  Choose this option to turn on extra driver debugging that may affect

-- 
Jani Nikula, Intel
