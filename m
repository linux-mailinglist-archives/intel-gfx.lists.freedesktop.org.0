Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IFO/IhsAA2rdzQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 12:25:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A135E51E81A
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 12:25:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F9B810E074;
	Tue, 12 May 2026 10:25:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rna23VeH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84DA310E074;
 Tue, 12 May 2026 10:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778581529; x=1810117529;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=vg1nFlgc7cN48KZ/YcegDVopL2MqvEXBOS2B1XJfYW0=;
 b=Rna23VeHX9u+KRnYj5iVFq4r0gPMFV2JELtn9t1jJiRYrKKn4nmlFI1s
 YlIaF9PQwCal8qjewJpHpXX5kWsFXkkY7TZoZudYgb/UIMfFVWDda93J0
 2n10OuI0lZSw5y33CzTZkOeOQYngBZuJxfUazgpUgBO4c1XQnKfF422Bz
 0+accEBqqMWWNPQaIdRW54VF/YJD8o40Iw7xmGqEQFkbRHqfxiH1e9p/y
 MO3HTT2U+K9oicKKh6UXa7riPwOWnPsjjecrfwg1vrN5YBXd3dyWrsvSa
 Kmspssvc4EiPlZOUT+XOxIMZHM3/Hk49vP2GGTQe53hUr3vdrp0s6FsAn A==;
X-CSE-ConnectionGUID: iwoU1xiHRaiHP0mWw9mIMg==
X-CSE-MsgGUID: cWrt9TgXQr2xX09of5zwwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="90869250"
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="90869250"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 03:25:28 -0700
X-CSE-ConnectionGUID: JbvF/CYGT0S1R719PrZfIg==
X-CSE-MsgGUID: bzLyrX06STydoUsagkNARQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="237971573"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.203])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 03:25:26 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 01/14] drm/i915: Disable the plane if initial plane
 config readout failed
In-Reply-To: <20260511214122.8468-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260511214122.8468-1-ville.syrjala@linux.intel.com>
 <20260511214122.8468-2-ville.syrjala@linux.intel.com>
Date: Tue, 12 May 2026 13:25:22 +0300
Message-ID: <34a35363d74c216b3e655b6c07d9d2904b4fe298@intel.com>
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
X-Rspamd-Queue-Id: A135E51E81A
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

On Tue, 12 May 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Properly turn off the plane if it is enabled but
> .get_initial_plane_config() failed for whatever reason.
>
> The hardware does (or at least did) perform some kind of automagic
> plane disable when the pipe gets disabled, but we don't rely on that
> anywhere else either. Also the GGTT/actual memory may get clobbered
> afterwards, so leaving the plane enabled here could result in visual
> corruption/GTT faults/etc.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_initial_plane.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers=
/gpu/drm/i915/display/intel_initial_plane.c
> index 034fe199c2a1..4d87627c6f6d 100644
> --- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
> @@ -128,11 +128,10 @@ intel_find_initial_plane_obj(struct intel_crtc *crt=
c,
>=20=20
>  	/*
>  	 * TODO:
> -	 *   Disable planes if get_initial_plane_config() failed.
>  	 *   Make sure things work if the surface base is not page aligned.
>  	 */
>  	if (!plane_config->fb)
> -		return;
> +		goto nofb;
>=20=20
>  	if (intel_alloc_initial_plane_obj(display, plane_config)) {
>  		fb =3D plane_config->fb;
> @@ -184,7 +183,8 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
>  	 * simplest solution is to just disable the primary plane now and
>  	 * pretend the BIOS never had it enabled.
>  	 */
> -	intel_plane_disable_noatomic(crtc, plane);
> +	if (plane_state->uapi.visible)
> +		intel_plane_disable_noatomic(crtc, plane);
>  }
>=20=20
>  static void plane_config_fini(struct intel_display *display,

--=20
Jani Nikula, Intel
