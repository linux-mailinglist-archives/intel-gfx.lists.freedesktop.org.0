Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A230F8D3334
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 11:39:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5892F10EE81;
	Wed, 29 May 2024 09:39:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ax8TINm1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AFBD10E0BB
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2024 09:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716975546; x=1748511546;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2rUYfvoM/yUIS8bq6s4igvY0Up1UA9Wh8roGrPt1JZo=;
 b=Ax8TINm1e4PY4MVzgMcFgk3Kja2poJBlR0WxG8mnfGrDnWx1qdIlIb/U
 Ul2VluIUVya0eXWLx38g/4HHHDdIFR+MA5mV8PHq6jrunqsUpNAUyEEeM
 NXAFgtdkrayk7/D6YX6ft+3DjDbpTDBcAGpraSTG4D4YyzChlwwmS0ImD
 4+H+V61XEppP1sTLXTkHE7gY1g7Fj09aLxS4BxSc24judB5EWGQohpWXI
 xYt8leQvkUav1wMLE6R6C8GwTVDE2mAQqMDtDCGQ4ZUed710mVXtp9pnW
 znl8aOmOuLiHOzVgpJnl9d4Mf2Uw90RxbPiHE4+2K3ehzug1AEclKy5oE Q==;
X-CSE-ConnectionGUID: 5SaH6PthQ4CN30z+uPWCKg==
X-CSE-MsgGUID: GlLCnaENQzm9dUAdqLoJiQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="16316811"
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="16316811"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 02:39:06 -0700
X-CSE-ConnectionGUID: WmR9PFQoSpOKw2mpC+yEeQ==
X-CSE-MsgGUID: E4bV+cI/QxK0skg5NrTC3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="40273884"
Received: from romanove-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.36.185])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 02:39:05 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 2/6] drm/i915/psr: Get Early Transport status in
 intel_psr_pipe_get_config
Date: Wed, 29 May 2024 12:38:45 +0300
Message-Id: <20240529093849.1016172-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240529093849.1016172-1-jouni.hogander@intel.com>
References: <20240529093849.1016172-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

We are currently not getting Early Transport status information in
intel_psr_pipe_get_config. Fix this.

Fixes: 467e4e061c44 ("drm/i915/psr: Enable psr2 early transport as possible")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4c92e47d4fa3..1e55d447481a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1757,6 +1757,8 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 			pipe_config->enable_psr2_sel_fetch = true;
 	}
 
+	pipe_config->enable_psr2_su_region_et = intel_dp->psr.su_region_et_enabled;
+
 	if (DISPLAY_VER(dev_priv) >= 12) {
 		val = intel_de_read(dev_priv,
 				    TRANS_EXITLINE(dev_priv, cpu_transcoder));
-- 
2.34.1

