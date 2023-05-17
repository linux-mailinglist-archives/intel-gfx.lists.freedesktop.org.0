Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A090707262
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 21:41:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0AD410E471;
	Wed, 17 May 2023 19:41:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01CE310E471
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 19:41:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684352475; x=1715888475;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OUszBUL+3fbjiNAc3pbmVn1SiewYnuSYjBC85Jfb7C4=;
 b=JQNbQR/rTR2F+IE6Y0hgsscFe+wpQDCRRCG9pt348kAR5UxGzPrPEFAJ
 cKQ9LRFlzqKno3AOViKaQ+c+1+HlayUQJ8tinFo4f5WXlS+IVZk40lKap
 +r4uUZn0nRan8smwFEiFPDVnMRylGRgYdTDtKPUbAyibcAiI7WwYOEC14
 Gw6GAF38Ks9XHnIfkWiG4dJluCuj3Bt+Iu1PlERS1WeVLDRdJl0f2Y67s
 mOYv545gnXnHXi5lUNPxVFfyF2nFj+In5Q27BUOuqJ7Jo5jIw/9khywxK
 +8TuuRgcmfmWUfzfB6zfLPrVgiDZNtc/bEO918iZX27qoR1jfh8mbqWkY A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="331474397"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="331474397"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 12:41:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="679402276"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="679402276"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 12:41:04 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 May 2023 21:40:39 +0200
Message-Id: <20230517194040.3857137-2-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230517194040.3857137-1-andrzej.hajda@intel.com>
References: <20230517194040.3857137-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI DO_NOT_MERGE 2/3] drm/i915/gt: do not enable render
 and media power-gating on ADL
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Multiple CI tests fails with forcewake timeouts. Disabling power
gating for render and media solves the issue.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/4983
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index ebb2373dd73640..e80685ac92dbef 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -124,6 +124,9 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
 		pg_enable =
 			GEN9_MEDIA_PG_ENABLE |
 			GEN11_MEDIA_SAMPLER_PG_ENABLE;
+	/* Testing */
+	else if (IS_ALDERLAKE_S(gt->i915) || IS_ALDERLAKE_P(gt->i915))
+		pg_enable = 0;
 	else
 		pg_enable =
 			GEN9_RENDER_PG_ENABLE |
-- 
2.34.1

