Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IGT1HMMsnGmcAQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 11:32:35 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E07FB174F00
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 11:32:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3E8E10E319;
	Mon, 23 Feb 2026 10:32:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CqT3re6m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BE7C10E2E3;
 Mon, 23 Feb 2026 10:32:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771842751; x=1803378751;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Htf6QYSoKh0Dp23x9Bfd5uue58QzBD543bJ74cClME0=;
 b=CqT3re6m7okfvB3MNzKMMDmhGJ4itZ4rtPTfV9OtdKuIK3xqSOzCuWnC
 3lI9MIIjip0EGThy0Hbi/mOkB0RASVHUEiSKlKjHsj8WDzOWN4Ti4DhBd
 WazsMhMUYVMQ3/YmRwda+J0Sg/ZoVdx1nM+6H+4R5ZyAdDpHKLfb1fHRT
 LB/NLOs//kilwddi9ryJsaismFH5kt4FNjz0jHhz785gyPZPaynNKU2So
 C3Eo1TAkfL5wYUg3vB1tKyhE0phFedn74sp2EH8bpVJtXCdB9+fyIPdzV
 b5mp1EFHPv9isrNFZNn5wxv6uMT2SUyZniOREFdbJdsqEiJLbblJao6vM A==;
X-CSE-ConnectionGUID: 1F/Q0+9tQCu9N46Nx3ZAvA==
X-CSE-MsgGUID: iUiYwWwoQSuDXNGaJX3LuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11709"; a="83459421"
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="83459421"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 02:32:30 -0800
X-CSE-ConnectionGUID: JRrssEptQBmXmSDZsmXJRg==
X-CSE-MsgGUID: ZfC1fTF0S7mFN1OUm4sgyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="219638484"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.249])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 02:32:29 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Vidya Srinivas <vidya.srinivas@intel.com>, intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Vidya Srinivas <vidya.srinivas@intel.com>
Subject: Re: [PATCH] drm/displayid: reduce DisplayID checksum error logging
 to debug
In-Reply-To: <20260217055002.245099-1-vidya.srinivas@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260217055002.245099-1-vidya.srinivas@intel.com>
Date: Mon, 23 Feb 2026 12:32:25 +0200
Message-ID: <40f54d2357194813cd16e71a49b719f8c35b1549@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: E07FB174F00
X-Rspamd-Action: no action

On Tue, 17 Feb 2026, Vidya Srinivas <vidya.srinivas@intel.com> wrote:
> The patch "drm/displayid: add quirk to ignore DisplayID
> checksum errors" introduced a mechanism to bypass checksum validation
> for certain panels. However, even when ignoring the error, the code
> continues to log a DRM_NOTE.

Please refer to commits with the usual format (see git log).

> On affected hardware, this results in persistent "DisplayID checksum
> invalid" messages in the system log. This noise often misleads users
> into thinking there is a critical hardware failure or a functional
> regression, despite the quirk successfully handling the issue.
>
> Downgrade the log level from DRM_NOTE to DRM_DEBUG_KMS. This keeps
> the diagnostic information available for kernel developers while
> silencing the unnecessary warning for end-users.
>
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>  drivers/gpu/drm/drm_displayid.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/drm_displayid.c b/drivers/gpu/drm/drm_displayid.c
> index 58d0bb6d2676..1f6d78fe29f2 100644
> --- a/drivers/gpu/drm/drm_displayid.c
> +++ b/drivers/gpu/drm/drm_displayid.c
> @@ -69,7 +69,7 @@ validate_displayid(const u8 *displayid, int length, int idx, bool ignore_checksu
>  	for (i = 0; i < dispid_length; i++)
>  		csum += displayid[idx + i];
>  	if (csum) {
> -		DRM_NOTE("DisplayID checksum invalid, remainder is %d%s\n", csum,
> +		DRM_DEBUG_KMS("DisplayID checksum invalid, remainder is %d%s\n", csum,
>  			 ignore_checksum ? " (ignoring)" : "");

I understand the desire to make it debug level with the quirk, but IMO
it needs to be more than debug level when there is no quirk.

BR,
Jani.


>  
>  		if (!ignore_checksum)

-- 
Jani Nikula, Intel
