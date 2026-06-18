Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zQXIGCfSM2pTGwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 13:10:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3A769FA3B
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 13:10:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=etyVOmPe;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E55710F275;
	Thu, 18 Jun 2026 11:10:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28A9710F275;
 Thu, 18 Jun 2026 11:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781781028; x=1813317028;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=XAi4LQz68mwbO06PgjspXhNjInqENaay3fnNGiXT14c=;
 b=etyVOmPeohye6Vg1gzPkcTuNSusY1FmRtx/OyvphXg3ooOBah6F88rMx
 XU23R0ENmMbH0vUtB89JTlqXO18J3+oW94uqN3+lM3kCsTrm6mX8NzPEp
 pCbddauWXOYkzzFJDK6KmldWx80HdusNWOY31MFTu+sasX4XSS9yJ9Ta1
 8rR9s3uEQPNKt8nNo9g75mpq3tMeBYRI7nC/LMhmfMasMkDiW+0jxGSLh
 YHi0dARjEMPYmpjLmTsvW8wuWzidxZP5YDiVPS98e7WOm2Q2p4VpkCpA7
 ahBGvbgB8z5VhGXuvyR3C2k0Nt4zQdv/8NeSAuvRhcrERv/gqos1WUVdA A==;
X-CSE-ConnectionGUID: I6sv/rC3SuSuLoF6rP2o2g==
X-CSE-MsgGUID: 7WjL1XTcT825yEvtlxhcuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11820"; a="108157652"
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="108157652"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 04:10:28 -0700
X-CSE-ConnectionGUID: De7huVCkSCexAOq+Mqo4Cg==
X-CSE-MsgGUID: GAWHosKLSwW4vyQYKfskeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="241962087"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.2])
 by fmviesa009-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jun 2026 04:10:25 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Colin Ian King <colin.i.king@gmail.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH][next] drm/i915/display: make read-only array rates
 static const
In-Reply-To: <20260608122427.48375-1-colin.i.king@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260608122427.48375-1-colin.i.king@gmail.com>
Date: Thu, 18 Jun 2026 14:10:22 +0300
Message-ID: <9714acffb335c9cc4ce6d6f2c0ce6fd7c5570b8c@intel.com>
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
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,intel.com,linux.intel.com,ursulin.net,ffwll.ch,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[11];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BA3A769FA3B

On Mon, 08 Jun 2026, Colin Ian King <colin.i.king@gmail.com> wrote:
> Don't populate the read-only array rates the stack at run time,
> instead make it static const.
>
> Signed-off-by: Colin Ian King <colin.i.king@gmail.com>

Thanks for the patch, pushed to drm-intel-next.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 9076c2b176ec..351a62654a8d 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -71,7 +71,7 @@
>  
>  bool intel_hdmi_is_frl(u32 clock)
>  {
> -	u32 rates[] = { 300000, 600000, 800000, 1000000, 1200000 };
> +	static const u32 rates[] = { 300000, 600000, 800000, 1000000, 1200000 };
>  	int i;
>  
>  	for (i = 0; i < ARRAY_SIZE(rates); i++)

-- 
Jani Nikula, Intel
