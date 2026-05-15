Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOmFBMLYBmrKoQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 10:26:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC66454B423
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 10:26:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A28A110F3CA;
	Fri, 15 May 2026 08:26:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZZHgiqj6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCEE010F3CA;
 Fri, 15 May 2026 08:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778833595; x=1810369595;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=pM9LBdf+qEY0gHKZZJcPA9iGg5XWc1ed6iXwYY/4pzQ=;
 b=ZZHgiqj62lng06uOOud0/D8tX+KVMjiuVIQHHB8t+tpJZ7h5nQoWCKxJ
 uMcFFSKckz3z+2CaW3W2zT/fI+HLHyeGkomJGXBrlMjC3ljqXDqFxpVZG
 mEJjgZCubhxmuPqoBfxQUeNfOseTokCTxhS+hnAP7xT3DEmXgGBjJf6oW
 gWD057mqjBrUiGZFT7PgOkc3tTe7H9U982JNmc/pItJN56wfQrwHCb2Dm
 ysCF8HZdkZlPBf+qPWx1QtQ6znn3EQR+mTQ0YFyxjlCB8W4s6gUn4p2fs
 RGJ/XN22S8AeJmmkDzqxjjAPEpC4irjjyQCxCeL9R+vx7lKqlSmTKWl6O A==;
X-CSE-ConnectionGUID: XLubfoNoQwKIisqzsHsbeA==
X-CSE-MsgGUID: T5DIn3lQSVSh7l6E4g0xYQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11786"; a="90889722"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="90889722"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 01:26:34 -0700
X-CSE-ConnectionGUID: Ff2H5J9YROKv4E5V1xe+4A==
X-CSE-MsgGUID: mReUAsQWSFybiPIPfV60Eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="242628784"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.71])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 01:26:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: Re: [PATCH v3 1/5] drm/i915/bw: Don't call intel_dram_info() too early
In-Reply-To: <20260514-separate-platform-from-diplay-ip-specific-bw-params-v3-1-68727d6fe3ec@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260514-separate-platform-from-diplay-ip-specific-bw-params-v3-0-68727d6fe3ec@intel.com>
 <20260514-separate-platform-from-diplay-ip-specific-bw-params-v3-1-68727d6fe3ec@intel.com>
Date: Fri, 15 May 2026 11:26:29 +0300
Message-ID: <1607a6c47f563d56cb315a7b556a80303ee8a55b@intel.com>
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
X-Rspamd-Queue-Id: BC66454B423
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

On Thu, 14 May 2026, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> If we end-up bailing early from intel_bw_init_hw() due to
> !HAS_DISPLAY(display), the call to intel_dram_info() to initialize
> dram_info will be meaningless.  Move the call to be done after that
> check.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 9c3a9bbb49f6..7eef693b51ad 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -791,11 +791,13 @@ static unsigned int icl_qgv_bw(struct intel_display *display,
>  
>  void intel_bw_init_hw(struct intel_display *display)
>  {
> -	const struct dram_info *dram_info = intel_dram_info(display);
> +	const struct dram_info *dram_info;
>  
>  	if (!HAS_DISPLAY(display))
>  		return;
>  
> +	dram_info = intel_dram_info(display);
> +
>  	/*
>  	 * Starting with Xe3p_LPD, the hardware tells us whether memory has ECC
>  	 * enabled that would impact display bandwidth.  However, so far there

-- 
Jani Nikula, Intel
