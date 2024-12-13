Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DD59F0F4C
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 15:35:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D027B10EB4C;
	Fri, 13 Dec 2024 14:35:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MQtHmPXi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A07510EB4C
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2024 14:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734100530; x=1765636530;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zZG5chzWdEp2HjoD4b10KYWPHbQsVrVzsCdMykBkRNE=;
 b=MQtHmPXiwEqzTpJiRWhCez8KqKNQotSH4x0vvwfRciwi6HdA6tFuAmGV
 XtmY/PXPL/zJMaX5MtV40D2gnIru7qXt3bHaVSb4rRXoeZEc6t1ihP2kp
 bam11RDym6H7z8yPUXCEx0U7SpN+I0jW5gZyZtC4s/e/0YQHZlpNaWLt3
 ovfH9qi41Aw5biN3uvdOeqaQmmU4mUlvmKz19hNTuiKzHEGYGC5Mm+91C
 RzX7GWvIRDsvqxiCf5ZzGtceml6cshEAOiIv6oaNgxYvjHPPftNglfbCi
 Cb9vNZeLtCj/pOY8+q9DUkxpz0LGyRyzyZEnroaq0PIc/mud1qbUYONdX g==;
X-CSE-ConnectionGUID: IiLHIYi4Qf2GsYEZF+n32w==
X-CSE-MsgGUID: HTVT6bTKRnaEcEXT6c1GpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11285"; a="33852873"
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="33852873"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 06:35:30 -0800
X-CSE-ConnectionGUID: 8m/jUutIReipFbD0rRtuMw==
X-CSE-MsgGUID: /Y04XVPJSV6KPKpT5M9PCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="127545758"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by fmviesa001.fm.intel.com with ESMTP; 13 Dec 2024 06:35:29 -0800
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH 0/2] drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value
Date: Fri, 13 Dec 2024 20:04:06 +0530
Message-Id: <20241213143408.3051070-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
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

In the C20 algorithm for HDMI TMDS, certain fields have been
updated as per the specs for Xe2LPG, Xe2HPD and MTL/ARL platforms
and subplatforms.This series update fields that need to be set
based on the platforms/subplatforms types. Also added definition
for MTL subplatforms.

Dnyaneshwar Bhadane (2):
  drm/i915/display: Add MTL subplatforms definition
  drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 49 ++++++++++++++++---
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  6 +++
 .../drm/i915/display/intel_display_device.c   | 21 ++++++++
 .../drm/i915/display/intel_display_device.h   | 13 +++++
 include/drm/intel/pciids.h                    |  5 +-
 5 files changed, 85 insertions(+), 9 deletions(-)

-- 
2.34.1

