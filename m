Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0913495BA4
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 09:14:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA1D210E8FA;
	Fri, 21 Jan 2022 08:14:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2990110E8FA
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 08:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642752897; x=1674288897;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/Ru5abF5TnQy4bewEgR4dAXAR0IYDogUFYu1lUTvOk0=;
 b=PUzfw0AWirbig41wvUcDeeqiUlCazIZpsdnKdxn68yY5v3eP4SnKmfyE
 6gS1WmWGqiY5oT3rRf8W7esqJ+XQXfaO6fkV2omC0XMnXOQ/GpvTMVLt5
 jY4ME8n6TOtTmG+wYUC4TUrcKW7nl22Wwk4GUN5dQUyNSiRgMxerFPSEl
 xRdj7p7Qg/SWUySKNntFCGXU94oxnD+T3Z5mVXf+Dsmu1Ey2kgXDFlbei
 rLuSnlCzrQRhN+q5xYmjY7L62KYlfPjz4VUHqzFv0JBuz2KQ4ESHwksD8
 AH9U8LSxJsWw4F/3+Z3RuZBeeGHcqEaey+d/2znVPGo5hHdYD6DfMy181 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="232956284"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="232956284"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 00:14:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="596055953"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga004.fm.intel.com with ESMTP; 21 Jan 2022 00:14:56 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 21 Jan 2022 00:14:55 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 21 Jan 2022 00:14:55 -0800
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14]) by
 ORSMSX601.amr.corp.intel.com ([10.22.229.14]) with mapi id 15.01.2308.020;
 Fri, 21 Jan 2022 00:14:55 -0800
From: "Dhanavanthri, Swathi" <swathi.dhanavanthri@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dg2: Add Wa_18018781329
Thread-Index: AQHYDldZc7JM1OxpcU6VcEiDJzicBaxtITYA
Date: Fri, 21 Jan 2022 08:14:55 +0000
Message-ID: <191a120a35074f76a9555050475b5d59@intel.com>
References: <20220120234147.1200574-1-matthew.d.roper@intel.com>
In-Reply-To: <20220120234147.1200574-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Add Wa_18018781329
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

Reviewed-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Matt=
 Roper
Sent: Thursday, January 20, 2022 3:42 PM
To: intel-gfx@lists.freedesktop.org
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: Add Wa_18018781329

A few more MOD registers need to be programmed on DG2.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 ++++++
 drivers/gpu/drm/i915/i915_reg.h             | 4 ++++
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/=
i915/gt/intel_workarounds.c
index 6a4372c3a3c5..748b2daf043f 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1509,6 +1509,12 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct =
i915_wa_list *wal)
 	 */
 	wa_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
 	wa_write_or(wal, GEN12_SQCM, EN_32B_ACCESS);
+
+	/* Wa_18018781329:dg2 */
+	wa_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
+	wa_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
+	wa_write_or(wal, VDBX_MOD_CTRL, FORCE_MISS_FTLB);
+	wa_write_or(wal, VEBX_MOD_CTRL, FORCE_MISS_FTLB);
 }
=20
 static void
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_re=
g.h index 460bce5c544d..d587257f392a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -339,6 +339,10 @@
 #define   TAG_BLOCK_CLKGATE_DIS		REG_BIT(7)
=20
 #define GEN12_MERT_MOD_CTRL		_MMIO(0xcf28)
+#define RENDER_MOD_CTRL			_MMIO(0xcf2c)
+#define COMP_MOD_CTRL			_MMIO(0xcf30)
+#define VDBX_MOD_CTRL			_MMIO(0xcf34)
+#define VEBX_MOD_CTRL			_MMIO(0xcf38)
 #define   FORCE_MISS_FTLB		REG_BIT(3)
=20
 #define GAB_CTL				_MMIO(0x24000)
--
2.34.1

