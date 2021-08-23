Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A027A3F43D3
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 05:21:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E38189C6B;
	Mon, 23 Aug 2021 03:21:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B34889B7D
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Aug 2021 03:21:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="239159304"
X-IronPort-AV: E=Sophos;i="5.84,343,1620716400"; d="scan'208";a="239159304"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2021 20:21:21 -0700
X-IronPort-AV: E=Sophos;i="5.84,343,1620716400"; d="scan'208";a="514550801"
Received: from unknown (HELO vandita-Z390-AORUS-ULTRA.iind.intel.com)
 ([10.190.238.8])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2021 20:21:19 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Vandita Kulkarni <vandita.kulkarni@intel.com>
Date: Mon, 23 Aug 2021 08:51:34 +0530
Message-Id: <20210823032136.2564-1-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Enable mipi dsi on XELPD
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

The delta from TGL is wrt the ESC clock, and an additional
WA needed. With that support in place, extend the support
for mipi dsi.

Vandita Kulkarni (2):
  drm/i915/dsi/xelpd: Add WA to program LP to HS wakeup guardband
  drm/i915/dsi/xelpd: Enable mipi dsi support.

 drivers/gpu/drm/i915/display/icl_dsi.c       | 24 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c |  1 +
 drivers/gpu/drm/i915/i915_reg.h              |  8 +++++++
 3 files changed, 33 insertions(+)

-- 
2.32.0

