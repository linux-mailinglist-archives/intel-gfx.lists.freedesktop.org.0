Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QO1+CM05oGmagwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 13:17:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B82EE1A59F1
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 13:17:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 145DC10E90E;
	Thu, 26 Feb 2026 12:17:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wz5yp9Ji";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26BD810E90E;
 Thu, 26 Feb 2026 12:17:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772108232; x=1803644232;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=TQJDoXtWhJcJJzdySbHmUnGWWj2LlxH8T6/z6pZx58s=;
 b=Wz5yp9JixT7r/BmV+sQwdU8q2M9DjNeCdJVef2AyQ94fZZ4jfVwz9JD9
 +BrXlOL5UKU/zH/8OuMktPK4zlM5VipB6vfk57F3wSh+8vuW3kFRr0IZs
 V6tIQUCGubzn25zT7AwnKeJt4tYKTmzsPhM+E+wGr0nCy9BcE3v++CRR2
 8Q0MKQtHCN1t0uMwDyt6EQNfveLbM0IoLp5bPftsPSIg3a6wZ6ghSWH9O
 Cj1qzs3cj+gQa/hlRMnoqv5leeKinfx4ajqMrk/TWzxlxaDTP93hIU8cu
 LtEdmX9b8SOYjRjd/F90aitBnEsbuj9munpd7slZrBvwx6oHgA3Du9D2U g==;
X-CSE-ConnectionGUID: a4i00Mx/Tze2aJC2yfj3SQ==
X-CSE-MsgGUID: utaBJnMHT7uXlbZkpwvQbg==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="90575531"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="90575531"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 04:17:04 -0800
X-CSE-ConnectionGUID: SwlkkohRR/agPFZ0Fi4Txw==
X-CSE-MsgGUID: G2vr/5b0Rn+fww45/gxzEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="254312374"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.148])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 04:17:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Uma Shankar <uma.shankar@intel.com>
Subject: Re: [PATCH] Revert "drm/xe/compat: Remove unused i915_reg.h from
 compat header"
In-Reply-To: <20260226113413.2045899-1-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260226113413.2045899-1-uma.shankar@intel.com>
Date: Thu, 26 Feb 2026 14:16:58 +0200
Message-ID: <31400408b96cea86d7485c1079fdc340f5c64280@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: B82EE1A59F1
X-Rspamd-Action: no action

On Thu, 26 Feb 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> This reverts commit 4953d806a423087fcc49d4f8884fde85cd23ec1e.
> Change breaks build for drm-xe-next, hence revert.
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h | 6 ++++++
>  1 file changed, 6 insertions(+)
>  create mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h
>
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h b/drivers/=
gpu/drm/xe/compat-i915-headers/i915_reg.h
> new file mode 100644
> index 000000000000..8619ec015ad4
> --- /dev/null
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h
> @@ -0,0 +1,6 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2023 Intel Corporation
> + */
> +
> +#include "../../i915/i915_reg.h"

--=20
Jani Nikula, Intel
