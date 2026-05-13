Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2CgdAICLBGqvLQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 16:32:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 958965351DC
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 16:32:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2351610EEB8;
	Wed, 13 May 2026 14:32:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lJiSeCBn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA76310EEB8
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2026 14:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778682749; x=1810218749;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=mUakCyOB+W/Izuq+ERH2Jm+xQ8wZjGhURGG4sVXcVkU=;
 b=lJiSeCBn9dvAiM/fSd01MXwsN+VtD3GGFE3kMDfiTZ9y47D4a9pY2fFw
 ar0ZVb/9IOWR9W71bS6SsObkSptcnUod3OY0LWg+fZAgeydBZnyBRLsx5
 8OAgI/DhYjZ/UUrctAtgeiIH/eKsAuDhe2MuDCQbVqnsWuTwjIEBSGH5b
 HkF/dMSKY+/cfGDnngl1MPv7BZjbyU/TMDyAC/g2ovvXh1VIK5cPE51kR
 1XGAvx+AhwmoWZC2WweqCS5v+P7HFIhUbp4+Zyib69Bpy7iyZSHiPat/Y
 P/cNgdJgx+Hvl06ZwWw0ZD4zkhI3LP3Bsf6mcwI5DqsBfwVCynJwsmMB9 w==;
X-CSE-ConnectionGUID: U4CaNEjNRj64cjaDxXWK4w==
X-CSE-MsgGUID: bo1Sn2CRTc6nMsrRJ7LqTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="82178401"
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="82178401"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 07:32:29 -0700
X-CSE-ConnectionGUID: aDyN/x9VTvy0+KZ5lgpCBg==
X-CSE-MsgGUID: 5KkbzUF6Qt2QVzBP9GYOdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="237995768"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.10])
 by orviesa008-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 May 2026 07:32:27 -0700
Date: Wed, 13 May 2026 17:32:24 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [RESEND] drm/i915/sdvo: use the i2c bus locking functions
Message-ID: <agSLeFMnZTpyPVlv@intel.com>
References: <20260513080103.169402-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260513080103.169402-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Queue-Id: 958965351DC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.40 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.71)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

On Wed, May 13, 2026 at 11:01:03AM +0300, Jani Nikula wrote:
> Use i2c_lock_bus(), i2c_trylock_bus(), and i2c_unlock_bus() instead of
> poking at i2c adapter's lock_ops directly.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
> index 23c511a9a2ad..ba54c90828f4 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -3319,7 +3319,7 @@ static void proxy_lock_bus(struct i2c_adapter *adapter,
>  	struct intel_sdvo_ddc *ddc = adapter->algo_data;
>  	struct intel_sdvo *sdvo = ddc->sdvo;
>  
> -	sdvo->i2c->lock_ops->lock_bus(sdvo->i2c, flags);
> +	i2c_lock_bus(sdvo->i2c, flags);
>  }
>  
>  static int proxy_trylock_bus(struct i2c_adapter *adapter,
> @@ -3328,7 +3328,7 @@ static int proxy_trylock_bus(struct i2c_adapter *adapter,
>  	struct intel_sdvo_ddc *ddc = adapter->algo_data;
>  	struct intel_sdvo *sdvo = ddc->sdvo;
>  
> -	return sdvo->i2c->lock_ops->trylock_bus(sdvo->i2c, flags);
> +	return i2c_trylock_bus(sdvo->i2c, flags);
>  }
>  
>  static void proxy_unlock_bus(struct i2c_adapter *adapter,
> @@ -3337,7 +3337,7 @@ static void proxy_unlock_bus(struct i2c_adapter *adapter,
>  	struct intel_sdvo_ddc *ddc = adapter->algo_data;
>  	struct intel_sdvo *sdvo = ddc->sdvo;
>  
> -	sdvo->i2c->lock_ops->unlock_bus(sdvo->i2c, flags);
> +	i2c_unlock_bus(sdvo->i2c, flags);
>  }
>  
>  static const struct i2c_lock_operations proxy_lock_ops = {
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
