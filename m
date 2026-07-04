Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JHmdCinlSGorvAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 04 Jul 2026 12:49:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1CB7075C8
	for <lists+intel-gfx@lfdr.de>; Sat, 04 Jul 2026 12:49:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=HoYTgU8p;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C2C310E691;
	Sat,  4 Jul 2026 10:49:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCCFC10E691;
 Sat,  4 Jul 2026 10:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783162150; x=1814698150;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=6eEbsXnNHbbN51HbDmSZG6Wxi2GU0mLDcfm/rPOGrTA=;
 b=HoYTgU8p1ysMPrYidc46pRlQOgBZJHb8GYx729BGfv3dQ4fLCcRsOj+J
 OVElgX682LrGJTh58Q2FnxI6rRSKGDRK6anTdPHHwUmCtLZVsfeK8adYI
 jo5t8PhI7aaAWmEMRDxdhhu/SX8dnGMMZImPkivrgoaLnKutPKZJqHDEX
 AtPymXBzftcR9Nv0JS5+2YoGLI755azBw+daIZojB3LN7bIyp1AArbmrG
 hwS9PlX29AIG7kLamzMAQGwuBfW1kn6Vxqs8ZWOFPQIcNoNhbKghGlwyC
 7BTJmwHuryV+/zEaAubGKjKPQsYBfHpsDox6Gm4LnHSoW0UYQc960+N9M g==;
X-CSE-ConnectionGUID: xOWvdLMxSbiFPFUMx5m1ig==
X-CSE-MsgGUID: cvE8wfm/TyuWwLK+oelEbg==
X-IronPort-AV: E=McAfee;i="6800,10657,11836"; a="87559682"
X-IronPort-AV: E=Sophos;i="6.25,147,1779174000"; d="scan'208";a="87559682"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2026 03:49:10 -0700
X-CSE-ConnectionGUID: kDd5yMRUTbW7IFfDIe9J4A==
X-CSE-MsgGUID: bOutkLXaRymUVM9/S/4T9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,147,1779174000"; d="scan'208";a="258181898"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2026 03:49:08 -0700
Date: Sat, 4 Jul 2026 12:49:06 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Imre Deak <imre.deak@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 28/34] drm/xe/kunit: Add display test config
In-Reply-To: <20260701153204.4124150-29-imre.deak@intel.com>
Message-ID: <a954aa17-1c56-7f57-508c-bc3e0c6c4fcd@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-29-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1000968344-1783117019=:605841"
Content-ID: <33c4decf-4620-f250-5421-a54ebd7ca4ec@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AD1CB7075C8

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1000968344-1783117019=:605841
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <c6e3efec-ff0e-0b04-535a-e075ea8a4b1d@intel.com>

On Wed, 1 Jul 2026, Imre Deak wrote:
> Add a separate xe KUnit config for display tests.
>
> The existing xe .kunitconfig builds xe statically, which is suitable for
> non-display xe tests. The display code can only be enabled for xe when
> xe is built as a module, so add a separate display config with DRM_XE=m
> and DRM_XE_DISPLAY=y.
>
> This can be folded back into the main xe KUnit config once the display
> code becomes a separate module.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
> drivers/gpu/drm/xe/.gitignore           |  1 +
> drivers/gpu/drm/xe/.kunitconfig-display | 11 +++++++++++
> 2 files changed, 12 insertions(+)
> create mode 100644 drivers/gpu/drm/xe/.kunitconfig-display
>
> diff --git a/drivers/gpu/drm/xe/.gitignore b/drivers/gpu/drm/xe/.gitignore
> index 8778bf132674d..6dad8a5a21355 100644
> --- a/drivers/gpu/drm/xe/.gitignore
> +++ b/drivers/gpu/drm/xe/.gitignore
> @@ -2,3 +2,4 @@
> *.hdrtest
> /generated
> /xe_gen_wa_oob
> +!.kunitconfig-display

Same comment as on PATCH 26/34 ("drm/i915/kunit: Enable KUnit tests"),
so not sure why the *-display file here is excluded from .gitignore and
.kunitconfig is not.

With that addressed:
Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³

> diff --git a/drivers/gpu/drm/xe/.kunitconfig-display b/drivers/gpu/drm/xe/.kunitconfig-display
> new file mode 100644
> index 0000000000000..17020aa4ded3a
> --- /dev/null
> +++ b/drivers/gpu/drm/xe/.kunitconfig-display
> @@ -0,0 +1,11 @@
> +CONFIG_EXPERT=y
> +CONFIG_MODULES=y
> +CONFIG_KUNIT=y
> +CONFIG_PCI=y
> +CONFIG_DEBUG_FS=y
> +CONFIG_BLK_DEV_INITRD=y
> +CONFIG_MAGIC_SYSRQ=y
> +CONFIG_DRM=m
> +CONFIG_DRM_XE=m
> +CONFIG_DRM_XE_DISPLAY=y
> +CONFIG_DRM_XE_KUNIT_TEST=m
> -- 
> 2.49.1
>
>
--8323329-1000968344-1783117019=:605841--
