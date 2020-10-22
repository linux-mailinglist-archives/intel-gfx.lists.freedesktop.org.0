Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA4C2967C7
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 01:59:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 228C36E43A;
	Thu, 22 Oct 2020 23:59:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F5406E43A
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Oct 2020 23:59:48 +0000 (UTC)
IronPort-SDR: TK4W20fqcarBDlvp9qfk76kLPLW+9MjWgCyD4AtZSIR87W4N9Zpt4MUhXQbIkiR8CEZB1kQpZu
 E3DoqH8uhN7Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="155393933"
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="155393933"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 16:59:47 -0700
IronPort-SDR: XU3ea0OOmXAXutHeAo3ydY50HE23s1X4ggJ6T8e56gj8gOFHKLfsdHe8kp1yweVtIOkfylmdVU
 YgNVRs5FzrrQ==
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="354271619"
Received: from mtdupree-mobl2.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.152.253])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 16:59:46 -0700
Date: Thu, 22 Oct 2020 16:59:46 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20201022235946.bayv2abyg5euaplt@ldmartin-desk1>
References: <20201021082034.3170478-1-lucas.demarchi@intel.com>
 <20201021082034.3170478-4-lucas.demarchi@intel.com>
 <20201022232201.GQ627052@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201022232201.GQ627052@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/dg1: map/unmap pll clocks
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 22, 2020 at 04:22:01PM -0700, Matt Roper wrote:
>On Wed, Oct 21, 2020 at 01:20:31AM -0700, Lucas De Marchi wrote:
>> +#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_VAL_TO_ID(val, phy) \
>> +	  ((((val) & DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)) >> ((phy % 2) * 2)) + (2 * (phy / 2)))
>
>This sure is ugly.  But it looks correct.

Admittedly this deserves a comment on top
/* don't touch, it's correct */

>
>Although the code might wind up being slightly longer, I wonder if it
>would help clarify if we wrote a few at least the last part of this
>expression with ternary operators and symbolic names.  E.g.,
>
>        "... + (phy >= PHY_C ? DPLL_ID_DG1_DPLL2 : DPLL_ID_DG1_DPLL0)"

I will think about

>
>Up to you; the patch looks fine either way.
>
>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>

thanks
Lucas De Marchi

>> +
>>  /* CNL PLL */
>>  #define DPLL0_ENABLE		0x46010
>>  #define DPLL1_ENABLE		0x46014
>> --
>> 2.28.0
>>
>
>-- 
>Matt Roper
>Graphics Software Engineer
>VTT-OSGC Platform Enablement
>Intel Corporation
>(916) 356-2795
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
