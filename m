Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1994038CB0F
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 18:32:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C8316F891;
	Fri, 21 May 2021 16:32:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20FA96F891
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 16:32:19 +0000 (UTC)
IronPort-SDR: GYAIiXNEmNUUrzCXyUJAccfmy701nweXfAbLQ4eNo9lL+pp3OGqZ+9E8znkq2/ysvqb5Ysv5UM
 1iCnaHlUO4PA==
X-IronPort-AV: E=McAfee;i="6200,9189,9991"; a="188647807"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="188647807"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2021 09:31:57 -0700
IronPort-SDR: kwfcw/fCDnyV41R/Th8JEjPHa2w9ZFMyd2sFcho+ObEReRPQkCNj4qdFSDxm3uur7pdP5OgB1b
 kI9FrJWpTXew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="628727874"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 21 May 2021 09:31:56 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 21 May 2021 09:31:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 21 May 2021 09:31:55 -0700
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.2242.008;
 Fri, 21 May 2021 09:31:55 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [CI 3/5] drm/i915/dmc: Rename macro names containing
 csr
Thread-Index: AQHXTC2rMgzR6P04F0ypF3JlLb0uBarqwTYAgANGOYCAAB3J0A==
Date: Fri, 21 May 2021 16:31:55 +0000
Message-ID: <751c067199774871b8bdb3fc46880b13@intel.com>
References: <20210518213444.11420-1-anusha.srivatsa@intel.com>
 <20210518213444.11420-4-anusha.srivatsa@intel.com>
 <20210519054502.5ofnqztgy3crmopv@ldmartin-desk2> <8735ugediy.fsf@intel.com>
In-Reply-To: <8735ugediy.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [CI 3/5] drm/i915/dmc: Rename macro names
 containing csr
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Friday, May 21, 2021 12:45 AM
> To: De Marchi, Lucas <lucas.demarchi@intel.com>; Srivatsa, Anusha
> <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [CI 3/5] drm/i915/dmc: Rename macro names
> containing csr
> 
> On Tue, 18 May 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> > On Tue, May 18, 2021 at 02:34:42PM -0700, Anusha Srivatsa wrote:
> >>Rename all occurences of CSR_* with DMC_*
> >>
> >>Cc: Jani Nikula <jani.nikula@linux.intel.com>
> >>Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> >
> >
> > Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> 
> We failed to take GVT into account, and apparently neither CI or Anusha has
> CONFIG_DRM_I915_GVT=y. They use the register definitions, and this broke
> the build.
> 
> Anusha, please enable the config, and fix the fallout. Cc: the patch to GVT
> folks for ack.
On it.

Anusha
> 
> 
> Thanks,
> Jani.
> 
> 
> 
> >
> > Lucas De Marchi
> >
> >>---
> >> drivers/gpu/drm/i915/display/intel_csr.c      | 167 +++++++++---------
> >> drivers/gpu/drm/i915/display/intel_csr.h      |   6 +-
> >> .../drm/i915/display/intel_display_debugfs.c  |  16 +-
> >> .../drm/i915/display/intel_display_power.c    |  14 +-
> >> drivers/gpu/drm/i915/i915_gpu_error.c         |   4 +-
> >> drivers/gpu/drm/i915/i915_reg.h               |  28 +--
> >> 6 files changed, 117 insertions(+), 118 deletions(-)
> >>
> >>diff --git a/drivers/gpu/drm/i915/display/intel_csr.c
> >>b/drivers/gpu/drm/i915/display/intel_csr.c
> >>index 5ed286dc6720..f2124796ce77 100644
> >>--- a/drivers/gpu/drm/i915/display/intel_csr.c
> >>+++ b/drivers/gpu/drm/i915/display/intel_csr.c
> >>@@ -30,10 +30,9 @@
> >> #include "intel_de.h"
> >>
> >> /**
> >>- * DOC: csr support for dmc
> >>+ * DOC: DMC firmware support
> >>  *
> >>- * Display Context Save and Restore (CSR) firmware support added from
> >>gen9
> >>- * onwards to drive newly added DMC (Display microcontroller) in
> >>display
> >>+ * From gen9 onwards we have newly added DMC (Display
> >>+ microcontroller) in display
> >>  * engine to save and restore the state of display engine when it
> >>enter into
> >>  * low-power state and comes back to normal.
> >>  */
> >>@@ -44,55 +43,55 @@
> >> 	__stringify(major) "_"		 \
> >> 	__stringify(minor) ".bin"
> >>
> >>-#define GEN12_CSR_MAX_FW_SIZE		ICL_CSR_MAX_FW_SIZE
> >>+#define GEN12_DMC_MAX_FW_SIZE
> 	ICL_DMC_MAX_FW_SIZE
> >>
> >>-#define ADLS_CSR_PATH			DMC_PATH(adls, 2, 01)
> >>-#define ADLS_CSR_VERSION_REQUIRED	CSR_VERSION(2, 1)
> >>-MODULE_FIRMWARE(ADLS_CSR_PATH);
> >>+#define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
> >>+#define ADLS_DMC_VERSION_REQUIRED	DMC_VERSION(2, 1)
> >>+MODULE_FIRMWARE(ADLS_DMC_PATH);
> >>
> >>-#define DG1_CSR_PATH			DMC_PATH(dg1, 2, 02)
> >>-#define DG1_CSR_VERSION_REQUIRED	CSR_VERSION(2, 2)
> >>-MODULE_FIRMWARE(DG1_CSR_PATH);
> >>+#define DG1_DMC_PATH			DMC_PATH(dg1, 2, 02)
> >>+#define DG1_DMC_VERSION_REQUIRED	DMC_VERSION(2, 2)
> >>+MODULE_FIRMWARE(DG1_DMC_PATH);
> >>
> >>-#define RKL_CSR_PATH			DMC_PATH(rkl, 2, 02)
> >>-#define RKL_CSR_VERSION_REQUIRED	CSR_VERSION(2, 2)
> >>-MODULE_FIRMWARE(RKL_CSR_PATH);
> >>+#define RKL_DMC_PATH			DMC_PATH(rkl, 2, 02)
> >>+#define RKL_DMC_VERSION_REQUIRED	DMC_VERSION(2, 2)
> >>+MODULE_FIRMWARE(RKL_DMC_PATH);
> >>
> >>-#define TGL_CSR_PATH			DMC_PATH(tgl, 2, 08)
> >>-#define TGL_CSR_VERSION_REQUIRED	CSR_VERSION(2, 8)
> >>-MODULE_FIRMWARE(TGL_CSR_PATH);
> >>+#define TGL_DMC_PATH			DMC_PATH(tgl, 2, 08)
> >>+#define TGL_DMC_VERSION_REQUIRED	DMC_VERSION(2, 8)
> >>+MODULE_FIRMWARE(TGL_DMC_PATH);
> >>
> >>-#define ICL_CSR_PATH			DMC_PATH(icl, 1, 09)
> >>-#define ICL_CSR_VERSION_REQUIRED	CSR_VERSION(1, 9)
> >>-#define ICL_CSR_MAX_FW_SIZE		0x6000
> >>-MODULE_FIRMWARE(ICL_CSR_PATH);
> >>+#define ICL_DMC_PATH			DMC_PATH(icl, 1, 09)
> >>+#define ICL_DMC_VERSION_REQUIRED	DMC_VERSION(1, 9)
> >>+#define ICL_DMC_MAX_FW_SIZE		0x6000
> >>+MODULE_FIRMWARE(ICL_DMC_PATH);
> >>
> >>-#define CNL_CSR_PATH			DMC_PATH(cnl, 1, 07)
> >>-#define CNL_CSR_VERSION_REQUIRED	CSR_VERSION(1, 7)
> >>-#define CNL_CSR_MAX_FW_SIZE		GLK_CSR_MAX_FW_SIZE
> >>-MODULE_FIRMWARE(CNL_CSR_PATH);
> >>+#define CNL_DMC_PATH			DMC_PATH(cnl, 1, 07)
> >>+#define CNL_DMC_VERSION_REQUIRED	DMC_VERSION(1, 7)
> >>+#define CNL_DMC_MAX_FW_SIZE		GLK_DMC_MAX_FW_SIZE
> >>+MODULE_FIRMWARE(CNL_DMC_PATH);
> >>
> >>-#define GLK_CSR_PATH			DMC_PATH(glk, 1, 04)
> >>-#define GLK_CSR_VERSION_REQUIRED	CSR_VERSION(1, 4)
> >>-#define GLK_CSR_MAX_FW_SIZE		0x4000
> >>-MODULE_FIRMWARE(GLK_CSR_PATH);
> >>+#define GLK_DMC_PATH			DMC_PATH(glk, 1, 04)
> >>+#define GLK_DMC_VERSION_REQUIRED	DMC_VERSION(1, 4)
> >>+#define GLK_DMC_MAX_FW_SIZE		0x4000
> >>+MODULE_FIRMWARE(GLK_DMC_PATH);
> >>
> >>-#define KBL_CSR_PATH			DMC_PATH(kbl, 1, 04)
> >>-#define KBL_CSR_VERSION_REQUIRED	CSR_VERSION(1, 4)
> >>-#define KBL_CSR_MAX_FW_SIZE		BXT_CSR_MAX_FW_SIZE
> >>-MODULE_FIRMWARE(KBL_CSR_PATH);
> >>+#define KBL_DMC_PATH			DMC_PATH(kbl, 1, 04)
> >>+#define KBL_DMC_VERSION_REQUIRED	DMC_VERSION(1, 4)
> >>+#define KBL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
> >>+MODULE_FIRMWARE(KBL_DMC_PATH);
> >>
> >>-#define SKL_CSR_PATH			DMC_PATH(skl, 1, 27)
> >>-#define SKL_CSR_VERSION_REQUIRED	CSR_VERSION(1, 27)
> >>-#define SKL_CSR_MAX_FW_SIZE		BXT_CSR_MAX_FW_SIZE
> >>-MODULE_FIRMWARE(SKL_CSR_PATH);
> >>+#define SKL_DMC_PATH			DMC_PATH(skl, 1, 27)
> >>+#define SKL_DMC_VERSION_REQUIRED	DMC_VERSION(1, 27)
> >>+#define SKL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
> >>+MODULE_FIRMWARE(SKL_DMC_PATH);
> >>
> >>-#define BXT_CSR_PATH			DMC_PATH(bxt, 1, 07)
> >>-#define BXT_CSR_VERSION_REQUIRED	CSR_VERSION(1, 7)
> >>-#define BXT_CSR_MAX_FW_SIZE		0x3000
> >>-MODULE_FIRMWARE(BXT_CSR_PATH);
> >>+#define BXT_DMC_PATH			DMC_PATH(bxt, 1, 07)
> >>+#define BXT_DMC_VERSION_REQUIRED	DMC_VERSION(1, 7)
> >>+#define BXT_DMC_MAX_FW_SIZE		0x3000
> >>+MODULE_FIRMWARE(BXT_DMC_PATH);
> >>
> >>-#define CSR_DEFAULT_FW_OFFSET		0xFFFFFFFF
> >>+#define DMC_DEFAULT_FW_OFFSET		0xFFFFFFFF
> >> #define PACKAGE_MAX_FW_INFO_ENTRIES	20
> >> #define PACKAGE_V2_MAX_FW_INFO_ENTRIES	32
> >> #define DMC_V1_MAX_MMIO_COUNT		8
> >>@@ -333,7 +332,7 @@ void intel_csr_load_program(struct
> drm_i915_private *dev_priv)
> >> 	preempt_disable();
> >>
> >> 	for (i = 0; i < fw_size; i++)
> >>-		intel_uncore_write_fw(&dev_priv->uncore,
> CSR_PROGRAM(i),
> >>+		intel_uncore_write_fw(&dev_priv->uncore,
> DMC_PROGRAM(i),
> >> 				      payload[i]);
> >>
> >> 	preempt_enable();
> >>@@ -357,7 +356,7 @@ static u32 find_dmc_fw_offset(const struct
> intel_fw_info *fw_info,
> >> 			      const struct stepping_info *si,
> >> 			      u8 package_ver)
> >> {
> >>-	u32 dmc_offset = CSR_DEFAULT_FW_OFFSET;
> >>+	u32 dmc_offset = DMC_DEFAULT_FW_OFFSET;
> >> 	unsigned int i;
> >>
> >> 	for (i = 0; i < num_entries; i++) {
> >>@@ -458,8 +457,8 @@ static u32 parse_csr_fw_dmc(struct intel_dmc
> *dmc,
> >> 	}
> >>
> >> 	for (i = 0; i < mmio_count; i++) {
> >>-		if (mmioaddr[i] < CSR_MMIO_START_RANGE ||
> >>-		    mmioaddr[i] > CSR_MMIO_END_RANGE) {
> >>+		if (mmioaddr[i] < DMC_MMIO_START_RANGE ||
> >>+		    mmioaddr[i] > DMC_MMIO_END_RANGE) {
> >> 			DRM_ERROR("DMC firmware has wrong mmio
> address 0x%x\n",
> >> 				  mmioaddr[i]);
> >> 			return 0;
> >>@@ -543,7 +542,7 @@ parse_csr_fw_package(struct intel_dmc *dmc,
> >> 		((u8 *)package_header + sizeof(*package_header));
> >> 	dmc_offset = find_dmc_fw_offset(fw_info, num_entries, si,
> >> 					package_header->header_ver);
> >>-	if (dmc_offset == CSR_DEFAULT_FW_OFFSET) {
> >>+	if (dmc_offset == DMC_DEFAULT_FW_OFFSET) {
> >> 		DRM_ERROR("DMC firmware not supported for %c
> stepping\n",
> >> 			  si->stepping);
> >> 		return 0;
> >>@@ -579,10 +578,10 @@ static u32 parse_csr_fw_css(struct intel_dmc
> *dmc,
> >> 	    css_header->version != dmc->required_version) {
> >> 		DRM_INFO("Refusing to load DMC firmware v%u.%u,"
> >> 			 " please use v%u.%u\n",
> >>-			 CSR_VERSION_MAJOR(css_header->version),
> >>-			 CSR_VERSION_MINOR(css_header->version),
> >>-			 CSR_VERSION_MAJOR(dmc->required_version),
> >>-			 CSR_VERSION_MINOR(dmc->required_version));
> >>+			 DMC_VERSION_MAJOR(css_header->version),
> >>+			 DMC_VERSION_MINOR(css_header->version),
> >>+			 DMC_VERSION_MAJOR(dmc->required_version),
> >>+			 DMC_VERSION_MINOR(dmc->required_version));
> >> 		return 0;
> >> 	}
> >>
> >>@@ -659,8 +658,8 @@ static void csr_load_work_fn(struct work_struct
> >>*work)
> >>
> >> 		drm_info(&dev_priv->drm,
> >> 			 "Finished loading DMC firmware %s (v%u.%u)\n",
> >>-			 dev_priv->dmc.fw_path,
> CSR_VERSION_MAJOR(dmc->version),
> >>-			 CSR_VERSION_MINOR(dmc->version));
> >>+			 dev_priv->dmc.fw_path,
> DMC_VERSION_MAJOR(dmc->version),
> >>+			 DMC_VERSION_MINOR(dmc->version));
> >> 	} else {
> >> 		drm_notice(&dev_priv->drm,
> >> 			   "Failed to load DMC firmware %s."
> >>@@ -690,57 +689,57 @@ void intel_csr_ucode_init(struct
> drm_i915_private *dev_priv)
> >> 		return;
> >>
> >> 	/*
> >>-	 * Obtain a runtime pm reference, until CSR is loaded, to avoid
> entering
> >>+	 * Obtain a runtime pm reference, until DMC is loaded, to avoid
> >>+entering
> >> 	 * runtime-suspend.
> >> 	 *
> >> 	 * On error, we return with the rpm wakeref held to prevent runtime
> >>-	 * suspend as runtime suspend *requires* a working CSR for
> whatever
> >>+	 * suspend as runtime suspend *requires* a working DMC for
> whatever
> >> 	 * reason.
> >> 	 */
> >> 	intel_csr_runtime_pm_get(dev_priv);
> >>
> >> 	if (IS_ALDERLAKE_S(dev_priv)) {
> >>-		dmc->fw_path = ADLS_CSR_PATH;
> >>-		dmc->required_version = ADLS_CSR_VERSION_REQUIRED;
> >>-		dmc->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
> >>+		dmc->fw_path = ADLS_DMC_PATH;
> >>+		dmc->required_version = ADLS_DMC_VERSION_REQUIRED;
> >>+		dmc->max_fw_size = GEN12_DMC_MAX_FW_SIZE;
> >> 	} else if (IS_DG1(dev_priv)) {
> >>-		dmc->fw_path = DG1_CSR_PATH;
> >>-		dmc->required_version = DG1_CSR_VERSION_REQUIRED;
> >>-		dmc->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
> >>+		dmc->fw_path = DG1_DMC_PATH;
> >>+		dmc->required_version = DG1_DMC_VERSION_REQUIRED;
> >>+		dmc->max_fw_size = GEN12_DMC_MAX_FW_SIZE;
> >> 	} else if (IS_ROCKETLAKE(dev_priv)) {
> >>-		dmc->fw_path = RKL_CSR_PATH;
> >>-		dmc->required_version = RKL_CSR_VERSION_REQUIRED;
> >>-		dmc->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
> >>+		dmc->fw_path = RKL_DMC_PATH;
> >>+		dmc->required_version = RKL_DMC_VERSION_REQUIRED;
> >>+		dmc->max_fw_size = GEN12_DMC_MAX_FW_SIZE;
> >> 	} else if (DISPLAY_VER(dev_priv) >= 12) {
> >>-		dmc->fw_path = TGL_CSR_PATH;
> >>-		dmc->required_version = TGL_CSR_VERSION_REQUIRED;
> >>-		dmc->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
> >>+		dmc->fw_path = TGL_DMC_PATH;
> >>+		dmc->required_version = TGL_DMC_VERSION_REQUIRED;
> >>+		dmc->max_fw_size = GEN12_DMC_MAX_FW_SIZE;
> >> 	} else if (DISPLAY_VER(dev_priv) == 11) {
> >>-		dmc->fw_path = ICL_CSR_PATH;
> >>-		dmc->required_version = ICL_CSR_VERSION_REQUIRED;
> >>-		dmc->max_fw_size = ICL_CSR_MAX_FW_SIZE;
> >>+		dmc->fw_path = ICL_DMC_PATH;
> >>+		dmc->required_version = ICL_DMC_VERSION_REQUIRED;
> >>+		dmc->max_fw_size = ICL_DMC_MAX_FW_SIZE;
> >> 	} else if (IS_CANNONLAKE(dev_priv)) {
> >>-		dmc->fw_path = CNL_CSR_PATH;
> >>-		dmc->required_version = CNL_CSR_VERSION_REQUIRED;
> >>-		dmc->max_fw_size = CNL_CSR_MAX_FW_SIZE;
> >>+		dmc->fw_path = CNL_DMC_PATH;
> >>+		dmc->required_version = CNL_DMC_VERSION_REQUIRED;
> >>+		dmc->max_fw_size = CNL_DMC_MAX_FW_SIZE;
> >> 	} else if (IS_GEMINILAKE(dev_priv)) {
> >>-		dmc->fw_path = GLK_CSR_PATH;
> >>-		dmc->required_version = GLK_CSR_VERSION_REQUIRED;
> >>-		dmc->max_fw_size = GLK_CSR_MAX_FW_SIZE;
> >>+		dmc->fw_path = GLK_DMC_PATH;
> >>+		dmc->required_version = GLK_DMC_VERSION_REQUIRED;
> >>+		dmc->max_fw_size = GLK_DMC_MAX_FW_SIZE;
> >> 	} else if (IS_KABYLAKE(dev_priv) ||
> >> 		   IS_COFFEELAKE(dev_priv) ||
> >> 		   IS_COMETLAKE(dev_priv)) {
> >>-		dmc->fw_path = KBL_CSR_PATH;
> >>-		dmc->required_version = KBL_CSR_VERSION_REQUIRED;
> >>-		dmc->max_fw_size = KBL_CSR_MAX_FW_SIZE;
> >>+		dmc->fw_path = KBL_DMC_PATH;
> >>+		dmc->required_version = KBL_DMC_VERSION_REQUIRED;
> >>+		dmc->max_fw_size = KBL_DMC_MAX_FW_SIZE;
> >> 	} else if (IS_SKYLAKE(dev_priv)) {
> >>-		dmc->fw_path = SKL_CSR_PATH;
> >>-		dmc->required_version = SKL_CSR_VERSION_REQUIRED;
> >>-		dmc->max_fw_size = SKL_CSR_MAX_FW_SIZE;
> >>+		dmc->fw_path = SKL_DMC_PATH;
> >>+		dmc->required_version = SKL_DMC_VERSION_REQUIRED;
> >>+		dmc->max_fw_size = SKL_DMC_MAX_FW_SIZE;
> >> 	} else if (IS_BROXTON(dev_priv)) {
> >>-		dmc->fw_path = BXT_CSR_PATH;
> >>-		dmc->required_version = BXT_CSR_VERSION_REQUIRED;
> >>-		dmc->max_fw_size = BXT_CSR_MAX_FW_SIZE;
> >>+		dmc->fw_path = BXT_DMC_PATH;
> >>+		dmc->required_version = BXT_DMC_VERSION_REQUIRED;
> >>+		dmc->max_fw_size = BXT_DMC_MAX_FW_SIZE;
> >> 	}
> >>
> >> 	if (dev_priv->params.dmc_firmware_path) { diff --git
> >>a/drivers/gpu/drm/i915/display/intel_csr.h
> >>b/drivers/gpu/drm/i915/display/intel_csr.h
> >>index 03c64f8af7ab..984e9fb250f8 100644
> >>--- a/drivers/gpu/drm/i915/display/intel_csr.h
> >>+++ b/drivers/gpu/drm/i915/display/intel_csr.h
> >>@@ -8,9 +8,9 @@
> >>
> >> struct drm_i915_private;
> >>
> >>-#define CSR_VERSION(major, minor)	((major) << 16 | (minor))
> >>-#define CSR_VERSION_MAJOR(version)	((version) >> 16)
> >>-#define CSR_VERSION_MINOR(version)	((version) & 0xffff)
> >>+#define DMC_VERSION(major, minor)	((major) << 16 | (minor))
> >>+#define DMC_VERSION_MAJOR(version)	((version) >> 16)
> >>+#define DMC_VERSION_MINOR(version)	((version) & 0xffff)
> >>
> >> void intel_csr_ucode_init(struct drm_i915_private *i915);  void
> >>intel_csr_load_program(struct drm_i915_private *i915); diff --git
> >>a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >>b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >>index 6cd7f8c1724f..e43abdf0e3d9 100644
> >>--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >>+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >>@@ -548,8 +548,8 @@ static int i915_dmc_info(struct seq_file *m, void
> *unused)
> >> 	if (!dmc->dmc_payload)
> >> 		goto out;
> >>
> >>-	seq_printf(m, "version: %d.%d\n", CSR_VERSION_MAJOR(dmc-
> >version),
> >>-		   CSR_VERSION_MINOR(dmc->version));
> >>+	seq_printf(m, "version: %d.%d\n", DMC_VERSION_MAJOR(dmc-
> >version),
> >>+		   DMC_VERSION_MINOR(dmc->version));
> >>
> >> 	if (DISPLAY_VER(dev_priv) >= 12) {
> >> 		if (IS_DGFX(dev_priv)) {
> >>@@ -568,10 +568,10 @@ static int i915_dmc_info(struct seq_file *m, void
> *unused)
> >> 		seq_printf(m, "DC3CO count: %d\n",
> >> 			   intel_de_read(dev_priv, DMC_DEBUG3));
> >> 	} else {
> >>-		dc5_reg = IS_BROXTON(dev_priv) ?
> BXT_CSR_DC3_DC5_COUNT :
> >>-						 SKL_CSR_DC3_DC5_COUNT;
> >>+		dc5_reg = IS_BROXTON(dev_priv) ?
> BXT_DMC_DC3_DC5_COUNT :
> >>+						 SKL_DMC_DC3_DC5_COUNT;
> >> 		if (!IS_GEMINILAKE(dev_priv) && !IS_BROXTON(dev_priv))
> >>-			dc6_reg = SKL_CSR_DC5_DC6_COUNT;
> >>+			dc6_reg = SKL_DMC_DC5_DC6_COUNT;
> >> 	}
> >>
> >> 	seq_printf(m, "DC3 -> DC5 count: %d\n", @@ -582,10 +582,10 @@
> static
> >>int i915_dmc_info(struct seq_file *m, void *unused)
> >>
> >> out:
> >> 	seq_printf(m, "program base: 0x%08x\n",
> >>-		   intel_de_read(dev_priv, CSR_PROGRAM(0)));
> >>+		   intel_de_read(dev_priv, DMC_PROGRAM(0)));
> >> 	seq_printf(m, "ssp base: 0x%08x\n",
> >>-		   intel_de_read(dev_priv, CSR_SSP_BASE));
> >>-	seq_printf(m, "htp: 0x%08x\n", intel_de_read(dev_priv,
> CSR_HTP_SKL));
> >>+		   intel_de_read(dev_priv, DMC_SSP_BASE));
> >>+	seq_printf(m, "htp: 0x%08x\n", intel_de_read(dev_priv,
> >>+DMC_HTP_SKL));
> >>
> >> 	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> >>
> >>diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> >>b/drivers/gpu/drm/i915/display/intel_display_power.c
> >>index 0a05d0f90f28..de58abdd838b 100644
> >>--- a/drivers/gpu/drm/i915/display/intel_display_power.c
> >>+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> >>@@ -961,12 +961,12 @@ static void bxt_disable_dc9(struct
> >>drm_i915_private *dev_priv)  static void assert_csr_loaded(struct
> >>drm_i915_private *dev_priv)  {
> >> 	drm_WARN_ONCE(&dev_priv->drm,
> >>-		      !intel_de_read(dev_priv, CSR_PROGRAM(0)),
> >>-		      "CSR program storage start is NULL\n");
> >>-	drm_WARN_ONCE(&dev_priv->drm, !intel_de_read(dev_priv,
> CSR_SSP_BASE),
> >>-		      "CSR SSP Base Not fine\n");
> >>-	drm_WARN_ONCE(&dev_priv->drm, !intel_de_read(dev_priv,
> CSR_HTP_SKL),
> >>-		      "CSR HTP Not fine\n");
> >>+		      !intel_de_read(dev_priv, DMC_PROGRAM(0)),
> >>+		      "DMC program storage start is NULL\n");
> >>+	drm_WARN_ONCE(&dev_priv->drm, !intel_de_read(dev_priv,
> DMC_SSP_BASE),
> >>+		      "DMC SSP Base Not fine\n");
> >>+	drm_WARN_ONCE(&dev_priv->drm, !intel_de_read(dev_priv,
> DMC_HTP_SKL),
> >>+		      "DMC HTP Not fine\n");
> >> }
> >>
> >> static struct i915_power_well *
> >>@@ -6218,7 +6218,7 @@ void intel_power_domains_suspend(struct
> drm_i915_private *i915,
> >> 	/*
> >> 	 * In case of suspend-to-idle (aka S0ix) on a DMC platform without
> DC9
> >> 	 * support don't manually deinit the power domains. This also means
> the
> >>-	 * CSR/DMC firmware will stay active, it will power down any HW
> >>+	 * DMC firmware will stay active, it will power down any HW
> >> 	 * resources as required and also enable deeper system power states
> >> 	 * that would be blocked if the firmware was inactive.
> >> 	 */
> >>diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c
> >>b/drivers/gpu/drm/i915/i915_gpu_error.c
> >>index 06828ff90ccf..edd108d41318 100644
> >>--- a/drivers/gpu/drm/i915/i915_gpu_error.c
> >>+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> >>@@ -794,8 +794,8 @@ static void __err_print_to_sgl(struct
> drm_i915_error_state_buf *m,
> >> 		err_printf(m, "DMC loaded: %s\n",
> >> 			   yesno(dmc->dmc_payload));
> >> 		err_printf(m, "DMC fw version: %d.%d\n",
> >>-			   CSR_VERSION_MAJOR(dmc->version),
> >>-			   CSR_VERSION_MINOR(dmc->version));
> >>+			   DMC_VERSION_MAJOR(dmc->version),
> >>+			   DMC_VERSION_MINOR(dmc->version));
> >> 	}
> >>
> >> 	err_printf(m, "RPM wakelock: %s\n", yesno(error->wakelock)); diff
> >>--git a/drivers/gpu/drm/i915/i915_reg.h
> >>b/drivers/gpu/drm/i915/i915_reg.h index 089b5a59bed3..73a33ffc0559
> >>100644
> >>--- a/drivers/gpu/drm/i915/i915_reg.h
> >>+++ b/drivers/gpu/drm/i915/i915_reg.h
> >>@@ -7686,20 +7686,20 @@ enum {
> >> #define  GAMMA_MODE_MODE_SPLIT	(3 << 0) /* ivb-bdw */
> >> #define  GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED	(3 <<
> 0) /* icl + */
> >>
> >>-/* DMC/CSR */
> >>-#define CSR_PROGRAM(i)		_MMIO(0x80000 + (i) * 4)
> >>-#define CSR_SSP_BASE_ADDR_GEN9	0x00002FC0
> >>-#define CSR_HTP_ADDR_SKL	0x00500034
> >>-#define CSR_SSP_BASE		_MMIO(0x8F074)
> >>-#define CSR_HTP_SKL		_MMIO(0x8F004)
> >>-#define CSR_LAST_WRITE		_MMIO(0x8F034)
> >>-#define CSR_LAST_WRITE_VALUE	0xc003b400
> >>-/* MMIO address range for CSR program (0x80000 - 0x82FFF) */
> >>-#define CSR_MMIO_START_RANGE	0x80000
> >>-#define CSR_MMIO_END_RANGE	0x8FFFF
> >>-#define SKL_CSR_DC3_DC5_COUNT	_MMIO(0x80030)
> >>-#define SKL_CSR_DC5_DC6_COUNT	_MMIO(0x8002C)
> >>-#define BXT_CSR_DC3_DC5_COUNT	_MMIO(0x80038)
> >>+/* DMC */
> >>+#define DMC_PROGRAM(i)		_MMIO(0x80000 + (i) * 4)
> >>+#define DMC_SSP_BASE_ADDR_GEN9	0x00002FC0
> >>+#define DMC_HTP_ADDR_SKL	0x00500034
> >>+#define DMC_SSP_BASE		_MMIO(0x8F074)
> >>+#define DMC_HTP_SKL		_MMIO(0x8F004)
> >>+#define DMC_LAST_WRITE		_MMIO(0x8F034)
> >>+#define DMC_LAST_WRITE_VALUE	0xc003b400
> >>+/* MMIO address range for DMC program (0x80000 - 0x82FFF) */
> >>+#define DMC_MMIO_START_RANGE	0x80000
> >>+#define DMC_MMIO_END_RANGE	0x8FFFF
> >>+#define SKL_DMC_DC3_DC5_COUNT	_MMIO(0x80030)
> >>+#define SKL_DMC_DC5_DC6_COUNT	_MMIO(0x8002C)
> >>+#define BXT_DMC_DC3_DC5_COUNT	_MMIO(0x80038)
> >> #define TGL_DMC_DEBUG_DC5_COUNT	_MMIO(0x101084)
> >> #define TGL_DMC_DEBUG_DC6_COUNT	_MMIO(0x101088)
> >> #define DG1_DMC_DEBUG_DC5_COUNT	_MMIO(0x134154)
> >>--
> >>2.25.0
> >>
> >>_______________________________________________
> >>Intel-gfx mailing list
> >>Intel-gfx@lists.freedesktop.org
> >>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> 
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
