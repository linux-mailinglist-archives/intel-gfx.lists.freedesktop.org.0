Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E5F3EB201
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Aug 2021 09:55:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95B006E54C;
	Fri, 13 Aug 2021 07:55:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FDE36E54C
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Aug 2021 07:55:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="237563426"
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; d="scan'208";a="237563426"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 00:55:04 -0700
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; d="scan'208";a="517944631"
Received: from cgearing-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.209.226])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 00:55:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>,
 Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Cc: intel-gfx@lists.freedesktop.org
In-Reply-To: <162876217249.21763.7891104765823416043@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210812064758.4102925-1-ayaz.siddiqui@intel.com>
 <162876217249.21763.7891104765823416043@emeril.freedesktop.org>
Date: Fri, 13 Aug 2021 10:54:59 +0300
Message-ID: <87sfzdlqy4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_Initialize_unused_MOCS_entries_to_L3=5FWB?=
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


These are all valid warnings, please fix.

BR,
Jani,


On Thu, 12 Aug 2021, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915/gt: Initialize unused MOCS entries to L3_WB
> URL   : https://patchwork.freedesktop.org/series/93626/
> State : warning
>
> == Summary ==
>
> $ dim checkpatch origin/drm-tip
> ea863ae02268 drm/i915/gt: Add support of mocs propagation
> -:55: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #55: FILE: drivers/gpu/drm/i915/gt/intel_mocs.c:511:
> +static void set_mocs_index(struct intel_gt *gt,
> +			    struct drm_i915_mocs_table *table)
>
> total: 0 errors, 0 warnings, 1 checks, 44 lines checked
> ee1214c8eb4d drm/i915/gt: Use cmd_cctl override for platforms >= gen12
> -:85: ERROR:CODE_INDENT: code indent should use tabs where possible
> #85: FILE: drivers/gpu/drm/i915/gt/intel_mocs.c:394:
> +^I                   "Platform that should have UC index defined and does not\n")) {$
>
> -:189: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'masked_value != expect'
> #189: FILE: drivers/gpu/drm/i915/gt/selftest_mocs.c:185:
> +		if (!r->skip_check && (masked_value != expect)) {
>
> total: 1 errors, 0 warnings, 1 checks, 235 lines checked
> fd32a98d8b4f drm/i915/gt: Set BLIT_CCTL reg to un-cached
> -:61: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'dst' may be better as '(dst)' to avoid precedence issues
> #61: FILE: drivers/gpu/drm/i915/i915_reg.h:2574:
> +#define   BLIT_CCTL_MOCS(dst, src)							\
> +	(((dst << 1) << BLIT_CCTL_DST_MOCS_SHIFT) | (src << 1))
>
> -:61: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'src' may be better as '(src)' to avoid precedence issues
> #61: FILE: drivers/gpu/drm/i915/i915_reg.h:2574:
> +#define   BLIT_CCTL_MOCS(dst, src)							\
> +	(((dst << 1) << BLIT_CCTL_DST_MOCS_SHIFT) | (src << 1))
>
> total: 0 errors, 0 warnings, 2 checks, 38 lines checked
> 702829c25d98 drm/i915/gt: Initialize unused MOCS entries with device specific values
> 4f3306739a7e drm/i95/adl: Define MOCS table for Alderlake
> -:22: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
> #22: FILE: drivers/gpu/drm/i915/gt/intel_mocs.c:325:
>  };
> +static const struct drm_i915_mocs_entry adl_mocs_table[] = {
>
> -:25: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #25: FILE: drivers/gpu/drm/i915/gt/intel_mocs.c:328:
> +	MOCS_ENTRY(0,
> +			LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>
> -:31: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #31: FILE: drivers/gpu/drm/i915/gt/intel_mocs.c:334:
> +	MOCS_ENTRY(48,
> +			LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>
> -:35: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #35: FILE: drivers/gpu/drm/i915/gt/intel_mocs.c:338:
> +	MOCS_ENTRY(49,
> +			LE_1_UC | LE_TC_1_LLC,
>
> -:39: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #39: FILE: drivers/gpu/drm/i915/gt/intel_mocs.c:342:
> +	MOCS_ENTRY(50,
> +			LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>
> -:43: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #43: FILE: drivers/gpu/drm/i915/gt/intel_mocs.c:346:
> +	MOCS_ENTRY(51,
> +			LE_1_UC | LE_TC_1_LLC,
>
> -:47: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #47: FILE: drivers/gpu/drm/i915/gt/intel_mocs.c:350:
> +	MOCS_ENTRY(60,
> +			LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>
> -:51: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #51: FILE: drivers/gpu/drm/i915/gt/intel_mocs.c:354:
> +	MOCS_ENTRY(61,
> +			LE_1_UC | LE_TC_1_LLC,
>
> total: 0 errors, 0 warnings, 8 checks, 52 lines checked
>
>

-- 
Jani Nikula, Intel Open Source Graphics Center
