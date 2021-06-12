Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 541773A4CE2
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Jun 2021 06:40:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7A3B6E093;
	Sat, 12 Jun 2021 04:40:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C507A6E093
 for <intel-gfx@lists.freedesktop.org>; Sat, 12 Jun 2021 04:40:32 +0000 (UTC)
IronPort-SDR: mIP8itltBtQTkB/0Uk4xmKfYXL/xQS+PK8woaIgobVFHixj9TANOdECDQlKIHHiD0OydM9B9CV
 D+/jYKVNuytg==
X-IronPort-AV: E=McAfee;i="6200,9189,10012"; a="266793789"
X-IronPort-AV: E=Sophos;i="5.83,268,1616482800"; d="scan'208";a="266793789"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2021 21:40:32 -0700
IronPort-SDR: K9hJCHbVhAkfuOzaMDFBl3LjwGv59JmXGNhn5dF4zETC8frxiKSVOm3RNHR0U20d+HNT7+Q34f
 cAbuBbYw1noQ==
X-IronPort-AV: E=Sophos;i="5.83,268,1616482800"; d="scan'208";a="620571257"
Received: from zhuan12-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.254.3.180])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2021 21:40:31 -0700
Date: Fri, 11 Jun 2021 21:40:31 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20210612044031.a4uapyegg6p6db74@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210611194355.24151-1-anusha.srivatsa@intel.com>
 <20210611194355.24151-5-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210611194355.24151-5-anusha.srivatsa@intel.com>
Subject: Re: [Intel-gfx] [CI 4/4] drm/i915/adl_p: Load DMC
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

On Fri, Jun 11, 2021 at 12:43:55PM -0700, Anusha Srivatsa wrote:
>Load DMC v2.10 on ADLP. The release notes mention that
>this version enables few power savings features.
>
>v2: Add DMC_PATH() for ADLP (Lucas)
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Clint Taylor <clinton.a.taylor@intel.com>
>Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_dmc.c | 10 +++++++++-
> 1 file changed, 9 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>index 18e0d225a478..f8789d4543bf 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>@@ -45,6 +45,10 @@
>
> #define GEN12_DMC_MAX_FW_SIZE		ICL_DMC_MAX_FW_SIZE
>
>+#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 10)
>+#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 10)
>+MODULE_FIRMWARE(ADLP_DMC_PATH);
>+
> #define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
> #define ADLS_DMC_VERSION_REQUIRED	DMC_VERSION(2, 1)
> MODULE_FIRMWARE(ADLS_DMC_PATH);
>@@ -724,7 +728,11 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
> 	 */
> 	intel_dmc_runtime_pm_get(dev_priv);
>
>-	if (IS_ALDERLAKE_S(dev_priv)) {
>+	if (IS_ALDERLAKE_P(dev_priv)) {
>+		dmc->fw_path = ADLP_DMC_PATH;
>+		dmc->required_version = ADLP_DMC_VERSION_REQUIRED;
>+		dmc->max_fw_size = GEN12_DMC_MAX_FW_SIZE;
>+	} else if (IS_ALDERLAKE_S(dev_priv)) {
> 		dmc->fw_path = ADLS_DMC_PATH;
> 		dmc->required_version = ADLS_DMC_VERSION_REQUIRED;
> 		dmc->max_fw_size = GEN12_DMC_MAX_FW_SIZE;
>-- 
>2.25.0
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
