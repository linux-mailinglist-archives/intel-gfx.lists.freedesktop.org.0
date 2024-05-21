Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA19A8CAA33
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 10:42:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F06E10E220;
	Tue, 21 May 2024 08:42:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MmG2+b3C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4559610E30C
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 08:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716280920; x=1747816920;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6SGdPBCuu8o4cQHWnwHuWkvbbdPBRmPgEJMT5h+O8QQ=;
 b=MmG2+b3CX4/WVTCKu2kOEY4QRl8J5AQBXvtRhuEy5ZJgVKSgQQbkwHhK
 XiPo5KNmfXKniZ89ZwT+VzAcfULIAO6oa0VftcsWZURwqBKx/GztQwHuk
 E9C9LA4fHFEzEtnSOcTSW2FMgKKDwdj2q4RdCEkxCp5Su6ACBQuVrSQ+/
 hXH54J5PJQIW82GfWuxSZmCQXQnWNYC4vDXWuofKllNzyUV5+qkR0H9k5
 d0SemzSSFo5InPptWJYd+jESrNIHFOr8jzqCZCZjGYHQSDwUmkL59DR2i
 XZGDpNY3iV2nAPfYKUwLlPOS0fhtkWv1nSGV2Jybjfdj1tCtYxBhZftkT Q==;
X-CSE-ConnectionGUID: S43jpxqRTXyNrtWlCCMUzw==
X-CSE-MsgGUID: 2/TEXuhhSJW16xuCurwx0g==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="23860375"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="23860375"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:42:00 -0700
X-CSE-ConnectionGUID: Clr6mvYET32hxMRJgPUEFA==
X-CSE-MsgGUID: 9f1M5jVsSqCCT9Olmw6Idg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="37426344"
Received: from mathiasj-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.157])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:41:58 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 9/9] drm/i915/display: Selective fetch Y position on Region
 Early Transport
Date: Tue, 21 May 2024 11:41:23 +0300
Message-Id: <20240521084123.1984075-10-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240521084123.1984075-1-jouni.hogander@intel.com>
References: <20240521084123.1984075-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Selective fetch Y position differs when Region Early Transport is
used. Use formula from Bspec for this.

Bspec: 68927
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 32d10e62b2b9..92628bed0b8e 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1302,7 +1302,11 @@ static void icl_plane_update_sel_fetch_noarm(struct intel_plane *plane,
 
 	clip = &plane_state->psr2_sel_fetch_area;
 
-	val = (clip->y1 + plane_state->uapi.dst.y1) << 16;
+	if (crtc_state->enable_psr2_su_region_et)
+		y = max(0, plane_state->uapi.dst.y1 - crtc_state->psr2_su_area.y1);
+	else
+		y = (clip->y1 + plane_state->uapi.dst.y1);
+	val = y << 16;
 	val |= plane_state->uapi.dst.x1;
 	intel_de_write_fw(i915, PLANE_SEL_FETCH_POS(pipe, plane->id), val);
 
-- 
2.34.1

