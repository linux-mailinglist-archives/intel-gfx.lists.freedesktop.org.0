Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26DBCC72F67
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 09:51:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AACE810E70F;
	Thu, 20 Nov 2025 08:51:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oHKLIbPt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C6C610E70F;
 Thu, 20 Nov 2025 08:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763628707; x=1795164707;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=thlcmx/OkH16A8ZuoD5nWQmlrVJecHL9PoBdaZ+Gunk=;
 b=oHKLIbPtZm+ARfo3LplgIgo/aV0BsCp3zKW8Q+8dO6Uw/UjgAPncmKcb
 mk+G7s1ISZtur1Vl82fDPzx4jY/lBnK5B5r7Q50mteIcHRYiFXrkvbDh9
 AatnKJ/9NGt+SsUlmUETL8X/+ypgYxAv8bdZr3p4nAr02lfx7ZdoHCNgG
 GczOSuOPTshZAWIyz3ybnbU2GbGIqXIsqa1vmozexyltBDx/i08tUXPZE
 j4d3lE2poFOh/QqU3nRM4zy+JG4jyjUH5fp75tZ/GSBpM5ZWx8q//Lmsh
 H3sZLzL2aGxdGEfhwo7IJL5YinPOHxTcJRvKRtZ0zigR1bzHuNSKKboru w==;
X-CSE-ConnectionGUID: 6szG42FTSEebga9KsHf/FQ==
X-CSE-MsgGUID: 3DqKSgNLTP6oFytyZR5hKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="69307307"
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="69307307"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 00:51:47 -0800
X-CSE-ConnectionGUID: dTJqjpm9RbyUSDfO3ssX7g==
X-CSE-MsgGUID: Xk1aQBK9TcuWQHUwjpr7TA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="228615763"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 00:51:44 -0800
Date: Thu, 20 Nov 2025 09:51:42 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 jouni.hogander@intel.com, ville.syrjala@linux.intel.com, 
 animesh.manna@intel.com
Subject: Re: [PATCH 1/5] drm/i915/alpm: Compute LOBF late after guardband is
 already determined
In-Reply-To: <20251119135152.673276-2-ankit.k.nautiyal@intel.com>
Message-ID: <f7c6986f-12b8-240c-f49e-1503e5a47c05@intel.com>
References: <20251119135152.673276-1-ankit.k.nautiyal@intel.com>
 <20251119135152.673276-2-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-343590448-1763627604=:275675"
Content-ID: <6df3ad4e-3fad-00eb-f66e-21bd04dd97f0@intel.com>
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-343590448-1763627604=:275675
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <1970c918-5fe4-5dbd-3e0a-c297a068e90d@intel.com>

Hi Ankit,

On Wed, 19 Nov 2025, Ankit Nautiyal wrote:
> Currently intel_alpm_lobf_compute_config() tries to account for
> guardband +SCL requirements during encoder->compute_config() phase,
> even before guardband is computed.
> Also, LOBF depends on crtc_state->has_psr which can be modified in
> encoder->compute_config_late().
>
> Account for lobf requirements while optimizing the guardband and add
> checks for final guardband in encoder->compute_config_late() phase after
> the guardband and the final state of crtc_state->has_psr are already
> computed.
>
> Use crtc_state->vrr.guardband and crtc_state->set_context_latency for
> the computation and add more documentation for the dependency of first
> sdp position, guardband, set context latency and wake lines.
>
> v2: Add helper to use min guardband required for lobf.
>
> Bspec:71041
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
> drivers/gpu/drm/i915/display/intel_alpm.c  | 63 +++++++++++++++++-----
> drivers/gpu/drm/i915/display/intel_alpm.h  |  3 ++
> drivers/gpu/drm/i915/display/intel_dp.c    |  2 +
> drivers/gpu/drm/i915/display/intel_intel.c |  0
>
> [...]
>
> diff --git a/drivers/gpu/drm/i915/display/intel_intel.c b/drivers/gpu/drm/i915/display/intel_intel.c
> new file mode 100644
> index 000000000000..e69de29bb2d1

Nitpick, but it looks like an empty file named intel_intel.c stepped
into the patch, which is also seen in the above shortlog. Otherwise,

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--8323329-343590448-1763627604=:275675--
