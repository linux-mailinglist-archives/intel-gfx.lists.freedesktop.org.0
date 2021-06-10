Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F42C3A247C
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 08:25:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDAD66E479;
	Thu, 10 Jun 2021 06:25:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BE626E479
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 06:25:20 +0000 (UTC)
IronPort-SDR: kTz/rAvCpqZl+PUhzXohGuB+ddpNXuyAVJluVL1hW3h/lZBBxjy7xh9XGio9cRyeJPMBb8Xs4J
 iK4BOIIeSjkA==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="192346501"
X-IronPort-AV: E=Sophos;i="5.83,262,1616482800"; d="scan'208";a="192346501"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 23:25:13 -0700
IronPort-SDR: AWHhUFrZ8wpuk4EeGItk+t+hjCdCCdkRH5YM4c+T2rHtjQMj3BB2RiG0Yg5jk8U23uFV3ZwkmL
 xbtx3hHlt92w==
X-IronPort-AV: E=Sophos;i="5.83,262,1616482800"; d="scan'208";a="450235879"
Received: from lfbrown-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.254.4.44])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 23:25:11 -0700
Date: Wed, 9 Jun 2021 23:25:10 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20210610062510.wgylhpmqzh2jhmhb@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210604190128.24151-1-anusha.srivatsa@intel.com>
 <20210604190128.24151-5-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210604190128.24151-5-anusha.srivatsa@intel.com>
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

On Fri, Jun 04, 2021 at 12:01:28PM -0700, Anusha Srivatsa wrote:
>Load DMC v2.10 on ADLP. The release notes mention that
>this version enables few power savings features.
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Clint Taylor <clinton.a.taylor@intel.com>
>Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_dmc.c | 10 +++++++++-
> 1 file changed, 9 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>index 09f65ad71f7e..52cedd5ea48e 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>@@ -45,6 +45,10 @@
>
> #define GEN12_DMC_MAX_FW_SIZE		ICL_DMC_MAX_FW_SIZE
>
>+#define ADLP_DMC_PATH			"i915/adlp_dmc_ver2_10.bin"

see below... should use DMC_PATH() helper

Lucas De Marchi

>+#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 10)
>+MODULE_FIRMWARE(ADLP_DMC_PATH);
>+
> #define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
> #define ADLS_DMC_VERSION_REQUIRED	DMC_VERSION(2, 1)
> MODULE_FIRMWARE(ADLS_DMC_PATH);
>@@ -727,7 +731,11 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
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
