Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75AED9DC10C
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 10:05:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C36210E2A4;
	Fri, 29 Nov 2024 09:05:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kKJq777w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5814410E126;
 Fri, 29 Nov 2024 09:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732871139; x=1764407139;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=J4ci7D0ecLEUQbcpuaJID3m85eIHkkbfg+OCDlekOpo=;
 b=kKJq777wKElgsYS36A+5K3Xss0TIrXI895//NHFptw0/5RPYA8qFyFHr
 StgE1zgiA300Gb+9ctXun/Wqsw8nlilCN0VZeK0Cfkf1Pc7UqHjQ8dg97
 Ql0OL4xqLiGnB6jjj+DG4O7pRyXbL5eOl3v+vYc4Ds2ahxKJdjmOPTpF4
 r3GgRFOp7hC18Fvlw6G7E7eTib/4QpzuhAji32sG/3BnOSfS1OsOS/pVK
 uMI3TxAwkjT7k/rod7wRGayOmDpcAOq33aHMBgiwpd/s6R3KkklmzZhPM
 Rfh8wp5Uc0lV851H5FYci0pxPRBJvSMdcKiGaCHFUcjL+ltm0I5+po57c Q==;
X-CSE-ConnectionGUID: 42c+lOL0TUadNqSkw93YMg==
X-CSE-MsgGUID: 2iVo/GXISFSVnvv4cGJSBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11270"; a="37036672"
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="37036672"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 01:05:38 -0800
X-CSE-ConnectionGUID: L+Ab97I4RLawYcOEFaN3Kg==
X-CSE-MsgGUID: 8UD6Q4TEQMSelGJ5p3aBjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="92549046"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa006.jf.intel.com with ESMTP; 29 Nov 2024 01:05:37 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/hdcp: Change log level for HDMI HDCP LIC check
Date: Fri, 29 Nov 2024 14:35:30 +0530
Message-Id: <20241129090530.1814774-1-suraj.kandpal@intel.com>
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

We don't need to shout out loud if there is a Link Integrity
Failure. This does not mean HDCP has failed, it is expected and
taken into account in the HDCP Spec. The real failure happens when
we are not able to reauthenticate and get HDCP running again for
which we already have the right logging.

--v2
-Remove the log altogether [Ankit]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 23c270a8c4aa..4e1a9d6ae862 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1607,7 +1607,6 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *dig_port,
 		if (intel_hdmi_hdcp_check_link_once(dig_port, connector))
 			return true;
 
-	drm_err(display->drm, "Link check failed\n");
 	return false;
 }
 
-- 
2.34.1

