Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A281D9FF3
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 20:47:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 154E989B97;
	Tue, 19 May 2020 18:47:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10FD26E453
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 18:47:46 +0000 (UTC)
IronPort-SDR: wZFTJdmK8dAFJdGByFjtcZwWgCD0ZhIYWiKd8LakRQqa6evOv6uGph9C6I5tkcBzVzoW8P2/rL
 qJAumDdSiBTA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 11:47:45 -0700
IronPort-SDR: pRJqSQo1d+hOHEV3f4hSdKziTJKyttQjX+FIT6k1Dg8cKBz+n5St/KtUjcsvu4CLlTW79hQnPe
 Qm+7pxkaFJIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; d="scan'208";a="466083687"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by fmsmga005.fm.intel.com with ESMTP; 19 May 2020 11:47:45 -0700
Received: from orsmsx126.amr.corp.intel.com (10.22.240.126) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 19 May 2020 11:47:44 -0700
Received: from orsmsx115.amr.corp.intel.com ([169.254.4.3]) by
 ORSMSX126.amr.corp.intel.com ([169.254.4.235]) with mapi id 14.03.0439.000;
 Tue, 19 May 2020 11:47:44 -0700
From: "Dhanavanthri, Swathi" <swathi.dhanavanthri@intel.com>
To: "Atwood, Matthew S" <matthew.s.atwood@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/ehl: Wa_22010271021
Thread-Index: AQHWLfoqDoCzcpe6a0KGK1DZ2YGUBaivvmdQ
Date: Tue, 19 May 2020 18:47:43 +0000
Message-ID: <09614FAEEEACB8419B519675A649C8BF89A44680@ORSMSX115.amr.corp.intel.com>
References: <20200519162534.10035-1-matthew.s.atwood@intel.com>
In-Reply-To: <20200519162534.10035-1-matthew.s.atwood@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Wa_22010271021
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Maybe we can add JSL to the comment too.
Other than that looks good to me.

Reviewed-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Matt Atwood
Sent: Tuesday, May 19, 2020 9:26 AM
To: intel-gfx@lists.freedesktop.org
Subject: [Intel-gfx] [PATCH] drm/i915/ehl: Wa_22010271021

Reflect recent Bspec changes.

Bspec: 33451

Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 90a2b9e399b0..fa1e15657663 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1484,6 +1484,12 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		wa_write_or(wal,
 			    GEN7_FF_THREAD_MODE,
 			    GEN12_FF_TESSELATION_DOP_GATE_DISABLE);
+
+		/* Wa_22010271021:ehl */
+		if (IS_ELKHARTLAKE(i915))
+			wa_masked_en(wal,
+				     GEN9_CS_DEBUG_MODE1,
+				     FF_DOP_CLOCK_GATE_DISABLE);
 	}
 
 	if (IS_GEN_RANGE(i915, 9, 12)) {
-- 
2.21.3

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
