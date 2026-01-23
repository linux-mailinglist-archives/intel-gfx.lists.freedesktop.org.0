Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CbyFDxEc2lEuQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 10:49:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B50D3739BD
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 10:49:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42ADC10E29B;
	Fri, 23 Jan 2026 09:49:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TCmhjLV+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C37D10E29B
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jan 2026 09:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769161785; x=1800697785;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=RfLuHYk04/4GckoqujA/xaHlipjVbCRTzrrcT4ybQpo=;
 b=TCmhjLV+8NnlgBEifEtdPXrvvmsz8qx2h+86b4wvxUllvaIO/cczD1zx
 5xlMAoC1RJ6dCDQg9PnO4SbD5BGnreGA9q8lB913ZRHU+pnAkcojDBDSj
 hSY1fft2GGFoGO7NHCzuu1F9jhrTMuS5OeU6l/RMB/ZAFDqwtL6jT/ACe
 YZ6+jIkw+dJY8JWT01RMU0TegnSDIe7EHtXplDOPRBLrIWYWnqpDY24GC
 2iRpsOyIn6XFPHan/kP152h2LrBTK7dIjxbPZyhg6N/WXb6g7RkpHSZj+
 6VSVj7ZCXXODP6rv+leypZi4JOFY38bpHFsL7wkIJBf1ODmiVqyMgbYB5 Q==;
X-CSE-ConnectionGUID: SOBh+ZX0SkObymRtK5H77A==
X-CSE-MsgGUID: ey6YUxPzRdu5Lh7JKQesVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="74265853"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="74265853"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 01:49:45 -0800
X-CSE-ConnectionGUID: W8ghNlKrSBadpAPnpOyESA==
X-CSE-MsgGUID: LPUeCWutQlyVNtqWahvvKA==
X-ExtLoop1: 1
Received: from aotchere-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.2])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 01:49:42 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com
Subject: Re: [PATCH] drm/i915/display: PORT_NONE is not valid
In-Reply-To: <20260122213940.64352-2-jonathan.cavitt@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260122213940.64352-2-jonathan.cavitt@intel.com>
Date: Fri, 23 Jan 2026 11:49:39 +0200
Message-ID: <e1e39bf10d9c383ccf1230ce4470616aa84abfdf@intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jonathan.cavitt@intel.com,m:saurabhg.gupta@intel.com,m:alex.zuo@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	URIBL_MULTI_FAIL(0.00)[gabe.freedesktop.org:server fail,intel.com:server fail];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.750];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: B50D3739BD
X-Rspamd-Action: no action

On Thu, 22 Jan 2026, Jonathan Cavitt <jonathan.cavitt@intel.com> wrote:
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
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 7491e00e3858..250f31bb5938 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7828,7 +7828,8 @@ static bool intel_ddi_crt_present(struct intel_display *display)
>  
>  bool assert_port_valid(struct intel_display *display, enum port port)
>  {
> -	return !drm_WARN(display->drm, !(DISPLAY_RUNTIME_INFO(display)->port_mask & BIT(port)),
> +	return !drm_WARN(display->drm,
> +			 !(port < 0 || DISPLAY_RUNTIME_INFO(display)->port_mask & BIT(port)),

That's a bunch of negatives put together, making one's head spin, but
the innermost part is supposed to be checking if the port is valid,
i.e. BIT(port) is set in ->port_mask.

This makes "port < 0" another condition for the port being valid, which
is not the case. The port is only valid if

	port >= 0 && DISPLAY_RUNTIME_INFO(display)->port_mask & BIT(port)

BR,
Jani.

>  			 "Platform does not support port %c\n", port_name(port));
>  }

-- 
Jani Nikula, Intel
