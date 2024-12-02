Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D819DFA97
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 07:04:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3759F10E0FE;
	Mon,  2 Dec 2024 06:04:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AFeK51yC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C724310E0FE;
 Mon,  2 Dec 2024 06:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733119458; x=1764655458;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5KoGhPtKgfacQyZ37Knjius44TnO4peco7WUx49MXfw=;
 b=AFeK51yCVU+4yE6psOkinCpC91sG7V0GMLoFosyrzeSPgizG6ihel1xq
 ejB84r+Rw01qbcOCU2yer2gNfQV3638mEC8upWeh/jxRTOJfvhPIR5Qnn
 R8OQ8UJyredK3cfyCMcCN24ycx3Eax3G2HRfqnSiwY0FdkyETFWSmHTiz
 UFquDhQEgc94RjRA49edxUQNjT3BSHEf0wU9AdETQn8coJzSgfxnIOQTe
 6R4mFbxraba/TRfQsWhqfFIZjkFUqaO70ngeW34WM4tcXlIfSbdTZ3N3b
 bjHRr6F4FEVggc9HqHNDHPvjo1HD6msf8tttoYz6BaJDC6cFbX2i5Wlcb w==;
X-CSE-ConnectionGUID: q8IYRm15Sn6Ke9/BPbQSkA==
X-CSE-MsgGUID: CvtTRm6UR1m+Qjk3XJSceg==
X-IronPort-AV: E=McAfee;i="6700,10204,11273"; a="33401699"
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="33401699"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2024 22:04:16 -0800
X-CSE-ConnectionGUID: SjXSCY5mQNK7l4vTWOJQ4A==
X-CSE-MsgGUID: 36/JJDfHQ/CUjMcBM3tCcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="98038040"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa003.jf.intel.com with ESMTP; 01 Dec 2024 22:04:14 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/hdcp: Remove log for HDMI HDCP LIC check
Date: Mon,  2 Dec 2024 11:34:10 +0530
Message-Id: <20241202060410.1872121-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241129090530.1814774-1-suraj.kandpal@intel.com>
References: <20241129090530.1814774-1-suraj.kandpal@intel.com>
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

--v3
-Remove useless display variable

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 23c270a8c4aa..63e56c9ff516 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1600,14 +1600,12 @@ static
 bool intel_hdmi_hdcp_check_link(struct intel_digital_port *dig_port,
 				struct intel_connector *connector)
 {
-	struct intel_display *display = to_intel_display(dig_port);
 	int retry;
 
 	for (retry = 0; retry < 3; retry++)
 		if (intel_hdmi_hdcp_check_link_once(dig_port, connector))
 			return true;
 
-	drm_err(display->drm, "Link check failed\n");
 	return false;
 }
 
-- 
2.34.1

