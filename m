Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F61CB8F1F
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 15:15:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9383410E8BB;
	Fri, 12 Dec 2025 14:15:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QYIFSoMV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EFD410E8CB;
 Fri, 12 Dec 2025 14:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765548907; x=1797084907;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hZk1XIzcoxPEwSg7tk+TnxiA0TOqAbh71Kx3dniuLdE=;
 b=QYIFSoMVdYf7OSK33BnzoedVeKR5A6ACjMSL23NCeHFsApxlkY98iFC6
 4Sq1LooEHnKF/0NLcKSg4wkf9XSjbTBq4twGcuNYhtgy/hmZmwpiffNQW
 fjHeGabmLqe4jh20Lm1BUJtUTmsUNRAehZDqhM/CKFd5koF3ZgocIRGma
 BXw4Z+JUOPR0PqIf/vQTnMsWUIZ2vVmxR4V8+CIigSFfnePh+6CLIjVnc
 itMAAkQfaeka10aqM3zJYAQ6F8Tzys2aOvVaCvPfR1UlIS/QZaCW00XPe
 52SrbhChLQoYza1t0m5S87GJxhy83vNbxAXcjXiDtzoujRLxhB2+mt4bn Q==;
X-CSE-ConnectionGUID: /ouOAZ2MQIqHD8czvO2EaA==
X-CSE-MsgGUID: 9FgXFUFBTzuAgz6cWKI9WQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="71396229"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="71396229"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 06:15:07 -0800
X-CSE-ConnectionGUID: bNXmjDZFSqSO8bzN+QbXJA==
X-CSE-MsgGUID: blzptlc3S66wU2tCZxn+Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="196709115"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.39])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 06:15:03 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [PATCH 5/6] drm/xe: sort parent interface initialization
Date: Fri, 12 Dec 2025 16:14:08 +0200
Message-ID: <0af6654afb2174c472f75710cea328eb443f4b73.1765548786.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1765548786.git.jani.nikula@intel.com>
References: <cover.1765548786.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

Sort the member initializers to improve clarity.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 56796cedbd06..eda65a05f601 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -538,9 +538,9 @@ static const struct intel_display_irq_interface xe_display_irq_interface = {
 
 static const struct intel_display_parent_interface parent = {
 	.hdcp = &xe_display_hdcp_interface,
+	.irq = &xe_display_irq_interface,
 	.panic = &xe_display_panic_interface,
 	.rpm = &xe_display_rpm_interface,
-	.irq = &xe_display_irq_interface,
 	.stolen = &xe_display_stolen_interface,
 };
 
-- 
2.47.3

