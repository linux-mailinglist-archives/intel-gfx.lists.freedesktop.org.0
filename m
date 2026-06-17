Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rw0fIoOGMmr41QUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 13:35:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88BDA69920A
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 13:35:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=EWLE86Ph;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D3EB10E9DA;
	Wed, 17 Jun 2026 11:35:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4550610E9DA;
 Wed, 17 Jun 2026 11:35:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781696128; x=1813232128;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=g0xHTjIqR2d37ONez6BD2EmmdVtZAnasWCkPBmGnLT8=;
 b=EWLE86Phr32LBMc4vZuGnL7le0xowC9qaKMmG63EPoTpSQQ30V7DTkte
 /OUaRM/4x2CzXD2jiFrzUoYJvwVuX1u0/ZR4Tai0M9JmRWCPj4J+THiue
 I1+Toip4iooq8HxHeoCH3SAn0VCsjieYjIjQn7NbxSzovvaoopqc/IQwY
 RvMhLRIF89OrQUCB2Bn5tVbesr//K6oMA01J96UtvS3NCmEGG9JDGaAr/
 1u369Iadljf78/Vq9ZkNFJ/TMmfSxeulKUlc6PnbfhoAwuwXOmnlEVCVh
 IJd8ynFDAxmuPpw1hoYmxCagqCS+9Z5Nd+6pEr3QrZIrbsvFDJNY3q/aS g==;
X-CSE-ConnectionGUID: UF0BLAEKThukrZTh5S73nQ==
X-CSE-MsgGUID: 6GDce3zDQfqjoAG3yemP6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="82386024"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="82386024"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 04:35:28 -0700
X-CSE-ConnectionGUID: 8kTu/oHITGSRY7tZL0ugeQ==
X-CSE-MsgGUID: biTc0qhlTNKYh5WvaRN0EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="271759762"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.158])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 04:35:26 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/cx0: Remove unnecessary hdmi link rate
 function declaration
In-Reply-To: <20260617041807.162927-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260617041807.162927-1-suraj.kandpal@intel.com>
Date: Wed, 17 Jun 2026 14:35:23 +0300
Message-ID: <ab9cbb1273ae3c0a762060185b3d4bce9867c926@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,linux.intel.com:from_mime,intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 88BDA69920A

On Wed, 17 Jun 2026, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> intel_cx0_phy_check_hdmi_link_rate is not used by anyone but is still
> declared. Remove it.

More specifically, the function does not exist.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 1428e7a5a318..95c20eb4b4b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -60,7 +60,6 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>  				     const struct intel_crtc_state *crtc_state);
>  void intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
>  					 u8 lane_mask, u8 state);
> -int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
>  void intel_cx0_setup_powerdown(struct intel_encoder *encoder);
>  bool intel_cx0_is_hdmi_frl(u32 clock);
>  u8 intel_cx0_read(struct intel_encoder *encoder, u8 lane_mask, u16 addr);

-- 
Jani Nikula, Intel
