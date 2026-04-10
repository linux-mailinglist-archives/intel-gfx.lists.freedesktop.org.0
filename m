Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iJlCFEUd2WnVmQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 17:54:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ACCF3D9D64
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 17:54:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5047910E252;
	Fri, 10 Apr 2026 15:54:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OfJstmjj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1AA610E98C;
 Fri, 10 Apr 2026 15:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775836483; x=1807372483;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=6fXRXe6NQduRO3RmcLJvVDHoBIYNxuRWcwEX+8h0ebk=;
 b=OfJstmjjuGd7EJvDnkxynXAd5NLlMMrIsXbyMPzbazMPh4/TOAvovmPF
 Bk1JglBs5TeL5Fv8ponJH2WLEtR/pQXSz6hJFLANe74dazwQO6Yz6zNkx
 LimsTO7dveAcqeFnM18fhWIZe3T3ssOcvcn5tzote2ElD2485u0yQvhm3
 FJ0/6RJJaXJjo3qBDvOC1wN3JuZXLK1hldWYjUATmsJliPu5IRb5QkeZw
 ++wSTCwboBB1ohA3ZFpV9ASxCN+QFaanE4WE/vDL1JK0QJpYq0nGV5cJt
 dzuGT3Tnlef4ykJYDGdAXE2dGZfecvlhQEZTQxfdE69AnvjPkmycTCsED g==;
X-CSE-ConnectionGUID: cuPm3HAkTdq5KUzpG6Fzqw==
X-CSE-MsgGUID: 3WlASKYyR1aWyWaQXvr5Lw==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="87934123"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="87934123"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 08:54:42 -0700
X-CSE-ConnectionGUID: XGZmPbNGRi6FGNVTlg08og==
X-CSE-MsgGUID: xYVGKbOhRc+fUVx3gkodkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="230838116"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.149])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 08:54:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 06/10] drm/i915: Use a 1 second timeout for the polling
 vblank wait
In-Reply-To: <20260410150449.9699-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260410150449.9699-1-ville.syrjala@linux.intel.com>
 <20260410150449.9699-7-ville.syrjala@linux.intel.com>
Date: Fri, 10 Apr 2026 18:54:37 +0300
Message-ID: <1f941f68512a4c18c096b95277d332fb2e6afe4f@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 0ACCF3D9D64
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 10 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> 40 msec seems like a very random number for a vblank wait timeout.
> Considering ~24Hz display modes are definitely a thing this seems
> way too low. Just bump it to a full second to match what we've been
> using for normal vblank waits.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_initial_plane.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers=
/gpu/drm/i915/display/intel_initial_plane.c
> index 74e10d34c63c..4f1591b55752 100644
> --- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
> @@ -36,7 +36,7 @@ void intel_initial_plane_vblank_wait(struct intel_crtc =
*crtc)
>  	start_ts =3D intel_de_read(display, PIPE_FRMTMSTMP(crtc->pipe));
>=20=20
>  	ret =3D poll_timeout_us(end_ts =3D intel_de_read(display, PIPE_FRMTMSTM=
P(crtc->pipe)),
> -			      end_ts !=3D start_ts, 1000, 40 * 1000, false);
> +			      end_ts !=3D start_ts, 1000, 1000 * 1000, false);
>  	if (ret)
>  		drm_warn(display->drm, "[CRTC:%d:%s] early vblank wait timed out\n",
>  			 crtc->base.base.id, crtc->base.name);

--=20
Jani Nikula, Intel
