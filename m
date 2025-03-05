Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A2BA5051B
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 17:38:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51A0410E80E;
	Wed,  5 Mar 2025 16:38:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cT+vcjMz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FE2110E80E;
 Wed,  5 Mar 2025 16:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741192710; x=1772728710;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=k2zBt+JO1dcjgzQ42Qi5BgHm45XddIhy6Mvlwrj5yww=;
 b=cT+vcjMzCHPq1TTtOqTDHGno0gnaVfmYtKREUJ8edQAY8tQme+Kc75yg
 kTnkGQH2S8BVKHISlsgXyHcAzJGqAOpF/dnitLAxyk10Nl8Yn7JSXNmM5
 VIsOFXm1AWSyhZpUolwIW4GfZR2Xf8sD85wyFFmMBaBJ+SL5wnWtpAuaV
 EiuNUhDqVF/SPZYm8e3ilHAVQzZrZjVZ3CGmHB0loFqB2LpKxiG1Sc2R8
 T5yjylltYwc790W6yweZZNOXHqSGl7fWFsxaRFRqMjp49faq1SPE0aprP
 P4ZSAZjdaN7i1F0A3a1n0rO/iNhLwtyJNgxH0dyYC+RpD6GNl15rTVvW5 g==;
X-CSE-ConnectionGUID: 11I+w+ROSy+A6Vvgp8Qe7Q==
X-CSE-MsgGUID: xjbbUacWScmPQ32XQumHNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="44972076"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="44972076"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 08:38:30 -0800
X-CSE-ConnectionGUID: EQnrnK8uRKCuEQ9APbJOhw==
X-CSE-MsgGUID: en+iw6nXRxyoVnZGNxMETA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="118904844"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.49])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 08:38:28 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@intel.com,
 rodrigo.vivi@intel.com
Subject: [PATCH v2 0/2] drm/xe/compat: cleanup
Date: Wed,  5 Mar 2025 18:38:21 +0200
Message-Id: <cover.1741192597.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

Rebase of [1]. Patch 1 allows #include "i915_drv.h" to be removed from
intel_atomic_plane.c in patch 2.

BR,
Jani.


[1] https://lore.kernel.org/r/20250228142539.3216960-1-jani.nikula@intel.com

Jani Nikula (2):
  drm/xe/compat: refactor compat i915_drv.h
  drm/i915/plane: convert intel_atomic_plane.[ch] to struct
    intel_display

 .../gpu/drm/i915/display/intel_atomic_plane.c | 80 +++++++++----------
 .../compat-i915-headers/gem/i915_gem_object.h | 15 ++++
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  8 --
 .../i915_scheduler_types.h                    | 13 +++
 .../drm/xe/compat-i915-headers/intel_uncore.h |  2 +
 5 files changed, 70 insertions(+), 48 deletions(-)
 create mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h
 create mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_scheduler_types.h

-- 
2.39.5

