Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D9E62EA5F
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 01:34:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C249010E6D4;
	Fri, 18 Nov 2022 00:34:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3066F10E6D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 00:34:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668731642; x=1700267642;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IsxGue0OV5D8GZ2YAgiOK3iS50XLu6E0WUFWDGYj6yc=;
 b=VDF3GF5wfi05we/9VqoBB+oBJnZgfLcmpNdCWRwXfDrtWfLqOq6LdvV5
 Dk0yW97MBta+XpkaxW3OSZnNiijAV+wxvdLEc0V5F9BPx+rgbbpBVlxGJ
 qXe8y6TUwtjcRZt3WE2uY0Rmf+1ZmCFAikI/UnrcD3n7ewrY+pLtCf0dX
 L/A6ig64C32j8fZtcbLUmeP2es9p0OgYjvLhOAKbNvkqDk3+ZOsNTYHbA
 UnVcDhR2dgYRCN2vj/+uf3GRSHD/Yjfg3Wb5cvWXIVV6mRFw5Yg3GLdHF
 V+mfWNqVM6J5JEjdtpKgxxWhKtU3POnwIzTMDdnT4JUmRYuQcsqYVZ6PE g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="339848900"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="339848900"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 16:34:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="969086623"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="969086623"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga005.fm.intel.com with ESMTP; 17 Nov 2022 16:34:01 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Nov 2022 16:36:29 -0800
Message-Id: <20221118003631.1523764-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] drm/i915/pxp: Add missing cleanup steps for
 PXP global-teardown
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

A customer issue was recently discovered and in the process a
gap in i915's PXP interaction with HW+FW architecure was also
realized. This series adds those missing pieces.
The patches explain the details.

Alan Previn (2):
  drm/i915/pxp: Invalidate all PXP fw sessions during teardown
  drm/i915/pxp: Trigger the global teardown for before suspending

 drivers/gpu/drm/i915/pxp/intel_pxp.c          | 60 ++++++++++++++++---
 drivers/gpu/drm/i915/pxp/intel_pxp.h          |  3 +
 .../drm/i915/pxp/intel_pxp_cmd_interface_42.h | 15 +++++
 .../i915/pxp/intel_pxp_cmd_interface_cmn.h    |  3 +
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c       |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c  | 14 ++++-
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 45 ++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |  2 +
 8 files changed, 131 insertions(+), 13 deletions(-)


base-commit: 75ed1f4f7835f178647e3f73910ed4af0944d9ec
-- 
2.34.1

