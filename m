Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8391084F316
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 11:16:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8E7810F2FE;
	Fri,  9 Feb 2024 10:16:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G3j3QpAp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D95E310F2F1;
 Fri,  9 Feb 2024 10:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707473787; x=1739009787;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QV3vCmHzc7U1ABs4Xq/CCJ0roCEIiTmYWM4dhI/doxE=;
 b=G3j3QpAp2HeNKDLdKzzpMIJw79sElooecM8T3Eu6eIvUEhHZ/eagvUIi
 KhAP+fSDWEUTeebV720Iywn5e4tbshHQctYrYxiiYJvP0hjG5DonUwWas
 pt/bi/dKLCnas/Z8bhK0yvOIMx7xzSeG+zhcAcndeIoj3+xXxPqLt/wLD
 vakYHFieLS4ARjCfF5vxSafNnub7gnlS5OGg2z353EfU/gnYrnQJnvbC+
 FCixbFAsvvL42N5ZAcJlh8L9wQmZW6aFalVdh5qPu99F1gKZ6agMfKF8c
 Ia9Q+3JbW6DknnuHwWH6+CNVoyTeUswQFhcEA+1MsVoSiP4v779Eosa3n Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="1307313"
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; 
   d="scan'208";a="1307313"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 02:16:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; 
   d="scan'208";a="2244003"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa006.jf.intel.com with ESMTP; 09 Feb 2024 02:16:08 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: daniele.ceraolospurio@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/5] XE HDCP Enablement
Date: Fri,  9 Feb 2024 15:44:07 +0530
Message-Id: <20240209101412.1326176-1-suraj.kandpal@intel.com>
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

Suraj Kandpal (5):
  drm/i915/hdcp: Move intel_hdcp_gsc_message def away from header file
  drm/xe/hdcp: Use xe_device struct
  drm/xe: Use gsc_proxy_init_done to check proxy status
  drm/xe/hdcp: Enable HDCP for XE
  drm/xe/hdcp: Add intel_hdcp_gsc_message to Makefile

 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c |   6 +
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |   7 +-
 drivers/gpu/drm/xe/Makefile                   |   1 +
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 236 +++++++++++++++++-
 drivers/gpu/drm/xe/xe_gsc_proxy.c             |   4 +-
 drivers/gpu/drm/xe/xe_gsc_proxy.h             |   1 +
 drivers/gpu/drm/xe/xe_gsc_submit.c            |  15 ++
 drivers/gpu/drm/xe/xe_gsc_submit.h            |   1 +
 8 files changed, 253 insertions(+), 18 deletions(-)

-- 
2.25.1

