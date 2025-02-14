Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 021A9A361EB
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 16:37:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C55D10ECEB;
	Fri, 14 Feb 2025 15:37:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WT9YW/Zq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9346B10E49E;
 Fri, 14 Feb 2025 15:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739547464; x=1771083464;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=HbH5uQvMgt/Q40mB1SeNqLiVlJQqpdI78gtqcYH1nrY=;
 b=WT9YW/Zq6SRlKoRvWXYF9nwrZzpWOwPT0s0S1HofWWt4jfUqVh3XAj7a
 7sk2LhiWECBdSF4/PX81vJ58oe7fEcOlT76Tp3SILUFndoOMZDpRW3uae
 TfCvbvsROTvVZHhk8UCfiyvIzI8ujJe8xd0OXdrdlJuH68US2XbIA4Ap8
 5koTYREDYh9J6C/H1YG3m5gbZxuXKkIziA7mRtU3ooS+yRP0j8T+/NV1f
 hBhwIn6njscEL8JcAUPRkx6sfA2C4hczaOBENjhM+Q8fJTRvu8REg5NOu
 6qCIjWgyj9Tu4PqwdG2lXr2ft5fAgjrC9pfKzpDne5cjT8JyGfvYNCWq4 A==;
X-CSE-ConnectionGUID: 1EfZnJvVQDOP3jDDvkkwJQ==
X-CSE-MsgGUID: l6JJ/DbhTGOhPTE0ucvnag==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="40224977"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="40224977"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 07:37:43 -0800
X-CSE-ConnectionGUID: oDf0dtttRVi3ChT7qe2hCA==
X-CSE-MsgGUID: mtsvd/WbQ8WLXVGBEoM99w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="113683063"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.110])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 07:37:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: Re: [PATCH v2 00/11] drm/i915/ddi: Fix/simplify port
 enabling/disabling
In-Reply-To: <20250214142001.552916-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250214142001.552916-1-imre.deak@intel.com>
Date: Fri, 14 Feb 2025 17:37:30 +0200
Message-ID: <87a5aown9h.fsf@intel.com>
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

On Fri, 14 Feb 2025, Imre Deak <imre.deak@intel.com> wrote:
> This v2 of [1], addressing the review comments from Jani and adding Rbs.
> This version contains only the first half of the patchset, leaving the
> rest for a follow-up, since programming DDI_BUF_CTL via RMW contained in
> the latter part needs more thought.

Good stuff, Rb's stand, and it's good to get the ready stuff merged
before this starts conflicting.

Thanks,
Jani.

>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Mika Kahola <mika.kahola@intel.com>
>
> [1] https://patchwork.freedesktop.org/series/144122
>
> Imre Deak (11):
>   drm/i915/dsi: Use TRANS_DDI_FUNC_CTL's own port width macro
>   drm/i915/ddi: Fix HDMI port width programming in DDI_BUF_CTL
>   drm/i915/ddi: Make all the PORT_WIDTH macros work the same way
>   drm/i915/ddi: Set missing TC DP PHY lane stagger delay in DDI_BUF_CTL
>   drm/i915/ddi: Simplify the port enabling via DDI_BUF_CTL
>   drm/i915/ddi: Simplify the port disabling via DDI_BUF_CTL
>   drm/i915/ddi: Simplify waiting for a port to get active/idle via
>     DDI_BUF_CTL
>   drm/i915/ddi: Move platform checks within
>     mtl_ddi_enable/disable_d2d_link()
>   drm/i915/ddi: Unify the platform specific functions disabling a port
>   drm/i915/ddi: Add a helper to enable a port
>   drm/i915/ddi: Sanitize DDI_BUF_CTL register definitions
>
>  drivers/gpu/drm/i915/display/icl_dsi.c        |   4 +-
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h |   3 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 256 +++++++-----------
>  drivers/gpu/drm/i915/i915_reg.h               |  25 +-
>  4 files changed, 123 insertions(+), 165 deletions(-)

-- 
Jani Nikula, Intel
