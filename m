Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0863AD5B21
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 17:53:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D98310E6B5;
	Wed, 11 Jun 2025 15:53:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M7715Kmq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3D3110E6B5;
 Wed, 11 Jun 2025 15:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749657182; x=1781193182;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UwOET7/QdwPi/LxnGCTxid5w8zNh40KLjdXrJJIOSqQ=;
 b=M7715Kmq71WmJeNGGJdZl4wF7enpW68AZS8LGrrHpZPwvHw/Rm/9NM3e
 3ytyN+V2lsbwgWaC/f/OmRrvPTjBl9blI+ZXZqcRmkNnA26NR4TuRcJub
 T7VvjmphXrnmOw8TiXViBDlf68PMKbhSN1zztoXG0x/bOXxyuxypCnKqA
 q4s8xfeLl1IaOOaMApK23T9v5ji84FmiCm8wjV5wMNCC2mseyicxGqTz/
 Q/5ta8iIpst/wWzS/F0JVcYwZHIxrqNKofp5SEW+DP5FcY8796EfzPuj9
 JnsgAhL1VZb6DmSYOrihJhDkI6xALofS+OzmU2kwzEpufNn0dMpSx2YVm w==;
X-CSE-ConnectionGUID: h83OSHgUR++SUmMWw8aafQ==
X-CSE-MsgGUID: SfiyQPXfQnGaID+IKmCHdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="62419131"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="62419131"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 08:53:01 -0700
X-CSE-ConnectionGUID: O1HrGyumQWeJVNfazvbIVQ==
X-CSE-MsgGUID: iLbDjkNrRl6zh1WSUi/uRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="152507384"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.24])
 by orviesa005.jf.intel.com with SMTP; 11 Jun 2025 08:52:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Jun 2025 18:52:58 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 5/9] drm/i915/dmc: Reload pipe DMC state on TGL when enabling
 pipe A
Date: Wed, 11 Jun 2025 18:52:37 +0300
Message-ID: <20250611155241.24191-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250611155241.24191-1-ville.syrjala@linux.intel.com>
References: <20250611155241.24191-1-ville.syrjala@linux.intel.com>
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

