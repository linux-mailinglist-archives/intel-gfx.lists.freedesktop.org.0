Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CC7uA2Zqd2nCfQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 14:21:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC98488C19
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 14:21:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 360F789C69;
	Mon, 26 Jan 2026 13:21:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kXFuoiUv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7169E89C69
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jan 2026 13:21:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769433696; x=1800969696;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ODWMronDGwlHFkl217/7iKbHLd8a8RLz04fsrVoHHMI=;
 b=kXFuoiUvhjzNqyCsHE+e+sq4lDDjVbfrJVR3d/+G4Dq4yylYWBUjvTrq
 mDy8NpbSuHInfHEWumyyLwwojFttzflOhGkwZcMRhoVyBh9DWqhXCFQFy
 1IJLAcBAd7I8ylKedtiI7XruO/VfQzicokrbFoU12HG6z3ysTohcH2mQl
 ArRWQLhY4HCIVzAtfgCfNlco6hPc9/Yr/zT+QHxqbzWzU/yNxD+RTUNkt
 2QAUq3+fz8soxnT0wmZLXu0EKYZ7P6GWzyu3CVNxZjAbJewi84oM24P/I
 pGxoM+YIMh/lhHWub13ykQmeFnzA5BheoTxcVF4Wz2XgT4YGguFo2UK2n g==;
X-CSE-ConnectionGUID: hhhg3mVVTimBILxM0f9lFg==
X-CSE-MsgGUID: OgRZjZHCQcGG1Nu91ILX/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="96071706"
X-IronPort-AV: E=Sophos;i="6.21,255,1763452800"; d="scan'208";a="96071706"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 05:21:36 -0800
X-CSE-ConnectionGUID: 6WRq+792SIKbb27Nko2Qtw==
X-CSE-MsgGUID: 9fdu5XHUTt6W0QIDhLlG6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,255,1763452800"; d="scan'208";a="206798738"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.99])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 05:21:34 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com
Subject: Re: [PATCH v2] drm/i915/display: PORT_NONE is not valid
In-Reply-To: <20260123152121.7042-2-jonathan.cavitt@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260123152121.7042-2-jonathan.cavitt@intel.com>
Date: Mon, 26 Jan 2026 15:21:30 +0200
Message-ID: <24a0947ec3219ac716a5ce20e15ed0c3b895a9b9@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jonathan.cavitt@intel.com,m:saurabhg.gupta@intel.com,m:alex.zuo@intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: CC98488C19
X-Rspamd-Action: no action

On Fri, 23 Jan 2026, Jonathan Cavitt <jonathan.cavitt@intel.com> wrote:
> Static analysis issue:
>
> In assert_port_valid, add a check to ensure port != PORT_NONE, as that
> is not a valid port.  The check must be explicit to prevent a bad bit
> shift operation in the general case via short-circuiting.  It's not
> likely this will ever come up in a real use case, but it's at least
> worth guarding against.
>
> It would probably also be pertinent to modify the behavior of the
> port_name function to correctly print PORT_NONE in this case, as
> currently the port would be reported as 'port @' by the debugger.  But
> that should be done separately, and given port_name is mostly just a
> debug printing helper function anyways, fixing it is a low priority.
>
> v2:
> - Conditional check was backwards.  Fix it.  (Jani)
>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 7491e00e3858..0c3bb3f98ee4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7828,7 +7828,8 @@ static bool intel_ddi_crt_present(struct intel_display *display)
>  
>  bool assert_port_valid(struct intel_display *display, enum port port)
>  {
> -	return !drm_WARN(display->drm, !(DISPLAY_RUNTIME_INFO(display)->port_mask & BIT(port)),
> +	return !drm_WARN(display->drm,
> +			 !(port >= 0 && DISPLAY_RUNTIME_INFO(display)->port_mask & BIT(port)),
>  			 "Platform does not support port %c\n", port_name(port));
>  }

-- 
Jani Nikula, Intel
