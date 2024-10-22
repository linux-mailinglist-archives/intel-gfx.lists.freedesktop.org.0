Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4569A9EBB
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 11:42:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7D1710E63E;
	Tue, 22 Oct 2024 09:42:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZXpVjCfc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F7E010E628;
 Tue, 22 Oct 2024 09:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729590119; x=1761126119;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3oVLbd+piv5FooMhcyPUk+wyBwEa2igJZ+XjQscvCdg=;
 b=ZXpVjCfcrPShLm3tsvmdQUYiWFhG7+cm5bC8AcO60bJ75AOyN9r1gKAg
 sGCEkCmtAFQywtSg0JuuBBGODj3pLaAwGUNzKJZzZ0oUZIf7wVLz+mji3
 htvqbc9e5aWQzJ4tg6SOJhgK+Ba6nFxucNP8CP/z5jdKGuL1fvOopMsgw
 e9q2NUDets+0H2IhqOAZVZYSsC901HcbcFDXIL8mu8fNJruQ+J0EXmD0S
 gWHxARf4VwcRUd/sDIXXNPz70KuX4dR05IX3Mwh64xl/x7ozDTn6MtxT0
 GP+lTTlwvhRg79zV1o24rAey4N45wgHxV6Ec7UFdn6q29c73YzVWIKV4e A==;
X-CSE-ConnectionGUID: QKD9QSwdRpGOt4ECMlGoaQ==
X-CSE-MsgGUID: uyyQqAlOTRSy9zTJmpyo8w==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="16739996"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="16739996"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 02:41:59 -0700
X-CSE-ConnectionGUID: JACCiuX/QGmG7Y4QOrt3Sw==
X-CSE-MsgGUID: OnQ2NL2IR9aojDuaMJ+miw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="79984835"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 02:41:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
Subject: [PATCH v2 0/3] drm/i915 & drm/xe: shared PCI ID macros
Date: Tue, 22 Oct 2024 12:41:48 +0300
Message-Id: <cover.1729590029.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Revisiting [1].

BR,
Jani.

[1] https://lore.kernel.org/r/cover.1725297097.git.jani.nikula@intel.com

Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Tvrtko Ursulin <tursulin@ursulin.net>

Jani Nikula (3):
  drm/i915/pciids: add PVC PCI ID macros
  drm/intel/pciids: rename i915_pciids.h to just pciids.h
  drm/xe: switch to common PCI ID macros

 arch/x86/kernel/early-quirks.c                |   2 +-
 .../drm/i915/display/intel_display_device.c   |   2 +-
 drivers/gpu/drm/i915/i915_pci.c               |   2 +-
 drivers/gpu/drm/i915/intel_device_info.c      |   2 +-
 drivers/gpu/drm/xe/xe_pci.c                   |  53 ++--
 include/drm/intel/{i915_pciids.h => pciids.h} |  22 +-
 include/drm/intel/xe_pciids.h                 | 234 ------------------
 7 files changed, 46 insertions(+), 271 deletions(-)
 rename include/drm/intel/{i915_pciids.h => pciids.h} (97%)
 delete mode 100644 include/drm/intel/xe_pciids.h

-- 
2.39.5

