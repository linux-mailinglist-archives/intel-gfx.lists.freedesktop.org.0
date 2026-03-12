Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yF+yKtKmsmnwOQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 12:43:14 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 148B22712FB
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 12:43:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94C2710E9DA;
	Thu, 12 Mar 2026 11:43:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WZvORvlJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 420AF10E9DA;
 Thu, 12 Mar 2026 11:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773315791; x=1804851791;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=agjiRk0+uKueJnHPyMMv1awv6P6mF5AgoHLE5kry1Pg=;
 b=WZvORvlJKKMXsRaKrlS3Zb3tBuSdD14Ay/w0VpoOueOlGorXV3gNeCIb
 Lyvinjya2uLoFxkdVguTsgdojGLtGOKli6/4H35anDiyKvfj2TU9rrvNV
 b82H4+KGMgGRrQ0da6TU5kQtuQptndxwRRu8Jviq38ei6PiHVQagR65s8
 pDZ7BFtppaTxBNTQqHeGsp94yA12FyQIfk9VdOpAIwL2udI90KCrUMVZm
 3elm9j6cVgXZ+u7+xuu5u/zglqRQU4sUAkw1hcEQp+ZJI+1QKnmGwzEJU
 tLWYn83VYWGLQSxVXpeO6DXGho7+qs/h/LRM0ypT0xf0g+gHgpXw9OLdt g==;
X-CSE-ConnectionGUID: EkAZmdjhSSWNKRYvffgivg==
X-CSE-MsgGUID: w4QTHRp5TXGBudQGwp3CwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74317440"
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="74317440"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 04:43:11 -0700
X-CSE-ConnectionGUID: 0Obgx6YaR7CH++miFjxArw==
X-CSE-MsgGUID: npHaF5gqQu+9hfHEItDN3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="219896766"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.143])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 04:43:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, ankit.k.nautiyal@intel.com,
 jouni.hogander@intel.com, Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCHv6] drm/i915/dp: Read ALPM caps after DPCD init
In-Reply-To: <20260304072157.1123283-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260302033630.428913-1-arun.r.murthy@intel.com>
 <20260304072157.1123283-1-arun.r.murthy@intel.com>
Date: Thu, 12 Mar 2026 13:43:03 +0200
Message-ID: <c56ac692640414ac893acb76898469db3c533027@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 148B22712FB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 04 Mar 2026, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> For eDP read the ALPM DPCD caps after DPCD initalization and just before
> the PSR init.

Folks, this is *not* sufficient for a commit message.

Please ensure the commit message answers the question, "Why?".

There's nothing about that here, and this is a commit that will be
backported to stable kernels as well.

BR,
Jani.



>
> v2: Move intel_alpm_init to intel_edp_init_dpcd (Jouni)
> v3: Add Fixes with commit-id (Jouni)
> v4: Separated the alpm dpcd read caps from alpm_init and moved to
> intel_edp_init_dpcd.
> v5: Read alpm_caps always for eDP irrespective of the eDP version (Jouni)
> v6: replace drm_dp_dpcd_readb with drm_dp_dpcd_read_byte (Jouni)
>
> Fixes: 15438b325987 ("drm/i915/alpm: Add compute config for lobf")
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> Reviewed-by: Animesh Manna <animesh.manna@intel.com>
> Reviewed-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c | 6 ------
>  drivers/gpu/drm/i915/display/intel_dp.c   | 7 +++++++
>  2 files changed, 7 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/=
i915/display/intel_alpm.c
> index b3334bc4d0f9..a7350ce8e716 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -44,12 +44,6 @@ bool intel_alpm_is_alpm_aux_less(struct intel_dp *inte=
l_dp,
>=20=20
>  void intel_alpm_init(struct intel_dp *intel_dp)
>  {
> -	u8 dpcd;
> -
> -	if (drm_dp_dpcd_readb(&intel_dp->aux, DP_RECEIVER_ALPM_CAP, &dpcd) < 0)
> -		return;
> -
> -	intel_dp->alpm_dpcd =3D dpcd;
>  	mutex_init(&intel_dp->alpm.lock);
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 025e906b63a9..d6a7ccbc9932 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4709,6 +4709,7 @@ static bool
>  intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *c=
onnector)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> +	int ret;
>=20=20
>  	/* this function is meant to be called only once */
>  	drm_WARN_ON(display->drm, intel_dp->dpcd[DP_DPCD_REV] !=3D 0);
> @@ -4748,6 +4749,12 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, str=
uct intel_connector *connector
>  	 */
>  	intel_dp_init_source_oui(intel_dp);
>=20=20
> +	/* Read the ALPM DPCD caps */
> +	ret =3D drm_dp_dpcd_read_byte(&intel_dp->aux, DP_RECEIVER_ALPM_CAP,
> +				    &intel_dp->alpm_dpcd);
> +	if (ret < 0)
> +		return false;
> +
>  	/*
>  	 * This has to be called after intel_dp->edp_dpcd is filled, PSR checks
>  	 * for SET_POWER_CAPABLE bit in intel_dp->edp_dpcd[1]

--=20
Jani Nikula, Intel
