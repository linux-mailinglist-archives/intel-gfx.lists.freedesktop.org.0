Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB44584C9B5
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 12:37:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CB3F10EBBF;
	Wed,  7 Feb 2024 11:37:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H3Q+cD2u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA76710EBBF;
 Wed,  7 Feb 2024 11:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707305870; x=1738841870;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dl9AyKQk6g/V28UKmq5qpiuqiAiTLBohiFXNgXva3Hs=;
 b=H3Q+cD2uL5lpGWkP9BdfalUYLR/X5/8KGMVCx2pAY/jK8FZ1n3OcqLwK
 M08SjTEbnQbOSp9HI28oTOOzOv0YTpUcb878OuB3ECPDpwjvyaCwP0Uk+
 cLTqCGJkT2RoSzcZ6k10um30PwGkEVKw1Dqcbw9vPIiuZOc/1KgEQkihm
 QjupwH9LiNvLELm3QIiD+8n/omQEJ1pSYUceRMKEYI+bIJi5b26ugAPsJ
 atAEweJFpzvLMV3L5rYX3wtn/EFAYo8ccLNUVx5THXo9aGQ60j0LDnz1z
 iDKmMuEKggh0DhomaCx1WbMWz7qjo1lKzAIhs/Dy7X3Xc0mqPvRe2XFFz w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="12056206"
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; d="scan'208";a="12056206"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 03:37:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; 
   d="scan'208";a="1306480"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa009.jf.intel.com with ESMTP; 07 Feb 2024 03:37:47 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: daniele.ceraolospurio@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/4] XE HDCP Enablement
Date: Wed,  7 Feb 2024 17:05:28 +0530
Message-Id: <20240207113531.1265801-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
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

This patch series enables HDCP on XE.
Mainly includes rewriting functions that were responsible for
sending hdcp messages via gsc cs.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (4):
  drm/i915/hdcp: Move intel_hdcp_gsc_message def away from header file
  drm/xe: Use gsc_proxy_init_done to check proxy status
  drm/xe/hdcp: Enable HDCP for XE
  drm/xe/hdcp: Add intel_hdcp_gsc_message to Makefile

 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c |  10 +-
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |   7 +-
 drivers/gpu/drm/xe/Makefile                   |   1 +
 .../gpu/drm/xe/abi/gsc_command_header_abi.h   |   2 +
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 227 +++++++++++++++++-
 drivers/gpu/drm/xe/xe_gsc_proxy.c             |   2 +-
 drivers/gpu/drm/xe/xe_gsc_proxy.h             |   1 +
 drivers/gpu/drm/xe/xe_gsc_submit.c            |  19 ++
 drivers/gpu/drm/xe/xe_gsc_submit.h            |   1 +
 9 files changed, 253 insertions(+), 17 deletions(-)

-- 
2.25.1

