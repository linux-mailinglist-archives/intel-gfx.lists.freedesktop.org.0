Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB7B296A52
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 09:33:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 695206E4C9;
	Fri, 23 Oct 2020 07:33:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA5686E4C9
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 07:33:32 +0000 (UTC)
IronPort-SDR: XLV0GcoX50aJx1Ipexp7lp3qPMaiDmxsGOujonaFl8FQqMjCA1kBNKtdq3Rcrq5fc4B3x0vXDW
 rR2k4ZintJGA==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="166856748"
X-IronPort-AV: E=Sophos;i="5.77,407,1596524400"; d="scan'208";a="166856748"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 00:33:27 -0700
IronPort-SDR: UCBiVc9YlnlgrzDIfuZrSgMpyUdfC9nJb5SDbNY2W+r6x4oY0HXWHc4kp9vzBZHt8SPYvkE3v+
 N2Gxt6cFNu4Q==
X-IronPort-AV: E=Sophos;i="5.77,407,1596524400"; d="scan'208";a="534299182"
Received: from ejshrive-mobl2.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.56.77])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 00:33:24 -0700
Date: Fri, 23 Oct 2020 00:33:24 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20201023073324.tfjju7nv74bij3ix@ldmartin-desk1>
References: <20201021082034.3170478-1-lucas.demarchi@intel.com>
 <20201021082034.3170478-5-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201021082034.3170478-5-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/dg1: Enable ports
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 21, 2020 at 01:20:32AM -0700, Lucas De Marchi wrote:
>From: Aditya Swarup <aditya.swarup@intel.com>
>
>For DG1 we have a little of mix up wrt to DDI/port names and indexes.
>Bspec refers to the ports as DDIA, DDIB, DDI USBC1 and DDI USBC2
>(besides the DDIA, DDIB, DDIC, DDID), but the previous naming is the
>most unambiguous one. This means that for any register on Display Engine
>we should use the index of A, B, D and E. However in some places this is
>not true:
>
>- VBT: uses C and D and have to be mapped to D/E
>
>- IO/Combo: uses C and D, but we already differentiate those when
>  we created the phy vs port distinction.
>
>This additional mapping for VBT and phy are already covered in previous
>patches, so now we can initialize all the DDIs as A, B, D and E.
>
>v2: Squash previous patch enabling just ports A and B since most of the
>pumbling code is already merged now
>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Cc: Clinton Taylor <Clinton.A.Taylor@intel.com>
>Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
>Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_display.c | 8 ++++----
> 1 file changed, 4 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>index 137e4a604f74..bc70c897de04 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -7337,7 +7337,7 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
> {
> 	if (phy == PHY_NONE)
> 		return false;
>-	else if (IS_ROCKETLAKE(dev_priv))
>+	else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
> 		return phy <= PHY_D;
> 	else if (IS_JSL_EHL(dev_priv))
> 		return phy <= PHY_C;
>@@ -7349,7 +7349,7 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
>
> bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
> {
>-	if (IS_ROCKETLAKE(dev_priv))
>+	if (IS_ROCKETLAKE(dev_priv) || IS_DG1(dev_priv))

for consistency this should be

	if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))

Lucas De Marchi

> 		return false;
> 	else if (INTEL_GEN(dev_priv) >= 12)
> 		return phy >= PHY_D && phy <= PHY_I;
>@@ -7361,7 +7361,7 @@ bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
>
> enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port)
> {
>-	if (IS_ROCKETLAKE(i915) && port >= PORT_D)
>+	if ((IS_DG1(i915) || IS_ROCKETLAKE(i915)) && port >= PORT_D)
> 		return (enum phy)port - 1;
> 	else if (IS_JSL_EHL(i915) && port == PORT_D)
> 		return PHY_A;
>@@ -17123,7 +17123,7 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
> 	if (!HAS_DISPLAY(dev_priv))
> 		return;
>
>-	if (IS_ROCKETLAKE(dev_priv)) {
>+	if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv)) {
> 		intel_ddi_init(dev_priv, PORT_A);
> 		intel_ddi_init(dev_priv, PORT_B);
> 		intel_ddi_init(dev_priv, PORT_D);	/* DDI TC1 */
>-- 
>2.28.0
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
