Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADBECE69D3
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Dec 2025 12:54:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C1AD10E411;
	Mon, 29 Dec 2025 11:54:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M6EPMlIb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A25E410E40F;
 Mon, 29 Dec 2025 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767009293; x=1798545293;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dPKsf3Sr8UThs9O2LOm4AVrHWpSHhPMdBievTdg74To=;
 b=M6EPMlIbkzehQEuoZINR2u1yZOJAnm1JComhF0VUEJ4XzYXjfhkTNR9H
 SlEOyxMutgigY/rz1woY0KUQ+fk6fLDChquqza/hsyrsIxzL+SM1pYrJY
 BTZ6e1YIoCQIRtllkNqntV74VfkHB/2qgYNQjToA68Z3ijf4sGiH20PO/
 c1vozJb7qfm9W9W1jR0ykLkqRHxTeraJCqS8LvEgWz3AGJDj+8UN7OaP8
 a1fG+9UimGLYSMkQcJ8XvDonkP6/mRs7lCnRBHrNmRmYKkcNqC02Fsv9g
 yniEQqEtP1ZLzZXGRXQWd98VaVWbwgCjtuoAWlceuE/R9g8/fjCQ/XVTI g==;
X-CSE-ConnectionGUID: 4gCDMlTuQC6qGSu+4XPGRQ==
X-CSE-MsgGUID: Z2CRXLo8SBG9lThx185Jcw==
X-IronPort-AV: E=McAfee;i="6800,10657,11655"; a="68593147"
X-IronPort-AV: E=Sophos;i="6.21,185,1763452800"; d="scan'208";a="68593147"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 03:54:53 -0800
X-CSE-ConnectionGUID: djvHF6KjTuipryxAguoXgQ==
X-CSE-MsgGUID: e98se58PQmGkvhVMbZgSqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,185,1763452800"; d="scan'208";a="201176732"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.147])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 03:54:50 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 0/3] drm/{i915,
 xe}/display: remove the -Ddrm_i915_private=xe_device hack
Date: Mon, 29 Dec 2025 13:54:42 +0200
Message-ID: <cover.1767009044.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

Finally, after countless patches and hours of work, we've reached a
point where we can remove the -Ddrm_i915_private=xe_device build hack.

\o/

BR,
Jani.

Jani Nikula (3):
  drm/i915: drop i915 param from i915_fence{,_context}_timeout()
  drm/xe: remove compat i915_drv.h and -Ddrm_i915_private=xe_device hack
  drm/i915/utils: drop unnecessary ifdefs

 drivers/gpu/drm/i915/display/intel_display.c  |  4 +---
 .../drm/i915/display/intel_display_utils.h    |  4 ----
 drivers/gpu/drm/i915/gem/i915_gem_clflush.c   |  2 +-
 drivers/gpu/drm/i915/i915_config.c            |  3 +--
 drivers/gpu/drm/i915/i915_config.h            | 10 +++------
 drivers/gpu/drm/i915/i915_request.c           |  3 +--
 drivers/gpu/drm/i915/i915_utils.h             |  4 ----
 drivers/gpu/drm/xe/Makefile                   |  3 +--
 .../drm/xe/compat-i915-headers/i915_config.h  |  5 +----
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h | 22 -------------------
 10 files changed, 9 insertions(+), 51 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h

-- 
2.47.3

