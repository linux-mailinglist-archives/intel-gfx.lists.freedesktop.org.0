Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B9C5BAC05
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 13:08:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B286810EBE9;
	Fri, 16 Sep 2022 11:08:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 846F910EBE9
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 11:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663326532; x=1694862532;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+SZO1WXYk2acSIcHGSK5UE/AwJ+ryxQBekLPKLRdIBk=;
 b=dnYlW8X/7QdxABXhk5sYRt89fx+2MLHC8ZdLeZ4OwfKLZpgj56fRIEf1
 1OOO5yVMJmTKf2ewA3d49JOOIcf4bmHyoQYr1oG58+4Lh8WK06i+GWTC3
 nBfyUggf8Sbp84LqstznZWXhS2qLMV15lTa921HF0yBTtTFAkjz9zVaAE
 Uel1f16cR1E4YSfyLHCUIlAtSfkmAgBQtBbuP/Kukp78X9uvqmJbsymbg
 +aYFOAi8M/XPf0EPNAtsPadkCsvG/7TTBF0pe/PWm7phY/Ols+S3bm6KQ
 iQ+OwgGPbaqKO2TRioNupz56lBl7ftCEfqy/3tNyWgOGJOlzsd7Uaj5s3 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="286009512"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="286009512"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 04:08:51 -0700
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="760014006"
Received: from agiering-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.209.64])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 04:08:50 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Sep 2022 14:08:04 +0300
Message-Id: <20220916110804.233449-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/psr: Do not re-activate PSR if there
 was a PSR aux error
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
Cc: Charlton Lin <charlton.lin@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If there is a PSR aux error sink is marked as not reliable
and PSR is permantently disabled.

Current code is activating PSR again even there was PSR aux error.
Fix this by skipping intel_psr_activate when PSR aux error is
detected.

Cc: Mika Kahola <mika.kahola@intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>

Reported-by: Charlton Lin <charlton.lin@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9def8d9fade6..42390203ad19 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2153,8 +2153,10 @@ static void intel_psr_work(struct work_struct *work)
 	if (!intel_dp->psr.enabled)
 		goto unlock;
 
-	if (READ_ONCE(intel_dp->psr.irq_aux_error))
+	if (READ_ONCE(intel_dp->psr.irq_aux_error)) {
 		intel_psr_handle_irq(intel_dp);
+		goto unlock;
+	}
 
 	/*
 	 * We have to make sure PSR is ready for re-enable
-- 
2.34.1

