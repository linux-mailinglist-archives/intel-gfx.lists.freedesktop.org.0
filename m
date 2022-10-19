Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D47604972
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 16:39:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0453A10F246;
	Wed, 19 Oct 2022 14:39:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29B1C10EAF9
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 14:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666190336; x=1697726336;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xqAV4l/DANq2koy6r0PYmXZ/aHpIAoeGvLcQHDQneKg=;
 b=VKrCae7O2bu3mi0bQF5bqsDJB7gM670zgO4nzwB2nZJmuiwZj0xr4eLL
 aha7IS5uYbPNG6LXASbZhf1aJkseFYb+sESdnzvSHneqjlcYyH58CSA5G
 zOpa5A4MiHhoPSs1GlpAwkNLSUB+1qlXvoiQvCdtWymqqeiqu7zP95ORp
 CFSKRImaTvhVM+RMJPg8ORNUI7bX9R8TYNctNb5eLzsYNiTPI3CXFZDxH
 2iyzXhAYx70K1CeYMaApx+JrEHLvJvnt1YoCu+WJo5kfx+/CO7rWXWptr
 E30AOR9MoqmYDwWZtpsgVE+gqqQ9RrkzL10hF7Y+Dx+6B3Ms9mLEvYRsM A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="304043904"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="304043904"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 07:38:43 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="631697428"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="631697428"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 07:38:40 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Oct 2022 16:38:18 +0200
Message-Id: <20221019143818.244339-2-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221019143818.244339-1-andrzej.hajda@intel.com>
References: <20221019143818.244339-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/gt: use intel_uncore_rmw when
 appropriate
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch replaces all occurences of the form
intel_uncore_write(reg, intel_uncore_read(reg) OP val)
with intel_uncore_rmw.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index fc23c562d9b2a7..070005dd0da476 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -625,9 +625,7 @@ static void gen5_rps_disable(struct intel_rps *rps)
 	rgvswctl = intel_uncore_read16(uncore, MEMSWCTL);
 
 	/* Ack interrupts, disable EFC interrupt */
-	intel_uncore_write(uncore, MEMINTREN,
-			   intel_uncore_read(uncore, MEMINTREN) &
-			   ~MEMINT_EVAL_CHG_EN);
+	intel_uncore_rmw(uncore, MEMINTREN, MEMINT_EVAL_CHG_EN, 0);
 	intel_uncore_write(uncore, MEMINTRSTS, MEMINT_EVAL_CHG);
 
 	/* Go back to the starting frequency */
-- 
2.34.1

