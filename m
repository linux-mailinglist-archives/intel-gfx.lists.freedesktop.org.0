Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 103CD4339F7
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 17:14:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A1266E12D;
	Tue, 19 Oct 2021 15:14:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 879036E12D
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 15:14:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="215709283"
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="215709283"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 08:14:06 -0700
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="494143509"
Received: from unknown (HELO vandita-Z390-AORUS-ULTRA.iind.intel.com)
 ([10.190.238.8])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 08:14:04 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, matthew.d.roper@intel.com,
 ville.syrjala@linux.intel.com,
 Vandita Kulkarni <vandita.kulkarni@intel.com>
Date: Tue, 19 Oct 2021 20:44:31 +0530
Message-Id: <20211019151435.20477-1-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [V2 0/4] Enable MIPI DSI video mode on ADLP
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

v2: Addressed the review comments on v1.

Vandita Kulkarni (4):
  drm/i915/dsi/xelpd: Fix the bit mask for wakeup GB
  drm/i915/dsi/xelpd: Add DSI transcoder support
  drm/i915/dsi/xelpd: Disable DC states in Video mode
  drm/i915/dsi: Ungate clock before enabling the phy

 drivers/gpu/drm/i915/display/icl_dsi.c             | 11 +++++------
 drivers/gpu/drm/i915/display/intel_display_power.c |  1 +
 drivers/gpu/drm/i915/i915_pci.c                    | 11 +++++++++--
 drivers/gpu/drm/i915/i915_reg.h                    |  4 +++-
 4 files changed, 18 insertions(+), 9 deletions(-)

-- 
2.32.0

