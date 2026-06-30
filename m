Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dG9HF7aWQ2oIcwoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 12:13:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A65466E2AD3
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 12:13:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=UoYt1eLp;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 564F810E184;
	Tue, 30 Jun 2026 10:13:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A74610E184;
 Tue, 30 Jun 2026 10:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782814385; x=1814350385;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=nbKxiQZBkLSyv9zbCELipya6Wp2jnIfPwPH2sKSWukM=;
 b=UoYt1eLp5pPHpGRGCom5fn/tSX53F/wpOkojiPm+oteaXr+WKJBkjHBv
 hMyFvp6JFo/xxFswwe8WlVLyLF78T5tkKPZCBDdt2Sb1+NxrsmO74t4+5
 71CHFhpo4kuQBLw3n6Z4l38YeMCEhMudrW9zDTkOArtAOQuCtz/7d9MQJ
 kfrLwZE98vks7JkCLdQnrKlM3fHv/ae5a7rhXatbsIsC7MDlS4D/mTDBT
 fO/0tRRC5f33hQR1SCH9CWNN/Dq7DPDHX7gdlNZCQ3yWHolbE0PT0HP0a
 5pI2MEHowqBwcIrAIxDMsjH9Ln5rcjaGWs9GsxckBOcsL/Blgq/+vjMWL w==;
X-CSE-ConnectionGUID: Kk480oTJQjGP7WgvBZw23Q==
X-CSE-MsgGUID: 2u5qGz+sQ4W4a+sHr4OlRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="83580533"
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="83580533"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 03:13:04 -0700
X-CSE-ConnectionGUID: FIbk5dIJRnWXYR1ml7HQvg==
X-CSE-MsgGUID: xBfA8ckhQ/WHoTXZnOIVKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="257136787"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.148])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 03:13:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: yaolu@kylinos.cn, rodrigo.vivi@intel.com,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Lu Yao <yaolu@kylinos.cn>
Subject: Re: [PATCH] drm/i915/display: fix error handling in
 intel_display_driver_probe_noirq
In-Reply-To: <20260630031652.67747-1-yaolu@kylinos.cn>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260630031652.67747-1-yaolu@kylinos.cn>
Date: Tue, 30 Jun 2026 13:12:59 +0300
Message-ID: <677fb92771df1f9f491226bf006c157a007c16dc@intel.com>
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,linux.intel.com:from_mime,kylinos.cn:email,intel.com:dkim,intel.com:mid,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A65466E2AD3

On Tue, 30 Jun 2026, yaolu@kylinos.cn wrote:
> From: Lu Yao <yaolu@kylinos.cn>
>
> Fix two bugs in the probe error path:
>
> 1. intel_dmc_fini() was called on workqueue alloc failed paths but
>    intel_dmc_init() had been invoked.  Move the dmc init call advance.

You can't move intel_dmc_init() before the wq allocation.

BR,
Jani.

>
> 2. If intel_mode_config_init() succeeded, after intel_xxx_init()
>    failed leaked the resources allocated by drm_mode_config_init().
>    Add a cleanup_mode_config label.
>
> Signed-off-by: Lu Yao <yaolu@kylinos.cn>
> ---
>  .../drm/i915/display/intel_display_driver.c    | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index d0729936f681..d69bdfb19efe 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -223,6 +223,8 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
>  	if (!HAS_DISPLAY(display))
>  		return 0;
>  
> +	intel_dmc_init(display);
> +
>  	display->hotplug.dp_wq = alloc_ordered_workqueue("intel-dp", 0);
>  	if (!display->hotplug.dp_wq) {
>  		ret = -ENOMEM;
> @@ -254,33 +256,31 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
>  		goto cleanup_wq_cleanup;
>  	}
>  
> -	intel_dmc_init(display);
> -
>  	intel_mode_config_init(display);
>  
>  	ret = intel_cdclk_init(display);
>  	if (ret)
> -		goto cleanup_wq_unordered;
> +		goto cleanup_mode_config;
>  
>  	ret = intel_color_init(display);
>  	if (ret)
> -		goto cleanup_wq_unordered;
> +		goto cleanup_mode_config;
>  
>  	ret = intel_dbuf_init(display);
>  	if (ret)
> -		goto cleanup_wq_unordered;
> +		goto cleanup_mode_config;
>  
>  	ret = intel_dbuf_bw_init(display);
>  	if (ret)
> -		goto cleanup_wq_unordered;
> +		goto cleanup_mode_config;
>  
>  	ret = intel_bw_init(display);
>  	if (ret)
> -		goto cleanup_wq_unordered;
> +		goto cleanup_mode_config;
>  
>  	ret = intel_pmdemand_init(display);
>  	if (ret)
> -		goto cleanup_wq_unordered;
> +		goto cleanup_mode_config;
>  
>  	intel_init_quirks(display);
>  
> @@ -288,6 +288,8 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
>  
>  	return 0;
>  
> +cleanup_mode_config:
> +	intel_mode_config_cleanup(display);
>  cleanup_wq_unordered:
>  	destroy_workqueue(display->wq.unordered);
>  cleanup_wq_cleanup:

-- 
Jani Nikula, Intel
