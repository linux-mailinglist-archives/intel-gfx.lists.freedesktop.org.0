Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FS3oDX+sPWrp5QgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 00:32:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 434EB6C8FB1
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 00:32:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=IX77Gk+A;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC76610F3CA;
	Thu, 25 Jun 2026 22:32:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EFE910F3C6;
 Thu, 25 Jun 2026 22:32:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782426747; x=1813962747;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=RoZQ7yo0f6ql9S534EkukX/USan0WbtA48/jgUjKhD4=;
 b=IX77Gk+AeZKFE2uBUa/Vtcm/IR9UQphYZVGP/EMQwhDNjwOa7n5ffztY
 RUG5THLdsEETR/NqEfM8yeYjBpTMQUD7SmElLWi2rH49YB/7aYwpcb9ol
 NSU168SOhWzU+7W6exeIIxpSLqifhPrqKoFZYKmLGMdWlrN+VeW4UPK02
 H1dEFh+wM2uisL38g0m1Z7ugaeIx9tSVBpOzJHc4FHV/h5ZXJRofq+fCa
 japBovYPKsebyDuoHQkEyAg1DZDWMB7QIaS8lxhTBKPCPn7RBkoaIYSsK
 NFVfi6MWguWRrnTShHopI8V4bn941u293EHGXaPyLBKtsiKCjQC9MnbcK w==;
X-CSE-ConnectionGUID: RK14J6XsRLSuIpgj3zX7VA==
X-CSE-MsgGUID: G/FlLfPXTGil1qg+3Ls0mQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11828"; a="100774422"
X-IronPort-AV: E=Sophos;i="6.24,225,1774335600"; d="scan'208";a="100774422"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 15:32:26 -0700
X-CSE-ConnectionGUID: rGvusdQnSeOZmFzkbUwHwA==
X-CSE-MsgGUID: 4yP4tTnNT6+o2Gkpfw1/ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,225,1774335600"; d="scan'208";a="253012046"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 15:32:25 -0700
Date: Fri, 26 Jun 2026 00:32:23 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/6] drm/i915: move intel_display_device_probe() call a
 level higher
In-Reply-To: <c97a8790a5cb1f6b10061286adad8148972c5b3b.1781549229.git.jani.nikula@intel.com>
Message-ID: <4fa75253-f400-a127-11e4-e0733c7775ec@intel.com>
References: <cover.1781549229.git.jani.nikula@intel.com>
 <c97a8790a5cb1f6b10061286adad8148972c5b3b.1781549229.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-344787606-1782426746=:605841"
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 434EB6C8FB1

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-344787606-1782426746=:605841
Content-Type: text/plain; charset=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT

On Mon, 15 Jun 2026, Jani Nikula wrote:
> Having display probe be called from i915_driver_create() is slightly

to my ear it sounds better with s/be/been/, but am very unsure.

> misleading, and an artefact from the past. Move the
> intel_display_device_probe() call a level higher.
>
> Use the shared PCI disable error path while at it.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³

> ---
> drivers/gpu/drm/i915/i915_driver.c | 19 +++++++++----------
> 1 file changed, 9 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 0520cd124686..a69eb3a84005 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -802,7 +802,6 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
> 	const struct intel_device_info *match_info =
> 		(struct intel_device_info *)ent->driver_data;
> 	struct drm_i915_private *i915;
> -	struct intel_display *display;
>
> 	i915 = devm_drm_dev_alloc(&pdev->dev, &i915_drm_driver,
> 				  struct drm_i915_private, drm);
> @@ -817,12 +816,6 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
> 	/* Set up device info and initial runtime info. */
> 	intel_device_info_driver_create(i915, pdev->device, match_info);
>
> -	display = intel_display_device_probe(pdev, &parent);
> -	if (IS_ERR(display))
> -		return ERR_CAST(display);
> -
> -	i915->display = display;
> -
> 	return i915;
> }
>
> @@ -851,11 +844,17 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>
> 	i915 = i915_driver_create(pdev, ent);
> 	if (IS_ERR(i915)) {
> -		pci_disable_device(pdev);
> -		return PTR_ERR(i915);
> +		ret = PTR_ERR(i915);
> +		goto out_pci_disable;
> 	}
>
> -	display = i915->display;
> +	display = intel_display_device_probe(pdev, &parent);
> +	if (IS_ERR(display)) {
> +		ret = PTR_ERR(display);
> +		goto out_pci_disable;
> +	}
> +
> +	i915->display = display;
>
> 	ret = i915_driver_early_probe(i915);
> 	if (ret < 0)
> -- 
> 2.47.3
>
>
--8323329-344787606-1782426746=:605841--
