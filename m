Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NgSlLn4rPmpPAwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 09:34:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5B66CAFA2
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 09:34:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=k7djw8vZ;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 877C610E31E;
	Fri, 26 Jun 2026 07:34:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FD4F10E315;
 Fri, 26 Jun 2026 07:34:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782459259; x=1813995259;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=O9dH4ojG9lPX/6oTzX84/oLqiKHto3jfieCo0L9/Fxg=;
 b=k7djw8vZuV26xQuR3LZq2cb4515wIs3B3mPMICJ9VBevPsjhc1qXrwSo
 kw/74PrbSrhPz+XUCOGMqNCdsDp38SG+iDM+WunWOQK4EI4px+LvLFZtN
 us3UsNoYB5+qJakNQdNyTtFuZerthS45qeP5po8tlrjC0QZDO7fqiBNR8
 A2BOjutVWRPeABUIkfrADrc8zwzTImr5W0Ryej1bJzzBEd8RSXEghLPHc
 ufKi+prQ642emk0/vFgKNs88Gf/RI8+EOlmP1lJ3/QrhyzArYuLfQbzwj
 uyA0aT0ig56s7OWPmlupWHC6K4y35PgdmAD6l2SzrUDSjybdN2X4wCqSt Q==;
X-CSE-ConnectionGUID: svHFpMCKT0qsZcnz9gVe3Q==
X-CSE-MsgGUID: YVcbWOfUSHuurNPoV+fhWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11828"; a="82243753"
X-IronPort-AV: E=Sophos;i="6.24,226,1774335600"; d="scan'208";a="82243753"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2026 00:34:02 -0700
X-CSE-ConnectionGUID: e0rkSpU4RxiZ+UmWPmb1Ew==
X-CSE-MsgGUID: bKKzX8RtReOh8MfpKj9vFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,226,1774335600"; d="scan'208";a="250200622"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2026 00:34:02 -0700
Date: Fri, 26 Jun 2026 09:33:59 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/6] drm/xe/display: change order of
 intel_display_driver_remove_{nogem, noirq}() calls
In-Reply-To: <afb11c4e11cc4d946f0360aaad1664d004a93f41.1781549229.git.jani.nikula@intel.com>
Message-ID: <eaf57d9c-0dc8-8690-a962-e0d4de447c52@intel.com>
References: <cover.1781549229.git.jani.nikula@intel.com>
 <afb11c4e11cc4d946f0360aaad1664d004a93f41.1781549229.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1720987744-1782459242=:605841"
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EF5B66CAFA2

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1720987744-1782459242=:605841
Content-Type: text/plain; charset=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT

On Mon, 15 Jun 2026, Jani Nikula wrote:
> The display driver init and cleanup calls are slightly asymmetric. The
> cleanup order should be intel_display_driver_remove_noirq() and
> intel_display_driver_remove_nogem(), not the other way around. This is
> also what i915 does. Follow suit in xe.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³

> ---
> drivers/gpu/drm/xe/display/xe_display.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 4a621779fc53..0d93784754c1 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -82,8 +82,8 @@ static void xe_display_fini_early(void *arg)
> 		return;
>
> 	intel_hpd_cancel_work(display);
> -	intel_display_driver_remove_nogem(display);
> 	intel_display_driver_remove_noirq(display);
> +	intel_display_driver_remove_nogem(display);
> 	intel_opregion_cleanup(display);
> 	intel_display_power_cleanup(display);
> }
> -- 
> 2.47.3
>
>
--8323329-1720987744-1782459242=:605841--
