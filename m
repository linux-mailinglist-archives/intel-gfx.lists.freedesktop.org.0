Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38794CA3563
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 11:58:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C06A310E939;
	Thu,  4 Dec 2025 10:58:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VO8ce6Ed";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F343210E929;
 Thu,  4 Dec 2025 10:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764845896; x=1796381896;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bPAz7wG0HmrKwNvILRtUPosP1u+xPhGr/Z4XWIuD4yk=;
 b=VO8ce6EdxRZfpYIiWyjXd9fm9d9z/QroHKEy3p3af7HWoP7DkEpZTtG5
 AmGgte6TgjCoihZK94DHq+9TMFM4cWWtqm5Lw3DHrqfrAlL7b03K19Hlo
 EpuVVDpYwOne0HkH0dtNBwbz6Y4nylNehM0HaJc+9d0xgUeeY2SnHPmHq
 bgrAXOo9+EhkOTUn8BNsHscmS94DK/8cr1nKMlYUrtVQGk+eRAdwNgxCq
 xVG9k18r9HJonOLFmwc5vdFAtrOfDtW4TJD699BhFEV7g74CdkvFk5Om3
 VFyY9hLBvNw/m4Xtq4kKGbDFIjPbkV+Ej2hSDsS3lyfKTNbUT+rRTokhI A==;
X-CSE-ConnectionGUID: k8eD8hnjRyC64DOvmJpLtA==
X-CSE-MsgGUID: Ms0JPIWfS7CzDH4Oi4c6YQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="78326988"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="78326988"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:58:16 -0800
X-CSE-ConnectionGUID: pM0oyXejTTKTZe6CiNbDYA==
X-CSE-MsgGUID: 1eIJ/zCAQNeUEOFg+Jhj9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="195064587"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:58:13 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: tzimmermann@suse.de, ville.syrjala@linux.intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 03/25] drm/vblank: remove superfluous pipe check
Date: Thu,  4 Dec 2025 12:57:31 +0200
Message-ID: <c00fe5d23557e8bce01c7c5545eb1f2e77440851.1764845757.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1764845757.git.jani.nikula@intel.com>
References: <cover.1764845757.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

Now that the pipe is crtc->pipe, there's no need to check it's within
range.

Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_vblank.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index 1d12836e3d80..f4d1fe182a4d 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -1302,9 +1302,6 @@ void drm_crtc_wait_one_vblank(struct drm_crtc *crtc)
 	int ret;
 	u64 last;
 
-	if (drm_WARN_ON(dev, pipe >= dev->num_crtcs))
-		return;
-
 	ret = drm_vblank_get(dev, pipe);
 	if (drm_WARN(dev, ret, "vblank not available on crtc %i, ret=%i\n",
 		     pipe, ret))
-- 
2.47.3

