Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AAD1A37BBA
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 08:00:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0D5810E142;
	Mon, 17 Feb 2025 07:00:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Eq0Iptnc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA94210E142;
 Mon, 17 Feb 2025 07:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739775651; x=1771311651;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hyuYhLiKAi96DxIuqen/0pULlGfivG3zarUorRs+s7s=;
 b=Eq0IptncqLWyfDHTidKSuNm1eVVFhwrZ6m+ixMTszfe9u+flHcXsf6Ht
 AZs/jY5Xyx/YmA2fHmR6ba6Rh7uwBP6CPLbl1kUJFegS+vC5XOAtEkvLm
 PkhFf88pMkFboqsydv5A57FwZIZoNPvM8SYtHxEeA7PLnVZF8cnYmW6aJ
 7cMqHkjhO5h8uQNmQqB8uGwmfUHvL5Wr+zgpPmYBul4pYt/jyzBkDvbnd
 CF9hyJuD5lrumHGFeIKLl65ZwSgLs42SPa1uGoUjZ7yxdjde0XR/soe6D
 WFmQppZZmhUiUIQjtQppJSECXyY02J+nUOeTgH/5gasbvEtnhjk1jh73V w==;
X-CSE-ConnectionGUID: +JXg3CVrRyac0iNcOy+Rkw==
X-CSE-MsgGUID: 4s+3nwPvQw6Da45nllpwRw==
X-IronPort-AV: E=McAfee;i="6700,10204,11347"; a="39676238"
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="39676238"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2025 23:00:50 -0800
X-CSE-ConnectionGUID: NMFXw4yWQmCIeyaBBuQbOw==
X-CSE-MsgGUID: yi4ijFAqRNinCZcis1cyOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="114233326"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Feb 2025 23:00:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 17 Feb 2025 09:00:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 0/8] drm/i915: Provide more information on display faults
Date: Mon, 17 Feb 2025 09:00:39 +0200
Message-ID: <20250217070047.953-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently we just print a hardware specific bitmask when
encountering any kind of display fault error. To make these
errors a bit easier to decode (and perhps even analyze)
I now decode the actual bits, and for plane faults provide
a dump of a few (hopefully) relevant plane registers (CTL,
SURF,SURFLIVE for now, which should at least help with faults
cause by bad GTT alignment).

So far we only reported faults on bdw+, but I'm also hooking
this stuff up for all ilk+ and vlv/chv. The older gmch
platforms I left out for now, but I think i965/g4x should
at least be diable in the future.

Not sure I'm 100% satisfied with how the pipe_fault_handler
thing is structured, but at least it works.

v2: Adjust to intel_display changes
    Add the xe gen2_error_regs stuff in the same patch as i915

Ville Syrjälä (8):
  drm/i915: Add missing else to the if ladder in missing else
  drm/i915: Introduce a minimal plane error state
  drm/i915: Pimp display fault reporting
  drm/i915: Hook in display GTT faults for IVB/HSW
  drm/i915: Hook in display GTT faults for ILK/SNB
  drm/i915: Introduce i915_error_regs
  drm/i915: Un-invert {i9xx,i965}_error_mask()
  drm/i915: Hook up display fault interrupts for VLV/CHV

 drivers/gpu/drm/i915/display/i9xx_plane.c     |  41 ++
 .../gpu/drm/i915/display/intel_atomic_plane.c |   2 +-
 .../gpu/drm/i915/display/intel_atomic_plane.h |   2 +
 drivers/gpu/drm/i915/display/intel_cursor.c   |  26 ++
 .../gpu/drm/i915/display/intel_display_irq.c  | 392 +++++++++++++++++-
 .../gpu/drm/i915/display/intel_display_irq.h  |   3 +
 .../drm/i915/display/intel_display_types.h    |   7 +
 drivers/gpu/drm/i915/display/intel_sprite.c   |  36 ++
 .../drm/i915/display/skl_universal_plane.c    |  12 +
 drivers/gpu/drm/i915/i915_irq.c               |  61 ++-
 drivers/gpu/drm/i915/i915_irq.h               |   4 +
 drivers/gpu/drm/i915/i915_reg.h               |  34 ++
 drivers/gpu/drm/i915/i915_reg_defs.h          |   8 +
 drivers/gpu/drm/xe/display/ext/i915_irq.c     |  23 +
 14 files changed, 632 insertions(+), 19 deletions(-)

-- 
2.45.3

