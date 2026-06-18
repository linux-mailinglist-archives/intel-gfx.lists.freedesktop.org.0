Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LrKbC9LSM2p7GwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 13:13:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9EB69FA9C
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 13:13:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=HyAvz85d;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8552710F281;
	Thu, 18 Jun 2026 11:13:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEAA510F278;
 Thu, 18 Jun 2026 11:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781781195; x=1813317195;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=SexmYc3raGJTTWWvAJwngK2R5oweGHq9hSkCaNk/t7E=;
 b=HyAvz85d22k+aBSE5NYV7FzvbZ49pIniecYB+DSrpp0AETGpfgTqbtHN
 EfH7+HivA1VSwmGkhJaheEtF6RhTwFnNdxXLdzNEGBSd8eW29aSsxz5xo
 rDQAkQkJOrkIqhGQD+1XbIN3grCbBW49lzDEc8ae6LszyflkLbZWjV2jS
 NtKbJF7zrmpABZ0pc6RKUsWqNGZN7vNvUtpW6m3YaSndwRcGRQmackEAE
 Mfav+sKw44BAMfFuIMcKU/XD4IuM0HF9fLdYKezn16tRtQprAejDk6/V1
 KcRvyH4IJvXFOKIEGD44NfKaQbCqEWjogJK8JCl9JIy6UwTCkyP3oJHMT Q==;
X-CSE-ConnectionGUID: eqp1gwOHQbWcM13RtNh4yA==
X-CSE-MsgGUID: y0kyAIttQlCXqgAtdJRASg==
X-IronPort-AV: E=McAfee;i="6800,10657,11820"; a="82510586"
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="82510586"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 04:13:15 -0700
X-CSE-ConnectionGUID: NodSaJeHQoWWY68QIbNlXA==
X-CSE-MsgGUID: iGItxHOSR8WwPGXbD7T0xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="253445719"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.2])
 by fmviesa005-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jun 2026 04:13:11 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ma Ke <make_ruc2021@163.com>, rodrigo.vivi@intel.com,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net, airlied@gmail.com,
 simona@ffwll.ch, hansg@kernel.org, matthew.d.roper@intel.com,
 vivek.kasireddy@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 akpm@linux-foundation.org, Ma Ke <make_ruc2021@163.com>,
 stable@vger.kernel.org
Subject: Re: [PATCH v2] drm/i915/dsi: fix i2c adapter reference leak in
 i2c_adapter_lookup()
In-Reply-To: <20260618110446.518501-1-make_ruc2021@163.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260618110446.518501-1-make_ruc2021@163.com>
Date: Thu, 18 Jun 2026 14:13:08 +0300
Message-ID: <8f89e5af148cab8daca10ca4f7214e4e9207c29f@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,linux-foundation.org,163.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[163.com,intel.com,linux.intel.com,ursulin.net,gmail.com,ffwll.ch,kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,linux.intel.com:from_mime,intel.com:dkim,intel.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EA9EB69FA9C

On Thu, 18 Jun 2026, Ma Ke <make_ruc2021@163.com> wrote:
> i2c_adapter_lookup() acquires a reference on the i2c adapter through
> i2c_acpi_find_adapter_by_handle() but not releases it.  Each
> invocation of this ACPI resource callback leaks one device reference,
> potentially leading to resource exhaustion over repeated driver
> load/unload cycles.
>
> Calling path: i2c_acpi_find_adapter_by_handle() -> bus_find_device()
> -> get_device.
>
> Found by code review.
>
> Signed-off-by: Ma Ke <make_ruc2021@163.com>
> Cc: stable@vger.kernel.org
> Fixes: 8cbf89db2941 ("drm/i915/dsi: Parse the I2C element from the VBT MIPI sequence block (v3)")
> ---
> Changes in v2:
> - Changed email to trigger CI, no code change.

Sorry, that won't do anything. Please just let us deal with it. :)

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> index fe12041e913c..2097c5d17cb7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> @@ -460,8 +460,10 @@ static int i2c_adapter_lookup(struct acpi_resource *ares, void *data)
>  		return 1;
>  
>  	adapter = i2c_acpi_find_adapter_by_handle(adapter_handle);
> -	if (adapter)
> +	if (adapter) {
>  		intel_dsi->i2c_bus_num = adapter->nr;
> +		put_device(&adapter->dev);
> +	}
>  
>  	return 1;
>  }

-- 
Jani Nikula, Intel
