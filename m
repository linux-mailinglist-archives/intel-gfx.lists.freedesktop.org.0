Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IN5oKc5yKWokXAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 16:21:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C305F66A2CA
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 16:21:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=hoKiwE9N;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5003F10E9CA;
	Wed, 10 Jun 2026 14:21:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6395910E9C8;
 Wed, 10 Jun 2026 14:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781101258; x=1812637258;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=D4abiVS944jvM2bXAA5HYuho73aPVDBx//8GyQv1D2M=;
 b=hoKiwE9NY9bH/YhLaVX3iWtG60U3/P5j9kvRtGb78Zu/iPezcG9PSB6F
 CJZvYnNFRXg5CJ5daTC47GUMphZwsxGhJcRhc6VopH3BoqyNwF9E8lxrI
 uFRlvndODLDXegtjCt13X/fNtX32wSHEi8eMVlbt2v9OloDeR6LRkqS5w
 rQk5SIRahX6C+ezyB92c/9c2A1AEI4StVE3m1Hwh3WHPfGIR3+swrsOac
 I3e4or/V4zaxm1Dr/sf9L+USzf8PPKqX+66gXGCrxQ23bnpK789pmifEe
 7n1c2tCJ+tF8AC22z16n+eff9r7XlIYHcJrEKzh4EOPajMZAnZr/RcuKD A==;
X-CSE-ConnectionGUID: GVwyWltfSEGEfhbExCbZcA==
X-CSE-MsgGUID: Hlg4VMqZRdOaZx6DeNypLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="85737693"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="85737693"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 07:20:58 -0700
X-CSE-ConnectionGUID: NzCNpjSxTsK+P5yM3VPRCw==
X-CSE-MsgGUID: mndZM0qiQTWW8zLcddbwLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="246044530"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.244.3])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 07:20:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>, Nemesa Garg
 <nemesa.garg@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v1 4/9] drm/i915/scaler: move independent CASF check
In-Reply-To: <20260609231217.208357-5-michal.grzelak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260609231217.208357-1-michal.grzelak@intel.com>
 <20260609231217.208357-5-michal.grzelak@intel.com>
Date: Wed, 10 Jun 2026 17:20:52 +0300
Message-ID: <84976148ecef740231d3655f144df8e9b942681f@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,linux.intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C305F66A2CA

On Wed, 10 Jun 2026, Micha=C5=82 Grzelak <michal.grzelak@intel.com> wrote:
> First clause of CASF check is independent of any loop iteration and
> causes intel_allocate_scaler() to fail when satisfied. Check it before
> entering the loop.
>
> Cc: Nemesa Garg <nemesa.garg@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Micha=C5=82 Grzelak <michal.grzelak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_scaler.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/=
i915/display/skl_scaler.c
> index f2216a9ea3f8..59a5a3cd3e6a 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -339,12 +339,14 @@ static int intel_allocate_scaler(struct intel_crtc_=
scaler_state *scaler_state,
>  	struct intel_display *display =3D to_intel_display(crtc);
>  	int scaler_id;
>=20=20
> +	if (casf_scaler && !HAS_CASF(display))
> +		return -1;

Using -1 as magic error return value is one of my pet peeves.

-1 =3D=3D -EPERM, and that's hardly the case here.

I know the function returns -1 elsewhere, both should be fixed. -EINVAL
is better.


BR,
Jani.

> +
>  	for (scaler_id =3D 0; scaler_id < crtc->num_scalers; scaler_id++) {
>  		if (scaler_state->scalers[scaler_id].in_use)
>  			continue;
>=20=20
> -		if ((casf_scaler && !HAS_CASF(display)) ||
> -		    (casf_scaler && scaler_id !=3D 1))
> +		if (casf_scaler && scaler_id !=3D 1)
>  			continue;
>=20=20
>  		scaler_state->scalers[scaler_id].in_use =3D true;

--=20
Jani Nikula, Intel
