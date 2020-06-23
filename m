Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B10682049B3
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 08:16:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4204A6E225;
	Tue, 23 Jun 2020 06:16:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35BFA6E225
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 06:16:02 +0000 (UTC)
IronPort-SDR: Z7LKLiWig+tWuW3SI/lsGkwkMdz8esQIIa2eBwen0KoIs+FVGO/hQ648SUAf62kYh3o/PYUunh
 XqcKIbcY+FVg==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="205474068"
X-IronPort-AV: E=Sophos;i="5.75,270,1589266800"; d="scan'208";a="205474068"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 23:16:01 -0700
IronPort-SDR: zUaUt3yOiD7fASW+iygdoREpI2u0YVcPUrsvKa/WHpG56IcjV9gfVQPoQfvXRBLi1JPoR0ENgw
 +65Xo/UfQFNA==
X-IronPort-AV: E=Sophos;i="5.75,270,1589266800"; d="scan'208";a="301097591"
Received: from sgopal4-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.75.65])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 23:16:00 -0700
Date: Mon, 22 Jun 2020 23:15:59 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Message-ID: <20200623061559.zgncq3hlbax4omgc@ldmartin-desk1>
References: <20200623045957.1649059-1-ayaz.siddiqui@intel.com>
 <20200623045957.1649059-2-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200623045957.1649059-2-ayaz.siddiqui@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/gt: Initialize reserved and
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
Cc: Neil R <neil.r.spruit@intel.com>, Alwin <alwin.mathew@intel.com>,
 Cheng <cheng.zhou@intel.com>, Spruit@freedesktop.org, Mcguire@freedesktop.org,
 intel-gfx@lists.freedesktop.org, Mathew@freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Russell W <russell.w.mcguire@intel.com>, Mike G <mike.g.benemelis@intel.com>,
 Zhou@freedesktop.org, Benemelis@freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 23, 2020 at 10:29:57AM +0530, Ayaz A Siddiqui wrote:
>In order to avoid functional breakage of mis-programmed applications that
>have grown to depend on unused MOCS entries, we are programming
>those entries to be equal to fully cached ("L3 + LLC") entry.
>
>These reserved and unspecified entries should not be used as they may be
>changed to less performant variants with better coherency in the future
>if more entries are needed.
>
>Cc: Chris Wilson <chris@chris-wilson.co.uk>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Tomasz Lis <tomasz.lis@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>Cc: Francisco Jerez <currojerez@riseup.net>
>Cc: Mathew, Alwin <alwin.mathew@intel.com>
>Cc: Mcguire, Russell W <russell.w.mcguire@intel.com>
>Cc: Spruit, Neil R <neil.r.spruit@intel.com>
>Cc: Zhou, Cheng <cheng.zhou@intel.com>
>Cc: Benemelis, Mike G <mike.g.benemelis@intel.com>
>
>Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_mocs.c | 93 ++++++++++++++++++++++++++--
> 1 file changed, 89 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
>index 632e08a4592b2..1089bd5fdba2c 100644
>--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
>+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
>@@ -234,10 +234,6 @@ static const struct drm_i915_mocs_entry broxton_mocs_table[] = {
> 		   L3_1_UC)
>
> static const struct drm_i915_mocs_entry tgl_mocs_table[] = {
>-	/* Base - Error (Reserved for Non-Use) */
>-	MOCS_ENTRY(0, 0x0, 0x0),
>-	/* Base - Reserved */
>-	MOCS_ENTRY(1, 0x0, 0x0),
>
> 	GEN11_MOCS_ENTRIES,
>
>@@ -265,6 +261,95 @@ static const struct drm_i915_mocs_entry tgl_mocs_table[] = {
> 	MOCS_ENTRY(61,
> 		   LE_1_UC | LE_TC_1_LLC,
> 		   L3_3_WB),
>+
>+	/* NOTE:
>+	 * Reserved and unspecified MOCS indices have been set to (L3 + LCC).
>+	 * These reserved entry should never be used, they may be chanaged
>+	 * to low performant variants with better coherency in the future if
>+	 * more entries are needed.
>+	 */

the whole point of structing this table the way it is is that it doesn't
take more space than needed and we can override values from previous
platforms.

MOCS_ENTRY() will set .used = 1. It seems that what you want is to
actually change the value when .used == 0 is set.

It seems you actually want to set the unused ones to that specific
value. See __init_mocs_table()

Lucas De Marchi

>+
>+	/* Reserved index 0 and 1 */
>+	MOCS_ENTRY(0, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(1, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+
>+	/* Reserved index 16 and 17 */
>+	MOCS_ENTRY(16, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(17, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+
>+	/* Reserved index 24 and 25 */
>+	MOCS_ENTRY(24, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(25, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+
>+	/* Unspecified indices 26 to 47 */
>+	MOCS_ENTRY(26, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(27, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(28, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(29, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(30, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(31, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(32, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(33, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(34, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(35, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(36, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(37, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(38, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(39, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(40, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(41, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(42, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(43, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(44, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(45, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(46, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(47, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+
>+	/* Unspecified indices 52 to 59 */
>+	MOCS_ENTRY(52, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(53, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(54, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(55, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(56, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(57, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(58, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB),
>+	MOCS_ENTRY(59, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
>+		   L3_3_WB)
> };
>
> static const struct drm_i915_mocs_entry icl_mocs_table[] = {
>-- 
>2.26.2
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
