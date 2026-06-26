Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id t0XyBf0uPmovBAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 09:49:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA8B6CB10A
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 09:49:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=IVwuTMjl;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F277D10F45F;
	Fri, 26 Jun 2026 07:49:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE31C10E31A;
 Fri, 26 Jun 2026 07:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782460154; x=1813996154;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=hOYWas3URVRrBb7LGITlzC99DRG/yfe3gkr2jnrg6FM=;
 b=IVwuTMjlK6pH+yu5EBE2U77PROpDIfyzLWWQonlc1B69RiZ1/nreuhjJ
 C3jfSs5eSlI88QsLOPC455E+UaIkjwiEVhSGIfSYgbD6Q6JjXp7rQ3jt9
 IigYUR9GhpQASKnHmk9WLMvybpWdbK4iwlxHhr/jdsNXOAgWHa+Zzs7L7
 ssjAa8W1OgdDybf84uDqp02ahuMKrcmYwzCr1qoInDNsvI3LPIFb5R+SL
 q/FIFSrph/63P38dyJrzy3WLf3iwKuoZCx4yxVlX7P2v/OXGSxJ3ySiBu
 1x8hnxQGAqyfcXpHtbUJ0VBZ4oqpJG0S/GhURK+Hu9SDM+CdRK96KC+HO w==;
X-CSE-ConnectionGUID: 8VMSKZk6SeSjG9Dn3TjiRg==
X-CSE-MsgGUID: A7tiZYfQRtC+QpiY0Uu3Jg==
X-IronPort-AV: E=McAfee;i="6800,10657,11828"; a="94400610"
X-IronPort-AV: E=Sophos;i="6.24,226,1774335600"; d="scan'208";a="94400610"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2026 00:49:14 -0700
X-CSE-ConnectionGUID: 8Q8adguQSGqBZFX8t4psIg==
X-CSE-MsgGUID: 8xJB3NL1T5yWR0mkgiTBRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,226,1774335600"; d="scan'208";a="255685278"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2026 00:49:13 -0700
Date: Fri, 26 Jun 2026 09:49:10 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 6/6] drm/{i915, xe}: move intel_hpd_cancel_work() to
 intel_display_driver_remove_noirq()
In-Reply-To: <6be8d033a6c8d0038dc14100d3ee6612d6204770.1781549229.git.jani.nikula@intel.com>
Message-ID: <93ef2e02-d60e-80f3-f892-30e3b72adcb6@intel.com>
References: <cover.1781549229.git.jani.nikula@intel.com>
 <6be8d033a6c8d0038dc14100d3ee6612d6204770.1781549229.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-843812408-1782460153=:605841"
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6EA8B6CB10A

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-843812408-1782460153=:605841
Content-Type: text/plain; charset=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT

On Mon, 15 Jun 2026, Jani Nikula wrote:
> intel_hpd_cancel_work() gets called before
> intel_display_driver_remove_noirq(). Move it there.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³

> ---
> drivers/gpu/drm/i915/display/intel_display_driver.c | 2 ++
> drivers/gpu/drm/i915/i915_driver.c                  | 1 -
> drivers/gpu/drm/xe/display/xe_display.c             | 1 -
> 3 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index a1c91fbf737c..bb5301b90231 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -622,6 +622,8 @@ void intel_display_driver_remove_noirq(struct intel_display *display)
> 	if (!HAS_DISPLAY(display))
> 		return;
>
> +	intel_hpd_cancel_work(display);
> +
> 	intel_display_driver_suspend_access(display);
>
> 	/*
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 68ab96b8195b..3ac7dc66085f 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -948,7 +948,6 @@ void i915_driver_remove(struct drm_i915_private *i915)
> 	intel_display_driver_remove(display);
>
> 	intel_irq_uninstall(i915);
> -	intel_hpd_cancel_work(display);
>
> 	intel_display_driver_remove_noirq(display);
>
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 8be3e600838b..92a4573db28a 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -81,7 +81,6 @@ static void xe_display_fini_early(void *arg)
> 	if (!xe->info.probe_display)
> 		return;
>
> -	intel_hpd_cancel_work(display);
> 	intel_display_driver_remove_noirq(display);
> 	intel_display_driver_remove_nogem(display);
> 	intel_display_power_cleanup(display);
> -- 
> 2.47.3
>
>
--8323329-843812408-1782460153=:605841--
