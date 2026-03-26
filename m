Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMirDlwZxWnr6QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:32:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFF83348EE
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:32:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A39C10E965;
	Thu, 26 Mar 2026 11:32:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QPnUjca2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FB1010E94E;
 Thu, 26 Mar 2026 11:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774524761; x=1806060761;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=gV9JinzFyRhPjMEsNyBeRFiqzZDOxcF3gIO/WuzVN64=;
 b=QPnUjca2lvbbYat2+ShpTlba8iiIZvv4AJbEMxnmN7JoKNHswelnJ4Xq
 zAMzu0wtQCnD9bH7I36qUEjtu3Ip1FpoaDUXKetL3+jSObt00rTEo6vCw
 wFm7MXKCjUjxTygZqgQlfDtzXWEtQw8/KdfFzFXUqtEFc63htd9JxPb4M
 xjc1TsafTanP0mhoJ4tN6/nTae5GKuUlQddivGzte0zC2Z0w41j7Zu8bB
 fHaUb1xGtpHsnB9A9Ota+QY6DkcRiHw/kwAiaxvD1VCdlbWBfo9A27jHi
 Rj/CubiXSZRjoNfZlPpINF9h/gAE6dMFNJjlG1/sN4J+5vRNPV5jKsqIn Q==;
X-CSE-ConnectionGUID: is2Ybx+vSx6qDmtC9QAdyA==
X-CSE-MsgGUID: yUIT8CpSRa2W+75GI/hn9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="74606882"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="74606882"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 04:32:41 -0700
X-CSE-ConnectionGUID: iPw34rOyRoe0c3OGC37akw==
X-CSE-MsgGUID: d7VwWdy3Rn+5BJfI0Cdgvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="224044004"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 04:32:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 07/12] drm/i915/de: Add intel_de_read16()
In-Reply-To: <20260325185342.11482-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260325185342.11482-1-ville.syrjala@linux.intel.com>
 <20260325185342.11482-8-ville.syrjala@linux.intel.com>
Date: Thu, 26 Mar 2026 13:32:35 +0200
Message-ID: <d453f9c5cc08b3e4c96b42a8e4c47c48f19210b8@intel.com>
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
X-Rspamd-Queue-Id: CAFF83348EE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 25 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We'll need a replacement for intel_uncore_read16() in order to
> untangle intel_mchbar_read16() from uncore. As with the 8 bit
> counterpart this doesn't need to work on modern platforms
> so we can forgo all the DMC wakelock stuff and whatnot.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_de.c | 8 ++++++++
>  drivers/gpu/drm/i915/display/intel_de.h | 1 +
>  2 files changed, 9 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_de.c b/drivers/gpu/drm/i9=
15/display/intel_de.c
> index d2a418da2d54..a96e83d76eaa 100644
> --- a/drivers/gpu/drm/i915/display/intel_de.c
> +++ b/drivers/gpu/drm/i915/display/intel_de.c
> @@ -176,3 +176,11 @@ void intel_de_write8(struct intel_display *display, =
i915_reg_t reg, u8 val)
>=20=20
>  	intel_uncore_write8(__to_uncore(display), reg, val);
>  }
> +
> +u16 intel_de_read16(struct intel_display *display, i915_reg_t reg)
> +{
> +	/* this is only used on MCHBAR registers on pre-SNB */
> +	drm_WARN_ON(display->drm, DISPLAY_VER(display) >=3D 6);
> +
> +	return intel_uncore_read16(__to_uncore(display), reg);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i9=
15/display/intel_de.h
> index f87b84ab9d6d..3f9861b7a589 100644
> --- a/drivers/gpu/drm/i915/display/intel_de.h
> +++ b/drivers/gpu/drm/i915/display/intel_de.h
> @@ -19,6 +19,7 @@ static inline struct intel_uncore *__to_uncore(struct i=
ntel_display *display)
>=20=20
>  u8 intel_de_read8(struct intel_display *display, i915_reg_t reg);
>  void intel_de_write8(struct intel_display *display, i915_reg_t reg, u8 v=
al);
> +u16 intel_de_read16(struct intel_display *display, i915_reg_t reg);
>=20=20
>  static inline u32
>  intel_de_read(struct intel_display *display, i915_reg_t reg)

--=20
Jani Nikula, Intel
