Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D6B98A9DD
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 18:34:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D30AC10E558;
	Mon, 30 Sep 2024 16:34:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mBnaxVg+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3794E10E562;
 Mon, 30 Sep 2024 16:34:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727714056; x=1759250056;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M5ZBjptxzjMVNIeISweshh8wpmjz6tDfEkhllClmHww=;
 b=mBnaxVg+6Eg8uBp7vm/OK6qHvgDxt9elKtMUHII3hTdJAQ/yFEkwNAhq
 5prYY/3x5rOA1YYAEe3ubcanKegN/95gCM/rvUuUHclUABuqcaPvDW6SP
 ctViTYYb9PNpVVknB6FnNUpQCWIpd2CnWapXjoOtltR7od9FLpEId99Cu
 2SMEpuKlZQ7aNsuOVebNve3hRqaCbhvYMaMDMk7dCC7aD/wAE3Yp4R4cv
 D6RvZAD3/WiTeybUpFlkSTHFIQyYfiAi5zNvR1rFme5Ew8CdHm8aIaAi+
 GzFoW+e25Zpq/oMhQ9Upgn2jCoTmjGG507HIVIFhU0DbiEf14p7yloeFH Q==;
X-CSE-ConnectionGUID: xD+uMEtZQ2y3bS0wJtcY5Q==
X-CSE-MsgGUID: l3PimGj9Suqs77F/tY6c4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="30700559"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="30700559"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 09:34:16 -0700
X-CSE-ConnectionGUID: D3qpWr8PQtmWAIuRbUJhdw==
X-CSE-MsgGUID: IS3mm+qsRiG2BrP2cGdkqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="110839276"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 09:34:14 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 13/13] drm/i915/intel_dp: Add support for forcing ultrajoiner
Date: Mon, 30 Sep 2024 22:05:49 +0530
Message-ID: <20240930163549.416410-14-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240930163549.416410-1-ankit.k.nautiyal@intel.com>
References: <20240930163549.416410-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Allow forcing ultrajoiner through debugfs.

v2: Minor refactoring of switch case logic. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 5923bbc232be..11aff485d8fa 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1331,6 +1331,7 @@ static ssize_t i915_joiner_write(struct file *file,
 {
 	struct seq_file *m = file->private_data;
 	struct intel_connector *connector = m->private;
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	int force_joined_pipes = 0;
 	int ret;
 
@@ -1347,6 +1348,13 @@ static ssize_t i915_joiner_write(struct file *file,
 	case 2:
 		connector->force_joined_pipes = force_joined_pipes;
 		break;
+	case 4:
+		if (HAS_ULTRAJOINER(i915)) {
+			connector->force_joined_pipes = force_joined_pipes;
+			break;
+		}
+
+		fallthrough;
 	default:
 		return -EINVAL;
 	}
-- 
2.45.2

