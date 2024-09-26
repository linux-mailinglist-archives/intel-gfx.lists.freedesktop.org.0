Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E28F7986D79
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 09:25:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BFD210EAC0;
	Thu, 26 Sep 2024 07:25:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ik2/5p2Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AE9010EABB;
 Thu, 26 Sep 2024 07:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727335512; x=1758871512;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1lkMhrouPwrpcncBTi4RGsOksj59dO2fBO6FMyjtqWo=;
 b=ik2/5p2Zc+C5PfaHyzdGfzFxOKFgbFUjgO7PO8YnC+886HZx54ZIU9wh
 6jGkW+hSpTOj/vOONKCqc6hYzdN2thBjq3VFY0CXWYmOeTEAgu2e9VBwL
 NL982gwiURY7DlB+ZUEVHupgwuzPk4uIm2NduqJDUgdFN1tWuqcwAnt4L
 X7WPtZQdCWygckb2z8GiKQf4mdYcWsEhCvJlKGrjHJWvIk5usn+TCfdIB
 gA6nRJWM3Ceoqv4Hrpmvge5Z0Ai9V+2yZBfU+pIeAK17ZAtSSQoiiuMkc
 Cmzhz/AqIG6AWjWEZV27O7ZRdhHqGtXprMZfGreWngbcOrNM468BUWXMw Q==;
X-CSE-ConnectionGUID: Yqa0dqRuQSKDniQUEduh+A==
X-CSE-MsgGUID: dl/hlmHYRdCmJO9A3v+AEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="51829476"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="51829476"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 00:25:12 -0700
X-CSE-ConnectionGUID: jiJj01W0T2it7uZDG/Xmnw==
X-CSE-MsgGUID: Uyxn3dzES+yGrLKuOXpfZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="72334543"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 00:25:10 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 15/15] drm/i915/intel_dp: Add support for forcing ultrajoiner
Date: Thu, 26 Sep 2024 12:56:38 +0530
Message-ID: <20240926072638.3689367-16-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240926072638.3689367-1-ankit.k.nautiyal@intel.com>
References: <20240926072638.3689367-1-ankit.k.nautiyal@intel.com>
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
index 14bfda9f2d5c..820c6859c9bf 100644
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

