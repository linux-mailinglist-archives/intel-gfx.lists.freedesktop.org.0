Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uKfMLcFZhGl92gMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 09:50:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D99EF0069
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 09:50:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCC6E10E39B;
	Thu,  5 Feb 2026 08:50:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XH8DRDEc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF19310E39B;
 Thu,  5 Feb 2026 08:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770281406; x=1801817406;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=g0Ww8yudr96NgS3B0+boydw+jzAAIslFYYjf+MWtMI0=;
 b=XH8DRDEc1nYDCbhpxucDqPAK+f/6xig+i/OPUU5Rx2qEAjb1G3/2kYUI
 NSmwjHxSGkfa7NW6Ft348MsTJDxy3+RTPtL00l2dSWMJIwvcbBu4AQl6X
 9wLFw0fhSp5xUrmvZWyW4uqBZulZ5nDQUZ+dssz53ZwQ3eho7E7J9OYyL
 Gov+yQQRLqL18X82KjHHP0SSVGVXhVlmrE2fS8MQP0XsMXwpGFpft9aR0
 3Kfx8mRql3uSsw/U0mbAT6YGfjhS7J6prkUYketD0h3CyqO05YxWFeMB0
 6f9mIwenxWsAdN8vV2xdPdX+cSKoLYfbtB/F3k+zxRu+zhaY5k9IRNRHn g==;
X-CSE-ConnectionGUID: nf1ZdUHeRKS/Anp0xcv3Zg==
X-CSE-MsgGUID: XzypBN6VR2Oys9tIN7mqJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="71649706"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="71649706"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 00:50:06 -0800
X-CSE-ConnectionGUID: gXJY8MtqQ5CW+KTGsfbgwg==
X-CSE-MsgGUID: rAtzssowSwm7pqiXcpfvVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="241116986"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.69])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 00:50:04 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: dibin.moolakadan.subrahmanian@intel.com, Animesh Manna
 <animesh.manna@intel.com>
Subject: Re: [PATCH v2 08/10] drm/i915/cmtg: enable cmtg ctl
In-Reply-To: <20260203134407.2823406-9-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260203134407.2823406-1-animesh.manna@intel.com>
 <20260203134407.2823406-9-animesh.manna@intel.com>
Date: Thu, 05 Feb 2026 10:50:01 +0200
Message-ID: <43f64e1ba3fcb988272e47a2e6d10e1a35a7d428@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 4D99EF0069
X-Rspamd-Action: no action

On Tue, 03 Feb 2026, Animesh Manna <animesh.manna@intel.com> wrote:
> Enable CMTG through control register.
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index 3af4aefc760e..f7364c7408d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -244,6 +244,19 @@ static void intel_cpu_cmtg_transcoder_set_m_n(const struct intel_crtc_state *crt
>  	intel_de_write(display, TRANS_LINKN1_CMTG(cpu_transcoder), m_n->link_n);
>  }
>  
> +static void intel_cmtg_ctl_enable(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 val = 0;
> +
> +	val = intel_de_read(display, TRANS_CMTG_CTL(cpu_transcoder));
> +
> +	val |= CMTG_ENABLE;
> +
> +	intel_de_write(display, TRANS_CMTG_CTL(cpu_transcoder), val);

This is just a single line intel_de_rmw().

> +}
> +
>  void intel_cmtg_enable(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> @@ -261,4 +274,7 @@ void intel_cmtg_enable(const struct intel_crtc_state *crtc_state)
>  
>  	/* Program Cmtg Sync to Port Sync, TRANS_CMTG_CTL */
>  	intel_de_rmw(display, TRANS_CMTG_CTL(cpu_transcoder), CMTG_SYNC_TO_PORT, CMTG_SYNC_TO_PORT);
> +
> +	/* Program Enable Cmtg */
> +	intel_cmtg_ctl_enable(crtc_state);

If there's intel_de_rmw() before, why is this a function?

>  }

-- 
Jani Nikula, Intel
