Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 089CD215BE7
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 18:36:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 662E689FF6;
	Mon,  6 Jul 2020 16:36:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F85889FF6
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 16:36:24 +0000 (UTC)
IronPort-SDR: d1x8VTNJnyCQx7yXxwwlW+iM54ZzlT+Py5On3sJxh2cq1KKKh9SysW0FU6q+Jh1bGSHxpJMSnZ
 E944tv6awQWg==
X-IronPort-AV: E=McAfee;i="6000,8403,9673"; a="165515065"
X-IronPort-AV: E=Sophos;i="5.75,320,1589266800"; d="scan'208";a="165515065"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2020 09:36:23 -0700
IronPort-SDR: 8BKEIYY5Ions+Yo13MWsr2tCB4K2x8/nSlOhmhPDySTo8vleHwjDMUSAtylNJ1qkC47gZ8xiQf
 lHycZj3uLxeg==
X-IronPort-AV: E=Sophos;i="5.75,320,1589266800"; d="scan'208";a="315219175"
Received: from chokkali-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.100.222])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2020 09:36:22 -0700
Date: Mon, 6 Jul 2020 09:36:20 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Message-ID: <20200706163620.m5hqffutejktouto@ldmartin-desk1>
References: <20200702134903.602364-1-ayaz.siddiqui@intel.com>
 <20200702134903.602364-2-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200702134903.602364-2-ayaz.siddiqui@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 1/1] drm/i915/gt: Initialize reserved and
 unspecified MOCS indices
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
Cc: Spruit Neil R <neil.r.spruit@intel.com>,
 Mathew Alwin <alwin.mathew@intel.com>, Zhou Cheng <cheng.zhou@intel.com>,
 intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Benemelis Mike G <mike.g.benemelis@intel.com>,
 Mcguire Russell W <russell.w.mcguire@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 02, 2020 at 07:19:03PM +0530, Ayaz A Siddiqui wrote:
>In order to avoid functional breakage of mis-programmed applications that
>have grown to depend on unused MOCS entries, we are programming
>those entries to be equal to fully cached ("L3 + LLC") entry.
>
>These reserved and unspecified entries should not be used as they may be
>changed to less performant variants with better coherency in the future
>if more entries are needed.
>
>V2: As suggested by Lucas "De Marchi" to utilise __init_mocs_table for
>programming default value, setting I915_MOCS_PTE index of tgl_mocs_table
>with desired value.

either Lucas or Lucas De Marchi, but quoting last name like this is too
creative.

Also, check for some typos below. Other than those,

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>


>
>Cc: Chris Wilson <chris@chris-wilson.co.uk>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Tomasz Lis <tomasz.lis@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>Cc: Francisco Jerez <currojerez@riseup.net>
>Cc: Mathew Alwin <alwin.mathew@intel.com>
>Cc: Mcguire Russell W <russell.w.mcguire@intel.com>
>Cc: Spruit Neil R <neil.r.spruit@intel.com>
>Cc: Zhou Cheng <cheng.zhou@intel.com>
>Cc: Benemelis Mike G <mike.g.benemelis@intel.com>
>
>Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_mocs.c | 15 +++++++++++----
> 1 file changed, 11 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
>index 632e08a4592b2..c32f90bd56693 100644
>--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
>+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
>@@ -234,11 +234,17 @@ static const struct drm_i915_mocs_entry broxton_mocs_table[] = {
> 		   L3_1_UC)
>
> static const struct drm_i915_mocs_entry tgl_mocs_table[] = {
>-	/* Base - Error (Reserved for Non-Use) */
>-	MOCS_ENTRY(0, 0x0, 0x0),
>-	/* Base - Reserved */
>-	MOCS_ENTRY(1, 0x0, 0x0),
>
>+	/* NOTE:
>+	 * Reserved and unspecified MOCS indices have been set to (L3 + LCC).
>+	 * These reserved entry should never be used, they may be chanaged
>+	 * to low performant variants with better coherency in the future if
>+	 * more entries are needed. We are programming index I915_MOCS_PTE(1)
>+	 * only, __init_mocs_table() take care to prgramm unseud index with

	/* NOTE:
	 * Reserved and unspecified MOCS indices have been set to (L3 + LCC).
	 * These reserved entries should never be used, they may be changed
	 * to low performant variants with better coherency in the future if
	 * more entries are needed. We are programming index I915_MOCS_PTE(1)
	 * only, __init_mocs_table() takes care to program unused index with


Lucas De Marchi

>+	 * this entry.
>+	 */
>+	MOCS_ENTRY(1, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
> 	GEN11_MOCS_ENTRIES,
>
> 	/* Implicitly enable L1 - HDC:L1 + L3 + LLC */
>@@ -265,6 +271,7 @@ static const struct drm_i915_mocs_entry tgl_mocs_table[] = {
> 	MOCS_ENTRY(61,
> 		   LE_1_UC | LE_TC_1_LLC,
> 		   L3_3_WB),
>+
> };
>
> static const struct drm_i915_mocs_entry icl_mocs_table[] = {
>-- 
>2.26.2
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
