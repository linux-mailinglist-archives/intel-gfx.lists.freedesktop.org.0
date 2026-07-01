Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kWu3FSldRWoR/AoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 20:32:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8FC6F09F2
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 20:32:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="drpaL/67";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A81B10F0B4;
	Wed,  1 Jul 2026 18:32:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA82510F0AF;
 Wed,  1 Jul 2026 18:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782930726; x=1814466726;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=qCjBgIVmNJOBA5M7gs8OoVXUZbWieKDY3aAX+ha+gx8=;
 b=drpaL/670yhWHEz4IxWiuEY6B9RBp5t4eJQpY/tTcyVhHxcF1ltVeMld
 Did5f8u4jV9WsOE69T9H3l7HhmWPNjHKKGVU4a7rAImzFVuS5plksHCuZ
 bQBazykO2UzmLedkT6zdakz4FaI7mvTtEJMzgLx7OCHrtPjpKd6mRqMuP
 IDAxAJ+8+dMZcBG53w/+XHyuAPow9TfLBiL4MDX6WWwzFjqMNFYXEvn6c
 wu1J5yPU3JRsCvK651h8MES/gmJMRTfSqc0CJENf2svzexOHLsGG15rnU
 391OBls1vr4ZbkdYF6NH2XOKfrqmun3e7SvT9vANTJrYEG4GKwqJMQP3B Q==;
X-CSE-ConnectionGUID: X1ZoDG+4TwyjO5Ts4NhgGg==
X-CSE-MsgGUID: tXM5ry8xQ8+E3vp1f4fIgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="83727304"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="83727304"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 11:32:05 -0700
X-CSE-ConnectionGUID: LizbMcOSQyWSsu+7sPiFVg==
X-CSE-MsgGUID: PIufW86NRnuKNmyGM/W7hQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="290758014"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 11:32:05 -0700
Date: Wed, 1 Jul 2026 20:32:02 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Luca Coelho <luciano.coelho@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [v6,3/4] drm/i915/display: harden shift in
 intel_ddi_compute_config_late()
In-Reply-To: <20260609095525.570614-4-luciano.coelho@intel.com>
Message-ID: <25e034f3-1940-f246-aee6-7aaced4b8e51@intel.com>
References: <20260609095525.570614-4-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-321272448-1782921155=:605841"
Content-ID: <e88ec31a-207a-1906-08cb-783ece1edc60@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EA8FC6F09F2

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-321272448-1782921155=:605841
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <3f867306-b4f3-3098-45b6-0d8b5de86746@intel.com>

On Tue, 9 Jun 2026, Luca Coelho wrote:
> BIT() takes a non-negative shift amount, but cpu_transcoder is of type
> enum transcoder, which can in theory be INVALID_TRANSCODER (-1).
>
> This is not a problem with the current implementation, because
> cpu_transcoder is always valid when this code is reached, but it's
> more robust to cast to unsigned so the shift is always well-defined.
>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
> drivers/gpu/drm/i915/display/intel_ddi.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 6399b16405c8..51816c5bc80b 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4635,8 +4635,8 @@ static int intel_ddi_compute_config_late(struct intel_encoder *encoder,
>
> 	if (crtc_state->master_transcoder == crtc_state->cpu_transcoder) {
> 		crtc_state->master_transcoder = INVALID_TRANSCODER;
> -		crtc_state->sync_mode_slaves_mask =
> -			port_sync_transcoders & ~BIT(crtc_state->cpu_transcoder);
> +		crtc_state->sync_mode_slaves_mask = port_sync_transcoders &
> +			~REG_BIT(crtc_state->cpu_transcoder);

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³

> 	}
>
> 	return 0;
>
--8323329-321272448-1782921155=:605841--
