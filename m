Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AZl5C1sCIGrVtwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 12:30:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C85F96369CF
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 12:30:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ZUiWkIGH;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBFD310FB91;
	Wed,  3 Jun 2026 10:30:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 634A410FB75;
 Wed,  3 Jun 2026 10:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780482646; x=1812018646;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+o0nU3Fx162eyxsoNvnUFfGHK6gbbBVlEk6LSDt3N2c=;
 b=ZUiWkIGHmk/bUVgbWAGjjWQ7oV1KPGCv2l53nUMAzxpfHEfsX3meHRIz
 ecqjN62W0BPBsZFaA/KPbbfnht8fAolZJWyntiEIAPTZETI0dnR4izlEC
 Xzyv2eUHfHHO8gnMA9BUcPXg1ocMq3+vWjJ5HinZQ7qtILHxnnW/7BHHz
 bSC+63x6ZDGGsloYMpiDe9d2FuIF0mD7a7F6pIMaq3/EWTqfzBFCdWzM2
 /STPi9cIKRWWJC3Lf6/ea4ascKFSp7lA3kZ1SXdP9PdVYa5jPA31uSoPw
 4RQsRyTEeefDjXJWwrc+kNeDTxnLo2FMaeMp94mUmV66mRuBpjJxJJEb2 A==;
X-CSE-ConnectionGUID: Em1e7Q7LSYqgBrfss2OeFg==
X-CSE-MsgGUID: 4rlTbaCwTq6K4vhTmuywCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="81316526"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="81316526"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 03:30:45 -0700
X-CSE-ConnectionGUID: Cq9ieJebQ+KCsjOczaBhsA==
X-CSE-MsgGUID: +31VtOuHS1mBytnk9wzvcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="249104959"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.189])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 03:30:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, rajat.gupta@oss.qualcomm.com,
 jani.saarinen@intel.com, simona@ffwll.ch, airlied@gmail.com,
 mripard@kernel.org, maarten.lankhorst@linux.intel.com
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH] drm/dumb-buffer: Drop buffer-size limits for now
In-Reply-To: <20260602112842.252279-1-tzimmermann@suse.de>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260602112842.252279-1-tzimmermann@suse.de>
Date: Wed, 03 Jun 2026 13:30:37 +0300
Message-ID: <d161a00845f2b3df00c319ddc8706a9a1ca372d2@intel.com>
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[suse.de,oss.qualcomm.com,intel.com,ffwll.ch,gmail.com,kernel.org,linux.intel.com];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email,linux.intel.com:from_mime,lists.freedesktop.org:from_smtp,qualcomm.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C85F96369CF

On Tue, 02 Jun 2026, Thomas Zimmermann <tzimmermann@suse.de> wrote:
> The size limits break some of the CI tests. So drop them for now. Keep
> the other overflow tests from commit 5ab62dd3687b ("drm: prevent integer
> overflows in dumb buffer creation helpers") in place.
>
> There is still a pre-existing overflow check for 32-bit type limits in
> drm_mode_create_dumb() that will catch the really absurd size requests.
> Drivers that still do not use drm_mode_size_dumb() should be updated. The
> helper calculates dumb-buffer geometry with overflow checks.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Fixes: 5ab62dd3687b ("drm: prevent integer overflows in dumb buffer creation helpers")
> Reported-by: Jani Nikula <jani.nikula@linux.intel.com>
> Closes: https://lore.kernel.org/dri-devel/ddf0233e50044059c85279f928661563ef6a55bf@intel.com/
> Cc: Rajat Gupta <rajat.gupta@oss.qualcomm.com>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>

Thanks for following up. Maybe we need to return to this with less
urgency.

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/drm_dumb_buffers.c | 7 -------
>  1 file changed, 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_dumb_buffers.c b/drivers/gpu/drm/drm_dumb_buffers.c
> index e60130b2bb0c..8e9ff17538e7 100644
> --- a/drivers/gpu/drm/drm_dumb_buffers.c
> +++ b/drivers/gpu/drm/drm_dumb_buffers.c
> @@ -201,13 +201,6 @@ int drm_mode_create_dumb(struct drm_device *dev,
>  	if (!args->width || !args->height || !args->bpp)
>  		return -EINVAL;
>  
> -	/* Reject unreasonable inputs early.  Dumb buffers are for software
> -	 * rendering; nothing legitimate needs more than 8192x8192 at 32bpp.
> -	 * This prevents overflows in downstream alignment helpers.
> -	 */
> -	if (args->width >= 8192 || args->height >= 8192 || args->bpp > 32)
> -		return -EINVAL;
> -
>  	/* overflow checks for 32bit size calculations */
>  	if (args->bpp > U32_MAX - 8)
>  		return -EINVAL;
>
> base-commit: a980196655477a8f5067112946401fe52e510664

-- 
Jani Nikula, Intel
