Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5AC6921FD
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 16:22:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8055410ED5C;
	Fri, 10 Feb 2023 15:22:18 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0ACF010ED5B;
 Fri, 10 Feb 2023 15:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676042536; x=1707578536;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4LBUaA9pEMCOhwerWJO0D+7BfhiHAbclHT+GJrNRH9Y=;
 b=kMquU6xVp/JunGPvyhIbPtOerMDlqmMA9PBbXdOsbC6LGRpT6R2Hmq1w
 ah87WheeBpxIcYMnjCTZJdBU1oq283LMRbEJAPhbO29UtwWA8WP82+QOC
 oGDqyNeCg8A9RpZNB5E7QaD8fNcpeK+oF1SBHqq7uG8JoCXU9J3A58Tva
 8ey7cy5gQ7gOlZ4DoqCaTSNFSZ2v0g/kxs4CRUlmOyzuJ5RHWGvEekLTk
 TZb5GE5sepvaDXUgUuJ92zwTnAql65l+nxOTGVc1i0pU1jV2yjJ6eDJkn
 Jiodx95jnDls5cwN+99ycxYuIPxVFN2+ijXo7QC9sRzIFalbqZ6S8vqj2 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="318458537"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="318458537"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 07:22:15 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="810846968"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="810846968"
Received: from athornbe-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.209.249])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 07:22:13 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 10 Feb 2023 15:22:07 +0000
Message-Id: <20230210152207.585007-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] intel_gpu_top: Add compute class names
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

No one remembered to add names for the new compute engines.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tools/intel_gpu_top.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index c043c8960dd0..e13e35b71f4b 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -281,6 +281,8 @@ static const char *class_display_name(unsigned int class)
 		return "Video";
 	case I915_ENGINE_CLASS_VIDEO_ENHANCE:
 		return "VideoEnhance";
+	case I915_ENGINE_CLASS_COMPUTE:
+		return "Compute";
 	default:
 		return "[unknown]";
 	}
@@ -297,6 +299,8 @@ static const char *class_short_name(unsigned int class)
 		return "VCS";
 	case I915_ENGINE_CLASS_VIDEO_ENHANCE:
 		return "VECS";
+	case I915_ENGINE_CLASS_COMPUTE:
+		return "CCS";
 	default:
 		return "UNKN";
 	}
-- 
2.34.1

