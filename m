Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE82C3C214
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 16:43:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DF9C10E93C;
	Thu,  6 Nov 2025 15:43:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K4zqGMPu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 323C110E939;
 Thu,  6 Nov 2025 15:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762443797; x=1793979797;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=3kV5lMt1Ie4KK6cGy7Hl1D3bv7j6mWnT/9uk9JNIvQw=;
 b=K4zqGMPuM6hbLI7citpHG4ZbbWFCCSK6gbr2MDKzVv8DutzWUR1RszVz
 w2gjo+jBSii1YRMKiwBiusboAElVKIVG5URX3srCYDXll6CrEBCRZTFhl
 +glJoPoUpPpRDA85EZK2gu91j/v1iBUGcO4kEeslsR+JQXzCDo4DSwuVP
 yQWT2KCinwpkZ3Eaij9LMTDiL1YMLf45bTwiwvp3IjM4hKEdcVmIUZW9X
 d8qu1w0mPYwUIlmPtpJ+MD52lpa8Ly8CLGIXa5avxeom18jaWraz+PZEn
 FxdI+xxD0Yyj6wSmN/HIDwvogX/fQ5BOMtMOBtJaqYcMXpEiwtj0LjfeQ w==;
X-CSE-ConnectionGUID: wrfrek9wQx2TET3NBZxMOQ==
X-CSE-MsgGUID: LJHaA5GFScCfdDDbEgRmQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="90053528"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="90053528"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:43:17 -0800
X-CSE-ConnectionGUID: GWJ5p4GhQXilHDixUNHOrw==
X-CSE-MsgGUID: k95R+4lmQRONdULwmvzsnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="188506153"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:43:15 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 00/10] drm/i915: Stop the intel_de_wait_custom() abuse
In-Reply-To: <20251106152049.21115-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251106152049.21115-1-ville.syrjala@linux.intel.com>
Date: Thu, 06 Nov 2025 17:43:12 +0200
Message-ID: <e83b667c90f6c4a92b3d67c63a49954bade3da0a@intel.com>
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

On Thu, 06 Nov 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Get rid of all the custom fast vs. slow intel_de_wait_custom()
> timeouts that have started to spread like a cancer recently.
>
> The eventual aim is to get rid of the fast vs. slow timeout
> stuff entirely and switch over to poll_timeout_us()...

Are you planning on still having intel_de_wait_something_something, or
do you mean using poll_timeout_us() directly?

I think I like the intel_de_* wait helpers, but just a coherent small
set, and everything beyond that should use poll_timeout_us() instead of
adding obscure helpers for one-off cases.

BR,
Jani.


>
> v2: Drop the extraneous timeout debugs to make it simpler to change them
>     Use the slow timeout in all cases where we have both slow and fast
>
> Ville Syrj=C3=A4l=C3=A4 (10):
>   drm/i915/cx0: Print the correct timeout
>   drm/i915/cx0: Nuke extraneous timeout debugs
>   drm/i915/ltphy: Nuke extraneous timeout debugs
>   drm/i915/cx0: Replace XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US with
>     XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_MS
>   drm/i915/cx0: Get rid of XELPDP_MSGBUS_TIMEOUT_FAST_US
>   drm/i915/cx0: s/XELPDP_MSGBUS_TIMEOUT_SLOW/XELPDP_MSGBUS_TIMEOUT_MS/
>   drm/i915/cx0:
>     s/XELPDP_PORT_RESET_END_TIMEOUT/XELPDP_PORT_RESET_END_TIMEOUT_US/
>   drm/i915/ltphy: Nuke bogus weird timeouts
>   drm/i915/hdcp: Use the default 2 usec fast polling timeout
>   drm/i915/pmdemand: Use the default 2 usec fast polling timeout
>
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 52 +++++++++----------
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  7 ++-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_lt_phy.c   | 47 ++++++++---------
>  .../gpu/drm/i915/display/intel_lt_phy_regs.h  |  7 ++-
>  drivers/gpu/drm/i915/display/intel_pmdemand.c |  2 +-
>  6 files changed, 54 insertions(+), 63 deletions(-)

--=20
Jani Nikula, Intel
