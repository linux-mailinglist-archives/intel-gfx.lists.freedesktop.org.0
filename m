Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBouFWcw62lfJwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 10:57:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6D445BC63
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 10:57:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 005F510F446;
	Fri, 24 Apr 2026 08:57:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XNNKVDGH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 537E910F463;
 Fri, 24 Apr 2026 08:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777021027; x=1808557027;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=GGFvvuwIcBiTfwa4Du/bMaSTFme+BND1aQqEekEyk5A=;
 b=XNNKVDGHMWtMAgJWHHQUvLog9tMhHvvTEpTslNrYwtJmgoPJg0HWv6Tq
 KDx2DiLRnkakQP/uD+CN0/kqjuv9TG4ZsIPF2qsqM9ClLLKBqdF5YLpf7
 DXzd8CGsCM1BR97o6rUF1pLZcOPvSNlkCyMJoRMwfjvhlh7UWUulz2Mzi
 CQOUequ1de/Kv6DbqMfkHa4P2UQPJTbxubfN1L42ffMcsZ5O2Z7x5gNN0
 obYoPWEeP/VZco46lH4wYtMmqCWSzTZQkfcrlQALkem7n5ywIjjNzu1aF
 m2qPqGYbtNFCtfLVa5pQL1QiWucUBtVJYhrFHrza+jBYdyVEZ/LWPV6rr Q==;
X-CSE-ConnectionGUID: cr/NccPXS3qsm6G14LckwQ==
X-CSE-MsgGUID: gUghEI4HR6SQV0rdZ5AzbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="77985278"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="77985278"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 01:57:07 -0700
X-CSE-ConnectionGUID: UDKO8ZwoTgyVJ5zSv1HNqQ==
X-CSE-MsgGUID: mcJdQjGFR3WztYLRmS64fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="228335922"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.89])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 01:57:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Desnes Nunes <desnesn@redhat.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Desnes
 Nunes <desnesn@redhat.com>
Subject: Re: [PATCH] i915: use display instead of dereferencing dmc in
 intel_dmc_update_dc6_allowed_count
In-Reply-To: <20260423201020.506908-1-desnesn@redhat.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260423201020.506908-1-desnesn@redhat.com>
Date: Fri, 24 Apr 2026 11:57:02 +0300
Message-ID: <98af4de9c2450f3d79091eb432357388a3ba21ae@intel.com>
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
X-Rspamd-Queue-Id: DC6D445BC63
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
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

On Thu, 23 Apr 2026, Desnes Nunes <desnesn@redhat.com> wrote:
> There is no need for dereferencing the dmc pointer if the display is
> already in the scope of intel_dmc_update_dc6_allowed_count function.
>
> No functional change.
>
> Signed-off-by: Desnes Nunes <desnesn@redhat.com>

Thanks for the patch, pushed to drm-intel-next.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 1667a829e708..ba43e03d1706 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -1574,10 +1574,10 @@ void intel_dmc_update_dc6_allowed_count(struct intel_display *display,
>  	struct intel_dmc *dmc = display_to_dmc(display);
>  	u32 dc5_cur_count;
>  
> -	if (DISPLAY_VER(dmc->display) < 14)
> +	if (DISPLAY_VER(display) < 14)
>  		return;
>  
> -	dc5_cur_count = intel_de_read(dmc->display, DG1_DMC_DEBUG_DC5_COUNT);
> +	dc5_cur_count = intel_de_read(display, DG1_DMC_DEBUG_DC5_COUNT);
>  
>  	if (!start_tracking)
>  		dmc->dc6_allowed.count += dc5_cur_count - dmc->dc6_allowed.dc5_start;

-- 
Jani Nikula, Intel
