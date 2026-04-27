Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AOLICRc172mX+AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 12:06:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9424708CC
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 12:06:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADCA210E68E;
	Mon, 27 Apr 2026 10:06:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VlKHmDnh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B3C310E68A;
 Mon, 27 Apr 2026 10:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777284371; x=1808820371;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=HEU8Xm+ol5GT4cV1K6ARxY6YJYMnu/2etBMXXH4A7Kg=;
 b=VlKHmDnha8Y3uV0lA4Yw+H+f9A0quE2a09P7wWFkeN1kIEUviolg6KbL
 GS+Thyliu7eVSuIgJ4tmFVx/ORV2GTOjoRRJwO+sp0MlR02tzJReIKv87
 mwJLNg+GWyg/Vj1qrGMmqF/KdEj/T6F8Kl/SGEOTzTxusJIayzAyRjL2t
 HVOqcGS5oT616JagnbUmPYXbmm8AxLllh+rrK7ZTHCZFmYzt7de2RGg/q
 e1xtJcXp1lSPsWGKH2bXPfKjH3JJUF6FozSgaIeYxm2n7ZoBNUfhJ+oUf
 5Ie+ns5r1rz7HUk6gYBV9vIZlfpZQlsS3hVPIL6nI9pBJEePcXIwY5wZV Q==;
X-CSE-ConnectionGUID: CMZLlrXmQP2cqx67pBZtAg==
X-CSE-MsgGUID: ibWMugmjTPGBbndMX8T61g==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="82017359"
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="82017359"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 03:06:11 -0700
X-CSE-ConnectionGUID: bVycMBEATEiZgVbmspP5BA==
X-CSE-MsgGUID: c99owrGjSamXj96qAqihew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="235367850"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.244.53])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 03:06:09 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ville.syrjala@linux.intel.com
Subject: Re: [PATCH v4 0/8] drm/i915: move more display dependencies from i915
In-Reply-To: <20260420202252.3846880-1-luciano.coelho@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260420202252.3846880-1-luciano.coelho@intel.com>
Date: Mon, 27 Apr 2026 13:06:07 +0300
Message-ID: <6cd074a68c151a55c5b689b8dcc4e8f10f089f0e@intel.com>
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
X-Rspamd-Queue-Id: AC9424708CC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

On Mon, 20 Apr 2026, Luca Coelho <luciano.coelho@intel.com> wrote:
> This series continues my work of refactoring the clock gating
> initialization, so that i915 doesn't do display-specific stuff.
>
> With this, all register dependencies should be gone.
>
> Changes in v4:
> 	* Explain why HAS_LLC() is not needed anymore (Jani);
> 	* Replace intel_display_core.h include with intel_pch.h (Jani);
>
> Please review.

There's the one omission in patch 5 that I pointed out that needs to be
fixed.

Other than that, this is

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

I do have a nagging feeling that further refactoring will be needed, as
this introduces a plethora of new display interfaces i915 core needs to
call, and we should work to minimize that surface. However, this is good
stuff for moving the display stuff out of i915 core, so let's roll with
this.

A minor nit for further reference. If you can, please try to avoid
combining code movement and other changes. Reviewing pure code movement
with 'git show --color-moved' is quick. Reviewing other mechanical
changes with 'git show --color-words' is also quick. Unfortunately,
having code movement and other inline changes in one breaks both
approaches, and you have to fall back to more manual review.

BR,
Jani.


>
> Cheers,
> Luca.
>
>
> Luca Coelho (8):
>   drm/i915: move SKL clock gating init to display
>   drm/i915: move KBL clock gating init to display
>   drm/i915/display: move CFL clock gating init to display
>   drm/i915/display: move BXT clock gating init to display
>   drm/i915/display: move GLK clock gating init to display
>   drm/i915/display: move HSW and BDW clock gating init to display
>   drm/i915/display: move pre-HSW clock gating init to display
>   drm/i915: remove HAS_PCH_NOP() dependency from clock gating
>
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  .../i915/display/intel_display_clock_gating.c | 255 ++++++++++++++++++
>  .../i915/display/intel_display_clock_gating.h |  27 ++
>  .../gpu/drm/i915/display/intel_display_regs.h |  31 +++
>  drivers/gpu/drm/i915/i915_reg.h               |  31 ---
>  drivers/gpu/drm/i915/intel_clock_gating.c     | 226 ++--------------
>  6 files changed, 331 insertions(+), 240 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_clock_gating.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_clock_gating.h

-- 
Jani Nikula, Intel
