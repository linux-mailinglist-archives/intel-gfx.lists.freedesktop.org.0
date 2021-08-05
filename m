Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C043E19D2
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 18:48:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41C666E39B;
	Thu,  5 Aug 2021 16:48:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1046D6E39B
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Aug 2021 16:48:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="214228683"
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="214228683"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2021 09:48:42 -0700
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="437852493"
Received: from kdjohns3-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.55.196])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2021 09:48:42 -0700
Date: Thu, 5 Aug 2021 09:48:36 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210805164836.eruf27ryzmont2zf@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210805163647.801064-1-matthew.d.roper@intel.com>
 <20210805163647.801064-2-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20210805163647.801064-2-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 1/9] drm/i915/dg2: Add support for new
 DG2-G11 revid 0x5
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

On Thu, Aug 05, 2021 at 09:36:39AM -0700, Matt Roper wrote:
>The bspec has been updated with a new revision 0x5 that translates to B1
>GT stepping and C0 display stepping.
>
>Bspec: 44477
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/intel_step.c | 1 +
> 1 file changed, 1 insertion(+)
>
>diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
>index b5fb961e1b62..6cf967631395 100644
>--- a/drivers/gpu/drm/i915/intel_step.c
>+++ b/drivers/gpu/drm/i915/intel_step.c
>@@ -118,6 +118,7 @@ static const struct intel_step_info dg2_g10_revid_step_tbl[] = {
> static const struct intel_step_info dg2_g11_revid_step_tbl[] = {
> 	[0x0] = { .gt_step = STEP_A0, .display_step = STEP_B0 },
> 	[0x4] = { .gt_step = STEP_B0, .display_step = STEP_C0 },
>+	[0x5] = { .gt_step = STEP_B1, .display_step = STEP_C0 },
> };
>
> void intel_step_init(struct drm_i915_private *i915)
>-- 
>2.25.4
>
