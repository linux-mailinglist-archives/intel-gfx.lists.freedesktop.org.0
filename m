Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WaFDAK+eQ2ojdgoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 12:47:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADBF6E31C1
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 12:47:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="nqw/pA79";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDA6F10EC22;
	Tue, 30 Jun 2026 10:47:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCC0010E4C7;
 Tue, 30 Jun 2026 10:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782816427; x=1814352427;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=E2IZ2NcKyvZ8Ps2OcVQu5ZgaoCJVLbeo45JHCtf8Qnw=;
 b=nqw/pA796ZbLMJQVo4kt3oaQHfT7RoVCdbSkJwG/xUtRo2W054OoUfjB
 RkAqzjnuwdy3iMXn48kRK0A2bc5teAqLLtA+cyPFzvHMtkioGckKLoQEa
 FQviCLtQW2SLrQazcBp6DQc+SmzLbB3q7F1Jf5W0ABy5ZFCe8IY7rAuEa
 m30vuDFgjdZTUTsvIakhWOja0sv1OHVWZHOX92SnO7ZV9LfOE/Np2Nzpy
 7CVSPKH6+zsfopv5hmuOAhS0rJ0q3PS4L5ghjj9ntKHddgeYvi23hPvR5
 S3lFKy1q79Ao5vlsFTNaKwgderuvvgLA/i8N7g4z4zk6iaF5tDZAtyHfB w==;
X-CSE-ConnectionGUID: +GUoKjIrQH293G6dH0dPMg==
X-CSE-MsgGUID: zDU6aN1FSzW871ZuGwHp9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="87438790"
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="87438790"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 03:47:07 -0700
X-CSE-ConnectionGUID: KbJVoEIsR/qc+xI2RqotFQ==
X-CSE-MsgGUID: qQflYbSETQeeNI6x/UN6NQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="249591986"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.148])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 03:47:03 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: mei.fan.liou@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, Simona Vetter
 <simona@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, "LIOU, Mei Fan" <mei.fan.liou@intel.com>
Subject: Re: [PATCH] drm/i915: add disable_edp module parameter to skip
 phantom eDP init
In-Reply-To: <20260630102845.2678707-1-mei.fan.liou@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260630102845.2678707-1-mei.fan.liou@intel.com>
Date: Tue, 30 Jun 2026 13:47:01 +0300
Message-ID: <50700395af210f0e5ca0c5e8306cda41b077f43a@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org,intel.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,linux.intel.com:from_mime,lists.freedesktop.org:from_smtp,pages.freedesktop.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5ADBF6E31C1

On Tue, 30 Jun 2026, mei.fan.liou@intel.com wrote:
> From: "LIOU, Mei Fan" <mei.fan.liou@intel.com>
>
> Some platforms have BIOS/VBT that declares an eDP panel present while
> no physical panel is connected. This causes intel_edp_init_connector()
> to spend ~6 seconds waiting on PPS power sequencer and AUX channel
> timeouts before failing gracefully.

Which platforms? This should not be the case.

> Introduce a new boolean module parameter 'disable_edp' (default: false)
> that allows users to skip eDP connector initialization entirely. When
> set, the driver logs an informational message and returns false early
> from intel_edp_init_connector(), bypassing all PPS/AUX probing.

I'm fine with adding module parameters for *debugging*. I'm not fine
with adding module parameters for regular use cases. If there are issues
out there, they should be root caused and fixed, worst case with a
quirk, but roughly never with a new module parameter.

You can also disable connectors using the video= parameter and connector
name, e.g. video=eDP-1:d or something. Making this work (if it doesn't)
should be preferred over adding new module parameters. And even here,
root causing and fixing is preferred.

> This is modeled after the existing 'disable_display' parameter and
> is intended as a workaround for headless or display-less deployments
> where the BIOS incorrectly advertises an internal panel.

"headless" and "display-less" are super ambiguous, given the amount of
possible alternatives. You might not have display IP at all, or you
could have everything except a display connected, or everything in
between. But VBT advertizing eDP but it not being connected is not a
scenario that we should have, and either the VBT or the whole setup is
bonkers.

Please file a bug as described at [1], and be sure to attach the dmesg
with debugs, and the VBT.


BR,
Jani.


[1] https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html


>
> Signed-off-by: LIOU, Mei Fan <mei.fan.liou@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_params.c | 3 +++
>  drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
>  drivers/gpu/drm/i915/display/intel_dp.c             | 7 +++++++
>  3 files changed, 11 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
> index 2aed110c5b09..8d47d19b1667 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -102,6 +102,9 @@ intel_display_param_named_unsafe(force_reset_modeset_test, bool, 0400,
>  intel_display_param_named(disable_display, bool, 0400,
>  	"Disable display (default: false)");
>  
> +intel_display_param_named(disable_edp, bool, 0400,
> +	"Disable eDP panel init, skips PPS/AUX probing when VBT declares eDP but no panel is present (default: false)");
> +
>  intel_display_param_named(verbose_state_checks, bool, 0400,
>  	"Enable verbose logs (ie. WARN_ON()) in case of unexpected hw state conditions.");
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
> index b95ecf728daa..98ab0d753dab 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
> @@ -41,6 +41,7 @@ struct drm_printer;
>  	param(bool, load_detect_test, false, 0600) \
>  	param(bool, force_reset_modeset_test, false, 0600) \
>  	param(bool, disable_display, false, 0400) \
> +	param(bool, disable_edp, false, 0400) \
>  	param(bool, verbose_state_checks, true, 0400) \
>  	param(bool, nuclear_pageflip, false, 0400) \
>  	param(bool, enable_dp_mst, true, 0600) \
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 85d3aa3b9894..c6293a1b3840 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -7214,6 +7214,13 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  	if (!intel_dp_is_edp(intel_dp))
>  		return true;
>  
> +	if (display->params.disable_edp) {
> +		drm_info(display->drm,
> +			 "[ENCODER:%d:%s] eDP disabled by module parameter, skipping init\n",
> +			 encoder->base.base.id, encoder->base.name);
> +		return false;
> +	}
> +
>  	/*
>  	 * On IBX/CPT we may get here with LVDS already registered. Since the
>  	 * driver uses the only internal power sequencer available for both

-- 
Jani Nikula, Intel
