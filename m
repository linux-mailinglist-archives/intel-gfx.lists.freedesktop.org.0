Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 171E7A90758
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Apr 2025 17:07:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8190A10E965;
	Wed, 16 Apr 2025 15:07:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="le9mIqz0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB64010E965
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Apr 2025 15:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744816024; x=1776352024;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=LlaBZm6YSeY8HkmgNwC0mrLQky0H1gRrLXzpNh0Fpw0=;
 b=le9mIqz0QmVOpm6bJdjQjdAKraCWT8RsgfxxcocS3RZWgqSGxOIizjo1
 9rPJi/9LdsItpgwoel4+V5m+5osbe448rw51YxAX6qn74NsXMJAmhwOLe
 nVmwhVzU3MsL/vDo1zgCUVEm5UiL7iSkyQ8tHfDyaS8CXSLWBHU+09kbS
 DL7nHCkm6QOSnLsdeYOLhCgx2Uk/J27J2Cr9bski2eVjkKrCWwBmfyTiJ
 zrG43z0Zve9XRki8cZb5yMwefoK8Dd0hPDqI5vm7yFsApUsQN5BYEdc3K
 GfBVAiUpway9CUECt4cpNWzMUkH9VWorFfdMEsAu9ZHoMBRcbheyxTkOu g==;
X-CSE-ConnectionGUID: +WY2cssAQU2HUTe0JZbj1w==
X-CSE-MsgGUID: SIHA7sGPRC+YZGLGdxe0lw==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="45506689"
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="45506689"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 08:07:04 -0700
X-CSE-ConnectionGUID: Z0v3EWK9Qb2VG3A1EMjzRg==
X-CSE-MsgGUID: fCuekY3rQfmWxcsQwrAPFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="135680018"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 16 Apr 2025 08:07:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Apr 2025 18:07:00 +0300
Date: Wed, 16 Apr 2025 18:07:00 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v1 0/8] Enable/Disable DC balance along with VRR DSB
Message-ID: <Z__HlFEmNYauSX2u@intel.com>
References: <20250416062737.1766703-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250416062737.1766703-1-mitulkumar.ajitkumar.golani@intel.com>
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

On Wed, Apr 16, 2025 at 11:57:29AM +0530, Mitul Golani wrote:
> Control DC Balance Adjustment bit to accomodate changes along
> with VRR DSB implementation.
> 
> Mitul Golani (8):
>   drm/i915/vrr: Add DC balance registers
>   drm/i915/dmc: Add pipe DMC DC balance registers
>   drm/i915/vrr: Refactor vmin/vmax stuff
>   drm/i915/vrr: Add functions to read out vmin/vmax stuff
>   drm/i915: Extract vrr_vblank_start()
>   drm/i915/vrr: Implement vblank evasion with DC balancing
>   drm/i915/dsb: Add pipedmc dc balance enable/disable
>   drm/i915/vrr: Pause DC balancing for DSB commits

Looks like you've messed up the authorship of most of these.

> 
>  drivers/gpu/drm/i915/display/intel_display.c  |  13 ++
>  .../drm/i915/display/intel_display_types.h    |   2 +-
>  drivers/gpu/drm/i915/display/intel_dmc.c      |  16 ++
>  drivers/gpu/drm/i915/display/intel_dmc.h      |   5 +
>  drivers/gpu/drm/i915/display/intel_dmc_regs.h |  37 +++++
>  drivers/gpu/drm/i915/display/intel_dsb.c      |  31 +++-
>  drivers/gpu/drm/i915/display/intel_vblank.c   |  33 ++++-
>  drivers/gpu/drm/i915/display/intel_vrr.c      | 138 +++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_vrr.h      |   5 +
>  drivers/gpu/drm/i915/display/intel_vrr_regs.h |  43 ++++++
>  10 files changed, 284 insertions(+), 39 deletions(-)
> 
> -- 
> 2.48.1

-- 
Ville Syrjälä
Intel
