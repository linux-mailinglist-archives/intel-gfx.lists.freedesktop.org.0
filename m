Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0951CF3795
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 13:17:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D4B810E02F;
	Mon,  5 Jan 2026 12:17:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CWO748af";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71E4310E02F;
 Mon,  5 Jan 2026 12:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767615454; x=1799151454;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=YqB5itHffljhOMPfeq3O+yz7pYRdI3PY8a9JpxLiB+w=;
 b=CWO748afH2LBr2tQgaiFcwcf7nn+1fjiMo4K8kdw9jkPlzQOcKUinlwb
 LSJjcv7k0qlwELh/6ewSceJJg7m/5MFAjFp1xFhoYjGEe1Hvmu0304jNu
 ONmW/A7fyiN3zK/hdJY0l8vuLhibiHNPZV5RfBKneL1EaKctM3Jd49cO3
 My9RaaGqgayblP72IbcAyeVSajBXd1b85+RRe5uBEp6b+nqPoibkrb9T9
 bL+p5th6o51r4TK6PICD0SB+eQfjfGThKGLHXy7mXNzGOimSkKR1td7pz
 FqBCl5z2DPku/kGYu9KSDRRHd7X7clU4YtNyCwysnTxbQuz9KlgsRXyQ5 g==;
X-CSE-ConnectionGUID: u99WZWoCSiKm+DhrteUtHg==
X-CSE-MsgGUID: rHcvm9kBSZipHhcKeeqlkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11661"; a="56540226"
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="56540226"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 04:17:34 -0800
X-CSE-ConnectionGUID: IZAX/rY7RP69w2/7jhaBsg==
X-CSE-MsgGUID: QLBiqoa4TA6mXN6yuYOB+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="233075161"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.3])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 04:17:32 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 8/9] drm/i915/intel_lt_phy: Fix the SPDX identifier comment
In-Reply-To: <20260105113544.574323-9-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260105113544.574323-1-ankit.k.nautiyal@intel.com>
 <20260105113544.574323-9-ankit.k.nautiyal@intel.com>
Date: Mon, 05 Jan 2026 14:17:28 +0200
Message-ID: <d4a4a93aadaa092293ca53c970ed0733fe15425a@intel.com>
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

On Mon, 05 Jan 2026, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Fix the SPDX identifier comment as per the licensing rules [1].
>
> [1] https://www.kernel.org/doc/html/latest/process/license-rules.html
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lt_phy.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/dr=
m/i915/display/intel_lt_phy.h
> index 7659c92b6c3c..83fff7b6a961 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -1,4 +1,5 @@
> -/* SPDX-License-Identifier: MIT
> +/* SPDX-License-Identifier: MIT */
> +/*
>   *

Please remove the superfluous blank line here.

>   * Copyright =C2=A9 2025 Intel Corporation
>   */

--=20
Jani Nikula, Intel
