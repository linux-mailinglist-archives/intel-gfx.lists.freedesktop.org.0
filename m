Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C15A9AD6E8
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 23:47:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E8AF10E87C;
	Wed, 23 Oct 2024 21:47:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k015rdlP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CED2D10E868;
 Wed, 23 Oct 2024 21:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729720027; x=1761256027;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KgADnzTjv9C/5iOZ5wDTZEciLnf4vDDcc+EG5Z4RJ+U=;
 b=k015rdlPvwVUquf9hWySVlc9E794aJtBa4P6fa9ZAXBmErMXbCc2IH0K
 d6xUqse8qCbaCVEmP9jQRVu1K/azUJdAK1R1GgrgptISg1TvITtrVszV6
 ZhwJMGKOO6R5cpUdOmabBxqBuN3D+RFXD/7v6bpVM/f5tnE5Nojmy1skr
 x9oRhPi750jVtfNPVEpzCZpjhgKmWPihrBMzo78vZuFQ/TmSyp1YSoJzb
 eBbJojdmC4Aa6HfWnR65DmBbD0vvg7Hqurjb77CThFxos9HaPJ3NpDZKM
 DoPdAxcAsmUyR0Bl1WbtpAVSnJTRkfdtBez12dwTBPGFMnFwY7fiZ5+/i Q==;
X-CSE-ConnectionGUID: qrLjJ9DeSq+YCG1fOlfX8w==
X-CSE-MsgGUID: EtlZc/bQR0GicAKKcdEcGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="54732006"
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="54732006"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 14:47:06 -0700
X-CSE-ConnectionGUID: 5ebVs3FVRtiexjF04M2xcg==
X-CSE-MsgGUID: tgfsttHoSTybHCFGNSP3yQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="80809806"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 14:47:05 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v2 09/12] drm/i915/xe3: Underrun recovery does not exist post
 Xe2
Date: Wed, 23 Oct 2024 14:46:58 -0700
Message-Id: <20241023214701.963830-10-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241023214701.963830-1-clinton.a.taylor@intel.com>
References: <20241023214701.963830-1-clinton.a.taylor@intel.com>
MIME-Version: 1.0
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

From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>

From platforms xe3 Underrun recovery does not exist

v2: improve DISPLAY_VER checking
BSpec: 68849
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 01466611eebe..124e094a9999 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -861,7 +861,7 @@ static void icl_set_pipe_chicken(const struct intel_crtc_state *crtc_state)
 	 */
 	if (IS_DG2(dev_priv))
 		tmp &= ~UNDERRUN_RECOVERY_ENABLE_DG2;
-	else if (DISPLAY_VER(dev_priv) >= 13)
+	else if ((DISPLAY_VER(dev_priv) >= 13) && (DISPLAY_VER(dev_priv) < 30))
 		tmp |= UNDERRUN_RECOVERY_DISABLE_ADLP;
 
 	/* Wa_14010547955:dg2 */
-- 
2.25.1

