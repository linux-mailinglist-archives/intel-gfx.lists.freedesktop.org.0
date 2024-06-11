Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C109903ED2
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 16:30:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 108CA10E04D;
	Tue, 11 Jun 2024 14:30:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ed0fFg0W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B82A10E0BD;
 Tue, 11 Jun 2024 14:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718116244; x=1749652244;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NV3ZBcboL58BMtFn5E/N+cU8JxR558q0zAPuujzs4EU=;
 b=Ed0fFg0WCDPkNJ+Cr9A9W/gj1bCcTMrvSoIflNL955QEkXbc04UnvqLk
 BOLhK5hcK0fIUHvtHojRFVR+6PFhG+QR4neBims2xt87ORXg3vUZEMtt4
 IxkCEZUFSKKpFsXmiT9aGIc1i01xrc1K8pEOCVesymsbG18QtN7uW6NCc
 HshR03vI8u15G8PDJpccKAfbOkWJLtG7xmfasUr1pvyYWZxPccBtpU/L4
 sHtpUVfICjzSRCt04jCWCAofaGgDjMC9GsDaHXobamo18cfnJMMliHgqP
 F8I41D5jj/75V/k8wVpnrydB6aBTWPxhwC7N6XkYhnbNpwDDX+QCrKySm Q==;
X-CSE-ConnectionGUID: f3hEioV4RQez7VuGS/oETg==
X-CSE-MsgGUID: CvYW7lvsSMapW6YJLol1bA==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="14957486"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="14957486"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 07:30:39 -0700
X-CSE-ConnectionGUID: 7Hsjn/34Ts6KfCsy3YQBiQ==
X-CSE-MsgGUID: MCZIBfZbQdmMASKkV6UxaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="44357781"
Received: from mwajdecz-mobl.ger.corp.intel.com ([10.94.248.185])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 07:30:37 -0700
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 John Harrison <John.C.Harrison@Intel.com>
Subject: [RFC 0/7] Promote GuC ABI headers to shared location
Date: Tue, 11 Jun 2024 16:30:01 +0200
Message-Id: <20240611143008.1900-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
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

There are many GuC ABI definitions named in the same way by the i915
and Xe drivers, preventing proper generation of the documentation.

Promote GuC ABI definitions to shared location that can be used by
both drivers and can be included in documentation.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>

Michal Wajdeczko (7):
  drm/xe/guc: Promote GuC ABI headers to shared location
  Documentation/gpu: Separate GuC ABI section
  Documentation/gpu: Switch to shared GuC ABI definitions
  drm/intel/guc: Update CTB communication ABI
  drm/intel/guc: Add new KLV definitions
  drm/i915: Use shared GuC ABI definitions
  drm/xe: Promote SR-IOV GuC ABI definitions to shared location

 Documentation/gpu/drivers.rst                 |   1 +
 Documentation/gpu/guc.rst                     |  23 ++
 Documentation/gpu/i915.rst                    |   9 -
 drivers/gpu/drm/i915/Makefile                 |   5 +
 .../gt/uc/abi/guc_communication_ctb_abi.h     | 170 -----------
 .../gt/uc/abi/guc_communication_mmio_abi.h    |  49 ----
 drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h | 112 --------
 .../gpu/drm/i915/gt/uc/abi/guc_messages_abi.h | 264 ------------------
 .../guc}/abi/guc_actions_sriov_abi.h          |   0
 .../guc}/abi/guc_communication_ctb_abi.h      |   2 +
 .../guc}/abi/guc_communication_mmio_abi.h     |   0
 .../drm/{xe => intel/guc}/abi/guc_klvs_abi.h  |  18 +-
 .../{xe => intel/guc}/abi/guc_messages_abi.h  |   0
 .../guc}/abi/guc_relay_actions_abi.h          |   0
 .../guc}/abi/guc_relay_communication_abi.h    |   0
 drivers/gpu/drm/xe/Makefile                   |   5 +
 16 files changed, 49 insertions(+), 609 deletions(-)
 create mode 100644 Documentation/gpu/guc.rst
 delete mode 100644 drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
 delete mode 100644 drivers/gpu/drm/i915/gt/uc/abi/guc_communication_mmio_abi.h
 delete mode 100644 drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
 delete mode 100644 drivers/gpu/drm/i915/gt/uc/abi/guc_messages_abi.h
 rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_actions_sriov_abi.h (100%)
 rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_communication_ctb_abi.h (98%)
 rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_communication_mmio_abi.h (100%)
 rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_klvs_abi.h (97%)
 rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_messages_abi.h (100%)
 rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_relay_actions_abi.h (100%)
 rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_relay_communication_abi.h (100%)

-- 
2.43.0

