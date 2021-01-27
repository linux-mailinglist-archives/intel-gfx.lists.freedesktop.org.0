Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCD1305F3F
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 16:16:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C4756E7EA;
	Wed, 27 Jan 2021 15:16:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D22576E7EA
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 15:16:05 +0000 (UTC)
IronPort-SDR: ZZqo/Ynw9Y9WBWu297lDpQL6Qpkbb+5Y7JAKnMr2AuL9eH4kBYSnBqiZoK4tRkNTncWD/JZVEB
 /vqVo9PqTI4Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="159856945"
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="159856945"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 07:16:05 -0800
IronPort-SDR: XWeBa3rv4roEgk951J6MimebUaMw/DQfeSaA0bx8B/p2B4mR0yb3VNdRBsNcVBqWu6gEE9NxOW
 l0K+q7N+iIaQ==
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="573298737"
Received: from tdo2-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.72.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 07:16:03 -0800
Date: Wed, 27 Jan 2021 07:15:59 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20210127151559.tte3434cmxnlm3bz@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210127041159.136409-1-aditya.swarup@intel.com>
 <20210127041159.136409-7-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210127041159.136409-7-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915/adl_s: Load DMC
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 26, 2021 at 08:11:56PM -0800, Aditya Swarup wrote:
>From: Anusha Srivatsa <anusha.srivatsa@intel.com>
>
>Load DMC on ADL_S v2.01. This is the first offcial
>release of DMC for ADL_S.
>
>Cc: Jani Nikula <jani.nikula@intel.com>
>Cc: Imre Deak <imre.deak@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Aditya Swarup <aditya.swarup@intel.com>
>Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
>Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_csr.c | 10 +++++++++-
> 1 file changed, 9 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_csr.c b/drivers/gpu/drm/i915/display/intel_csr.c
>index 67dc64df78a5..db9f219c4b5a 100644
>--- a/drivers/gpu/drm/i915/display/intel_csr.c
>+++ b/drivers/gpu/drm/i915/display/intel_csr.c
>@@ -40,6 +40,10 @@
>
> #define GEN12_CSR_MAX_FW_SIZE		ICL_CSR_MAX_FW_SIZE
>
>+#define ADLS_CSR_PATH			"i915/adls_dmc_ver2_01.bin"

Anusha, did you send this firmware to linux-firmware repo? I don't see
it there.

https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/i915


Lucas De Marchi

>+#define ADLS_CSR_VERSION_REQUIRED	CSR_VERSION(2, 1)
>+MODULE_FIRMWARE(ADLS_CSR_PATH);
>+
> #define DG1_CSR_PATH			"i915/dg1_dmc_ver2_02.bin"
> #define DG1_CSR_VERSION_REQUIRED	CSR_VERSION(2, 2)
> MODULE_FIRMWARE(DG1_CSR_PATH);
>@@ -689,7 +693,11 @@ void intel_csr_ucode_init(struct drm_i915_private *dev_priv)
> 	 */
> 	intel_csr_runtime_pm_get(dev_priv);
>
>-	if (IS_DG1(dev_priv)) {
>+	if (IS_ALDERLAKE_S(dev_priv)) {
>+		csr->fw_path = ADLS_CSR_PATH;
>+		csr->required_version = ADLS_CSR_VERSION_REQUIRED;
>+		csr->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
>+	} else if (IS_DG1(dev_priv)) {
> 		csr->fw_path = DG1_CSR_PATH;
> 		csr->required_version = DG1_CSR_VERSION_REQUIRED;
> 		csr->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
>-- 
>2.27.0
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
