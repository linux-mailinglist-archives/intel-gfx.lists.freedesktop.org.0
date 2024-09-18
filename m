Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A41CA97BFBC
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 19:35:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B92E310E5FD;
	Wed, 18 Sep 2024 17:35:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kEz6dpqY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99C4510E5FC;
 Wed, 18 Sep 2024 17:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726680956; x=1758216956;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wKGeIPoqNN0qsnwuPuRk9F7u1dJTOwR4BXa8+PDfG1g=;
 b=kEz6dpqY5E46b/+Uh8jGJKJ8WWX7jtU3ec1xG4dXwJCEUKMRLCZAHUsE
 hP+q9Xqmvc49FihYAQipHZ0w6e1r/Ue3lUul3yy17Xz1g1wobTiil+T+g
 HQKw/Dx/SKLjxNASYq2pFRF/7YhVzeq8yagRZT0J1oET4BLmLTl2QRptn
 AOf0YHjHR+g79dk3h2lZTRemeOmm+mr+DjVwg4HN83LdlbtL0eXlV9UCV
 qRemzOkOsGCk5FKt713Te9dkPxOCV0HKrw+V7ClloVBUq8aNmJyoBuaXZ
 vUElVoLk2dZ2174LfkSZNLNGBE5HmjP66tKJdjIGDGvb5SPA7kMoPaPrS A==;
X-CSE-ConnectionGUID: R7TCw7UDTGCK9z9p9QLc+w==
X-CSE-MsgGUID: ix1SgvrBQ7aVeeysXwPZ2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25704101"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="25704101"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:35:56 -0700
X-CSE-ConnectionGUID: 7gOu15weTjuWJfQvX3zOoQ==
X-CSE-MsgGUID: 1883rxFqRlWzFQ8Ai8Ajzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="107102512"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:35:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 0/6] drm/i915: wakeref fixes and improvements
Date: Wed, 18 Sep 2024 20:35:42 +0300
Message-Id: <cover.1726680898.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

v2 of https://lore.kernel.org/r/cover.1726658138.git.jani.nikula@intel.com


Jani Nikula (6):
  drm/i915/gem: fix bitwise and logical AND mixup
  drm/i915: use INTEL_WAKEREF_DEF instead of magic -1 for
    intel_wakeref_t
  drm/i915/display: return 0 instead of false for disabled power wakeref
  drm/i915/gt: add a macro for mock gt wakeref special value and use it
  drm/i915/audio: be explicit about intel_wakeref_t conversions
  drm/i915: switch intel_wakeref_t underlying type to struct ref_tracker
    *

 drivers/gpu/drm/i915/display/intel_audio.c     |  9 +++++----
 .../gpu/drm/i915/display/intel_display_power.c |  4 ++--
 .../gpu/drm/i915/display/intel_display_power.h |  4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c        |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.h          |  6 +++++-
 drivers/gpu/drm/i915/gt/intel_tlb.c            |  2 +-
 drivers/gpu/drm/i915/intel_runtime_pm.c        |  6 +++---
 drivers/gpu/drm/i915/intel_wakeref.h           | 18 ++++++++++--------
 .../gpu/drm/i915/selftests/mock_gem_device.c   |  2 +-
 .../xe/compat-i915-headers/intel_runtime_pm.h  |  7 ++++---
 .../drm/xe/compat-i915-headers/intel_wakeref.h |  4 +++-
 11 files changed, 37 insertions(+), 27 deletions(-)

-- 
2.39.2

