Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B95E875E13
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 07:59:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D27810E957;
	Fri,  8 Mar 2024 06:58:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lmcWK1KC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC9B010E6C6
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Mar 2024 06:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709881138; x=1741417138;
 h=date:from:to:subject:message-id:references:mime-version:
 content-transfer-encoding:in-reply-to;
 bh=d+dGIj8AIakwyFugANCOkfam4sBQh9gb6wihYgBv614=;
 b=lmcWK1KCyJdhKrPlQEvy1FX/WxNCkDZOhXQMq/hsl6ESm9dm6g7ICv2y
 E6/GazsBipVEgjYNoKGtWl7b6RBlNY8JHyYvn2FGRvBr1AtQ8YPdnKvF6
 gP8PoPHPKVKzTgNwwarSc4FPRNZii9SozQkGWnw9TVNARnbjQppYpnJws
 MjjkKFThzpdQKh6tSeZZoguCZA0cSUxXCFJMLQOgrUHfZAQbzG0SiTy/s
 XY8DJQ49gzQaLzXAWfv2F8w6dn//otVPxgxDoVjed7sf7JOMiQY589Nyz
 0Rg67a36d/QexQOJHbkebCrO5WPU/gaRtSsYG944buZwFwi4/L5HWpiX4 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="22042264"
X-IronPort-AV: E=Sophos;i="6.07,108,1708416000"; d="scan'208";a="22042264"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 22:58:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="827775066"
X-IronPort-AV: E=Sophos;i="6.07,108,1708416000"; d="scan'208";a="827775066"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 07 Mar 2024 22:58:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 Mar 2024 08:58:54 +0200
Date: Fri, 8 Mar 2024 08:58:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 0/3] drm/i915: Make crtc disable more atomic
Message-ID: <Zeq3LnEgCZOtRF4i@intel.com>
References: <20240305084730.19182-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240305084730.19182-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
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

On Tue, Mar 05, 2024 at 10:47:27AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Make the crtc disable more atomic (in terms of plane disable).
> 
> And also also track which pipes need disabling in the same way
> as skl_commit_modeset_enables(), which should make the whole
> thing bit less messy as we don't have to keep on checking the
> same conditions multiple times.
> 
> Ville Syrjälä (3):
>   drm/i915: Precompute disable_pipes bitmask in
>     intel_commit_modeset_disables()
>   drm/i915: Disable planes more atomically during modesets
>   drm/i915: Simplify intel_old_crtc_state_disables() calling convention

Pushed to drm-intel-next, with Stan's r-b's hoovered in from the
earlier posting: https://patchwork.freedesktop.org/series/130619/

> 
>  drivers/gpu/drm/i915/display/intel_display.c | 48 +++++++++++---------
>  1 file changed, 27 insertions(+), 21 deletions(-)
> 
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
