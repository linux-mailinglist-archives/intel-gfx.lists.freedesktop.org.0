Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OMLTGMYeuWmbrQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 10:28:38 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD29F2A6B27
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 10:28:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C52710E494;
	Tue, 17 Mar 2026 09:28:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D8ErN3yD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42C4B10E494
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2026 09:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773739715; x=1805275715;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=cky0pAlVXZgMbl72MBTJ4chaKilO7OYf7pcnadCOAm0=;
 b=D8ErN3yDRdyHMazdbnOv/+eKp+ftx2tdeDHqQ6neamcAfoid46/T/bof
 ccLimOq3mbqVLWKKtnRZy/D3jLVH5+H57StVmC/NXJH/bL6WFv7D4IK+k
 htkkcgxVEyK95dQvKBsT8XuJMXmkhUFaZhJRnjTMBJgDI9wW9oQmAGjwk
 NbJpMLPhI1tNsBRZtwGkfE62xH/XpcjG71plhiJyMn+QNXhKhVO4zuZbM
 YMrO0ntnF2msvqJ0NU8s0lJnqrCee9mqUIPDgx684YptuXa8LH79Moco7
 gQoSh0iVodv/feubn7pi0AofIgkH93GmdU7gHscGQX0jZjbUvUyLsKYLq g==;
X-CSE-ConnectionGUID: JSo3GTQvSFyUpPvAjDKLJw==
X-CSE-MsgGUID: 56FFYBcDSfSeTyj9ebPKNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="100222888"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="100222888"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 02:28:35 -0700
X-CSE-ConnectionGUID: SouphM8AQo+yGfCoksx5nA==
X-CSE-MsgGUID: 1fetBOXLS/+R71kWJ3mG7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="216583214"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.32])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 02:28:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com
Subject: Re: [PATCH v2] drm/i915/display: PORT_NONE is not valid
In-Reply-To: <20260123152121.7042-2-jonathan.cavitt@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260123152121.7042-2-jonathan.cavitt@intel.com>
Date: Tue, 17 Mar 2026 11:28:29 +0200
Message-ID: <6597430e6cbeedc11ce9d79967408aa917dfc1fc@intel.com>
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
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: BD29F2A6B27
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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

Thanks for the patch, pushed to drm-intel-next.

BR,
Jani.


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
