Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6A748814F
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Jan 2022 05:41:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4A11113604;
	Sat,  8 Jan 2022 04:41:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1EE5113609
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Jan 2022 04:41:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641616861; x=1673152861;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hus4ZiLnEpQy5bUoJ+6azUfM9ocDbSU1py1yI3G6eLY=;
 b=gVnWK4wUFmAAweWb1nOBE9OFOfmQfIQUl7g26QUQST5niavJBv/qu2Up
 WZNi85M36y+/7NcnU2lVzwXvnVigkgysRh2XjbzMN1f6cVtgal4XMLej2
 uM/FW7jWxEyUWT33m5HCT3SO1zqZYWo37TAaLQzD61GG9uTgBKF4HwGJP
 Kz1siYjCOiST7Y5Zy53O1YjhKJJYyLyTOY089LSb1pAejthYQJ+c/EPiD
 tiSyNmK9Gx+gq0DAYS3fIkYwyxxNQ4CVcIoaRJlWq8JMv/5HXsNZT5OgB
 VoYHebEp+74hMpzdUzeQqaaLmeYWDVvDODdXvmjZPBkZ8DftCwt9TjJgm g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10220"; a="240533984"
X-IronPort-AV: E=Sophos;i="5.88,272,1635231600"; d="scan'208";a="240533984"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 20:41:00 -0800
X-IronPort-AV: E=Sophos;i="5.88,272,1635231600"; d="scan'208";a="668975714"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 20:41:00 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Jan 2022 20:40:50 -0800
Message-Id: <20220108044055.3123418-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220108044055.3123418-1-matthew.d.roper@intel.com>
References: <20220108044055.3123418-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/7] drm/i915: Parameterize PWRCTX_MAXCNT
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

Rather than having separate definitions for each engine, create a single
parameterized macro that takes the engine base offset.  This will also
ensure we get to the proper offset if we ever need to use these
registers on newer platforms (where the media engine offsets have
changed).

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c | 8 ++++----
 drivers/gpu/drm/i915/i915_reg.h     | 6 +-----
 2 files changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index c3155ee58689..45891e6f0b98 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -449,10 +449,10 @@ static bool bxt_check_bios_rc6_setup(struct intel_rc6 *rc6)
 		enable_rc6 = false;
 	}
 
-	if (!((intel_uncore_read(uncore, PWRCTX_MAXCNT_RCSUNIT) & IDLE_TIME_MASK) > 1 &&
-	      (intel_uncore_read(uncore, PWRCTX_MAXCNT_VCSUNIT0) & IDLE_TIME_MASK) > 1 &&
-	      (intel_uncore_read(uncore, PWRCTX_MAXCNT_BCSUNIT) & IDLE_TIME_MASK) > 1 &&
-	      (intel_uncore_read(uncore, PWRCTX_MAXCNT_VECSUNIT) & IDLE_TIME_MASK) > 1)) {
+	if (!((intel_uncore_read(uncore, PWRCTX_MAXCNT(RENDER_RING_BASE)) & IDLE_TIME_MASK) > 1 &&
+	      (intel_uncore_read(uncore, PWRCTX_MAXCNT(GEN6_BSD_RING_BASE)) & IDLE_TIME_MASK) > 1 &&
+	      (intel_uncore_read(uncore, PWRCTX_MAXCNT(BLT_RING_BASE)) & IDLE_TIME_MASK) > 1 &&
+	      (intel_uncore_read(uncore, PWRCTX_MAXCNT(VEBOX_RING_BASE)) & IDLE_TIME_MASK) > 1)) {
 		drm_dbg(&i915->drm,
 			"Engine Idle wait time not set properly.\n");
 		enable_rc6 = false;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 86e459010465..23330faecf07 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9297,11 +9297,7 @@ enum {
 #define	   RC6_CTX_IN_DRAM			(1 << 0)
 #define  RC6_CTX_BASE				_MMIO(0xD48)
 #define    RC6_CTX_BASE_MASK			0xFFFFFFF0
-#define  PWRCTX_MAXCNT_RCSUNIT			_MMIO(0x2054)
-#define  PWRCTX_MAXCNT_VCSUNIT0			_MMIO(0x12054)
-#define  PWRCTX_MAXCNT_BCSUNIT			_MMIO(0x22054)
-#define  PWRCTX_MAXCNT_VECSUNIT			_MMIO(0x1A054)
-#define  PWRCTX_MAXCNT_VCSUNIT1			_MMIO(0x1C054)
+#define  PWRCTX_MAXCNT(base)			_MMIO((base) + 0x54)
 #define    IDLE_TIME_MASK			0xFFFFF
 #define  FORCEWAKE				_MMIO(0xA18C)
 #define  FORCEWAKE_VLV				_MMIO(0x1300b0)
-- 
2.34.1

