Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ec5pOZ2E12mxPAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 12:51:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2DE3C9490
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 12:51:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E83C210E7B8;
	Thu,  9 Apr 2026 10:51:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gWkBT+P9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0D8310E7BE;
 Thu,  9 Apr 2026 10:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775731867; x=1807267867;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=smKYUjrdfFqRXETp4RENhESGI1OpZyt2LPvQPgCl+5g=;
 b=gWkBT+P9mqMCS8jRiKBMGVureI3gHCN9wNf53uLuzAQZbkpWh4NPkBjD
 ywrYijXv6rnr61TRMDawYe1tqZDlDV7BsCmTRI4HV2T2OGdUFWklvHyNS
 vlO/Qy8R0v1KkwtRMmQUxL6tTyEswEUvq+P0DeR5kNO0pEkWhfWNbLLSd
 6gJ4RaFJFOw8XzGmbI2RHR8wHEdi/1iPOnljKxdMqH2qq7+NuYjyC6sL8
 0m/hHFNL5sA4Xmua0SAJyAuDdsZ97Xyjez8j1mjwDXo2FwwN1a4qL1/QW
 sA6lSINeEhdG3lh5qlWLor51RmNSXs8Yfqp2LvdddzE9aCgVbh58eKiit Q==;
X-CSE-ConnectionGUID: deOBgAwcQWyY/fXS3CsrOA==
X-CSE-MsgGUID: pUcc/JwNSr6yoWMVP9NehA==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="76451477"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="76451477"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:51:07 -0700
X-CSE-ConnectionGUID: 6xjSC4APRAapGVQe1BtBEw==
X-CSE-MsgGUID: xIQjSOEQQiqqPpcp/ll1/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="233104260"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.92])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:51:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org, Simona
 Vetter <simona.vetter@ffwll.ch>, Christian =?utf-8?Q?K=C3=B6nig?=
 <christian.koenig@amd.com>, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH 6/6] drm/i915/display: Make fence timeout infinite
In-Reply-To: <20260408233458.22666-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260408233458.22666-1-ville.syrjala@linux.intel.com>
 <20260408233458.22666-7-ville.syrjala@linux.intel.com>
Date: Thu, 09 Apr 2026 13:51:00 +0300
Message-ID: <3dda428f3d1a430b53a179ff431c25a8ceb4801b@intel.com>
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
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ffwll.ch:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 7A2DE3C9490
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 09 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Switch from the 10s default fence timeout on i915 to an
> infinite timeout like xe.
>
> I'm not actually convinced we want an infinite timeout here because
> the fence could be from an entirely different device/driver, and
> I'm not sure it's a good idea to allow our driver to get
> completely stuck due to other peoples' bugs. So I'm thinking we
> should probably have a sensible timeout also on xe. But I want to
> at least see what CI says about this new reset_fence thing with
> an infinite timeout...

My only goal here is to get rid of i915_fence_timeout(), and remove
i915_config.h from xe compat.

BR,
Jani.

>
> Cc: Simona Vetter <simona.vetter@ffwll.ch>
> Cc: Christian K=C3=B6nig <christian.koenig@amd.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 83ccf13c4b16..a9d0e1241642 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7169,7 +7169,7 @@ static void intel_atomic_commit_fence_wait(struct i=
ntel_atomic_state *intel_stat
>  			continue;
>=20=20
>  		ret =3D dma_fence_wait_any_timeout(fences, reset_fence ? 2 : 1, false,
> -						 i915_fence_timeout(), NULL);
> +						 MAX_SCHEDULE_TIMEOUT, NULL);
>  		if (ret <=3D 0)
>  			break;

--=20
Jani Nikula, Intel
