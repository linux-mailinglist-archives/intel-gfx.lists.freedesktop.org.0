Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7836FB9AE63
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 18:43:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C54710E246;
	Wed, 24 Sep 2025 16:43:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FGD8qH6A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4394E10E013;
 Wed, 24 Sep 2025 16:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758732228; x=1790268228;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=A4N3wekOv2f0v9ttsvrNLDT2q6igTaxVYGXn57ghSLg=;
 b=FGD8qH6Ac7XCZouAOL5ZX2Wkj5Frs1rxZq/W3qwrWMKe/+wapJ5B3kDl
 mj4sIjHo4oV0Gi+NZp2686SkLYoBoWsHJRKsmr9puh+IcIFbpJ3Z3DCvX
 XGTAv4pAtn19sKiLZH53Sx98Ry9SATj/PYbil33AV2rvOVG9hT/maESSf
 zc94h1Tjl7Cs4+6jNhZD8cLf8w0odKJoGfzMYMbGecpPXDRELaciAp1az
 m02jB2HzrnYBZl1sVEXSNtLhUr6aZ/SyrklKyGbyZZH+bNh0DtcKLWbwC
 01iCZFnoSAwtOF4/xlUeJ1jRl/PPl+eUv69VIplVnL2ZV3MKOu9H/+/yH w==;
X-CSE-ConnectionGUID: C+0jk0DDScSPhT16LjQmww==
X-CSE-MsgGUID: qmllXAeETyauwbtTPftkTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="72137911"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="72137911"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 09:43:47 -0700
X-CSE-ConnectionGUID: LT7yRt9qReu2o1gaTqrKwg==
X-CSE-MsgGUID: xSALtZ1dT/SPGGNr1y8Y2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="177515407"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.149])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 09:43:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 00/11] drm/{i915,xe}/stolen: refactor and unify interfaces
Date: Wed, 24 Sep 2025 19:43:29 +0300
Message-ID: <cover.1758732183.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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


Jani Nikula (11):
  drm/{i915,xe}/stolen: rename i915_stolen_fb to intel_stolen_node
  drm/xe/stolen: rename fb to node in stolen compat header
  drm/xe/stolen: convert compat stolen macros to inline functions
  drm/xe/stolen: switch from BUG_ON() to WARN_ON() in compat
  drm/i915/stolen: convert intel_stolen_node into a real struct of its
    own
  drm/xe/stolen: convert compat static inlines to proper functions
  drm/{i915,xe}/stolen: make struct intel_stolen_node opaque
  drm/{i915,xe}/stolen: add device pointer to struct intel_stolen_node
  drm/{i915,xe}/stolen: use the stored i915/xe device pointer
  drm/{i915,xe}/stolen: convert stolen interface to struct drm_device
  drm/xe/stolen: use the same types as i915 interface

 drivers/gpu/drm/i915/display/intel_fbc.c      |  76 ++++++-----
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c    | 104 +++++++++++----
 drivers/gpu/drm/i915/gem/i915_gem_stolen.h    |  34 +++--
 drivers/gpu/drm/xe/Makefile                   |   1 +
 .../compat-i915-headers/gem/i915_gem_stolen.h | 105 +++++----------
 drivers/gpu/drm/xe/display/xe_stolen.c        | 123 ++++++++++++++++++
 6 files changed, 290 insertions(+), 153 deletions(-)
 create mode 100644 drivers/gpu/drm/xe/display/xe_stolen.c

-- 
2.47.3

