Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VCnMC8QuPmoTBAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 09:48:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC666CB0F3
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 09:48:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=hCDA52NK;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08B0F10F45C;
	Fri, 26 Jun 2026 07:48:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1758D10E31A;
 Fri, 26 Jun 2026 07:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782460097; x=1813996097;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=siPuG3qtDuR2mX/9xs387a7uvoOm0ztGnIno3erBd2s=;
 b=hCDA52NKT9Unj9Mz8sin2ZBOhNedIVTOPy2fV7/7CeYzWAamaD0hz5W1
 j+1ldxFMZZCRxLiObfxQuzQROjO9LJGohf7UJmGTyayxPsQ6WjhbtliYw
 znv52cw30FI91BvbNDyhEi7BsOaQsMh/MQqRiUPIowz3P+StrJIDm7YKH
 WDXEbz3tKHiDYNEPjuBMbBc/saIUNKsPv78qK70e9j4ZYa1+tPysb4yOT
 ptrCVFkocLDTTJ1zJQDb5FRk1sj140Wv0tVuQb8mZM0oL7Sf1bJFkjTPY
 dcfhoyst7sAk5u9hFpkdjjUIzvEAREWz58wxUgXwIbXZGRAhpxO6G92Su A==;
X-CSE-ConnectionGUID: mgVVJ50dRleGCUG9+F0rgA==
X-CSE-MsgGUID: M+zUrk0dROipOnMIKUpkxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11828"; a="108799026"
X-IronPort-AV: E=Sophos;i="6.24,226,1774335600"; d="scan'208";a="108799026"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2026 00:48:16 -0700
X-CSE-ConnectionGUID: p3jMWxyXRnGpGRybgIUvNw==
X-CSE-MsgGUID: PeCt/gEzR+K/eXoEkiwWRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,226,1774335600"; d="scan'208";a="253181800"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2026 00:48:16 -0700
Date: Fri, 26 Jun 2026 09:48:13 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 5/6] drm/{i915, xe}: move opregion cleanup to
 intel_display_driver_remove_nogem()
In-Reply-To: <8ccd49a5945e0560ba22079d686db1268e8e9f7f.1781549229.git.jani.nikula@intel.com>
Message-ID: <7e5883c3-d4d5-fe72-35c9-c72350456ee7@intel.com>
References: <cover.1781549229.git.jani.nikula@intel.com>
 <8ccd49a5945e0560ba22079d686db1268e8e9f7f.1781549229.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-928124701-1782460096=:605841"
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7CC666CB0F3

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-928124701-1782460096=:605841
Content-Type: text/plain; charset=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT

On Mon, 15 Jun 2026, Jani Nikula wrote:
> The intel_opregion_cleanup() call should really be in display. Move it
> at the end of intel_display_driver_probe_noirq().
>
> For xe, this is a completely non-functional change now that the
> noirq/nogem cleanup calls are in the right order.
>
> For i915, this only changes the relative order of
> intel_opregion_cleanup() and i915_perf_fini(), which should be of no
> consequence.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³

> ---
> drivers/gpu/drm/i915/display/intel_display_driver.c | 2 ++
> drivers/gpu/drm/i915/i915_driver.c                  | 3 ---
> drivers/gpu/drm/xe/display/xe_display.c             | 1 -
> 3 files changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 15a61f171d73..a1c91fbf737c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -662,6 +662,8 @@ void intel_display_driver_remove_nogem(struct intel_display *display)
> 	intel_display_power_driver_remove(display);
>
> 	intel_bios_driver_remove(display);
> +
> +	intel_opregion_cleanup(display);
> }
>
> void intel_display_driver_unregister(struct intel_display *display)
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 05fdcba7b2dc..68ab96b8195b 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -586,13 +586,10 @@ ALLOW_ERROR_INJECTION(i915_driver_hw_probe, ERRNO);
>  */
> static void i915_driver_hw_remove(struct drm_i915_private *dev_priv)
> {
> -	struct intel_display *display = dev_priv->display;
> 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
>
> 	i915_perf_fini(dev_priv);
>
> -	intel_opregion_cleanup(display);
> -
> 	pci_disable_msi(pdev);
> }
>
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 0d93784754c1..8be3e600838b 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -84,7 +84,6 @@ static void xe_display_fini_early(void *arg)
> 	intel_hpd_cancel_work(display);
> 	intel_display_driver_remove_noirq(display);
> 	intel_display_driver_remove_nogem(display);
> -	intel_opregion_cleanup(display);
> 	intel_display_power_cleanup(display);
> }
>
> -- 
> 2.47.3
>
>
--8323329-928124701-1782460096=:605841--
