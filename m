Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3233631CC7
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 10:25:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB61410E180;
	Mon, 21 Nov 2022 09:25:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42C9910E180
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 09:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669022707; x=1700558707;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uxT540DF1BLEEZwOVYhhTKjoDxDStaL/61/eBJcCP+U=;
 b=I13tCfsd92kf4MEkoBGA5Gr+LiVCvW8pP3wdHwoYvSgKO0LwQSUCqYF2
 ZdOLLoR8Y+5fSEAKtPeWuSrI7G4c0CBBsBHLT0PKFjuAR8P6pEMZLUlcu
 QWirZNumqxoPCMmv4JBSYCMx91WOy5h45kEhwALchtgtfHvGwxtROkMNh
 ceOWqy9sK6D6UQ5CmzDnEZbUFfYYzuK75PQ6cbRflX6nssNAKjJa3hPHr
 H49DXdQtlCjXI+32gBIgyw1uw2yPgD4RH8NT109MeIO9xXRxJ9l63kNFw
 8LN8DVeSbZL4Vah3Go4kyKmX44fg9SgNwRoWHgL7z9QMF0crnP8IbJC17 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="311145036"
X-IronPort-AV: E=Sophos;i="5.96,180,1665471600"; d="scan'208";a="311145036"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 01:25:06 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="815649145"
X-IronPort-AV: E=Sophos;i="5.96,180,1665471600"; d="scan'208";a="815649145"
Received: from sannilnx.jer.intel.com ([10.12.26.175])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 01:25:02 -0800
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Mon, 21 Nov 2022 11:24:49 +0200
Message-Id: <20221121092449.328674-1-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/gsc: Only initialize GSC in tile 0
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
Cc: Tomas Winkler <tomas.winkler@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: José Roberto de Souza <jose.souza@intel.com>

For multi-tile setups the GSC operational only on the tile 0.
Skip GSC auxiliary device creation for all other tiles
in GSC device init code.
Initialize basic GSC fields and use the same path
as HECI1 (HECI_PXP) device disable.

Cc: Tomas Winkler <tomas.winkler@intel.com>
Cc: Vitaly Lubart <vitaly.lubart@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
---
V2: Move decision to skip initialization into GSC device init code.
    This initializes basic GSC fields and uses the same path
    as HECI1 (HECI_PXP) device disable.
    It is simpler and protects interrupt handler too.

 drivers/gpu/drm/i915/gt/intel_gsc.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.c b/drivers/gpu/drm/i915/gt/intel_gsc.c
index 976fdf27e790..bcc3605158db 100644
--- a/drivers/gpu/drm/i915/gt/intel_gsc.c
+++ b/drivers/gpu/drm/i915/gt/intel_gsc.c
@@ -174,6 +174,14 @@ static void gsc_init_one(struct drm_i915_private *i915, struct intel_gsc *gsc,
 	intf->irq = -1;
 	intf->id = intf_id;
 
+	/*
+	 * On the multi-tile setups the GSC is functional on the first tile only
+	 */
+	if (gsc_to_gt(gsc)->info.id != 0) {
+		drm_dbg(&i915->drm, "Not initializing gsc for remote tiles\n");
+		return;
+	}
+
 	if (intf_id == 0 && !HAS_HECI_PXP(i915))
 		return;
 
-- 
2.34.1

