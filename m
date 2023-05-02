Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F73D6F4768
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 17:38:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F9E810E599;
	Tue,  2 May 2023 15:38:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4F3410E599
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 15:38:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683041894; x=1714577894;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fEyGJlpXdLrTTgGJRSQ0DJUdALtKIdf5ARfK6ohL9Ow=;
 b=GojFG+vcLpM6ocLTiUYC+xJb3h38/n+Bk68qg5LiIVQ3t9gw/Wmp3qVf
 RpE3aPvV2cJfrs+0N6o0WtkqWcG7fJc6K76A3IyThPV5ZnWmUUmXuYMpg
 QXY8lM3n1sgFMB7X/3YKNe6PTSACezh78k4JZcXC+X/lpEYbr+3qP7gsb
 dMdkECfp7DBhEC2SIED5ep9yWHNLQuyhP9ir5nILjmz1i2nJWr0oe7MQf
 8FBzxsZlLDKnKmKYDHCJjYDF1MxlRAhGVOKc+1l5jXUz5Kz0yrAo3aasj
 FToXPj+8ljRYenAxMkS9w551EhJNyF8YXqMJaWy0J70n3BlgDL+RE0/KH w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="413889364"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="413889364"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:38:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="807896259"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="807896259"
Received: from awojtkie-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.50])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:38:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 May 2023 18:37:23 +0300
Message-Id: <b93ddb95a15d1376936349b32c7facb35c76be82.1683041799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683041799.git.jani.nikula@intel.com>
References: <cover.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/24] drm/i915/perf: fix
 i915_perf_ioctl_version() kernel-doc
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

drivers/gpu/drm/i915/i915_perf.c:5307: warning: Function parameter or member 'i915' not described in 'i915_perf_ioctl_version'

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 050b8ae7b8e7..19d5652300ee 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -5300,6 +5300,7 @@ void i915_perf_fini(struct drm_i915_private *i915)
 
 /**
  * i915_perf_ioctl_version - Version of the i915-perf subsystem
+ * @i915: The i915 device
  *
  * This version number is used by userspace to detect available features.
  */
-- 
2.39.2

