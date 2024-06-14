Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B94F908537
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 09:39:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B2C410E06C;
	Fri, 14 Jun 2024 07:39:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O1lszIXz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6310F10EC75
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 07:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718350757; x=1749886757;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=L5OWIM9DUYuA0SbMmoDkth2Zo4/7SPHmxdt+W0lk6F8=;
 b=O1lszIXzKVCBciDUNmVON8vVYWO7+Ui8xSOCRGake2mdXt40seQkLFjE
 +FJOYMTLozfMwnvQLdPI+PeEadxY2X3vFAcmmdhJpmd/lTfBDco3x2EOj
 9WWZrXcWv4nEj2DZ7H1M+HUHwppfzH7nnUHuUMf2uOpjhbPHqW7fWF7yU
 HmVjwZr5Oe2dpbObolEf7STs6C0o6JzxCWD6tz3SImS5HvURmPbV+6YOI
 qOoUfGXNXbm3QMTUSxHJpjVWEnuST8AiBivxr65au0DVOEyM9xddBoJI4
 GBz8lKxZSF4ksjdLOlaHWOj87/JK+FEpe85iOyypGWiBiexileXJlC/Gk w==;
X-CSE-ConnectionGUID: coWgwzweSeiFrgXnQ90okw==
X-CSE-MsgGUID: RvRDrNtETlST4prDUexRUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="19007792"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="19007792"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 00:39:16 -0700
X-CSE-ConnectionGUID: UBr2Hib+Rpm3aNLXZPL2KQ==
X-CSE-MsgGUID: sgTyjPejQuyPa5CeZycmJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="41144233"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.210])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 00:39:14 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>, Mitul Golani
 <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= Fi.CI.CHECKPATCH: warning for
 drm/i915/display: Send vrr vsync params whne vrr is enabled
In-Reply-To: <171810888823.67160.11520367117589106799@a6498e030952>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240611120151.147778-1-mitulkumar.ajitkumar.golani@intel.com>
 <171810888823.67160.11520367117589106799@a6498e030952>
Date: Fri, 14 Jun 2024 10:39:11 +0300
Message-ID: <87frtght28.fsf@intel.com>
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

On Tue, 11 Jun 2024, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915/display: Send vrr vsync params whne vrr is enabled
> URL   : https://patchwork.freedesktop.org/series/134714/
> State : warning
>
> == Summary ==
>
> Error: dim checkpatch failed
> 711332181393 drm/i915/display: Send vrr vsync params whne vrr is enabled
> -:26: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #26: FILE: drivers/gpu/drm/i915/display/intel_vrr.c:236:
> +	if (intel_dp_as_sdp_supported(intel_dp) &&
> +			crtc_state->vrr.enable) {

Please fix this.


>
> total: 0 errors, 0 warnings, 1 checks, 9 lines checked
>
>

-- 
Jani Nikula, Intel
