Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Q+p3DK2sPWrv5QgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 00:33:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1096C8FB5
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 00:33:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=fUvjKdPo;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58A3C10F3B1;
	Thu, 25 Jun 2026 22:33:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31EEB10F3A8;
 Thu, 25 Jun 2026 22:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782426794; x=1813962794;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=AeaIhwnD398Apnv0eJMfIBjoZh+eXTfL0z0VAnYJWZg=;
 b=fUvjKdPog+coPnAz6pVpIRzLVB6xuUkJ+KyOP1mjaDYaKR8WXF3ItmCQ
 ifheLthWkhvtA/mjz0nvHIMQpRUyGjRHOPHXdMPzhNABcF/S5sMOUF4Zq
 WiWxmm3W5Q0KfB6ENS8FD4RRGx+HhMhXmH3mcmOmbPin9WHjSYIBeqDLp
 5iy/wLWhBVi9IEH9eMqloyIxGvHmgccICXw2Ykbn/wz1Aq4nu9s3J9/oW
 rTbLsNGfqTMMZ5LJVEtMq7aEv4NeIl/AUcYoavytmxEWPvzNfJyAtUoe4
 7OyawO6NPDbKjF/gRCDJL0PXbJdErgM0g7vyC+ZTBnCsXHSNFMy56f/R9 g==;
X-CSE-ConnectionGUID: rWsXLUqGQ9iTc6100/D/cQ==
X-CSE-MsgGUID: m0KKmDSWRSye9aoNeWM7+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11828"; a="100774463"
X-IronPort-AV: E=Sophos;i="6.24,225,1774335600"; d="scan'208";a="100774463"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 15:33:14 -0700
X-CSE-ConnectionGUID: 4rLCOyZBTQqVola7ZoDDug==
X-CSE-MsgGUID: 0odtAQuBRk+Gv5XLfGpJ6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,225,1774335600"; d="scan'208";a="253012612"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 15:33:13 -0700
Date: Fri, 26 Jun 2026 00:33:11 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/6] drm/i915: remove superfluous checks for
 pdev->msi_enabled
In-Reply-To: <71f61eee227178b61af9c1211be8545828a3f3ef.1781549229.git.jani.nikula@intel.com>
Message-ID: <490ee1c0-83cd-dfab-631a-d0d943ba60b5@intel.com>
References: <cover.1781549229.git.jani.nikula@intel.com>
 <71f61eee227178b61af9c1211be8545828a3f3ef.1781549229.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-897563697-1782426793=:605841"
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
X-Rspamd-Queue-Id: BC1096C8FB5

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-897563697-1782426793=:605841
Content-Type: text/plain; charset=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT

On Mon, 15 Jun 2026, Jani Nikula wrote:
> pci_disable_msi() checks for pdev->msi_enabled internally. There's no
> need to peek at pdev internals in i915. Remove them.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³

> ---
> drivers/gpu/drm/i915/i915_driver.c | 6 ++----
> 1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index a69eb3a84005..d1d3f039483f 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -583,8 +583,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>
> err_opregion:
> 	intel_opregion_cleanup(display);
> -	if (pdev->msi_enabled)
> -		pci_disable_msi(pdev);
> +	pci_disable_msi(pdev);
> err_mem_regions:
> 	intel_memory_regions_driver_release(dev_priv);
> err_ggtt:
> @@ -610,8 +609,7 @@ static void i915_driver_hw_remove(struct drm_i915_private *dev_priv)
>
> 	intel_opregion_cleanup(display);
>
> -	if (pdev->msi_enabled)
> -		pci_disable_msi(pdev);
> +	pci_disable_msi(pdev);
> }
>
> /**
> -- 
> 2.47.3
>
>
--8323329-897563697-1782426793=:605841--
