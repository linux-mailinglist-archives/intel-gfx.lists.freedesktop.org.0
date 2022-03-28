Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 144344EA296
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 23:59:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71DF010EDBF;
	Mon, 28 Mar 2022 21:59:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D0D510EDBF
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 21:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648504743; x=1680040743;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=C8uLNCCX6JCukvOo/aTZAFtNOwzxu4Gm3b4sbMv7BUU=;
 b=EIglzNkrU2vlLAq4jbUB+EGhZzn2duzGz/NCiQ6l0SiirV4wxPg2glfz
 VXIjYu9apJqbVdgmukxMaHS22x4KvBs+qxjAXS9voLGd20I2OO2DSyhJI
 KTGMl+KnRrB7oc9L4jMKFw8Q+3G+AiMFslixF7Igeo1fCfDn9LDqo7/2U
 E70ENGQOWL61cfnGL0DJheczdOoEDeNlu4y65XX5jFIuh4vWftnkiTCDA
 eS8OGD6THvXivrbRyrf8t96t16qum7/fAgZ5XxLV6enaMDjjJW5LpEUFY
 f4UQSN4/uZuGJlf0rbWiC0sqLmkqUokfkkTT7pVS2GzuiCIC9+s7ykuGg g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="246599302"
X-IronPort-AV: E=Sophos;i="5.90,218,1643702400"; d="scan'208";a="246599302"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 14:59:02 -0700
X-IronPort-AV: E=Sophos;i="5.90,218,1643702400"; d="scan'208";a="546129252"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 14:59:02 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Mar 2022 14:53:52 -0700
Message-Id: <20220328215358.2866707-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 0/6] Add driver for GSC controller
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
Cc: alexander.usyskin@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Same as the v11 version already fully reviewed (bar a very minor
rebase), but with an added patch to force the new aux driver to be
built in CI.

Cc: Alexander Usyskin <alexander.usyskin@intel.com>

Alexander Usyskin (2):
  mei: gsc: setup char driver alive in spite of firmware handshake
    failure
  mei: gsc: retrieve the firmware version

Daniele Ceraolo Spurio (1):
  HAX: drm/i915: force INTEL_MEI_GSC on for CI

Tomas Winkler (3):
  drm/i915/gsc: add gsc as a mei auxiliary device
  mei: add support for graphics system controller (gsc) devices
  mei: gsc: add runtime pm handlers

 MAINTAINERS                              |   1 +
 drivers/gpu/drm/i915/Kconfig             |   1 +
 drivers/gpu/drm/i915/Kconfig.debug       |   1 +
 drivers/gpu/drm/i915/Makefile            |   3 +
 drivers/gpu/drm/i915/gt/intel_gsc.c      | 204 ++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gsc.h      |  37 ++++
 drivers/gpu/drm/i915/gt/intel_gt.c       |   3 +
 drivers/gpu/drm/i915/gt/intel_gt.h       |   5 +
 drivers/gpu/drm/i915/gt/intel_gt_irq.c   |  13 ++
 drivers/gpu/drm/i915/gt/intel_gt_regs.h  |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h |   2 +
 drivers/gpu/drm/i915/i915_drv.h          |   8 +
 drivers/gpu/drm/i915/i915_pci.c          |   3 +-
 drivers/gpu/drm/i915/i915_reg.h          |   2 +
 drivers/gpu/drm/i915/intel_device_info.h |   2 +
 drivers/misc/mei/Kconfig                 |  14 ++
 drivers/misc/mei/Makefile                |   3 +
 drivers/misc/mei/bus-fixup.c             |  25 +++
 drivers/misc/mei/gsc-me.c                | 259 +++++++++++++++++++++++
 drivers/misc/mei/hw-me.c                 |  29 ++-
 drivers/misc/mei/hw-me.h                 |   2 +
 include/linux/mei_aux.h                  |  19 ++
 22 files changed, 634 insertions(+), 3 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_gsc.c
 create mode 100644 drivers/gpu/drm/i915/gt/intel_gsc.h
 create mode 100644 drivers/misc/mei/gsc-me.c
 create mode 100644 include/linux/mei_aux.h

-- 
2.25.1

