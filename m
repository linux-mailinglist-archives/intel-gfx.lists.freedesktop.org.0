Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4A853C182
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 02:54:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD95910F075;
	Fri,  3 Jun 2022 00:54:05 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E469210E7E4;
 Fri,  3 Jun 2022 00:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654217645; x=1685753645;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=buKeQOa/AMHzgbsf4LRcE8lygUBvcrvpL8yOhxq9V3w=;
 b=jPdG9P9fNYaM4aOU3ETcp5odh+YvefPDZfL4fgNKR/qvJnapNICdMQPY
 IBWQNUp5DaZuE18AlrhsvAbs6aVWLylirkvpgzdEY+5ewbFfK2M0C9NlF
 uxQwFg8feMIqB20ojwkPD0Z6i1SH93LxOdNbCVf4noBsszFPR8QfMf9m/
 m5PMFgMvT8N+SLqKHTwZp3iQciQJX+u+pA8sQoRuNLwVY9jBdiPYO8xgl
 YMMEZjwS48p9514X6BbTnt/tkNgCuNAI+hyZLbn0P4cwhq+3dFoq82AOx
 p/QMxuCgp7Mk+nm2jvGT8vd+szFjDUK/YGnGhMvD/Y0f3U9VDPR66GCKU A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="339174840"
X-IronPort-AV: E=Sophos;i="5.91,273,1647327600"; d="scan'208";a="339174840"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 17:54:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,273,1647327600"; d="scan'208";a="707827183"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga004.jf.intel.com with ESMTP; 02 Jun 2022 17:54:04 -0700
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Thu,  2 Jun 2022 17:54:02 -0700
Message-Id: <20220603005404.2209038-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 i-g-t 0/2] Update DRM UAPI and add test for
 new hw info query
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
Cc: Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Various UMDs require hardware configuration information about the
current platform. A new interface has been added to the KMD to return
this information. So, add a test for the new interface.

Also, update to the latest DRM UAPI header file that contains the new
query enums.

v2: Rebased to newer baseline.
v3: Update UAPI header file.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>


John Harrison (1):
  include/drm-uapi: Update to latest i915_drm.h

Rodrigo Vivi (1):
  tests/i915/query: Query, parse and validate the hwconfig table

 include/drm-uapi/i915_drm.h | 410 ++++++++++++++++++++++++++++--------
 lib/intel_hwconfig_types.h  | 118 +++++++++++
 tests/i915/i915_query.c     | 179 ++++++++++++++++
 3 files changed, 615 insertions(+), 92 deletions(-)
 create mode 100644 lib/intel_hwconfig_types.h

-- 
2.36.0

