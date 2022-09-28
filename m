Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE445ED218
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 02:40:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7910310E1EA;
	Wed, 28 Sep 2022 00:40:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E13010E1EA
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 00:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664325619; x=1695861619;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fqiR12PdepRHGrp4PwW65qX4RuO+zhDd5FoD5uPCzKE=;
 b=aGMjJufQ4cSyWcHL1WBp6uHw4DzanxwdHXCqv40E4RR09g5+a7GtazTY
 crX3m6WZ1BWQr6z6tWXHIeEJTD26Pq4+0qKfkunTMLPi5af52woAaNbIK
 ztz9CsYnsuuBxXGSmemHrCVZ5CisE6Y3VoyPUeeLZPBBMax1/RJmIDw7I
 3cTk+HxNlIjJmQQKODFxOsQo/keQjRAxtzzZs/rocMKHl9AcQWDqyQWAy
 HmmMjEY5P7EkeeRJKhmBwUkrcnZ0QxNw1E7Y8BZm06Yd1L84NT73Y4iVd
 6WblilZiY00t3lIsODMdOT0XSPIAb1r7m+0Wu1760MvLiTJ+eCtGumlLY g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="387752023"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="387752023"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 17:40:18 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="572841142"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="572841142"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 17:40:18 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Sep 2022 17:41:30 -0700
Message-Id: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 00/15] drm/i915: HuC loading for DG2
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

All patches have been reviewed and are ready for merge (except the last
HAX one which is not to be merged), but it's been a couple of weeks
since the series went through CI, so doing one more run before merging
to be safe.

Daniele Ceraolo Spurio (7):
  drm/i915/pxp: load the pxp module when we have a gsc-loaded huc
  drm/i915/dg2: setup HuC loading via GSC
  drm/i915/huc: track delayed HuC load with a fence
  drm/i915/huc: stall media submission until HuC is loaded
  drm/i915/huc: better define HuC status getparam possible return
    values.
  drm/i915/huc: define gsc-compatible HuC fw for DG2
  HAX: drm/i915: force INTEL_MEI_GSC and INTEL_MEI_PXP on for CI

Tomas Winkler (5):
  mei: add support to GSC extended header
  mei: bus: enable sending gsc commands
  mei: adjust extended header kdocs
  mei: pxp: support matching with a gfx discrete card
  drm/i915/pxp: add huc authentication and loading command

Vitaly Lubart (3):
  mei: bus: extend bus API to support command streamer API
  mei: pxp: add command streamer API to the PXP driver
  drm/i915/pxp: implement function for sending tee stream command

 drivers/gpu/drm/i915/Kconfig.debug            |   2 +
 drivers/gpu/drm/i915/Makefile                 |  11 +-
 drivers/gpu/drm/i915/gt/intel_gsc.c           |  22 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   1 +
 drivers/gpu/drm/i915/gt/uc/intel_huc.c        | 254 ++++++++++++++++--
 drivers/gpu/drm/i915/gt/uc/intel_huc.h        |  31 +++
 drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c     |  34 +++
 drivers/gpu/drm/i915/gt/uc/intel_huc_fw.h     |   1 +
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  24 +-
 drivers/gpu/drm/i915/i915_request.c           |  24 ++
 drivers/gpu/drm/i915/i915_request.h           |   5 +
 drivers/gpu/drm/i915/pxp/intel_pxp.c          |  32 ++-
 drivers/gpu/drm/i915/pxp/intel_pxp.h          |  32 ---
 drivers/gpu/drm/i915/pxp/intel_pxp_huc.c      |  69 +++++
 drivers/gpu/drm/i915/pxp/intel_pxp_huc.h      |  13 +
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.h      |   8 +
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c  |   8 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_session.h  |  11 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 139 +++++++++-
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h      |   5 +
 .../drm/i915/pxp/intel_pxp_tee_interface.h    |  23 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |   6 +
 drivers/misc/mei/bus.c                        | 146 +++++++++-
 drivers/misc/mei/client.c                     |  55 ++--
 drivers/misc/mei/hbm.c                        |  13 +
 drivers/misc/mei/hw-me.c                      |   7 +-
 drivers/misc/mei/hw.h                         |  89 +++++-
 drivers/misc/mei/interrupt.c                  |  47 +++-
 drivers/misc/mei/mei_dev.h                    |   8 +
 drivers/misc/mei/pxp/mei_pxp.c                |  38 ++-
 include/drm/i915_pxp_tee_interface.h          |   5 +
 include/linux/mei_cl_bus.h                    |   6 +
 include/uapi/drm/i915_drm.h                   |  16 ++
 33 files changed, 1063 insertions(+), 122 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_huc.h

-- 
2.37.3

