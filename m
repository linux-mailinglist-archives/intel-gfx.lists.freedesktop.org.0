Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F37A748CC
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Mar 2025 11:58:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 228ED10E9DD;
	Fri, 28 Mar 2025 10:58:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mL3Chbil";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7A6910E0F3;
 Fri, 28 Mar 2025 10:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743159490; x=1774695490;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NBKMdXHbffNW2abK9cwB0JDAAEwFJMABJxQQhGo+3yA=;
 b=mL3Chbil8HxTlMo/NZwWJe+SJq0R8IQgjnWaMIXe9Od+OQ6H262PIVvi
 ONTLud50e2P8+3UIvrCOtht63tuZG6J4YuOGolxmo4j3LJBJULhizVhn5
 igk4uYf7sDjDD8ZoAaj5TIKCd5XxyOHo2eNmPK6Xehp5WuWZyzRr+ytMC
 EgtAixw8gLjHSQetPfYU+kBYvNx5DF8XlZ5XGZIcZHQXB9SpEOvsq8yzG
 ImOSj2rozHySTMm+u1vZ34Cyy+x8rHzqEthSnHzKNkdGobVHlHrCA+WA9
 HqsjgLQrZSrgJFPVBgMPw7IkUJa9QtKp2cT2epD634PVSMrYSS0YvJBp6 Q==;
X-CSE-ConnectionGUID: 3FfrgvWKSc6sHqZx2WVpIQ==
X-CSE-MsgGUID: 120S8aBaSiupNMG0xaePvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="55886157"
X-IronPort-AV: E=Sophos;i="6.14,283,1736841600"; d="scan'208";a="55886157"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 03:58:09 -0700
X-CSE-ConnectionGUID: Iek/3Mw4SHWMNeo2r+T/fw==
X-CSE-MsgGUID: 0KXJWNuWR9aKUWsq/u/qWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,283,1736841600"; d="scan'208";a="130625460"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 28 Mar 2025 03:58:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Mar 2025 12:58:06 +0200
Date: Fri, 28 Mar 2025 12:58:06 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 0/6] drm/i915: dpll, ddi, crc, psr etc conversions to
 struct intel_display
Message-ID: <Z-aAvijGRTTANm0_@intel.com>
References: <cover.1742906146.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1742906146.git.jani.nikula@intel.com>
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

On Tue, Mar 25, 2025 at 02:36:32PM +0200, Jani Nikula wrote:
> We're getting there!
> 
> Jani Nikula (6):
>   drm/i915/dpll: convert intel_dpll.[ch] to struct intel_display
>   drm/i915/ddi: convert intel_ddi.c to struct intel_display
>   drm/i915/crc: convert intel_pipe_crc.c to struct intel_display
>   drm/i915/psr: further conversions to struct intel_display
>   drm/i915/wa: convert intel_display_wa.[ch] to struct intel_display
>   drm/i915/display: drop some unnecessary intel_de_* compatibility
>     wrappers

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 904 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_de.h       |  16 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
>  .../drm/i915/display/intel_display_driver.c   |   7 +-
>  .../gpu/drm/i915/display/intel_display_wa.c   |  30 +-
>  .../gpu/drm/i915/display/intel_display_wa.h   |  11 +-
>  drivers/gpu/drm/i915/display/intel_dpll.c     | 312 +++---
>  drivers/gpu/drm/i915/display/intel_dpll.h     |  13 +-
>  drivers/gpu/drm/i915/display/intel_fbc.c      |   2 +-
>  drivers/gpu/drm/i915/display/intel_pipe_crc.c | 137 ++-
>  drivers/gpu/drm/i915/display/intel_pps.c      |   5 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      |  85 +-
>  drivers/gpu/drm/xe/display/xe_display_wa.c    |   6 +-
>  13 files changed, 729 insertions(+), 803 deletions(-)
> 
> -- 
> 2.39.5

-- 
Ville Syrjälä
Intel
