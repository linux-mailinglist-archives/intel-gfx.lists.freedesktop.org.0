Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFysIWobxWnr6QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:41:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1178A334A43
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:41:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6033D10E980;
	Thu, 26 Mar 2026 11:41:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EW2/8iwl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E8F710E979;
 Thu, 26 Mar 2026 11:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774525286; x=1806061286;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=plB9fbe47tUPEex2C9wTaUBdW0hfQgI7sSFVk+8KsbU=;
 b=EW2/8iwl1FxcrAPg0HmL9AwJucBc4hKCaChie9Amzvj8KKV1IxxOazUD
 7OIExqvOa0JYEDTxaDLnrie4A2Ndq3hio6bpKrdvKC5vSArXIHCJ3G1lB
 Snhg6hKaVEDNoP8oZsBoPuBe4QtQqZ3NZkeqyzELL5cEcvdOc8SHe/hWj
 r82z60b8NSTux31RJ1nCxIQbRGaSgCCNpSrZeoChjVtxbTumgi8d/i7rg
 mKNJFXv1STgVJWZV7+YrfopeiVHHmtuRHkT+FrZlpqP23tVAMe+6ShHWX
 NjXuRCnxscUvRRWebMZuIHI3FW60Wiw8fSYNKSvGHvIUV1Y9s05oK6cxh g==;
X-CSE-ConnectionGUID: ZhIYC3QaQNGnwhnyjGLkfw==
X-CSE-MsgGUID: DdmO3FVBRS6ZafdR38Y/Aw==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="101033921"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="101033921"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 04:41:26 -0700
X-CSE-ConnectionGUID: AlmPDTdIThi131Me4eEZlg==
X-CSE-MsgGUID: CfxX1rBXQCOCT/eVa4QoLg==
X-ExtLoop1: 1
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 04:41:24 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 09/12] drm/i915/de: Add a simple intel_de_read64_2x32()
In-Reply-To: <20260325185342.11482-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260325185342.11482-1-ville.syrjala@linux.intel.com>
 <20260325185342.11482-10-ville.syrjala@linux.intel.com>
Date: Thu, 26 Mar 2026 13:41:20 +0200
Message-ID: <07d608454976ffb769f6e020bdef318dab9f3e5e@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
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
X-Rspamd-Queue-Id: 1178A334A43
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 25 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> intel_de_read64_2x32_volatile() is a complex beast because
> it needs to deal with volatile register values. For simpler
> cases we can simply do a pair normal intel_de_read()s.
>
> My main reason for hating overuse of intel_de_read64_2x32_volatile()
> is that it makes register tracepoints confusing. It always
> does three accesses in the somewhat weird udw,ldw,udw order,
> confusing the reader of the trace. Much more clear if we just
> observe the two reads in the natural little endian order.
>
> We also have no non-volatile use case where the LDW and UDW
> are stored in non-consecutive registers, so we can just pass
> along a single register offset.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_de.h | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i9=
15/display/intel_de.h
> index 295e7176b732..624a0627b95c 100644
> --- a/drivers/gpu/drm/i915/display/intel_de.h
> +++ b/drivers/gpu/drm/i915/display/intel_de.h
> @@ -53,6 +53,19 @@ intel_de_read64_2x32_volatile(struct intel_display *di=
splay,
>  	return val;
>  }
>=20=20
> +static inline u64
> +intel_de_read64_2x32(struct intel_display *display,
> +		     i915_reg_t reg)

Could fit on one line, matter of taste I guess.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +{
> +	i915_reg_t upper_reg =3D _MMIO(i915_mmio_reg_offset(reg) + 4);
> +	u32 lower, upper;
> +
> +	lower =3D intel_de_read(display, reg);
> +	upper =3D intel_de_read(display, upper_reg);
> +
> +	return (u64)upper << 32 | lower;
> +}
> +
>  static inline void
>  intel_de_posting_read(struct intel_display *display, i915_reg_t reg)
>  {

--=20
Jani Nikula, Intel
