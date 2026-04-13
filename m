Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iB4LK0ir3GlfVAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 10:37:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1C63E9339
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 10:37:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B43DC10E37C;
	Mon, 13 Apr 2026 08:37:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GHclG8bz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07D8810E37C;
 Mon, 13 Apr 2026 08:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776069444; x=1807605444;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=tVd6/jZRpDKnAI/YHvPhglhntFfBMbgkfsb1Rs7zDKQ=;
 b=GHclG8bzBRLvA4M2at9YQoiV3eHljH2sJwfngCZo16eT4ef3P0GkCs5v
 9zBWIh838okBivmfRZsbBBa4u0nY7kOilwYqKG20JINxcCth8QsDAHr3A
 LFhF8NwraLdCJyyioK9SXadY0QNsXX+cA1GjTN48k4OUJe3M2lwndCJyD
 XbFp/Qh5stV6livFGOGW5gqNG5iCrggGXa3U5qH7tId6YpUOT+ukpvSdR
 BwWIuU4B7Qdih7+qSb705XKFZhaecm+OMwnNca1cLWhxG4Q+RkY8xBLBG
 U/QqJFlFHiDQswBuelmoyncI5JxuQWoomrh9XqINNcw7xt6IrzK8In659 Q==;
X-CSE-ConnectionGUID: xkIzwVy1RcehlavIGGtf/A==
X-CSE-MsgGUID: ELaOupLkRiOPOM5PyfL6Mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="77017256"
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="77017256"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 01:37:24 -0700
X-CSE-ConnectionGUID: u420NTGmSYi1FkYrBDXE9Q==
X-CSE-MsgGUID: E0fXxDEUSBe3uNFVV76wag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="229644519"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.182])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 01:37:22 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 08/12] drm/i915/display: Add HAS_CMN_SDP_TL macro
In-Reply-To: <20260413035349.1730312-9-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260413035349.1730312-1-ankit.k.nautiyal@intel.com>
 <20260413035349.1730312-9-ankit.k.nautiyal@intel.com>
Date: Mon, 13 Apr 2026 11:37:19 +0300
Message-ID: <302ca6518ca69410026fade5f37e245a2884b031@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 3E1C63E9339
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 13 Apr 2026, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Add a helper macro to detect CMN SDP TL support on platforms with display
> version 35 and above.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 9338ea087e92..36a8a956f54a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -154,6 +154,7 @@ struct intel_display_platforms {
>  #define HAS_CASF(__display)		(DISPLAY_VER(__display) >= 20)
>  #define HAS_CDCLK_CRAWL(__display)	(DISPLAY_INFO(__display)->has_cdclk_crawl)
>  #define HAS_CDCLK_SQUASH(__display)	(DISPLAY_INFO(__display)->has_cdclk_squash)
> +#define HAS_CMN_SDP_TL(__display)	(DISPLAY_VER(__display) >= 35)

Even if the register is called CMN, we can actually use the word COMMON
here.

>  #define HAS_CMRR(__display)		(DISPLAY_VER(__display) >= 20)
>  #define HAS_CMTG(__display)		(!(__display)->platform.dg2 && DISPLAY_VER(__display) >= 13)
>  #define HAS_CUR_FBC(__display)		(!HAS_GMCH(__display) && IS_DISPLAY_VER(__display, 7, 13))

-- 
Jani Nikula, Intel
