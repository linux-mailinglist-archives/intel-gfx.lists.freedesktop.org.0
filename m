Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IB9SBVNODGqxeQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 13:49:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26DB557E014
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 13:49:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA0F910E5EB;
	Tue, 19 May 2026 11:49:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CZF3Rhra";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 643D310E5E6;
 Tue, 19 May 2026 11:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779191375; x=1810727375;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+dqRGqDNM4KHv4k0sr1lIn06IRQheS9hCkNYyPGE08A=;
 b=CZF3RhratB5HMaLusmU6aN5eE9/LRZNUcHFJK5RR6HUxwKq3UKx4QIHw
 A5bsYF3gkW0cse4+l3re7CVHoDSrEpJVg5sd0L7rCWhx1AcS12RZdVhJ4
 b5eRp57t/anQz9wbbl+xkAHAGgvSgDknkVTgY+AHGluFmPY1Ou6aVdPnn
 vr3pxh7EwRgD6qtTlckeJz7ebXdTDaYVNEpvSty8UlaQknNJWieUSOdn7
 6cOCp9d+hFKK+1+eFaUJnGNqgwHvfDENgB/LLRAzvfllpDwFcLZ37pS26
 mnmLZMvVWNSOayeq+bFt2K2yIdxP+DFwFSiYSPorYEtHPsnPcCrjE9mxu A==;
X-CSE-ConnectionGUID: ks7I3uJ2TcS8TI9vWnfVDg==
X-CSE-MsgGUID: 8UG2qgUnQ9ieFRjuEmoRVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="79967098"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="79967098"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 04:49:35 -0700
X-CSE-ConnectionGUID: 8pQs7QMqSH+mq+IDbBbaJA==
X-CSE-MsgGUID: gkZzXVz6Ssycpdh7t9chpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="235304776"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.218])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 04:49:34 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/4] drm/i915/display: harden masks in
 HSW_AUD_PIN_ELD_CP_VLD macros
In-Reply-To: <20260519112243.1454375-2-luciano.coelho@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260519112243.1454375-1-luciano.coelho@intel.com>
 <20260519112243.1454375-2-luciano.coelho@intel.com>
Date: Tue, 19 May 2026 14:49:31 +0300
Message-ID: <44b3a002fbba80bdafd440fcbb8c912bb1243765@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 26DB557E014
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 19 May 2026, Luca Coelho <luciano.coelho@intel.com> wrote:
> HSW_AUD_PIN_ELD_CP_VLD has a 4-bit field per transcoder for
> TRANSCODER_A..TRANSCODER_D only (bits 0..15).  Any other transcoder
> value (TRANSCODER_EDP, TRANSCODER_DSI_*, INVALID_TRANSCODER) is not
> valid here.
>
> This is not a problem with the current implementation, because trans
> is always valid when these macros are called, but it's more robust to
> mask the index to the low 2 bits so the shift is always well-defined.
>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio_regs.h | 16 ++++++++++++----
>  1 file changed, 12 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> index 4c31844d21df..25df7af4f67f 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> @@ -109,12 +109,20 @@
>  #define _HSW_AUD_EDID_DATA_B		0x65150
>  #define HSW_AUD_EDID_DATA(trans)	_MMIO_TRANS(trans, _HSW_AUD_EDID_DATA_A, _HSW_AUD_EDID_DATA_B)
>  
> +/*
> + * HSW_AUD_PIN_ELD_CP_VLD has a 4-bit field per transcoder for
> + * TRANSCODER_A..TRANSCODER_D only (bits 0..15).  Any other transcoder
> + * value (TRANSCODER_EDP, TRANSCODER_DSI_*, INVALID_TRANSCODER) is not
> + * valid here.  Mask the index to the low 2 bits so the shift is
> + * always well-defined.
> + */
>  #define HSW_AUD_PIPE_CONV_CFG		_MMIO(0x6507c)
>  #define HSW_AUD_PIN_ELD_CP_VLD		_MMIO(0x650c0)
> -#define   AUDIO_INACTIVE(trans)		((1 << 3) << ((trans) * 4))
> -#define   AUDIO_OUTPUT_ENABLE(trans)	((1 << 2) << ((trans) * 4))
> -#define   AUDIO_CP_READY(trans)		((1 << 1) << ((trans) * 4))
> -#define   AUDIO_ELD_VALID(trans)	((1 << 0) << ((trans) * 4))
> +#define   __AUDIO_MASK_TRANS(trans)	(((unsigned int)(trans) & 0x3) * 4)
> +#define   AUDIO_INACTIVE(trans)		((u32)BIT(3) << __AUDIO_MASK_TRANS(trans))
> +#define   AUDIO_OUTPUT_ENABLE(trans)	((u32)BIT(2) << __AUDIO_MASK_TRANS(trans))
> +#define   AUDIO_CP_READY(trans)		((u32)BIT(1) << __AUDIO_MASK_TRANS(trans))
> +#define   AUDIO_ELD_VALID(trans)	((u32)BIT(0) << __AUDIO_MASK_TRANS(trans))

Please use REG_BIT() instead of (u32)BIT().

All of this would be cleaner with the REG_GENMASK() stuff too.

BR,
Jani.

>  
>  #define _AUD_TCA_DP_2DOT0_CTRL		0x650bc
>  #define _AUD_TCB_DP_2DOT0_CTRL		0x651bc

-- 
Jani Nikula, Intel
