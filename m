Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 074E211DA36
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 00:53:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A7AB6E231;
	Thu, 12 Dec 2019 23:53:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11C286E231
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 23:53:05 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 15:52:17 -0800
X-IronPort-AV: E=Sophos;i="5.69,307,1571727600"; d="scan'208";a="211277818"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.11.18])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 15:52:17 -0800
Date: Thu, 12 Dec 2019 15:52:11 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20191212235211.zv5kbjuol536hlz7@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20191212223735.666014-1-matthew.d.roper@intel.com>
 <20191212223735.666014-3-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212223735.666014-3-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/tgl: Drop Wa#1178
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

On Thu, Dec 12, 2019 at 02:37:34PM -0800, Matt Roper wrote:
>The TGL workaround database no longer shows Wa #1178 (or anything
>similar under different workaround names/numbers) so we should be able
>to drop it.  In fact Swati just discovered that applying this workaround
>is the root cause of some power well enable failures we've been seeing
>in CI (gitlab issue 498).
>
>Once we stop applying this WA, TGL no longer utilizes any of the special
>handling provided by icl_combo_phy_aux_power_well_ops so we can just
>drop back to using the standard hsw-style power well ops instead.
>
>Closes: https://gitlab.freedesktop.org/drm/intel/issues/498
>Fixes: deea06b47574 ("drm/i915/tgl: apply Display WA #1178 to fix type C dongles")
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Swati Sharma <swati2.sharma@intel.com>
>Cc: Imre Deak <imre.deak@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_display_power.c | 6 +++---
> 1 file changed, 3 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>index cf34427cc840..52f2332e0ab8 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>@@ -3977,7 +3977,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> 	{
> 		.name = "AUX A",
> 		.domains = TGL_AUX_A_IO_POWER_DOMAINS,
>-		.ops = &icl_combo_phy_aux_power_well_ops,
>+		.ops = &hsw_power_well_ops,
> 		.id = DISP_PW_ID_NONE,
> 		{
> 			.hsw.regs = &icl_aux_power_well_regs,
>@@ -3987,7 +3987,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> 	{
> 		.name = "AUX B",
> 		.domains = TGL_AUX_B_IO_POWER_DOMAINS,
>-		.ops = &icl_combo_phy_aux_power_well_ops,
>+		.ops = &hsw_power_well_ops,
> 		.id = DISP_PW_ID_NONE,
> 		{
> 			.hsw.regs = &icl_aux_power_well_regs,
>@@ -3997,7 +3997,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
> 	{
> 		.name = "AUX C",
> 		.domains = TGL_AUX_C_IO_POWER_DOMAINS,
>-		.ops = &icl_combo_phy_aux_power_well_ops,
>+		.ops = &hsw_power_well_ops,
> 		.id = DISP_PW_ID_NONE,
> 		{
> 			.hsw.regs = &icl_aux_power_well_regs,
>-- 
>2.23.0
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
