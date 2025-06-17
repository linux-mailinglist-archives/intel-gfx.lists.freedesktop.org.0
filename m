Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE845ADD9A8
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 19:08:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 000CD10E78A;
	Tue, 17 Jun 2025 17:08:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H7UvlsIm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B1AF10E778;
 Tue, 17 Jun 2025 17:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750180105; x=1781716105;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sYPDCVW9STG/pmj0XKvuzG9Un7IuPkJ4bURK+uLXrWs=;
 b=H7UvlsImfSpBrlLASgSbFQM8LxLePNmexA6Xku6ZuN3dsmtoQv+Fc3uL
 jusas8YKLXYOW8T8DFh42fOpDE6fY84e+/+wbW1M7F3lwCvTbApq65n0N
 NZcwuLs0sJZ38AwmUiFlgrrTn50G7uaFRg0qODi5PHCb7W5kMOfNUIbvP
 jiJv7oC/pRmluaLcoNj4YyxSciC5o0SZ4Z2F03FVciMYl8RuTaIIJi9GU
 GfERpR2VEmIKITrOnwvYrZP0giBIU4UTQV4u0Wkecw6iz91IZ5VL4Y5qq
 0uwl7lh1FMDuORakearl724SqH9a2+J9nczQ9ndWDCI+Go/6d0qePTH9f Q==;
X-CSE-ConnectionGUID: 9ILGriH3RAiKIQ2Tg8gM4w==
X-CSE-MsgGUID: qa+8WpmLTc2HE5CncfAS1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11467"; a="62644625"
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="62644625"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 10:08:21 -0700
X-CSE-ConnectionGUID: /HJ41QKZRVONy40GPQuVYA==
X-CSE-MsgGUID: swsMEFLCQAiV9sfeugGMcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="154138696"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.184])
 by orviesa005.jf.intel.com with SMTP; 17 Jun 2025 10:08:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 17 Jun 2025 20:08:16 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v2 5/9] drm/i915/dmc: Reload pipe DMC state on TGL when
 enabling pipe A
Date: Tue, 17 Jun 2025 20:07:55 +0300
Message-ID: <20250617170759.19552-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250617170759.19552-1-ville.syrjala@linux.intel.com>
References: <20250617170759.19552-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

On TGL/derivatives the entire pipe DMC state (program + MMIO) is
lost when PG1 is disabled, and the main DMC does not restore
any of it. Reload the state when enabling a pipe.

The other option would be to not load the pipe DMC at all since
it's only needed for "fast LACE" (which we don't use) on these
platforms. But let's keep it around just in case we ever decide
that "fast LACE" is something we want.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 331db28039db..fd99c4645260 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -599,6 +599,12 @@ static void dmc_load_program(struct intel_display *display,
 	}
 }
 
+static bool need_pipedmc_load_program(struct intel_display *display)
+{
+	/* On TGL/derivatives pipe DMC state is lost when PG1 is disabled */
+	return DISPLAY_VER(display) == 12;
+}
+
 void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe)
 {
 	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
@@ -606,6 +612,9 @@ void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe)
 	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(display, dmc_id))
 		return;
 
+	if (need_pipedmc_load_program(display))
+		dmc_load_program(display, dmc_id);
+
 	if (DISPLAY_VER(display) >= 20) {
 		intel_de_write(display, PIPEDMC_INTERRUPT(pipe), pipedmc_interrupt_mask(display));
 		intel_de_write(display, PIPEDMC_INTERRUPT_MASK(pipe), ~pipedmc_interrupt_mask(display));
-- 
2.49.0

