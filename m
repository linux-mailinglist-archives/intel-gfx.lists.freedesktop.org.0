Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2885FD48A
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 08:13:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A480910E192;
	Thu, 13 Oct 2022 06:13:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBFC710E192
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Oct 2022 06:13:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665641612; x=1697177612;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4eWuGT1iP24lykt0nTbViJpj23+QlViwlqK1IqxXHko=;
 b=az8qQyI8ITiin191TKWZqBdTeJRYdl3LEQzwj2tfUJv80NfRxHEmm4Qv
 paE7shRh8XKHZnqn0yG2NOkn1P90kKmIXc8TN2WHis4K+IV0WPf4yFMNE
 sl9BEi398vxcG3gIU+ckyazZMbjOSGCZ296Wk4Fghottvt2l6nHTS8/fn
 lT4iqouxyQP67EhyNl2cjnFmRcTAe3xBbPvVE/gH5zGDiAUVOb8wZNeP2
 iPpt1SESzPooKDQLWFolLffTd7YaH8BWD7wSNJKpyNGsHPYqTDzBSzUKt
 szBHbdz+o+vx5kZe8vPp2CcfLEmbSFV93+JZrjZwoL6Uv/9y5/mgqNjxk Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="369155021"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="369155021"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 23:13:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="627042312"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="627042312"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga002.jf.intel.com with ESMTP; 12 Oct 2022 23:13:30 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Oct 2022 11:42:24 +0530
Message-Id: <20221013061228.162613-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/4] Enable YCbCr420 for VDSC
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

From: "Kandpal, Suraj" <suraj.kandpal@intel.com>

This patch series aims to enable the YCbCr420 format
for DSC. Changes are mostly compute params related for
hdmi,dp and dsi along with the addition of new rc_tables
for native_420 and corresponding changes to macros used to
fetch them.

---v2
-adding fields missed for vdsc_cfg [Vandita]
-adding corresponding registers and writing to the [Vandita]

Ankit Nautiyal (1):
  drm/i915/dp: Check if DSC supports the given output_format

Kandpal, Suraj (2):
  drm/i915: Adding the new registers for DSC
  drm/i915: Fill in native_420 field

Suraj Kandpal (1):
  drm/i915: Enable YCbCr420 for VDSC

 drivers/gpu/drm/i915/display/icl_dsi.c        |   2 -
 drivers/gpu/drm/i915/display/intel_dp.c       |  32 ++-
 .../gpu/drm/i915/display/intel_qp_tables.c    | 187 ++++++++++++++++--
 .../gpu/drm/i915/display/intel_qp_tables.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  76 ++++++-
 drivers/gpu/drm/i915/i915_reg.h               |  28 +++
 6 files changed, 306 insertions(+), 23 deletions(-)

-- 
2.25.1

