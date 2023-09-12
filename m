Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE4F79C4E0
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 06:49:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3131110E399;
	Tue, 12 Sep 2023 04:48:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 647E710E2A8;
 Tue, 12 Sep 2023 04:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694494114; x=1726030114;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HOgBTaV7zi6zrkpmZKPw5fCd3x2A45hzO9RMCtdD+qA=;
 b=cJCUD4S1WIE29N/ediMLIzFxek+iV5haDGAV+7I5TS59RCht4wD+qpq/
 dJ00gQR5OMLPm6KDTm2Fvg0HZKKahy+C2bEN5oIYpOoM36IHcTFEf0s7j
 oqtF7gC0jeIDQR3En22UAxkGZ7OhT6BzxLmwVCgmffhytSbMLR0nj8qGC
 qid4GH1oCHfZDLbx3BF2Mj0yU7gLey++/kg402rPD6XkW/xNW9MM60J8Z
 2n8Foj1ZdAws+D331B8H4BWDJTpTKpGHmwQHzN8lyVkGYF/Evi/pI601n
 JGaNraukQuUmHDz3gkD3FTEEPixycdtyQFDF2LYxXwO+ExXQARMEZKqI1 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="378182319"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="378182319"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="1074419941"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="1074419941"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:33 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon, 11 Sep 2023 21:48:19 -0700
Message-Id: <20230912044837.1672060-12-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230912044837.1672060-1-lucas.demarchi@intel.com>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 11/29] drm/i915/xe2lpd: Don't try to program
 PLANE_AUX_DIST
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matt Roper <matthew.d.roper@intel.com>

Since Xe2LPD technically has FlatCCS, it doesn't have AuxCCS registers
like PLANE_AUX_DIST.  However we currently have HAS_FLAT_CCS hardcoded
to 0 since compression isn't ready; we need to make sure this doesn't
cause the display code to go back to trying to write this register.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 007a0bcb3f93..2a30b8aa2994 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1247,7 +1247,7 @@ icl_plane_update_noarm(struct intel_plane *plane,
 	}
 
 	/* FLAT CCS doesn't need to program AUX_DIST */
-	if (!HAS_FLAT_CCS(dev_priv))
+	if (!HAS_FLAT_CCS(dev_priv) && DISPLAY_VER(dev_priv) < 20)
 		intel_de_write_fw(dev_priv, PLANE_AUX_DIST(pipe, plane_id),
 				  skl_plane_aux_dist(plane_state, color_plane));
 
-- 
2.40.1

