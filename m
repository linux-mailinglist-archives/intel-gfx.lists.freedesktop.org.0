Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VKohB5qbOmoxBggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 16:43:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1B56B7FD3
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 16:43:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=SeirOUdE;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6D1E10EB90;
	Tue, 23 Jun 2026 14:43:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD44910EB8B;
 Tue, 23 Jun 2026 14:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782225815; x=1813761815;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=zkDWHGwd+QQlouaXI7rroYqVARGLA4uHTWnI61FueNI=;
 b=SeirOUdEolg3yBFRVeeyoJ4PWgqvlH7ul16Y65/+J7/f4G2gX34FHrmP
 NDFzcJPewbIVwl0Pou715F17/hycgs6xDq8Gs/yfqzdhsBiD4xH6XT1g0
 kLut2TnPeJWKBV8Si6drp9vqb0zmbRVS4mSiXek+3yl7trPqN8UhDmajx
 zJZpIyrJ9U0vvSeBawNH17UOApAqzhQkWodYIkIv6eDUB10OZqRFd79Kf
 hutiW0FhVvOjWHPtyk75CadeXfTtAFmq07AprLvQ7n4y0y82XNEXXp6Fo
 WuGlWZETqK4c1L15HpQyalKJXvk07I5mXMgts72lK6BlygHSuHIpRzXOr g==;
X-CSE-ConnectionGUID: 8P3/z7LxShmGZ/GrVkQISA==
X-CSE-MsgGUID: lzaC6KyQRD+6uxcjC3ei9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="93558865"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="93558865"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 07:43:34 -0700
X-CSE-ConnectionGUID: jL4L2cGNR8y83cAQ0Y1Jww==
X-CSE-MsgGUID: Rcre7mNqQLSk3lYa6ZV2tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="245400037"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 07:43:33 -0700
Date: Tue, 23 Jun 2026 16:43:31 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/6] drm/i915/gmbus: Rename GPIO pins
In-Reply-To: <20260623125111.6632-2-ville.syrjala@linux.intel.com>
Message-ID: <9be069dc-e1f0-bf15-7506-b40fa867c71e@intel.com>
References: <20260623125111.6632-1-ville.syrjala@linux.intel.com>
 <20260623125111.6632-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-486462598-1782223389=:605841"
Content-ID: <9e05adb0-ea38-0942-dd79-6dbc4a12f577@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6C1B56B7FD3

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-486462598-1782223389=:605841
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <60ef332b-911e-3496-3e2d-396a25aae6c3@intel.com>

On Tue, 23 Jun 2026, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Replace the alphabetical GPIOA,GPIOB,... with numeric
> GPIO_0,GPIO_1,... This makes the naming scheme agree with
> BSpec. No idea why the alphabetical naming was originally
> chosen as BSpec never used that convention for the GPIO pins.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

How do you see in general adding BSpec no. into trailers, here eg.
49306, 49311 or 68971? Does it make sense, or not really?

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³

> ---
> drivers/gpu/drm/i915/display/intel_gmbus.c | 124 ++++++++++-----------
> 1 file changed, 62 insertions(+), 62 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
> index 049157c41fe2..9990e6391b03 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> @@ -54,21 +54,21 @@ struct intel_gmbus {
> };
>
> enum gmbus_gpio {
> -	GPIOA,
> -	GPIOB,
> -	GPIOC,
> -	GPIOD,
> -	GPIOE,
> -	GPIOF,
> -	GPIOG,
> -	GPIOH,
> -	__GPIOI_UNUSED,
> -	GPIOJ,
> -	GPIOK,
> -	GPIOL,
> -	GPIOM,
> -	GPION,
> -	GPIOO,
> +	GPIO_0,
> +	GPIO_1,
> +	GPIO_2,
> +	GPIO_3,
> +	GPIO_4,
> +	GPIO_5,
> +	GPIO_6,
> +	GPIO_7,
> +	GPIO_8,
> +	GPIO_9,
> +	GPIO_10,
> +	GPIO_11,
> +	GPIO_12,
> +	GPIO_13,
> +	GPIO_14,
> };
>
> struct gmbus_pin {
> @@ -78,77 +78,77 @@ struct gmbus_pin {
>
> /* Map gmbus pin pairs to names and registers. */
> static const struct gmbus_pin gmbus_pins[] = {
> -	[GMBUS_PIN_SSC] = { "ssc", GPIOB },
> -	[GMBUS_PIN_VGADDC] = { "vga", GPIOA },
> -	[GMBUS_PIN_PANEL] = { "panel", GPIOC },
> -	[GMBUS_PIN_DPC] = { "dpc", GPIOD },
> -	[GMBUS_PIN_DPB] = { "dpb", GPIOE },
> -	[GMBUS_PIN_DPD] = { "dpd", GPIOF },
> +	[GMBUS_PIN_SSC] = { "ssc", GPIO_1 },
> +	[GMBUS_PIN_VGADDC] = { "vga", GPIO_0 },
> +	[GMBUS_PIN_PANEL] = { "panel", GPIO_2 },
> +	[GMBUS_PIN_DPC] = { "dpc", GPIO_3 },
> +	[GMBUS_PIN_DPB] = { "dpb", GPIO_4 },
> +	[GMBUS_PIN_DPD] = { "dpd", GPIO_5 },
> };
>
> static const struct gmbus_pin gmbus_pins_bdw[] = {
> -	[GMBUS_PIN_VGADDC] = { "vga", GPIOA },
> -	[GMBUS_PIN_DPC] = { "dpc", GPIOD },
> -	[GMBUS_PIN_DPB] = { "dpb", GPIOE },
> -	[GMBUS_PIN_DPD] = { "dpd", GPIOF },
> +	[GMBUS_PIN_VGADDC] = { "vga", GPIO_0 },
> +	[GMBUS_PIN_DPC] = { "dpc", GPIO_3 },
> +	[GMBUS_PIN_DPB] = { "dpb", GPIO_4 },
> +	[GMBUS_PIN_DPD] = { "dpd", GPIO_5 },
> };
>
> static const struct gmbus_pin gmbus_pins_skl[] = {
> -	[GMBUS_PIN_DPC] = { "dpc", GPIOD },
> -	[GMBUS_PIN_DPB] = { "dpb", GPIOE },
> -	[GMBUS_PIN_DPD] = { "dpd", GPIOF },
> +	[GMBUS_PIN_DPC] = { "dpc", GPIO_3 },
> +	[GMBUS_PIN_DPB] = { "dpb", GPIO_4 },
> +	[GMBUS_PIN_DPD] = { "dpd", GPIO_5 },
> };
>
> static const struct gmbus_pin gmbus_pins_bxt[] = {
> -	[GMBUS_PIN_1_BXT] = { "dpb", GPIOB },
> -	[GMBUS_PIN_2_BXT] = { "dpc", GPIOC },
> -	[GMBUS_PIN_3_BXT] = { "misc", GPIOD },
> +	[GMBUS_PIN_1_BXT] = { "dpb", GPIO_1 },
> +	[GMBUS_PIN_2_BXT] = { "dpc", GPIO_2 },
> +	[GMBUS_PIN_3_BXT] = { "misc", GPIO_3 },
> };
>
> static const struct gmbus_pin gmbus_pins_cnp[] = {
> -	[GMBUS_PIN_1_BXT] = { "dpb", GPIOB },
> -	[GMBUS_PIN_2_BXT] = { "dpc", GPIOC },
> -	[GMBUS_PIN_3_BXT] = { "misc", GPIOD },
> -	[GMBUS_PIN_4_CNP] = { "dpd", GPIOE },
> +	[GMBUS_PIN_1_BXT] = { "dpb", GPIO_1 },
> +	[GMBUS_PIN_2_BXT] = { "dpc", GPIO_2 },
> +	[GMBUS_PIN_3_BXT] = { "misc", GPIO_3 },
> +	[GMBUS_PIN_4_CNP] = { "dpd", GPIO_4 },
> };
>
> static const struct gmbus_pin gmbus_pins_icp[] = {
> -	[GMBUS_PIN_1_BXT] = { "dpa", GPIOB },
> -	[GMBUS_PIN_2_BXT] = { "dpb", GPIOC },
> -	[GMBUS_PIN_3_BXT] = { "dpc", GPIOD },
> -	[GMBUS_PIN_9_TC1_ICP] = { "tc1", GPIOJ },
> -	[GMBUS_PIN_10_TC2_ICP] = { "tc2", GPIOK },
> -	[GMBUS_PIN_11_TC3_ICP] = { "tc3", GPIOL },
> -	[GMBUS_PIN_12_TC4_ICP] = { "tc4", GPIOM },
> -	[GMBUS_PIN_13_TC5_TGP] = { "tc5", GPION },
> -	[GMBUS_PIN_14_TC6_TGP] = { "tc6", GPIOO },
> +	[GMBUS_PIN_1_BXT] = { "dpa", GPIO_1 },
> +	[GMBUS_PIN_2_BXT] = { "dpb", GPIO_2 },
> +	[GMBUS_PIN_3_BXT] = { "dpc", GPIO_3 },
> +	[GMBUS_PIN_9_TC1_ICP] = { "tc1", GPIO_9 },
> +	[GMBUS_PIN_10_TC2_ICP] = { "tc2", GPIO_10 },
> +	[GMBUS_PIN_11_TC3_ICP] = { "tc3", GPIO_11 },
> +	[GMBUS_PIN_12_TC4_ICP] = { "tc4", GPIO_12 },
> +	[GMBUS_PIN_13_TC5_TGP] = { "tc5", GPIO_13 },
> +	[GMBUS_PIN_14_TC6_TGP] = { "tc6", GPIO_14 },
> };
>
> static const struct gmbus_pin gmbus_pins_dg1[] = {
> -	[GMBUS_PIN_1_BXT] = { "dpa", GPIOB },
> -	[GMBUS_PIN_2_BXT] = { "dpb", GPIOC },
> -	[GMBUS_PIN_3_BXT] = { "dpc", GPIOD },
> -	[GMBUS_PIN_4_CNP] = { "dpd", GPIOE },
> +	[GMBUS_PIN_1_BXT] = { "dpa", GPIO_1 },
> +	[GMBUS_PIN_2_BXT] = { "dpb", GPIO_2 },
> +	[GMBUS_PIN_3_BXT] = { "dpc", GPIO_3 },
> +	[GMBUS_PIN_4_CNP] = { "dpd", GPIO_4 },
> };
>
> static const struct gmbus_pin gmbus_pins_dg2[] = {
> -	[GMBUS_PIN_1_BXT] = { "dpa", GPIOB },
> -	[GMBUS_PIN_2_BXT] = { "dpb", GPIOC },
> -	[GMBUS_PIN_3_BXT] = { "dpc", GPIOD },
> -	[GMBUS_PIN_4_CNP] = { "dpd", GPIOE },
> -	[GMBUS_PIN_9_TC1_ICP] = { "tc1", GPIOJ },
> +	[GMBUS_PIN_1_BXT] = { "dpa", GPIO_1 },
> +	[GMBUS_PIN_2_BXT] = { "dpb", GPIO_2 },
> +	[GMBUS_PIN_3_BXT] = { "dpc", GPIO_3 },
> +	[GMBUS_PIN_4_CNP] = { "dpd", GPIO_4 },
> +	[GMBUS_PIN_9_TC1_ICP] = { "tc1", GPIO_9 },
> };
>
> static const struct gmbus_pin gmbus_pins_mtp[] = {
> -	[GMBUS_PIN_1_BXT] = { "dpa", GPIOB },
> -	[GMBUS_PIN_2_BXT] = { "dpb", GPIOC },
> -	[GMBUS_PIN_3_BXT] = { "dpc", GPIOD },
> -	[GMBUS_PIN_4_CNP] = { "dpd", GPIOE },
> -	[GMBUS_PIN_5_MTP] = { "dpe", GPIOF },
> -	[GMBUS_PIN_9_TC1_ICP] = { "tc1", GPIOJ },
> -	[GMBUS_PIN_10_TC2_ICP] = { "tc2", GPIOK },
> -	[GMBUS_PIN_11_TC3_ICP] = { "tc3", GPIOL },
> -	[GMBUS_PIN_12_TC4_ICP] = { "tc4", GPIOM },
> +	[GMBUS_PIN_1_BXT] = { "dpa", GPIO_1 },
> +	[GMBUS_PIN_2_BXT] = { "dpb", GPIO_2 },
> +	[GMBUS_PIN_3_BXT] = { "dpc", GPIO_3 },
> +	[GMBUS_PIN_4_CNP] = { "dpd", GPIO_4 },
> +	[GMBUS_PIN_5_MTP] = { "dpe", GPIO_5 },
> +	[GMBUS_PIN_9_TC1_ICP] = { "tc1", GPIO_9 },
> +	[GMBUS_PIN_10_TC2_ICP] = { "tc2", GPIO_10 },
> +	[GMBUS_PIN_11_TC3_ICP] = { "tc3", GPIO_11 },
> +	[GMBUS_PIN_12_TC4_ICP] = { "tc4", GPIO_12 },
> };
>
> static const struct gmbus_pin *get_gmbus_pin(struct intel_display *display,
> -- 
> 2.53.0
>
>
--8323329-486462598-1782223389=:605841--
