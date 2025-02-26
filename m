Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0C3A455D6
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 07:42:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F365610E854;
	Wed, 26 Feb 2025 06:42:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V4PnPDVh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20A3C10E854
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2025 06:42:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740552170; x=1772088170;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EEfIfNiourpH6qRYYNxP+3qhvtxVD3wf+r5H7qtf53E=;
 b=V4PnPDVhBP78+HEmjMZ/sNhW5ZS9VyTg2DzUm1WuAyfueEs1m+RnAMsL
 L8wqSA9qwTwAm9ipk71jaP3ITqRMNSzyQF1523cVmOvzH9u3P9ViMCaep
 gGwwA8tdLuiSiu0QF46ZHFcprtJjwJtYGdAiRTFBFYFLQ46sPRG92LbvK
 /rtGwqc8iK4V5CpJLlA7AHeaWoVxqAAQX2pGhO6gV96UaPA9dal4MAqVP
 knPzhm63W21Q/GWpB2MS7oVAhGWnWyfqaczuzHZvuADiYV9v80ZRw6xa+
 fMcAMUJXxMrB1Tazz0hJ56DHhvhT+asKgjpoVGW93nxoxKx71FzXU9g05 g==;
X-CSE-ConnectionGUID: N7zScnbJTE+Fl8AiUEW6Nw==
X-CSE-MsgGUID: i3RKtMN3Sou4CHHHXdqjIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="41088467"
X-IronPort-AV: E=Sophos;i="6.13,316,1732608000"; d="scan'208";a="41088467"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 22:42:49 -0800
X-CSE-ConnectionGUID: 6X0DArZ2RdCyoirrZO9fdA==
X-CSE-MsgGUID: obT0pnMlTaS6pbP9tV2nlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,316,1732608000"; d="scan'208";a="116420732"
Received: from lnl-rocket-lake-client-platform.iind.intel.com (HELO
 lnl-Tiger-Lake-Client-Platform.iind.intel.com) ([10.145.169.162])
 by fmviesa006.fm.intel.com with ESMTP; 25 Feb 2025 22:42:48 -0800
From: Mohammed Thasleem <mohammed.thasleem@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Mohammed Thasleem <mohammed.thasleem@intel.com>
Subject: [PATCH i-g-t] tests/intel/kms_pm_dc: Add log information to dc5 psr
 test
Date: Wed, 26 Feb 2025 12:10:37 +0530
Message-ID: <20250226064037.80089-1-mohammed.thasleem@intel.com>
X-Mailer: git-send-email 2.43.0
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

Pipe A is required to run the DC5 transaction. Adding log information
to indicate if any pipe other than Pipe A is selected.

Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
---
 tests/intel/kms_pm_dc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/tests/intel/kms_pm_dc.c b/tests/intel/kms_pm_dc.c
index bbb29d7d9..1b10c7959 100644
--- a/tests/intel/kms_pm_dc.c
+++ b/tests/intel/kms_pm_dc.c
@@ -160,6 +160,9 @@ static void setup_output(data_t *data)
 	for_each_pipe_with_valid_output(display, pipe, output) {
 		drmModeConnectorPtr c = output->config.connector;
 
+		if (pipe != PIPE_A)
+			igt_info("Pipe A was not selected for the DC5 transaction.\n");
+
 		if (c->connector_type != DRM_MODE_CONNECTOR_eDP)
 			continue;
 
-- 
2.43.0

