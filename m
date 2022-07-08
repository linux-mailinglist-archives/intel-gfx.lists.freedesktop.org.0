Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 636E956C180
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 23:58:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D46D310E9E3;
	Fri,  8 Jul 2022 21:58:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5BCA10E9E3
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 21:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657317490; x=1688853490;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=okOQf276OfHOl6bL0rClj9FB5N72iR6Yki4txY5Cy9w=;
 b=mbBs4sm5nYFRj44fDC0O7hvMEugMDzDixaKRURTGWzFsZBCOhM8IHnDl
 8b1bBIlSOzi4yeSxzfNhnkBkUxjqr4JPRYZJ9qRRxdG06LUmFZhiV7xAu
 oGfcQYnc1pyPU9TE1b33ommVxeKDHmhLLYpof7f/EV7GNHbOVMaJATmxA
 scHx8Wt7bu8l/o2WLWk71VGOY3iJa7xaXoVYSd/5NpU4ifpoxMzYN14Z0
 wcf2Q9zcL8anfH7+xWBXzg1kSOZekK2tC1lAuaMQqgyhTcqlNJAbyQeTN
 x7twchbyIeddZXJsnzhJJYfBtw6675o2kxMgt06+Ph/FPfSOI8di6PqT/ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10402"; a="281927124"
X-IronPort-AV: E=Sophos;i="5.92,256,1650956400"; d="scan'208";a="281927124"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 14:58:10 -0700
X-IronPort-AV: E=Sophos;i="5.92,256,1650956400"; d="scan'208";a="651721143"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 14:58:10 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jul 2022 14:58:04 -0700
Message-Id: <20220708215804.2889246-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220708215804.2889246-1-matthew.d.roper@intel.com>
References: <20220708215804.2889246-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Add Wa_14016291713
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

We already disable FBC when PSR2 is enabled on display version 12 and
above; this new workaround now requires that we do the same with PSR1 on
display versions 12 and 13.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 16537830ccf0..7436b35f7ea0 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1098,6 +1098,12 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 		return 0;
 	}
 
+	/* Wa_14016291713 */
+	if (IS_DISPLAY_VER(i915, 12, 13) && crtc_state->has_psr) {
+		plane_state->no_fbc_reason = "PSR1 enabled (Wa_14016291713)";
+		return 0;
+	}
+
 	if (!pixel_format_is_valid(plane_state)) {
 		plane_state->no_fbc_reason = "pixel format not supported";
 		return 0;
-- 
2.36.1

