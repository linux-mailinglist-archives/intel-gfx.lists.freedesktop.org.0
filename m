Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XWiTDVtlKmrNogMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 09:35:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF19166F6C1
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 09:35:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Vh8vz+Xt;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51FE310ED31;
	Thu, 11 Jun 2026 07:35:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 114D910ED31;
 Thu, 11 Jun 2026 07:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781163352; x=1812699352;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=NxwFuOOfBuQHRSg+AewCTBCkyEAKE3qSMNSGn2V3+M4=;
 b=Vh8vz+XtpOY4ECnihQwl+3KxIphkhlyx0p3pIu+Ti13SY3gK7vpLxWbf
 gpz4F3YmeADi/a1Y3D343xoueyKnMPGjaoQ5uJpfvUqGeQTqTaxxzHfoM
 eNZ3vaBiV59BdUQ8GaZLnn5lPUWrjRdeZJmnJNRnrjRcqu1fYEEgVnwFm
 sPZX+LzUy4L5jarBNvtXOPjEAL11u/5lVdVR2y7KkvNjdFy8zGz4c1LMF
 FkcHUpBlb4so1a7nB3Gq5hhn7rmBBJnGamA7n97zzifXdAl5FhS7OEtjA
 LVETirXJE0OTDWsD3t51r2RFJ0vIFrh1Pi1Zj7kDhB08AnjyBLN1++fA8 w==;
X-CSE-ConnectionGUID: DBewdCjaTKaFcQ6iic5sdQ==
X-CSE-MsgGUID: 9T64CmJdQyWc2tyC74l65A==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="99393271"
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="99393271"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 00:35:52 -0700
X-CSE-ConnectionGUID: twHR9Y1XQ8yekJHZ3/yW5A==
X-CSE-MsgGUID: Gu8cPF1qS06sbwhwgYQGOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="276595125"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 00:35:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 05/14] drm/i915/cdclk: Stop forcing voltage level to 3
 all the time on DG2
In-Reply-To: <20260610170652.5320-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260610170652.5320-1-ville.syrjala@linux.intel.com>
 <20260610170652.5320-6-ville.syrjala@linux.intel.com>
Date: Thu, 11 Jun 2026 10:35:47 +0300
Message-ID: <17dfe2a76cf38cc821160283b9f87c3530250a30@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BF19166F6C1

On Wed, 10 Jun 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> SKL_CDCLK_PREPARE_FOR_CHANGE =3D=3D DISPLAY_TO_PCODE_VOLTAGE(3) so
> we are currently forcing the voltage level to 3 all the time on
> DG2. Remove SKL_CDCLK_PREPARE_FOR_CHANGE from the mask to avoid
> this.

Fixes: ?

The pcode mailbox defines are a mess.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 7259048361a7..ecb6be3383ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2598,7 +2598,6 @@ static void intel_pcode_notify(struct intel_display=
 *display,
>  		update_mask |=3D DISPLAY_TO_PCODE_PIPE_COUNT_VALID;
>=20=20
>  	ret =3D intel_parent_pcode_request(display, SKL_PCODE_CDCLK_CONTROL,
> -					 SKL_CDCLK_PREPARE_FOR_CHANGE |
>  					 update_mask,
>  					 SKL_CDCLK_READY_FOR_CHANGE,
>  					 SKL_CDCLK_READY_FOR_CHANGE, 3);

--=20
Jani Nikula, Intel
