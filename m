Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 172286BDD1F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 00:46:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A93F10E09C;
	Thu, 16 Mar 2023 23:46:30 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC49E10E09C
 for <Intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 23:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679010387; x=1710546387;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zE9i37Sl/kR70Br/V/3MsyoN+7rv02yJzS8Z3p9og8k=;
 b=X+/RfCOPH+0MUevw183/KDV4fwMuEavHRmkJjJGFozMMTH/fpaHbT7O9
 Uin+KHU7Qv/nc310nccepypPlyPqTtyfXe8dJVV/8KIovkuw1xvryqfYc
 cv/XvOTfIlDAHPEwWw6QSYgjNFJG1WeOmFTssXzFwZT/wPW2j66Klnw64
 ewEI2dOuYwiaMGMDq7ZpFoc/76MVfnz5lrVqquD7PXc3TSaMizc0XuRbf
 m7ZBuIZ/TJruz5cSAfKyeB9LxG/ea46jq+/9xQSIAC90NWp1W4n/lk+8Q
 OIZ12wzShjo62sd/ktNAdXYljvacJ74d4ype7UPRMxa2ql2UvTsWNPkNj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="336831553"
X-IronPort-AV: E=Sophos;i="5.98,267,1673942400"; d="scan'208";a="336831553"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 16:46:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="854243756"
X-IronPort-AV: E=Sophos;i="5.98,267,1673942400"; d="scan'208";a="854243756"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.136])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 16:46:27 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 16:46:54 -0700
Message-Id: <20230316234654.3797572-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/audio: update audio keepalive clock
 values
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

BSPEC has updated the cdclk audio keepalives AUD_TS_CDCLK_M value to 60
for all supported platforms and refclks.

BSPEC: 54034
BSPEC: 55409
BSPEC: 65243
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 65151f5dcb15..3d5a9bbc6fde 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -983,11 +983,7 @@ void intel_audio_cdclk_change_pre(struct drm_i915_private *i915)
 
 static void get_aud_ts_cdclk_m_n(int refclk, int cdclk, struct aud_ts_cdclk_m_n *aud_ts)
 {
-	if (refclk == 24000)
-		aud_ts->m = 12;
-	else
-		aud_ts->m = 15;
-
+	aud_ts->m = 60;
 	aud_ts->n = cdclk * aud_ts->m / 24000;
 }
 
-- 
2.25.1

