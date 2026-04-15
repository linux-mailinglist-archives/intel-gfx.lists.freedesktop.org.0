Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICEINDyb32kEWwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 16:05:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A09DD4051FD
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 16:05:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7D0510E6EC;
	Wed, 15 Apr 2026 14:05:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JvNGQ3UN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE0E910E6E7;
 Wed, 15 Apr 2026 14:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776261943; x=1807797943;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9njCnj0ljW7mjEsIQu6VwZ7tNTOCCrlFVlHzSDzxMTE=;
 b=JvNGQ3UNy64gg60NXy+HvbvnrADUbceWwLsPJzty5kpB8cs+vHYekQmB
 627er6321SiZV//VU+vfsiANEE1HAr3ARhiViJ5eorMsxWVP3OZFGhG58
 Lp9WaHBgAVAQSlSueIPiukFMuHHazPi3AQhryRWsX8nygjLcp3At5d9Ks
 CazrlGXmSsyyxnz83ZUzsd3lzsWw3uu5+krwhhw6O+xJSO3MBgDpJfs21
 iajqvveFyiSIptMuoEh5XQQLC2BdCpShdCLo04Tt6qu/GxKq1gfA7R1jF
 56esvfMZOOKIYy91FxoJfHmMNULH2FqHGjqNNL+QkykGcCMfnP83ppXy1 w==;
X-CSE-ConnectionGUID: uiET7WMVRA63u2C2u85fCQ==
X-CSE-MsgGUID: sjoRzNwjTTGoFchVaE2Fvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="88688666"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="88688666"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 07:05:42 -0700
X-CSE-ConnectionGUID: E7QDPJx2TmWEI6tDzngyaw==
X-CSE-MsgGUID: sMlgLw9wSPa4pHWIq8M6pA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="229403274"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.108])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 07:05:40 -0700
Date: Wed, 15 Apr 2026 17:05:37 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jake S <j@metarealtyinc.ca>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 jani.nikula@intel.com, rodrigo.vivi@intel.com
Subject: Re: [PATCH 0/2] drm: Enable eDP VRR for panels with DisplayID
 Adaptive Sync
Message-ID: <ad-bMVzfARer7fMo@intel.com>
References: <20260415130626.10523-1-j@metarealtyinc.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260415130626.10523-1-j@metarealtyinc.ca>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.72 / 15.00];
	R_MIXED_CHARSET(0.59)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: A09DD4051FD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 15, 2026 at 09:06:24AM -0400, Jake S wrote:
> Many 2025-2026 laptops (Dell XPS, Framework, etc.) ship with OLED eDP
> panels that support VRR 20-120Hz. These panels advertise their VRR
> capability through a DisplayID v2.0 Adaptive Sync Data Block (tag 0x2B)
> in their EDID. VRR works fine on Windows.
> 
> On Linux, VRR is broken due to two issues:
> 
> 1. The DRM EDID parser (drm_edid.c) only reads monitor range from the
>    base EDID Display Range Limits descriptor (tag 0xFD). It does not
>    parse the DisplayID Adaptive Sync block. This leaves monitor_range
>    zeroed. AMD's driver has a private workaround; the generic DRM
>    layer does not.
> 
> 2. The Intel display driver (intel_vrr.c) gates eDP VRR on a VBT
>    (Video BIOS Table) firmware flag. Most OEMs don't set this flag
>    because the Windows driver doesn't need it. This blocks VRR even
>    when the EDID clearly declares support.
> 
> This series fixes both issues:
>  - Patch 1 adds generic DisplayID Adaptive Sync parsing to drm_edid.c,
>    benefiting all DRM drivers.
>  - Patch 2 relaxes the Intel eDP VRR gate to also accept EDID-based
>    capability when the VBT flag is absent.
> 
> Tested on Dell XPS 2026 (Intel Panther Lake, xe driver, LG Display
> OLED 3200x2000). VRR 20-120Hz confirmed via kernel vblank event
> tracing -- display dynamically varies between 32Hz (idle) and 120Hz
> (active rendering).
> 
> Related work: Adriano Vero posted a similar DisplayID range parsing
> patch to LKML (2026-03-28) which has not yet been merged.

Why did you post a different version?

> 
> GitHub: https://github.com/jibsta210/edp-vrr-linux
> 
> Jake S (2):
>   drm/edid: populate monitor_range from DisplayID Adaptive Sync block
>   drm/i915/display: allow eDP VRR when EDID has adaptive sync range
> 
>  gpu/drm/drm_edid.c               | 53 ++++++++++++++++++++++++++++++++
>  gpu/drm/i915/display/intel_vrr.c |  7 ++++-
>  2 files changed, 59 insertions(+), 1 deletion(-)
> 
> -- 
> 2.53.0

-- 
Ville Syrjälä
Intel
