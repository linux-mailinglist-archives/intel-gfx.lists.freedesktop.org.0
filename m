Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2322705A63
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 00:04:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA74310E06D;
	Tue, 16 May 2023 22:03:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 183CD10E175
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 May 2023 22:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684274636; x=1715810636;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=65C4TUO25ZBwIE1hBHdad6vbngrtm3SENG6x2setgXQ=;
 b=iXfBDZumT0c8MMBrawJnodxHpSWA1ahPRXG4qExuOlA9wSa2DDYltq9t
 1vhRwBLsqDTFaRaMKmozjwWKt3SFDXTZWCtSfij8QVrsPa7VdM3F4un4L
 ykpSpf+aIzlfdw0nvUDGzbscQyZNGVxM+B1exTBKehh6U9i9oGG9KntgA
 qmHYRzx4T6Gn377uw1RjIIHBo+yHju6Iq5WDYoStQ2zbKX4kzdc08TkfT
 Bl8wM6jZptE0C7P1sMEdDXhUaiJeESEpo3WtNlzKljiCdd3fxDsAplQWN
 YvOC4Gqi3uD781Gfo3Jv3+t472L9WD0YjWlDeTppdpm5jPZKIwlOrYNi+ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="354772873"
X-IronPort-AV: E=Sophos;i="5.99,280,1677571200"; d="scan'208";a="354772873"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 15:03:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="791238731"
X-IronPort-AV: E=Sophos;i="5.99,280,1677571200"; d="scan'208";a="791238731"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 15:03:54 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 May 2023 00:03:34 +0200
Message-Id: <20230516220334.3737951-2-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230516220334.3737951-1-andrzej.hajda@intel.com>
References: <20230516220334.3737951-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI DO_NOT_MERGE 2/2] drm/i915/gt: do not enable render
 and media power-gating on RPL-S
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
index cd63eaf0d0c8de..3f8238c95fccd6 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -126,6 +126,9 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
 		pg_enable =
 			GEN9_MEDIA_PG_ENABLE |
 			GEN11_MEDIA_SAMPLER_PG_ENABLE;
+	/* Testing */
+	else if (IS_ADLS_RPLS(gt->i915))
+		pg_enable = 0;
 	else
 		pg_enable =
 			GEN9_RENDER_PG_ENABLE |
-- 
2.34.1

