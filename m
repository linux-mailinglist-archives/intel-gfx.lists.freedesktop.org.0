Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC6B7A6B7C
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 21:21:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81F0F10E29A;
	Tue, 19 Sep 2023 19:21:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45C1510E24F
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Sep 2023 19:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695151286; x=1726687286;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+bD14OxvuUmmtf/wadeIO7E3ZQx8lH01cJQrzNQY2TU=;
 b=YGRL4ziDlOrdGlDBDbXwf7Rod020+wnRhGY8tg36NVxOWRV9rXJBXrGm
 DE8cCOjywqNi8OSOwkSdbMykl0yDY0N+mnfTqS+oxx0TXiMux6HsvWxmg
 1RRiaR31kHFQhctwSm+rL9njUEJRxAcj1ygcJB8I8c2v2obwLa5RsSsoZ
 jvDIbewO6mc+ocNfhoqsTofMERhFPrHjoweeb0+6VvKTpgHgqiRzBrDIa
 +fhwhgRi6w5O8Z3GblqPVLrUvThQneIirw9olzdSxcquVklGLVd8wcj2X
 U/jY2sd12Y6OfTnPISeMxeXVYspZsspIhnYZIF4MUNy7Q4Bb6nsJUiBFC Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="359423133"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="359423133"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 12:21:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="746350055"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="746350055"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 12:21:24 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Sep 2023 12:21:10 -0700
Message-Id: <20230919192128.2045154-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230919192128.2045154-1-lucas.demarchi@intel.com>
References: <20230919192128.2045154-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 04/22] drm/i915/display: Remove FBC capability from
 fused off pipes
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

From: Clint Taylor <clinton.a.taylor@intel.com>

If a particular pipe is disabled by fuse also remove the FBC for that
pipe.

Bspec: 69464
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 5f14f9e8ca88..a6a18eae7ae8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1033,16 +1033,19 @@ void intel_display_device_info_runtime_init(struct drm_i915_private *i915)
 		if (dfsm & SKL_DFSM_PIPE_B_DISABLE) {
 			display_runtime->pipe_mask &= ~BIT(PIPE_B);
 			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_B);
+			display_runtime->fbc_mask &= ~BIT(INTEL_FBC_B);
 		}
 		if (dfsm & SKL_DFSM_PIPE_C_DISABLE) {
 			display_runtime->pipe_mask &= ~BIT(PIPE_C);
 			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
+			display_runtime->fbc_mask &= ~BIT(INTEL_FBC_C);
 		}
 
 		if (DISPLAY_VER(i915) >= 12 &&
 		    (dfsm & TGL_DFSM_PIPE_D_DISABLE)) {
 			display_runtime->pipe_mask &= ~BIT(PIPE_D);
 			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_D);
+			display_runtime->fbc_mask &= ~BIT(INTEL_FBC_D);
 		}
 
 		if (!display_runtime->pipe_mask)
-- 
2.40.1

