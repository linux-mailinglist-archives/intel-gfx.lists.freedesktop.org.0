Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WEhaD1jjgWmDLQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 13:00:24 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A0CD8B31
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 13:00:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDFF410E32B;
	Tue,  3 Feb 2026 12:00:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l1Wdv0l0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5224E10E32B;
 Tue,  3 Feb 2026 12:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770120020; x=1801656020;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=YCR3pEr83zIelzTbJX00pNJJ0H+6tpecZQ2206lZ5ys=;
 b=l1Wdv0l0Ql9AaP+0D1UxnRfTmpmv4omwpmOPz8fZ1MdPU55MB62SnjhU
 HU22jcy2HXAECu+IYqZ9TTi6sHSlgmveKrjmouCSpJNqQUBtOFNAjFQ/L
 ZdhFDxbBpFrFrnia/wIk950kN8IE2OxYVa8rmVfj2RYcEmArpwcsPHznm
 0UENidPAhsnt+vfUI5FczDdR69WYi5/+fy1iakZiESkzYc7XD+3BOAw6J
 Ltws5W46+c+QN9TTfRCJyLZfcd9OmkcujS5KmSbYsLDSfJ14Kg6SuH6Lx
 xusdjR/0gwxVDQq3rlNx9TXOR6iigMA6HobAGEZYyt7UN6b9/nOPu/Gfv w==;
X-CSE-ConnectionGUID: ZosiyD4aSmah5ULhtGZceg==
X-CSE-MsgGUID: 9Drs8BlpR8qdM58Y63QkJw==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="75145705"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="75145705"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 04:00:19 -0800
X-CSE-ConnectionGUID: CqR8e3HES3iRjSN77V9txg==
X-CSE-MsgGUID: nQP0qZEzRGyyxiDI0aH03Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="209925766"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 04:00:16 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [v3 05/19] drm/{i915, xe}: Extract pcode definitions to common
 header
In-Reply-To: <20260129211358.1240283-6-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260129211358.1240283-1-uma.shankar@intel.com>
 <20260129211358.1240283-6-uma.shankar@intel.com>
Date: Tue, 03 Feb 2026 14:00:13 +0200
Message-ID: <d38f9df2a170f08ca099dec59a4a3e055b2eb8df@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 94A0CD8B31
X-Rspamd-Action: no action

On Fri, 30 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> There are certain register definitions which are commonly shared
> by i915, xe and display. Extract the same to a common header to
> avoid duplication.
>
> Move GEN6_PCODE_MAILBOX to common pcode header to make intel_cdclk.c
> free from including i915_reg.h.
>
> v2: Make the header granular and per feature (Jani)
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c |   2 +-
>  drivers/gpu/drm/i915/i915_reg.h            | 101 +------------------
>  include/drm/intel/intel_pcode.h            | 108 +++++++++++++++++++++
>  3 files changed, 110 insertions(+), 101 deletions(-)
>  create mode 100644 include/drm/intel/intel_pcode.h
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 9217050a76e0..606256027264 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -27,9 +27,9 @@
>=20=20
>  #include <drm/drm_fixed.h>
>  #include <drm/drm_print.h>
> +#include <drm/intel/intel_pcode.h>
>=20=20
>  #include "hsw_ips.h"
> -#include "i915_reg.h"
>  #include "intel_atomic.h"
>  #include "intel_audio.h"
>  #include "intel_cdclk.h"
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 26e5504dbc67..c7361e82a0c6 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -25,6 +25,7 @@
>  #ifndef _I915_REG_H_
>  #define _I915_REG_H_
>=20=20
> +#include <drm/intel/intel_pcode.h>

I was thinking it would be better to include this only where needed, not
from i915_reg.h. It also improves granularity.

> diff --git a/include/drm/intel/intel_pcode.h b/include/drm/intel/intel_pc=
ode.h
> new file mode 100644
> index 000000000000..8e9a574c87d9
> --- /dev/null
> +++ b/include/drm/intel/intel_pcode.h

Maybe call it intel_pcode_regs.h to emphasize it's only about registers?

> @@ -0,0 +1,108 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright =C2=A9 2026 Intel Corporation */
> +
> +#ifndef _INTEL_GMD_COMMON_REG_H_
> +#define _INTEL_GMD_COMMON_REG_H_

Please adjust this too.

BR,
Jani.


--=20
Jani Nikula, Intel
