Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F25C62C3454
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 00:07:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA4556E409;
	Tue, 24 Nov 2020 23:07:30 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C2BB6E409
 for <Intel-GFX@lists.freedesktop.org>; Tue, 24 Nov 2020 23:07:30 +0000 (UTC)
IronPort-SDR: 64jGh/+WNs7UG9eRZs1AoLq8bPDH7v2hSR53iM+OjZ5hLoGdqtV4vrQ51WEDe0ksrHafHo7uYr
 LUqSrcyns1Og==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="256739303"
X-IronPort-AV: E=Sophos;i="5.78,367,1599548400"; d="scan'208";a="256739303"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 15:07:29 -0800
IronPort-SDR: i+84xYzIBtNodkNhALkPS7j6KaqGfnJQCyosGB2FvovfckFgZ9D2KsZAWkFcRY/azTMwEAUg3T
 tcEsjFe5ZDXA==
X-IronPort-AV: E=Sophos;i="5.78,367,1599548400"; d="scan'208";a="362078686"
Received: from ldmartin-desk1.jf.intel.com ([134.134.244.72])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 15:07:29 -0800
Date: Tue, 24 Nov 2020 15:07:05 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20201124230705.dlowrqxp6cu3sml2@ldmartin-desk1.jf.intel.com>
X-Patchwork-Hint: comment
References: <20200710213246.222179-1-John.C.Harrison@Intel.com>
 <b23c6e84-7629-a257-fb55-303db76c7ef3@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b23c6e84-7629-a257-fb55-303db76c7ef3@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Correct location of Wa_1408615072
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
Cc: Intel-GFX@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


It seems this was forgotten? We do have it for DG1, but for TGL it's not
being applied.

Lucas De Marchi

On Fri, Jul 24, 2020 at 02:21:03PM -0700, Daniele Ceraolo Spurio wrote:
>Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>
>Daniele
>
>On 7/10/2020 2:32 PM, John.C.Harrison@Intel.com wrote:
>>From: John Harrison <John.C.Harrison@Intel.com>
>>
>>The above workaround was added as an engine workaround not a GT
>>workaround. Moved it to the correct location.
>>
>>Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>>---
>>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 10 ++++++----
>>  1 file changed, 6 insertions(+), 4 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>index 5726cd0a37e0..a6548a77439c 100644
>>--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>@@ -1191,6 +1191,12 @@ tgl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
>>  		wa_write_or(wal,
>>  			    SLICE_UNIT_LEVEL_CLKGATE,
>>  			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
>>+
>>+	/* Wa_1408615072:tgl[a0] */
>>+	/* Empirical testing shows this register is unaffected by engine reset. */
>>+	if (IS_TGL_REVID(i915, TGL_REVID_A0, TGL_REVID_A0))
>>+		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
>>+			    VSUNIT_CLKGATE_DIS_TGL);
>>  }
>>  static void
>>@@ -1648,10 +1654,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>>  		wa_write_or(wal,
>>  			    GEN7_SARCHKMD,
>>  			    GEN7_DISABLE_SAMPLER_PREFETCH);
>>-
>>-		/* Wa_1408615072:tgl */
>>-		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
>>-			    VSUNIT_CLKGATE_DIS_TGL);
>>  	}
>>  	if (IS_TIGERLAKE(i915)) {
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
