Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FEBE724CD2
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 21:15:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B2C010E3A3;
	Tue,  6 Jun 2023 19:15:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9B8710E3A3
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 19:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686078933; x=1717614933;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=mlx/1hefhSFfk0VFSta7OnkRqMiYl8/Gga34PK0FOVo=;
 b=ZZCCf6VaXJPMK2P2VjhNF0RB3gAHe/IIEIYGTeStoaHUTappPyC0KzNi
 I3O1VG0YNUjs5FH/01CLbIgxNdGfdfmEWbrz28HgZlsZlZfbTsFlZ4sWp
 ZHCbdBYoFldcHyrnV8j1qpoaSKIibXVDsc8ZV/ccDWArWjFvZtXf19v2R
 A6p//UEtPpPSXlX7AITDuCHDjEgly3UAlQgQ9pq3w0XEi/e2dy2Wd/zyf
 9SPURayjjeFA3iR12jo5FZcxq+RySzjjL3jEFjVSFRR0mYEo5yL0H0QxV
 G75h52Y7m+rdaqyI6mC/9+JmgvFiCkUGgMucfqU9tKbAXUsSmKT/d41PA w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="443146304"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="443146304"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 12:15:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="709187078"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="709187078"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 06 Jun 2023 12:15:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Jun 2023 22:15:30 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jun 2023 22:14:53 +0300
Message-Id: <20230606191504.18099-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 08/19] drm/i915/dsb: Introduce
 intel_dsb_noop()
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

Add a helper for emitting a number of DSB NOOPs commands.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 9 +++++++++
 drivers/gpu/drm/i915/display/intel_dsb.h | 1 +
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 22c716ee75e2..4ef799c087b4 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -234,6 +234,15 @@ void intel_dsb_reg_write(struct intel_dsb *dsb,
 	}
 }
 
+void intel_dsb_noop(struct intel_dsb *dsb, int count)
+{
+	int i;
+
+	for (i = 0; i < count; i++)
+		intel_dsb_emit(dsb, 0,
+			       DSB_OPCODE_NOOP << DSB_OPCODE_SHIFT);
+}
+
 static void intel_dsb_align_tail(struct intel_dsb *dsb)
 {
 	u32 aligned_tail, tail;
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index b8148b47022d..5a08bc21beda 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -19,6 +19,7 @@ void intel_dsb_finish(struct intel_dsb *dsb);
 void intel_dsb_cleanup(struct intel_dsb *dsb);
 void intel_dsb_reg_write(struct intel_dsb *dsb,
 			 i915_reg_t reg, u32 val);
+void intel_dsb_noop(struct intel_dsb *dsb, int count);
 void intel_dsb_commit(struct intel_dsb *dsb,
 		      bool wait_for_vblank);
 void intel_dsb_wait(struct intel_dsb *dsb);
-- 
2.39.3

