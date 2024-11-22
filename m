Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCFD49D5A6A
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2024 08:53:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3079810EADD;
	Fri, 22 Nov 2024 07:53:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GOzLMqG/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE40C10EADD;
 Fri, 22 Nov 2024 07:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732261985; x=1763797985;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=X+VwR58De4jblrBnkiqkIz3UqxR9LcQ+hZSQS3TRtso=;
 b=GOzLMqG/rtkATruFDWsKQlPw2rzMXqy3r8s8SuyiHcbqcmOg+yOxHaO0
 fdB/Si3F+gZxzxl7qQYHIkQnd8Mv5bInU+OwIeXW9gfjbFHHIXFurxmGK
 /hWdyfcEMkkPrx4zEcucHHXoky50qh+Oq0KH1WnYsA6b6tGb/bgoupBit
 93qhf9/rW2Ln5SVc84KfqvB0DjGk3uDZdINmzpxxRJY3wrGBesXW69xXH
 Gz2ocRn5BYoae4IJer+RsyfO5ck4JzNy8Msr2pRRT5kZn5mr4qMCumAT7
 Ti3KLEDK21equ5Y6BIYVz3dL0yBfo0Ed/4ci4WBKY9j6YkiTCOLH+ML+S A==;
X-CSE-ConnectionGUID: Ly5SlbDoT+qUYSBn3NQmmw==
X-CSE-MsgGUID: v92wl0fpRkidCGnL8YgJvg==
X-IronPort-AV: E=McAfee;i="6700,10204,11263"; a="43054350"
X-IronPort-AV: E=Sophos;i="6.12,175,1728975600"; d="scan'208";a="43054350"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 23:53:05 -0800
X-CSE-ConnectionGUID: axFzI8QKTlKJOCzTHBmbiA==
X-CSE-MsgGUID: 7WSpUUPsQj+239x5KgQxVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,175,1728975600"; d="scan'208";a="90663868"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 21 Nov 2024 23:53:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 22 Nov 2024 09:53:02 +0200
Date: Fri, 22 Nov 2024 09:53:02 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [RFC v1 0/4] Update VRR guardband for HRR panel
Message-ID: <Z0A4XvcYDJ3jeI9a@intel.com>
References: <20241112085039.1258860-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241112085039.1258860-1-mitulkumar.ajitkumar.golani@intel.com>
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

On Tue, Nov 12, 2024 at 02:20:35PM +0530, Mitul Golani wrote:
> Compute guardband based on enabled feature latency.
> 

We already have some of this stuff in skl_wm_check_vblank().
But it's missing some of scaler/dsc/etc. prefill stuff. That is
the place where all this needs to be checked.

> Mitul Golani (4):
>   drm/i915/scaler: Calculate scaler prefill latency
>   drm/i915/watermark: Add WM0 prefill latency
>   drm/i915/psr: Add latency for PSR
>   display/vrr: Update guardband based on enabled latency
> 
>  drivers/gpu/drm/i915/display/intel_psr.c     | 23 ++++++++++++
>  drivers/gpu/drm/i915/display/intel_psr.h     |  1 +
>  drivers/gpu/drm/i915/display/intel_vrr.c     | 18 ++++++++-
>  drivers/gpu/drm/i915/display/skl_scaler.c    | 39 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/skl_scaler.h    |  1 +
>  drivers/gpu/drm/i915/display/skl_watermark.c | 21 +++++++++++
>  drivers/gpu/drm/i915/display/skl_watermark.h |  1 +
>  7 files changed, 102 insertions(+), 2 deletions(-)
> 
> -- 
> 2.46.0

-- 
Ville Syrjälä
Intel
