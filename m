Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id r/e0IGxfKWqjVwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 14:58:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 532FB6697FF
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 14:58:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=HMqXlgNa;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFD9210E933;
	Wed, 10 Jun 2026 12:58:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A673410E933;
 Wed, 10 Jun 2026 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781096297; x=1812632297;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=6WgdMP9OoXN6z5IVN41bG26QZw45g9rfEHnSkDkcKdg=;
 b=HMqXlgNa0kyGf6QH7it7iJTJBmOyo4DrXgRtrylEz014rPhrwUNqCZBI
 Owr637MQNh76KGWKIPOB0MlatxmGO5lNBVcsGl7hZ1j4BC5kmxA0jHaln
 8sh9OedyKajMmRRm/ji3XgpKzbr1AZdFGOwDUf7oFgfFJeCcB2Mf2jHYV
 1cA0jz4up1E21b8VnsFWABw52GXKA1Tf6Lobgke5SXpbu+TyoeCyxcr9b
 0LG9KBKgIj17062mWRqnq+jKUQHB6jOu9ISGpqKdkusPIHrGUOm2iHyLV
 N1tLpW5JwgDhdnhuy5WyBsVmjwd/VnUKYF3ReGIkhSFLOJLZzMw4e1T/r w==;
X-CSE-ConnectionGUID: Xtr9pjpYQjKJa0zyl92DZg==
X-CSE-MsgGUID: yefuvWP2Qk6BH23XG3C8hw==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="99306823"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="99306823"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 05:58:17 -0700
X-CSE-ConnectionGUID: vS/+9V1AT4ugIoJwzoXgmw==
X-CSE-MsgGUID: fl4crEApR+SiYOSzAt4sng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="245316436"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.244.3])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 05:58:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 raag.jadav@intel.com, Michal.Wajdeczko@intel.com
Subject: Re: [PATCH v4 4/5] drm/i915: Refactor generic_handle_irq_safe()
 error messages
In-Reply-To: <20260608183050.3875235-5-jonathan.cavitt@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260608183050.3875235-1-jonathan.cavitt@intel.com>
 <20260608183050.3875235-5-jonathan.cavitt@intel.com>
Date: Wed, 10 Jun 2026 15:58:10 +0300
Message-ID: <ba60b79c77cdc2aaba3137c1aac3f4588530c120@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_SEVEN(0.00)[8];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,linux.intel.com:from_mime,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 532FB6697FF

On Tue, 09 Jun 2026, Jonathan Cavitt <jonathan.cavitt@intel.com> wrote:
> Refactor all error messages resulting from generic_handle_irq_safe()
> failures in I915 for clarity.

This needs to be sent separately from the rest, and merged via
drm-intel-next, while the rest should go through drm-xe-next.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> v2:
> - Use drm_err_ratelimited() correctly (jcavitt)
>
> v3:
> - Use xe_err_ratelimited() instead (Jadav)
> - Split into patch series (jcavitt)
>
> v4:
> - Use suggested phrasing (Wajdeczko)
>
> v5:
> - s/PTR_ERR/ERR_PTR (jcavitt)
>
> Suggested-by: Raag Jadav <raag.jadav@intel.com>
> Suggested-by: Michal Wajdeczko <Michal.Wajdeczko@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lpe_audio.c | 2 +-
>  drivers/gpu/drm/i915/gt/intel_gsc.c            | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> index 022ad18044bf..ff2cf479d8e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> @@ -265,7 +265,7 @@ void intel_lpe_audio_irq_handler(struct intel_display *display)
>  	ret = generic_handle_irq_safe(display->audio.lpe.irq);
>  	if (ret)
>  		drm_err_ratelimited(display->drm,
> -				    "error handling LPE audio irq: %d\n", ret);
> +				    "LPE audio: irq handling failed (%pe)\n", ERR_PTR(ret));
>  }
>  
>  /**
> diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.c b/drivers/gpu/drm/i915/gt/intel_gsc.c
> index 050d909fb4f8..1c06bf76568a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gsc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gsc.c
> @@ -286,7 +286,7 @@ static void gsc_irq_handler(struct intel_gt *gt, unsigned int intf_id)
>  
>  	ret = generic_handle_irq_safe(gt->gsc.intf[intf_id].irq);
>  	if (ret)
> -		gt_err_ratelimited(gt, "error handling GSC irq: %d\n", ret);
> +		gt_err_ratelimited(gt, "GSC: irq handling failed (%pe)\n", ERR_PTR(ret));
>  }
>  
>  void intel_gsc_irq_handler(struct intel_gt *gt, u32 iir)

-- 
Jani Nikula, Intel
