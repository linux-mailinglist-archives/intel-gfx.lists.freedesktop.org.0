Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40948AD7C78
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 22:35:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6C1410E1C8;
	Thu, 12 Jun 2025 20:35:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gUAsQi0D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B85FD10E1B8;
 Thu, 12 Jun 2025 20:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749760502; x=1781296502;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MVuu5y+3gkG05xuksxWU0y7c4dGehJEpVJpMgmyU9Fg=;
 b=gUAsQi0DJZl7ANqb3+WpyFmO8LISYPgny46EexgpF+5L2g8/NjBMkQWN
 r8gZVG4C/NAKtSVJD5SW2nwvp/WaBused728dwi/YOYOiBbTOmeiAsVPX
 p5KLkGDK/+NBWJKGIQqHQv7pza1TQ8xKL4LXKK5zclahVl5Q4sICzEXMy
 NM8yK6s+9DdIW5KMxSjVn8qXN3X/joOpEpAOWbDocxuxRZvFyzs5XXmhY
 e6JNZZAoaTdrO5jKN36Qzl9I+GePD+0qqmrmZ4IP2u3UNno/a0kvW55g0
 ZsiRBziEOVfk4yMu50T7/TqEtRBnGMmO1f9G7AfUnJ2oQWPZzG9w5z0q3 g==;
X-CSE-ConnectionGUID: blmyJAgiSz+tOhr8Nyj0pw==
X-CSE-MsgGUID: I4sRXOcBTA6uev92wEvCHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="52106977"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="52106977"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 13:35:02 -0700
X-CSE-ConnectionGUID: PeEsVbYPS9eYeZrthgmq6g==
X-CSE-MsgGUID: yrDuMtN/T6mbcaFSpFXV5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="148520080"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by fmviesa009.fm.intel.com with ESMTP; 12 Jun 2025 13:35:00 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 Tejas Upadhyay <tejas.upadhyay@intel.com>
Subject: [PATCH v5 6/9] drm/xe: Add Wildcat Lake device IDs to PTL list
Date: Fri, 13 Jun 2025 02:04:45 +0530
Message-Id: <20250612203448.2948795-7-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250612203448.2948795-1-dnyaneshwar.bhadane@intel.com>
References: <20250612203448.2948795-1-dnyaneshwar.bhadane@intel.com>
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

From: Matt Roper <matthew.d.roper@intel.com>

Introduce wildcat lake device Id.
Wildcat Lake uses slightly different graphics and media IP versions
than Panther Lake, but can still be treated as PTL for general driver
flows.

Bspec: 73951
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Reviewed-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
---
 include/drm/intel/pciids.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h
index 129c3172aa5f..a0180d10e260 100644
--- a/include/drm/intel/pciids.h
+++ b/include/drm/intel/pciids.h
@@ -871,6 +871,8 @@
 	MACRO__(0xB08F, ## __VA_ARGS__), \
 	MACRO__(0xB090, ## __VA_ARGS__), \
 	MACRO__(0xB0A0, ## __VA_ARGS__), \
-	MACRO__(0xB0B0, ## __VA_ARGS__)
+	MACRO__(0xB0B0, ## __VA_ARGS__), \
+	MACRO__(0xFD80, ## __VA_ARGS__), \
+	MACRO__(0xFD81, ## __VA_ARGS__)
 
 #endif /* __PCIIDS_H__ */
-- 
2.34.1

