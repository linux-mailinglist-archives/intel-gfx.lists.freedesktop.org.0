Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5D098807C
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 10:37:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC23510EC73;
	Fri, 27 Sep 2024 08:37:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TX7crGLe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DAF910EC6C;
 Fri, 27 Sep 2024 08:37:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727426227; x=1758962227;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M5ZBjptxzjMVNIeISweshh8wpmjz6tDfEkhllClmHww=;
 b=TX7crGLejHRQUS094izaYuFRPZUiPHJOMm+wTaHAu8YOGLYalegE4A7B
 CfqMXTCL2AjEgro/DvIYU7IAnGmR67CxVIkT4a+7xxUX0gfXqsCLJM+/H
 /BxJeL7skgAFrHUOIb6isitlC7GgS+HqOkGVRohCwDYxLNmd6u6gIBYQ8
 LSBK5ylSsH368ELJxXoT6xEKiG8RjndcvHybJkzWd74bv4oudZbQHl7hP
 18oGKeBuRThE95AP3eZRyUWcl7Gp5McfNMcqbJdl52OvtVvkpugwXiyPL
 HBjVZCy1Q+Ol2wp3d8IocPNTE7y9hwjAHRZDoY2rZBTZkFqr9wep3Uyjd g==;
X-CSE-ConnectionGUID: YAzNKc6sTeq6VZW5KeCZUw==
X-CSE-MsgGUID: AeqMtpOKTLS22UbmCqodig==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="51977638"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="51977638"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 01:37:07 -0700
X-CSE-ConnectionGUID: ZZ/QB2rFQSOL/5molYRCzA==
X-CSE-MsgGUID: 9CBy77oZRT2kkS0Oz4WzYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="77409468"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 01:37:05 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 17/17] drm/i915/intel_dp: Add support for forcing ultrajoiner
Date: Fri, 27 Sep 2024 14:08:31 +0530
Message-ID: <20240927083831.3913645-18-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240927083831.3913645-1-ankit.k.nautiyal@intel.com>
References: <20240927083831.3913645-1-ankit.k.nautiyal@intel.com>
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

