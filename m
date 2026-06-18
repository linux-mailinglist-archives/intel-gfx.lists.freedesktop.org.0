Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MX3OCM0HNGpJLgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 16:59:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2FD6A1136
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 16:59:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=hhxAW0bj;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 292CB10E3E1;
	Thu, 18 Jun 2026 14:59:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F007E10E3E1;
 Thu, 18 Jun 2026 14:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781794762; x=1813330762;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=vZdJ/yC9yiuAFdW81W5wG26AjPAuQANx+KyaXvkLYEE=;
 b=hhxAW0bjjDlH3mISB0d4cuJeZk5yu5BOBB3pdI3qZE/DgUkzh525cYFm
 sPT/2m+fJQrYv7BxGyRUkQU1qHxsYmnJY35SFC2rQEqWHxSBWqTG8DBtK
 S1EoeLP3Rh4gDpQhFiiWpzx/Z7BaBBn838ImWi6IE/Ncol0qNbjtszbR4
 4bNfQ5CIjm0ch4/eLvqiuLrjeJGcvVHhXVYphj+Rnp1QxFPVYLHLDo3oJ
 VFTkZV5AkMp4W4xp6S+jCFWzHzq7aNCHHNP/sYwnyVSTtmeUXTVWt0Mg6
 F0GfXAIyCdem95LQG+qdmpALOs4UaPUKctoeAGoNrIjS5yfVRa3JpH+dU A==;
X-CSE-ConnectionGUID: K4bVKhcQRimd8a/gt69Fzw==
X-CSE-MsgGUID: qEnbvp42SEGlK6Va2b7wIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11820"; a="82828935"
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="82828935"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 07:59:22 -0700
X-CSE-ConnectionGUID: PrDydHVWS32IdiEyhpIGuA==
X-CSE-MsgGUID: 3BWA0gLHRvCpGX8JA+47QQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="278566973"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.2])
 by orviesa002-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jun 2026 07:59:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>, Nemesa Garg
 <nemesa.garg@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2 3/3] drm/i915/scaler: return -EINVAL instead of -1
In-Reply-To: <20260615190839.1219417-4-michal.grzelak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260615190839.1219417-1-michal.grzelak@intel.com>
 <20260615190839.1219417-4-michal.grzelak@intel.com>
Date: Thu, 18 Jun 2026 17:59:17 +0300
Message-ID: <973593167a4c5c2077ee92f13e97857624800e49@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
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
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9E2FD6A1136

On Mon, 15 Jun 2026, Micha=C5=82 Grzelak <michal.grzelak@intel.com> wrote:
> Scaler allocation fails returning -1 which equates to -EPERM. Return
> -EINVAL instead. Also apply for skl_pipe_scaler_get_hw_state().
>
> Fixes: e2255e9a5a77 ("drm/i915/scaler: abstract scaler searching loop")
> Fixes: ecf2afc59c1e ("drm/i915/scaler: Extract intel_allocate_scaler()")

Same as in patch 1. There is no bug that needs fixing. The trailers are
superfluous.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> Cc: Nemesa Garg <nemesa.garg@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Suggested-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Micha=C5=82 Grzelak <michal.grzelak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_scaler.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/=
i915/display/skl_scaler.c
> index 0cfa5b7564ba8..c339fdd6936fa 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -351,7 +351,7 @@ static int intel_allocate_scaler(struct intel_crtc_sc=
aler_state *scaler_state,
>  		return scaler_id;
>  	}
>=20=20
> -	return -1;
> +	return -EINVAL;
>  }
>=20=20
>  static void
> @@ -848,7 +848,7 @@ static int skl_pipe_scaler_get_hw_state(struct intel_=
crtc_state *crtc_state)
>  			return scaler_id;
>  	}
>=20=20
> -	return -1;
> +	return -EINVAL;
>  }
>=20=20
>  void

--=20
Jani Nikula, Intel
