Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC3ABBE190
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Oct 2025 14:52:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3DC810E400;
	Mon,  6 Oct 2025 12:52:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FASmmxS6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C77410E35D;
 Mon,  6 Oct 2025 12:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759755141; x=1791291141;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=H6lB5BuE+kWxFbO1551WfkBUzYf92I7OLHmkdD+vyY0=;
 b=FASmmxS6cvxdqeJv7i0R9uKl4dJYUqhs2N6YJGB5Jxhd3dIWN5rJzSMM
 KtNVpsJGJY/Sq03zE6mIkdY0lcc0kbDfsm8SGFC7D97HPoPkcbjqh1qaO
 oNQ1yIBiVtsFTlx4/kRV1EB1LYvpp16NQWriAZDBbMzdSQRHLrGoEm05Y
 MVqQR2Vy1ipA4EfLmLOTgDgUi5VfpN4WNauUAQfx+5o6BhHLjMRD9lkjC
 JM6LXssk/MHDevzdMbW2322GoAVMPrGYiHcuk0ETbuBYuLfoPm1WAznAo
 Y8pvAC//yWR15JcJixXqEw/Uggj7KIgy4VsRL3fsRHNHA75g9ZNKtBivn Q==;
X-CSE-ConnectionGUID: bda+WKNBScGuRe27FCSxnA==
X-CSE-MsgGUID: xPr6NqMcSxa9m9B5JCoG9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="61970030"
X-IronPort-AV: E=Sophos;i="6.18,319,1751266800"; d="scan'208";a="61970030"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 05:52:20 -0700
X-CSE-ConnectionGUID: 8GRblfwwRnGCQEFYSmX43w==
X-CSE-MsgGUID: 24C6ouufQ7ezpUvqx3TPSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,319,1751266800"; d="scan'208";a="184154726"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.80])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 05:52:19 -0700
Date: Mon, 6 Oct 2025 15:52:16 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com
Subject: Re: [RFC] drm/{i915,xe}/display: pass hooks to display probe
Message-ID: <aOO7gF9zvg_SCaJf@intel.com>
References: <20251003092107.2892508-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251003092107.2892508-1-jani.nikula@intel.com>
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

On Fri, Oct 03, 2025 at 12:21:07PM +0300, Jani Nikula wrote:
> Let's gradually start calling i915 and xe core drivers from display via
> function pointers passed at display probe. For starters, just add a
> small feature test hook ->has_flat_ccs.
> 
> FIXME: "hooks" is a terrible name, both as a parameter and a struct
> intel_display member name. It should reflect that we're calling the core
> or parent driver. This is a placeholder name for now.
> 
> FIXME: Initially, one struct is fine... but once it accumulates a lot of
> functions, should it have more indirection? Maybe everything should be
> in sub-structs, or the top struct should just be a collection of
> pointers to hook structs?
> 
> 	struct intel_core_hooks {
> 		const struct intel_rpm_hooks *rpm;
> 	};
> 
> The above would allow having the struct initialization inside the
> implementation file, and the functions themselves static. In any case,
> it seems best to have just one initialization of the hooks, instead of
> one init/register call for each functional area.
> 
> The downside is of course having to call the functions like:
> 
> 	display->hooks->rpm->get(display->drm);
> 
> FIXME: It would really be convenient if we could stop using a display
> device with mock_gem_device() in mock_gem_device.c. The purpose of the
> mock gem device is to run mock *gem* tests. Could we make it happen
> without display?

Haven't really thought too much about the display->xe/i915 direction
yet, but I was pondering the opposite direction. Should we even use
vfuncs there or perhaps just export the symbols from the display side?

But symbol name collisions do worry me. There does seem to be a
EXPORT_SYMBOL_FOR_MODULES() now, but I have a nagging feeling that it
doesn't actually implement symbol namespaces (as in the same symbol
name could be defined in multiple namespaces) but rather just prevents
modules from loading when they don't have the permission to use a
"namespaced" symbol.

So with exports we'd probably have to carefully prefix each exported
symbol with "intel_display_" (or whatever). We could of course still
use EXPORT_SYMBOL_FOR_MODULES() to make sure other stuff can't access
those symbols.

-- 
Ville Syrjälä
Intel
