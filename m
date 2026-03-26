Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mNsXEH4VxWnr6QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:16:14 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4949E3343D2
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:16:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 570A910E29C;
	Thu, 26 Mar 2026 11:16:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VFyIZu6h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC83710E1EA;
 Thu, 26 Mar 2026 11:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774523769; x=1806059769;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=vIkZywfa+OVyVuE0a5fZx+v9A+FDIFGGNs46i2+6fc0=;
 b=VFyIZu6hUG4mDuU/TiQXlPDDXUsmF46WkvxaPsppWPjUNoHFa7n6LlUm
 RiJTDMzxN4WXnPU7ROfbGU3KshrP+IQhTGK1W6WfyyHUIKYnCq7p8KQPg
 awYl/w5IWz9u6nha1uZyopxo5+Xr8IjPmQlul3YPhDJuwjp37eaW53Nom
 OZrMEyxUmiHk0pDQH0gv4LRtC7vOkD6OcLwQncWSAq9Kfr9KXfonL8Q2I
 ES9YGvt9falUuyGGKWNo3tG6IwW48HkVibtqmvhOg5Fx5wR8ESaEfqLt6
 +WFAHY9aGkty+DMFEqIeAZXHIHIqHGyOuQpgO2z+G7ThJmdNh3Yky/8EJ w==;
X-CSE-ConnectionGUID: jqLIQOuvS2Wb6UsMM1ee1w==
X-CSE-MsgGUID: NIqRrAgLR1K1NVcV99SeTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="75646356"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="75646356"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 04:15:54 -0700
X-CSE-ConnectionGUID: gOEKJZGaQm2yQBkolGgQ+A==
X-CSE-MsgGUID: OKX5A21dTlmIVHHX3aIJhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="221669838"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 04:15:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 03/12] drm/i915/mchbar: Define the end of the MCHBAR mirror
In-Reply-To: <20260325185342.11482-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260325185342.11482-1-ville.syrjala@linux.intel.com>
 <20260325185342.11482-4-ville.syrjala@linux.intel.com>
Date: Thu, 26 Mar 2026 13:15:46 +0200
Message-ID: <441c648b13c7cb03478a373a4b48cf6954c1c1d0@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 4949E3343D2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 25 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Add defines for the end of the MCHBAR mirror. I'm planning to
> use this for some range sanity checks.
>
> BSpec: 51771
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_mchbar_regs.h | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_mchbar_regs.h b/drivers/gpu/drm/i=
915/intel_mchbar_regs.h
> index 614d4017b57b..ca0d421be16c 100644
> --- a/drivers/gpu/drm/i915/intel_mchbar_regs.h
> +++ b/drivers/gpu/drm/i915/intel_mchbar_regs.h
> @@ -16,11 +16,16 @@
>   * every way.  It is not accessible from the CP register read instructio=
ns.
>   *
>   * Starting from Haswell, you can't write registers using the MCHBAR mir=
ror,
> - * just read.
> + * just read. On MTL+ the mirror no longer exists.
>   */
>=20=20
>  #define MCHBAR_MIRROR_BASE			0x10000
> +#define MCHBAR_MIRROR_END			0x13fff
> +
>  #define MCHBAR_MIRROR_BASE_SNB			0x140000
> +#define MCHBAR_MIRROR_END_SNB			0x147fff
> +#define MCHBAR_MIRROR_END_ICL_RKL		0x14ffff
> +#define MCHBAR_MIRROR_END_TGL			0x15ffff
>=20=20
>  #define CTG_STOLEN_RESERVED			_MMIO(MCHBAR_MIRROR_BASE + 0x34)
>  #define ELK_STOLEN_RESERVED			_MMIO(MCHBAR_MIRROR_BASE + 0x48)

--=20
Jani Nikula, Intel
