Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C64C501FA0
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Apr 2022 02:28:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0559310E360;
	Fri, 15 Apr 2022 00:28:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88A9310E360
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Apr 2022 00:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649982490; x=1681518490;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=p1IdYKA+Xe9yjtPq3d3rimHuVW015iwVi+Wp89wBwY8=;
 b=iDl9pV2IIT9o8GRp7ljTORN1lqAjjQGpUMPZZHinJ5fxmEfKOvJWUvs1
 9jFco3Y3vhc5+lzDtp+EPhV5QwHMmqlxpsg23S3SxTOIi2snUMx3G//Lg
 HjxhXw81wjK9JCfqLZy8reTZYhBvWo8zpQOtQT8hZNfgVXlbeI0MfzUnH
 53MCa6hGjqbM2C9bVzY4shXLFnKgsaiENGJULB++JZjCz9UFr0myEjao3
 m4GWkgLnBo0Ira1cnmENguXmr8LNK+eMeCx1JCQvSpMtUzpBJn2rYo6L1
 I6FkICPH7PogUoLOAWcmKmngnThRG+JyyoxSiIxBVKG/s+QxLzwdd9f8t w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="288123747"
X-IronPort-AV: E=Sophos;i="5.90,261,1643702400"; d="scan'208";a="288123747"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 17:28:10 -0700
X-IronPort-AV: E=Sophos;i="5.90,261,1643702400"; d="scan'208";a="527609897"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154)
 ([10.165.21.154])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 17:28:09 -0700
Date: Thu, 14 Apr 2022 17:28:09 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: John Harrison <john.c.harrison@intel.com>
Message-ID: <20220415002809.GD55612@unerlige-ril-10.165.21.154>
References: <20220413192730.3608660-1-umesh.nerlige.ramappa@intel.com>
 <20220413192730.3608660-11-umesh.nerlige.ramappa@intel.com>
 <538f45ef-341e-70d2-f723-b645b3919ddc@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <538f45ef-341e-70d2-f723-b645b3919ddc@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 10/10] drm/i915/dg2: Enable
 Wa_22012727170/Wa_22012727685
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 14, 2022 at 05:22:47PM -0700, John Harrison wrote:
>On 4/13/2022 12:27, Umesh Nerlige Ramappa wrote:
>>From: John Harrison <John.C.Harrison@Intel.com>
>>
>>The above two workaronuds regarding context isolation are implemented
>workaronuds -> workarounds
>
>>by GuC. The KMD just needs to enable them.
>>
>>v2: Use dg2 stepping for ctx isolation WA (Umesh)
>>v3: Rebase (Umesh)
>>v4: Fix WA comments (Daniele)
>>v5: Drop Wa_22012727685 for G10 as it is n/a
>>v6: Undo v5 change since the G10 condition is needed
>>
>>Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

with spelling corrected above, this is

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Umesh
>>---
>>  drivers/gpu/drm/i915/gt/uc/intel_guc.c      | 8 ++++++++
>>  drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h | 1 +
>>  2 files changed, 9 insertions(+)
>>
>>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>>index 228070e31ef0..2c4ad4a65089 100644
>>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>>@@ -319,6 +319,14 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>>  	    IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))
>>  		flags |= GUC_WA_RCS_RESET_BEFORE_RC6;
>>+	/*
>>+	 * Wa_22012727170:dg2_g10[a0-c0), dg2_g11[a0..)
>>+	 * Wa_22012727685:dg2_g11[a0..)
>>+	 */
>>+	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
>>+	    IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_FOREVER))
>>+		flags |= GUC_WA_CONTEXT_ISOLATION;
>>+
>>  	return flags;
>>  }
>>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>>index e389a3a041a2..42cb7a9a6199 100644
>>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>>@@ -101,6 +101,7 @@
>>  #define   GUC_WA_GAM_CREDITS		BIT(10)
>>  #define   GUC_WA_DUAL_QUEUE		BIT(11)
>>  #define   GUC_WA_RCS_RESET_BEFORE_RC6	BIT(13)
>>+#define   GUC_WA_CONTEXT_ISOLATION	BIT(15)
>>  #define   GUC_WA_PRE_PARSER		BIT(14)
>>  #define   GUC_WA_HOLD_CCS_SWITCHOUT	BIT(17)
>>  #define   GUC_WA_POLLCS			BIT(18)
>
