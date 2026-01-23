Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KNnG8Nec2l3vAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 12:42:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0CC75447
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 12:42:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3D5310EAD7;
	Fri, 23 Jan 2026 11:42:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iKpulLSK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6773110EAC8;
 Fri, 23 Jan 2026 11:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769168575; x=1800704575;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=rreJ9wbFxkZSzyhi1n32Dm1Bdgf+97iqF/Ip1QsPq3s=;
 b=iKpulLSKl5EeL/3S72G1WGX5ojA1u/VKX0I96hUbevPojzxIppXqn+ax
 BpAgRRGNVA1ngr69ZEY3sXQ2fgiIPkoYNk1hmLTl6xIDfmeMZaMEFniRj
 MAvdHoOzyTRUFHs0I2wqEVysYTex3GO86pEYlbwG//Sgo79hJUtjFFPZf
 8yVRIDPUSWYIpmBzJyuO2JVzqFYhpg7zlRYHfk7qAEK/z4PTVV3kDzd5h
 yHnN5zi/4RjZnBpsLN753j/vDwfLCbOaWUMFBFnne68gR35WFOrlMnX4W
 eJ0rE22stn2+aeMpZFaVa/MWP57oP/WZZIPzawWueC50tHaFiP3XgfaO2 w==;
X-CSE-ConnectionGUID: T6kZOmDuQx6c+1O3nFDH/g==
X-CSE-MsgGUID: HJs0dbCxTzeGP//Vafh68g==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="87998467"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="87998467"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 03:42:55 -0800
X-CSE-ConnectionGUID: bB6z3lh3Qm2/vuXwlVmSmA==
X-CSE-MsgGUID: 8QmwtAOLQbGVNP34C0FpLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="238263812"
Received: from aotchere-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.2])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 03:42:53 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
Subject: Re: [PATCH v1 0/1] rename GEN6_PCODE_DATA to match spec
In-Reply-To: <20260123105525.572035-1-michal.grzelak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260123105525.572035-1-michal.grzelak@intel.com>
Date: Fri, 23 Jan 2026 13:42:50 +0200
Message-ID: <74be2b0358f824af7aa7ddcbf15aed3e8424b1a0@intel.com>
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
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: EA0CC75447
X-Rspamd-Action: no action

On Fri, 23 Jan 2026, Micha=C5=82 Grzelak <michal.grzelak@intel.com> wrote:
> This patch should be applied on top of [1].
>
> [1]
> https://lore.kernel.org/intel-gfx/20260115113337.4079184-1-jani.nikula@in=
tel.com

There's not a whole lot of point in sending patches that depend on other
patches, because you won't get CI results, and any review depends on the
other patch having been merged.

BR,
Jani.

>
> BR,
> Micha=C5=82
>
> Micha=C5=82 Grzelak (1):
>   drm/{i915,xe}/pcode: rename GEN6_PCODE_DATA to match spec
>
>  drivers/gpu/drm/i915/display/intel_parent.c   |  4 ++--
>  drivers/gpu/drm/i915/display/intel_parent.h   |  2 +-
>  drivers/gpu/drm/i915/gvt/handlers.c           |  2 +-
>  drivers/gpu/drm/i915/i915_reg.h               |  2 +-
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  2 +-
>  drivers/gpu/drm/i915/intel_pcode.c            | 14 +++++++-------
>  drivers/gpu/drm/i915/intel_pcode.h            |  2 +-
>  drivers/gpu/drm/xe/display/xe_display_pcode.c |  4 ++--
>  drivers/gpu/drm/xe/xe_pcode.c                 |  4 ++--
>  drivers/gpu/drm/xe/xe_pcode.h                 |  2 +-
>  10 files changed, 19 insertions(+), 19 deletions(-)

--=20
Jani Nikula, Intel
