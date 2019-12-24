Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CDE612A346
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2019 17:52:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF27F6E33F;
	Tue, 24 Dec 2019 16:52:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0233D6E33F
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Dec 2019 16:52:26 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Dec 2019 08:52:25 -0800
X-IronPort-AV: E=Sophos;i="5.69,352,1571727600"; d="scan'208";a="249873131"
Received: from gchancha-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.251.149.187])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Dec 2019 08:52:25 -0800
Date: Tue, 24 Dec 2019 08:52:19 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20191224165219.7nexwfm2nk7aunhv@ldmartin-desk1>
References: <20191224012026.3157766-1-matthew.d.roper@intel.com>
 <20191224012026.3157766-2-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191224012026.3157766-2-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Extend
 WaDisableDARBFClkGating to icl, ehl, tgl
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

On Mon, Dec 23, 2019 at 05:20:24PM -0800, Matt Roper wrote:
>WaDisableDARBFClkGating, now known as Wa_14010480278, has been added to
>the workaround tables for ICL, EHL, and TGL so we need to extend our
>platform test accordingly.
>
>Bspec: 33450
>Bspec: 33451
>Bspec: 52890
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Matt Atwood <matthew.s.atwood@intel.com>
>Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_display.c | 7 +++++--
> 1 file changed, 5 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>index 1860da0a493e..0944b56c8f04 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -17827,8 +17827,11 @@ get_encoder_power_domains(struct drm_i915_private *dev_priv)
>
> static void intel_early_display_was(struct drm_i915_private *dev_priv)
> {
>-	/* Display WA #1185 WaDisableDARBFClkGating:cnl,glk */
>-	if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv))
>+	/*
>+	 * Display WA #1185 WaDisableDARBFClkGating:cnl,glk,icl,ehl,tgl
>+	 * Also known as Wa_14010480278.
>+	 */
>+	if (IS_GEN_RANGE(dev_priv, 10, 12) || IS_GEMINILAKE(dev_priv))
> 		I915_WRITE(GEN9_CLKGATE_DIS_0, I915_READ(GEN9_CLKGATE_DIS_0) |
> 			   DARBF_GATING_DIS);
>
>-- 
>2.23.0
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
