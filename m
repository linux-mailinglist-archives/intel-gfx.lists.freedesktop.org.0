Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Lcn6AQucOmpUBggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 16:45:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5B06B7FFD
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 16:45:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=iY4gXXNW;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E219B10EBB5;
	Tue, 23 Jun 2026 14:45:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E89310EBA2;
 Tue, 23 Jun 2026 14:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782225927; x=1813761927;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=DQ/doB/SlUSk8m1qLJsx9isTY8w+tsDQHhgKCKEr6Xc=;
 b=iY4gXXNWQgXjroMTgcs50NX61cnjpwGDyw0SZP3KB+X0EgbbwTKvv4nS
 uJdTChiVwujT/nXm82FuRfUXQlR13KNWqOxKZ8UIQE/y1UtKkqGFmJJI/
 fbBi5shH7NxB2u9r15uEVeCsYmNQcBZCkt20CcOdJnbTDtdgt7bTa5Ji9
 g2aOQ7Hqcum7O5lfMjw+UUAZob5Eg1vjaoczW3SaEvIhRVRX+oWNyYrtB
 zSbvPoPE8nmZ0Uy+aSmOiIuQJrLoN23cyC/WZZz0pdrHds1l/FemyX4VQ
 mw0BaUhdT1uswtyL/R26uKGw5TKJFpUdUfN8Mq6xRWlQrQiLAeHUveXi1 g==;
X-CSE-ConnectionGUID: dtbL/zjAQP6SXjYkaHfRRg==
X-CSE-MsgGUID: TeUCD+PQSFKLHK9mbSYLHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="108512814"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="108512814"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 07:45:26 -0700
X-CSE-ConnectionGUID: zDo1WarcT1Kvpv8IfZ4vSA==
X-CSE-MsgGUID: vy044wimQbeaT9QKi9sBxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="243174213"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 07:45:25 -0700
Date: Tue, 23 Jun 2026 16:45:23 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/6] drm/i915/gmbus: Add gmbus_pins_lpt_lp[]
In-Reply-To: <20260623125111.6632-4-ville.syrjala@linux.intel.com>
Message-ID: <45498218-3935-4b52-fe01-ab637179a436@intel.com>
References: <20260623125111.6632-1-ville.syrjala@linux.intel.com>
 <20260623125111.6632-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1230177070-1782223553=:605841"
Content-ID: <eafdff30-db68-ec31-16aa-f09f250ec1bd@intel.com>
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
X-Rspamd-Queue-Id: 5E5B06B7FFD

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1230177070-1782223553=:605841
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <1d35f429-5062-fe6d-f885-47b57f409469@intel.com>

On Tue, 23 Jun 2026, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> LPT/WPT-LP don't have as many GOIO pins as the -H variants.

nit: s/GOIO/GPIO/

> Add proper mapping for the -LP PCHs so that we can't end up
> poking at non-existent GPIOs.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³

> ---
> drivers/gpu/drm/i915/display/intel_gmbus.c | 14 +++++++++++---
> 1 file changed, 11 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
> index 2869ec23e1ec..f69b8841c5dd 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> @@ -86,13 +86,18 @@ static const struct gmbus_pin gmbus_pins[] = {
> 	[GMBUS_PIN_DPD] = { "dpd", GPIO_5 },
> };
>
> -static const struct gmbus_pin gmbus_pins_lpt[] = {
> +static const struct gmbus_pin gmbus_pins_lpt_h[] = {
> 	[GMBUS_PIN_VGADDC] = { "vga", GPIO_0 },
> 	[GMBUS_PIN_DPC] = { "dpc", GPIO_3 },
> 	[GMBUS_PIN_DPB] = { "dpb", GPIO_4 },
> 	[GMBUS_PIN_DPD] = { "dpd", GPIO_5 },
> };
>
> +static const struct gmbus_pin gmbus_pins_lpt_lp[] = {
> +	[GMBUS_PIN_DPC] = { "dpc", GPIO_3 },
> +	[GMBUS_PIN_DPB] = { "dpb", GPIO_4 },
> +};
> +
> static const struct gmbus_pin gmbus_pins_skl[] = {
> 	[GMBUS_PIN_DPC] = { "dpc", GPIO_3 },
> 	[GMBUS_PIN_DPB] = { "dpb", GPIO_4 },
> @@ -178,9 +183,12 @@ static const struct gmbus_pin *get_gmbus_pin(struct intel_display *display,
> 	} else if (DISPLAY_VER(display) == 9) {
> 		pins = gmbus_pins_skl;
> 		size = ARRAY_SIZE(gmbus_pins_skl);
> +	} else if (HAS_PCH_LPT_LP(display)) {
> +		pins = gmbus_pins_lpt_lp;
> +		size = ARRAY_SIZE(gmbus_pins_lpt_lp);
> 	} else if (HAS_PCH_LPT(display)) {
> -		pins = gmbus_pins_lpt;
> -		size = ARRAY_SIZE(gmbus_pins_lpt);
> +		pins = gmbus_pins_lpt_h;
> +		size = ARRAY_SIZE(gmbus_pins_lpt_h);
> 	} else {
> 		pins = gmbus_pins;
> 		size = ARRAY_SIZE(gmbus_pins);
> -- 
> 2.53.0
>
>
--8323329-1230177070-1782223553=:605841--
