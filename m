Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2BCCB0D5F
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 19:26:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBAAB10E208;
	Tue,  9 Dec 2025 18:26:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JCLyJ9Pi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2D8F10E117;
 Tue,  9 Dec 2025 18:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765304791; x=1796840791;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=t9ZdfbQe7a8tQfg5UNxDSsUN+2r0fG1K/d8LjIP2KNg=;
 b=JCLyJ9PiHLzmAjO3W+IdHQOQ1xgT0tSjL0c9DDBblJir9P8GaVxWGChb
 NHBcHZqOIWqF1mA8J+fNhC9QeoygDWUUtFK3N79D4HWFrfw6J8tY/1XQO
 Dn3ze/TGPFJ1Be2H5DP9pf/Op5lrvbFMjR5C/v+Vb8k1jAgR+ctMYjcT+
 DEAzeAGgTctivgI6UQ+eTg1nDoZYzvJkaQMpaqyTI7130js5HKO/HKOBh
 knWQh308Q+MXL1IWvorZc4CG+NX6ISdtkgG81FATAUWdPzUo+HPccb/dV
 kWk8jsJfhTEHspCacBf1iC8tQ5yVHbT2jOeppomDENZhkOlJNCpUWJoh3 w==;
X-CSE-ConnectionGUID: bV9toQTcTEmnkmtTGs1q7g==
X-CSE-MsgGUID: YzQuOjL2QH+8vSRZ3hsbGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="67307309"
X-IronPort-AV: E=Sophos;i="6.20,262,1758610800"; d="scan'208";a="67307309"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 10:26:31 -0800
X-CSE-ConnectionGUID: iBsm/tqDTuua8rupVmU2sQ==
X-CSE-MsgGUID: vRSoq5XdTaSjjNoof6zibg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,262,1758610800"; d="scan'208";a="196586028"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.194])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 10:26:29 -0800
Date: Tue, 9 Dec 2025 20:26:25 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v4 0/3] Selective Fetch and async flip
Message-ID: <aThp0YZOjgWyA9DW@intel.com>
References: <20251204070718.1090778-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251204070718.1090778-1-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Thu, Dec 04, 2025 at 09:07:15AM +0200, Jouni Högander wrote:
> This patch set contains fixes for Selective Fetch async flip
> sequences. On async flip selective fetch is choosing full frame
> update. Also subsequent flip/update is still using full frame update
> to ensure plane with pending async flip is not taken in to selective
> fetch/update.
> 
> v4:
>   - rework if-else if to if-if
>   - added comment updated
>   - check crtc_state->async_flip_planes in
>     psr2_sel_fetch_pipe_state_supported
> v3:
>   - rebase
>   - fix old_crtc_state->pipe_srcsz_early_tpt
>   - fix using intel_atomic_get_new_crtc_state
> v2:
>   - check also crtc_state->async_flip_planes in
>     psr2_sel_fetch_plane_state_supported
> 
> Jouni Högander (3):
>   drm/i915/psr: Set plane id bit in crtc_state->async_flip_planes for
>     PSR
>   drm/i915/psr: Perform full frame update on async flip
>   drm/i915/psr: Allow async flip when Selective Fetch enabled

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

When testing this I saw that we get stuck into full frame mode
all the time. But that seems to be a pre-existing issues caused
by the broken selective fetch area calculation code. I suppose
now that I have a laptop with a PSR2 panel I might have to dig out
that branch of mine where I attempted to rewrite the whoile thing
and figure out what was wrong with it...

> 
>  drivers/gpu/drm/i915/display/intel_display.c |  8 --------
>  drivers/gpu/drm/i915/display/intel_plane.c   | 10 ++++++----
>  drivers/gpu/drm/i915/display/intel_psr.c     |  3 ++-
>  3 files changed, 8 insertions(+), 13 deletions(-)
> 
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
