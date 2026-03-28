Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wM4kJDACyGmvgAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Mar 2026 17:30:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D64634F2A7
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Mar 2026 17:30:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 909D210EFCF;
	Sat, 28 Mar 2026 16:30:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bK2t/jqj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B73D010EFCF;
 Sat, 28 Mar 2026 16:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774715437; x=1806251437;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=iRcr7p7TIWrIrT6vJ5nikcYcaK//I/3BXBTJ41hjWeg=;
 b=bK2t/jqjl4ZMjolQegjx6gS28oqVa//iv8jf3KcIWVmbJDY0ROzpQnsu
 goyALrWQF2ReZqQ+WYMGM5ephGeMoiEkql2+jz7xNe4z/l1BUPiZRNcbJ
 BzpNhdj5TMbjyKvP3Bsu8l+7W+Q9wycTfVc21OOkKoQ70dZu9NWw7ybGC
 NQK+SpBRrQdbwQ0osa/O6Mg8z7PUuanh03ZVkQd/15CNEApnekid5Y3m4
 T1QxMjJHoz4oUe3V9U52NnCDKvp//zMdbauLTCwBeKvGJ1SNF3vjKFqkt
 6EZUEb+YmQROZy0vnzFr6htMlT08dAyThGtPHVLjPqTkhaQ1WnkDL3wUF w==;
X-CSE-ConnectionGUID: xQLB6M2oTLeO2nIsG4mURA==
X-CSE-MsgGUID: 4qcMeADDRVSPl9xmSrbv+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11742"; a="74947562"
X-IronPort-AV: E=Sophos;i="6.23,146,1770624000"; d="scan'208";a="74947562"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2026 09:30:37 -0700
X-CSE-ConnectionGUID: CdoFGhZ8RP+Jh3eeYGVu2w==
X-CSE-MsgGUID: rUhidBJlSyqRxLYlpvFDfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,146,1770624000"; d="scan'208";a="230074010"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2026 09:30:35 -0700
Date: Sat, 28 Mar 2026 17:30:33 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 Luca Coelho <luciano.coelho@intel.com>
Subject: Re: [v2,2/9] drm/i915/scaler: Adjust pipe scaler scale factors for
 4:2:0 ouput
In-Reply-To: <20251029084647.4165-3-ville.syrjala@linux.intel.com>
Message-ID: <b5cc9b5d-37f3-f3df-5319-ca1efab873cd@intel.com>
References: <20251029084647.4165-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1429774218-1774715436=:601923"
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
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 0D64634F2A7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1429774218-1774715436=:601923
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

Nit: title: s/ouput/output/

On Wed, 29 Oct 2025, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> 4:2:0 output effectively involves an extra downscale factor of
> 2x2 due to the chroma downsampling. Adjust the stored scaler
> scale factors accodingly.

Even nitter nit: s/accodingly/accordingly

If this was already pushed then please disregard the comment.

Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>

BR,
Michał

>
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
> drivers/gpu/drm/i915/display/skl_scaler.c | 9 +++++++++
> 1 file changed, 9 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 640c65818f8a..e8a8facdc300 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -499,6 +499,15 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
>
> 			return -EINVAL;
> 		}
> +
> +		/*
> +		 * For the purposes of prefill 4:2:0 chroma
> +		 * subsampling is considered a 2x2 downscale.
> +		 */
> +		if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
> +			hscale <<= 1;
> +			vscale <<= 1;
> +		}
> 	}
>
> 	scaler_state->scalers[*scaler_id].hscale = hscale;
>
--8323329-1429774218-1774715436=:601923--
