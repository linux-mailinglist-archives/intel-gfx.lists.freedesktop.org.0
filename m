Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F212BBFB94
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 00:50:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C54EF10E27C;
	Mon,  6 Oct 2025 22:50:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JxMKGwar";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FD3110E097;
 Mon,  6 Oct 2025 22:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759791043; x=1791327043;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=1+VZrnbGXtg9WxPTpLZYNiWO6bU26L0UhRbvnMobXrU=;
 b=JxMKGwarujzO0fA/3YRjP9+H9EgucuVmu21bDaF+nGVRtql8xHhgNzyn
 37LhUSNu6ZL52PhPW8kL7bLzPNVpsVN/a4YTwwylij3jJVW08H4o6E9TQ
 YqDpSHbZkfD/TzyAjTC9HWWfw7bUOUTa2sR3q6m7dCW9xloHCZ51CNWL5
 JeMSNyHo3npu3asC8QeFJLz6dLn1+2XrE08U9+mXpcARAJmABBSXpIfTw
 pdyFsIKA7T6wM2M4y7zENuntQ3GX0ecFsiTtTTYxVwhZqbxZ6dID4RVa/
 IqHgVUx4aJAvOp1l8WVxLj/dKKtzctQHjL1fMlvxt/ppnTEvSZi3d5Pgw w==;
X-CSE-ConnectionGUID: RlATM1gYSF6sMoHIog+RQA==
X-CSE-MsgGUID: Rjzf85W0QTWJyOZBVwiBqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61924874"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61924874"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 15:50:43 -0700
X-CSE-ConnectionGUID: Grb1Tjj+QzmomURFaL3HqQ==
X-CSE-MsgGUID: AuCKdkGhQdGri3PxrMEpMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; d="scan'208";a="180045020"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.80])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 15:50:41 -0700
Date: Tue, 7 Oct 2025 01:50:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 00/16] Optimize vrr.guardband and fix LRR
Message-ID: <aORHvhi6o729-bQc@intel.com>
References: <20251006042852.263249-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251006042852.263249-1-ankit.k.nautiyal@intel.com>
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

On Mon, Oct 06, 2025 at 09:58:36AM +0530, Ankit Nautiyal wrote:

I'd like to see a separate series with just the patches to fix
the crtc_vblank_start stuff, which I think is roughly these:

>   drm/i915/vrr: Use crtc_vsync_start/end for computing  vrr.vsync_start/end
>   drm/i915/vrr: s/intel_vrr_compute_config_late/intel_vrr_compute_guardband
>   drm/i915/vblank: Add helper to get correct vblank length
>   drm/i915/vrr: Recompute vblank_start for platforms with always-on VRR TG
>   drm/i915/display: Add vblank_start adjustment logic for always-on VRR TG

(+ whatever is needed to sort out the issues I outlined in the
 indiviual replies)

That is really just fixing existing things, and has nothing to
do with any of the prefill stuff/etc. in the rest of the series.

The prefill stuff btw seems to be completely borked in current
upstream code even; it computes things based on a completely stale
cdclk frequency (the new frequency will be computed much later).

I *think* I can reorder things sufficiently to fix that, but I really
must get https://patchwork.freedesktop.org/series/154921/ landed
first...

-- 
Ville Syrjälä
Intel
