Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D56B4F962A
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 14:51:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A6C110F173;
	Fri,  8 Apr 2022 12:51:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F78410F15D
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Apr 2022 12:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649422278; x=1680958278;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vAH6wF+7f1W8aggyMHeNcKMFmoF7grHJvegIGSHa+Zk=;
 b=hho33BF3l31lgF19Tt9bX7wcWZuVq5TnBE2VvSskFsyjVirn+BVedvXK
 t+vmPw/56pNdRlNS6YxjpGO8v45Wsj0Z5bApJ1oH74QqTRA+POoLaGyZ1
 e0CJOz906I5D3ivUj86naSlrtukiDO+5wLurru+xA+tVW4lBIfZwZ+r/a
 joHqA/xrhuTGxkqzdFyKzSS4kqFPG2mSLaU9B6OPR/a4a0x8/v635lgBN
 iU9x4CqPN5RHS4PBh0MSmg0JcrnycHD1aU6Zb1Zq1t1uEz99K4YnsSIhc
 8LRgUKeZ/tcBObyYGf9hkd7l6fhi0KSEu5Gi444lMdSD1GM7oqqZS7cnr g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="322273330"
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="322273330"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 05:51:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="550491222"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga007.jf.intel.com with ESMTP; 08 Apr 2022 05:51:16 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Apr 2022 15:52:00 +0300
Message-Id: <20220408125200.9069-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20220408125200.9069-1-stanislav.lisovskiy@intel.com>
References: <20220408125200.9069-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Swap ret and status returned from
 skl_pcode_request
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

If ret isn't zero, it is almost for sure ETIMEDOUT, because
we use it in wait_for macro which does continuous retries
until timeout is reached. If we still ran out of time and
retries, we most likely would be interested in getting status,
to understand what was the actual error propagated from PCode,
rather than to find out that we had a time out, which is anyway
quite obvious, if the function fails.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/intel_pcode.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
index fb6c43e8a02f..a68eaf510784 100644
--- a/drivers/gpu/drm/i915/intel_pcode.c
+++ b/drivers/gpu/drm/i915/intel_pcode.c
@@ -202,7 +202,7 @@ int skl_pcode_request(struct drm_i915_private *i915, u32 mbox, u32 request,
 
 out:
 	mutex_unlock(&i915->sb_lock);
-	return ret ? ret : status;
+	return ret ? status : ret;
 #undef COND
 }
 
-- 
2.24.1.485.gad05a3d8e5

