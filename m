Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 603DDA595C6
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 14:12:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCE9310E10C;
	Mon, 10 Mar 2025 13:12:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IF4CYs+a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67B9D10E10C;
 Mon, 10 Mar 2025 13:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741612369; x=1773148369;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=NTHGTjRi1exVd897t8sWiUtIxuH4kifkvWoN83TppSU=;
 b=IF4CYs+aq/SE7L0xR7IV8/Z4Gwf6EI9y+Z1EJobquCs1BknWLyg/yoHU
 bnmWcCk1DNrPh7/FbREeJxad67sSD4/absuac/fLzrLvRBJ4CJZ4pXwkT
 4n25R5JNXUvifJC091aadY7wkeZbQ8x/pVJ3Qq9rYC3zPfF35jspEYiTn
 vmclzfQz+LsC1iK7SGRcZ5WIYhHh0HCxI3lEAU0fOuXvvCJ4GDyBVoVNa
 +W5xwxsNcRx0dXOi5g8WohqjPesdUd6pwaQVa4MCnmQs7dU9rk6zSssiY
 JYYpXp+08BcIMeBQgmU7xjCZgqykKKQMeMTgNKbxSikvc0PYptmYSNI0y g==;
X-CSE-ConnectionGUID: ZMA+FsONRc+h0e/xPNSnuQ==
X-CSE-MsgGUID: hBqKnNVbSieFIed/4RBzUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="67967998"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="67967998"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 06:12:49 -0700
X-CSE-ConnectionGUID: 38xtLZFPT1WizGQpBVIBVA==
X-CSE-MsgGUID: VueUsPTKT8yHNlL8HDBGCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="124996968"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.97])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 06:12:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, Gustavo Sousa <gustavo.sousa@intel.com>
Subject: Re: [PATCH v3 0/3] drm/i915/xe3lpd: Update bandwidth parameters
In-Reply-To: <20250307-xe3lpd-bandwidth-update-v3-0-58bbe81f65bf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250307-xe3lpd-bandwidth-update-v3-0-58bbe81f65bf@intel.com>
Date: Mon, 10 Mar 2025 15:12:43 +0200
Message-ID: <87ldtdghbo.fsf@intel.com>
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

On Fri, 07 Mar 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Bandwidth parameters for Xe3_LPD have been updated with respect to
> previous display releases. Encode them into xe3lpd_sa_info and use that
> new struct.
>
> Since we are touching intel_bw.c, also take the opportunity convert it
> to intel_display.

In case you didn't notice already, this series and [1] from Ville will
conflict badly with each other. Please collaborate to sort out which
series to merge first.

Thanks,
Jani.


[1] https://lore.kernel.org/r/20250307180139.15744-1-ville.syrjala@linux.intel.com


>
> Changes in v2:
>   - Fix typo in patch #2.
>
> Changes in v3:
> - Squash patches #1 and #2 into a single one and modify it to convert
>   intel_bw.c internally to intel_display (new patch subject is
>   "drm/i915/display: Convert intel_bw.c internally to intel_display").
> - Add a new patch #2 to convert intel_bw.c externally to intel_display.
> - Link to v2: https://lore.kernel.org/r/20250217153550.43909-1-gustavo.sousa@intel.com
>
> ---
> Gustavo Sousa (3):
>       drm/i915/display: Convert intel_bw.c internally to intel_display
>       drm/i915/display: Convert intel_bw.c externally to intel_display
>       drm/i915/xe3lpd: Update bandwidth parameters
>
>  drivers/gpu/drm/i915/display/intel_bw.c            | 440 +++++++++++----------
>  drivers/gpu/drm/i915/display/intel_bw.h            |   9 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c         |   3 +-
>  .../gpu/drm/i915/display/intel_display_driver.c    |   2 +-
>  drivers/gpu/drm/i915/display/skl_watermark.c       |  10 +-
>  drivers/gpu/drm/i915/i915_driver.c                 |   2 +-
>  drivers/gpu/drm/xe/display/xe_display.c            |   2 +-
>  7 files changed, 245 insertions(+), 223 deletions(-)
> ---
> base-commit: f811577f424491a57b1e8669bde62998227d6907
> change-id: 20250228-xe3lpd-bandwidth-update-f011599c0c3e
>
> Best regards,

-- 
Jani Nikula, Intel
