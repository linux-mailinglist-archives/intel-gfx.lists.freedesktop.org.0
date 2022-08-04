Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B865458994C
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 10:30:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94EA990E96;
	Thu,  4 Aug 2022 08:29:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81B1B913F7
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Aug 2022 08:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659601777; x=1691137777;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Vw2Sr2KAjXy3J0uPiGdOkb5HnVqaFOY1OLLYxv9QQLQ=;
 b=HCQrroSJSz5kMwhBpqCv67jAk8FQs8FSUjcQWmXF9QLRhwtgGwdHVEpZ
 T6jv9BbjfyP5OZ6WHY8wYH8wsDO9AZBzojyzag38lP36LdaxgBbepmfdu
 OBYlcXYQbqNquM5S62Je5/b73OA83j8tXHQoI69xd7FcaeJcq7RbXqx9U
 Z/lJpmYPROmEKy62oFsUvU2YTJZe9O8MC5X4Yhj9ReLrlu1hT7plW3TBK
 PjYaIkgz6z1miaJWKbNU/iWK8xjPJ1YHRdaIVQO2fYFdNjw7uTaC6AyQR
 S4PyRqqA56TbS9eNj6AfJx2bz8jsEPdMxBAIG7Phvs2JK56tLSR0QmBl9 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10428"; a="276793137"
X-IronPort-AV: E=Sophos;i="5.93,215,1654585200"; d="scan'208";a="276793137"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 01:29:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,215,1654585200"; d="scan'208";a="636010224"
Received: from kandpal.iind.intel.com ([10.190.239.32])
 by orsmga001.jf.intel.com with ESMTP; 04 Aug 2022 01:29:33 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Aug 2022 13:58:38 +0530
Message-Id: <20220804082840.3468949-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.37.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/2] Enabling Pipewriteback
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A patch series was floated in the drm mailing list which aimed to change
the drm_connector and drm_encoder fields to pointer in the
drm_connector_writeback structure, this received a huge pushback from
the community but since i915 expects each connector present in the
drm_device list to be a intel_connector but drm_writeback framework
makes us have a connector which cannot be embedded in an intel_connector
structure.
[1] https://patchwork.kernel.org/project/dri-devel/patch/20220202081702.22119-1-suraj.kandpal@intel.com/
[2] https://patchwork.kernel.org/project/dri-devel/patch/20220202085429.22261-6-suraj.kandpal@intel.com/
Since no one had an issue with encoder field being changed into a
pointer it was decided to break the connector and encoder pointer
changes into two different series.The encoder field changes is
currently being worked upon by Abhinav Kumar and the changes have been
merged.
[3]https://patchwork.kernel.org/project/dri-devel/list/?series=633565
Going forward we use a drm_connector which is not embedded in
intel_connector. 
We also create a intel_encoder to avoid changes to many
iterators but no intel_connector. We also changed all iterators that
go through connectors and add a check to only cast connectors which are
not writeback connectors.

v2-----------
changes to fix build errors.

v3----------
changes to fix BAT errors.

Suraj Kandpal (2):
  drm/i915: Define WD trancoder for i915
  drm/i915: Enabling WD Transcoder

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_acpi.c     |   1 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |   3 +
 .../drm/i915/display/intel_crtc_state_dump.c  |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   6 +
 drivers/gpu/drm/i915/display/intel_display.c  |  63 +-
 drivers/gpu/drm/i915/display/intel_display.h  |  21 +-
 .../drm/i915/display/intel_display_debugfs.c  |  14 +-
 .../drm/i915/display/intel_display_types.h    |  30 +
 drivers/gpu/drm/i915/display/intel_dpll.c     |   6 +
 .../drm/i915/display/intel_modeset_setup.c    |  67 +-
 .../drm/i915/display/intel_modeset_verify.c   |  18 +-
 drivers/gpu/drm/i915/display/intel_opregion.c |   3 +
 .../gpu/drm/i915/display/intel_wb_connector.h |  20 +
 drivers/gpu/drm/i915/display/intel_wd.c       | 733 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_wd.h       |  76 ++
 drivers/gpu/drm/i915/i915_drv.h               |   2 +
 drivers/gpu/drm/i915/i915_irq.c               |   8 +-
 drivers/gpu/drm/i915/i915_pci.c               |   7 +-
 drivers/gpu/drm/i915/i915_reg.h               | 139 ++++
 20 files changed, 1192 insertions(+), 27 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_wb_connector.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_wd.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_wd.h

-- 
2.37.0

