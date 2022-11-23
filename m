Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCF1636D2A
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 23:32:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8582910E651;
	Wed, 23 Nov 2022 22:31:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 607C810E64E
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 22:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669242701; x=1700778701;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xqs4YERJyG+bcB0ygQ28famqjQfB7knoVVxft9gufHw=;
 b=Lbxue214c78kkLfcJgQZ6mIAZjnVuDoGwH6Bz+a9YCx+2HdRL3h+axDa
 0ZvtrWIq5l+lGboBv+kh8+Pvs+pDIJqbf4Tbx/kzGKcsljlPU/1XR+HQS
 vWCProsWvHxHn5AJhnx+JoythpCra3XbKkFMpt23E2S0sR5fIt6Lskdf3
 uxVethEE0APuQMOf1ikEtRKDRGFiJOx4G/1wCPaTaKJylyCN5+ZMOyvh0
 dLTaZH9Cxj9BAFkjOWNWjyImVBbim8boxcsjvcTOXwxEWfyV3G5FYe37+
 QCqpM5AOa78ZmU6ul80jaQdmZ8S44KEUqlnVWUigewk2a4rQygcfGd0m1 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="293875376"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="293875376"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 14:31:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="784404448"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="784404448"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga001.fm.intel.com with ESMTP; 23 Nov 2022 14:31:40 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 14:34:03 -0800
Message-Id: <20221123223410.2846296-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 0/7] drm/i915/pxp: Create a backend abstraction
 layer for pxp-tee-link
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

PXP is a feature allowing workloads executing on engines to operate with
encrypted buffers (via specific state instructions). On the other hand, PXP controls
for operations like arbitration session creation and global teardown of PXP sessions
require communicating with the security firmware.

The transport layer to establish, execute and shutdown communication with the security
firmware is different between TGL/ADL vs MTL. The former uses the mei component driver
interfaces while the latter depends on the media-tile's GSC-command-streamer. Both cases
have very different code flow and assets.

This series aims to create a clean partition between the front end of the PXP subsystem
and the backend-tee transport layer. The goal here is to present an intuitive layering
using backend function pointers that will scale for future hardware backends
while keeping the front end agnostic to the backend details.


Alan Previn (7):
  HAX: drm/i915/pxp: Prepare intel_pxp entry points for MTL
  drm/i915/pxp: Refactor mei-teelink checks at init/fini
  drm/i915/pxp: Abstract mei-teelink function access via backend ptrs
  drm/i915/pxp: Separate tee-link front end interfaces from backend
    implementation
  drm/i915/pxp: move mei-pxp and mei-gsc resources to be backend-private
  drm/i915/pxp: Add PXP gsccs tee-link backend stubs
  drm/i915/pxp: Better hierarchy readibility - move backends to a
    backend folder

 drivers/gpu/drm/i915/Makefile                 |   4 +-
 .../drm/i915/display/skl_universal_plane.c    |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |   6 +-
 drivers/gpu/drm/i915/gem/i915_gem_create.c    |   2 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |   2 +-
 drivers/gpu/drm/i915/i915_drv.h               |   4 -
 drivers/gpu/drm/i915/pxp/intel_pxp.c          | 103 +++--
 drivers/gpu/drm/i915/pxp/intel_pxp.h          |  16 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c      |   2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c  |   8 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_huc.c      |  13 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c      |   4 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c       |  11 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c  |   2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 310 ++------------
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h      |  22 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |  52 ++-
 .../i915/pxp/tee_backends/intel_pxp_gsccs.c   |  48 +++
 .../i915/pxp/tee_backends/intel_pxp_gsccs.h   |  13 +
 .../i915/pxp/tee_backends/intel_pxp_tee_mei.c | 398 ++++++++++++++++++
 .../i915/pxp/tee_backends/intel_pxp_tee_mei.h |  13 +
 21 files changed, 677 insertions(+), 358 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/pxp/tee_backends/intel_pxp_gsccs.c
 create mode 100644 drivers/gpu/drm/i915/pxp/tee_backends/intel_pxp_gsccs.h
 create mode 100644 drivers/gpu/drm/i915/pxp/tee_backends/intel_pxp_tee_mei.c
 create mode 100644 drivers/gpu/drm/i915/pxp/tee_backends/intel_pxp_tee_mei.h


base-commit: c8b2ce6e20662ef30130e65f473b1ff5362765e3
-- 
2.34.1

