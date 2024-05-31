Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9008D6136
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 14:04:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F28210E630;
	Fri, 31 May 2024 12:04:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HaHm7yQ4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25CF510E630
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 12:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717157050; x=1748693050;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=CXWPJJbO5rKY3eefFkYwDFGOpANoRfjo/ww9UQmlmic=;
 b=HaHm7yQ4dd0E4XPTdFK+Ck9s94X50gHAu1rXWEPL4xp6CQoPbd8+A2c6
 8PWbtx0XRbqC9XZ+LgGsOy/30xiicyxUfa3wieJFTMnRdGXbAXS57fF9g
 G6XpSKu27wUQua6OImNLukg2st40umCFzV4rABMlepxIdfyC3roU2Ihm7
 7BZsqLuAQemOR/QMoOTDWBAog5ibmJ8OX7u+AEFSwsRaRCbfO7p6kHqIA
 r1w3OhD0UQkYmaLC6QYnwRas5Uf2XGE3bYjYU0tirQYSj1vz+Y907X3x7
 JqN3a18pPq0La/50E/JVbSYTj3OledP/wv9hR14TFsHTRcPc/5sO1HIAX A==;
X-CSE-ConnectionGUID: A308dZTZTVi1H4Dgv+OtzQ==
X-CSE-MsgGUID: NXtDnwxYQt2bCNZn/uJd8w==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="17541751"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="17541751"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 05:04:08 -0700
X-CSE-ConnectionGUID: gydbWdZYSsCJGbpLZE9Kbg==
X-CSE-MsgGUID: 7bHYJBViQXmM6LYpHyYyRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36136619"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 31 May 2024 05:04:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 31 May 2024 15:04:06 +0300
Date: Fri, 31 May 2024 15:04:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 0/5] drm/i915: DP AUX CH macro cleanups
Message-ID: <Zlm8th9xrAe1z8LY@intel.com>
References: <cover.1716894909.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1716894909.git.jani.nikula@intel.com>
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

On Tue, May 28, 2024 at 02:15:37PM +0300, Jani Nikula wrote:
> Jani Nikula (5):
>   drm/i915/gvt: use proper macros for DP AUX CH CTL registers
>   drm/i915: remove unused DP AUX CH register macros
>   drm/i915: rearrange DP AUX register macros
>   drm/i915: move PCH DP AUX CH regs to intel_dp_aux_regs.h
>   drm/i915: remove intermediate _PCH_DP_* macros

Didn't spot anything off.

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
>  .../gpu/drm/i915/display/intel_dp_aux_regs.h  | 18 +++++++---
>  drivers/gpu/drm/i915/gvt/handlers.c           | 35 +++++++++----------
>  drivers/gpu/drm/i915/i915_reg.h               | 32 ++---------------
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  8 ++---
>  4 files changed, 37 insertions(+), 56 deletions(-)
> 
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
