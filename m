Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CD2366E96
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Apr 2021 16:57:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E8B489319;
	Wed, 21 Apr 2021 14:57:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 797E289319
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Apr 2021 14:57:25 +0000 (UTC)
IronPort-SDR: Al8zoqnYQBkzc3DxZutRx2im05qiP29vJBtCUuvbKbFcxK27X0Jc9vBARY9/Bed1l3I5GOG73k
 8DFrLca73pEw==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="259664058"
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="259664058"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 07:57:24 -0700
IronPort-SDR: 4LNDiC9C5P/IVbrfGMcllgeoEKhLP1vSl4P6A3IO7FeBNbwFjf79GqlmCciFfgr/Af6aAS+amx
 dqZzcGt0Vn4w==
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="384472714"
Received: from edomingu-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.143.59])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 07:57:22 -0700
Date: Wed, 21 Apr 2021 07:57:21 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20210421145721.azyyvuqwoamcukab@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <CAKi4VA+Rn+XNJNooWGrve+9+07fo7_gDKZD4j0gz3K_LdvMZ-g@mail.gmail.com>
 <20210421094406.2017733-1-rodrigo.vivi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210421094406.2017733-1-rodrigo.vivi@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Let's abstract the dmc path.
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 21, 2021 at 05:44:06AM -0400, Rodrigo Vivi wrote:
>Although this abstraction removes the convenience of grepping
>for the file name, it:
>- makes addition easier.
>- makes it easier to tweak global path when experiments are needed.
>- get in sync with guc/huc, without getting overly abstracted.
>- allows future junction with CSR_VERSION for simplicity.
>- Enforces dmc file will never change this standard.
>
>v2: define DMC_PATH inside .c (Lucas)
>
>Cc: Fei Yang <fei.yang@intel.com>
>Cc: Jani Nikula <jani.nikula@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com> #v1


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>


Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_csr.c | 26 +++++++++++++++---------
> 1 file changed, 16 insertions(+), 10 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_csr.c b/drivers/gpu/drm/i9=
15/display/intel_csr.c
>index 26a3c6787e9e..26a922d34263 100644
>--- a/drivers/gpu/drm/i915/display/intel_csr.c
>+++ b/drivers/gpu/drm/i915/display/intel_csr.c
>@@ -38,50 +38,56 @@
>  * low-power state and comes back to normal.
>  */
>
>+#define DMC_PATH(platform, major, minor) \
>+	"i915/"				 \
>+	__stringify(platform) "_dmc_ver" \
>+	__stringify(major) "_"		 \
>+	__stringify(minor) ".bin"
>+
> #define GEN12_CSR_MAX_FW_SIZE		ICL_CSR_MAX_FW_SIZE
>
>-#define ADLS_CSR_PATH			"i915/adls_dmc_ver2_01.bin"
>+#define ADLS_CSR_PATH			DMC_PATH(adls, 2, 01)
> #define ADLS_CSR_VERSION_REQUIRED	CSR_VERSION(2, 1)
> MODULE_FIRMWARE(ADLS_CSR_PATH);
>
>-#define DG1_CSR_PATH			"i915/dg1_dmc_ver2_02.bin"
>+#define DG1_CSR_PATH			DMC_PATH(dg1, 2, 02)
> #define DG1_CSR_VERSION_REQUIRED	CSR_VERSION(2, 2)
> MODULE_FIRMWARE(DG1_CSR_PATH);
>
>-#define RKL_CSR_PATH			"i915/rkl_dmc_ver2_02.bin"
>+#define RKL_CSR_PATH			DMC_PATH(rkl, 2, 02)
> #define RKL_CSR_VERSION_REQUIRED	CSR_VERSION(2, 2)
> MODULE_FIRMWARE(RKL_CSR_PATH);
>
>-#define TGL_CSR_PATH			"i915/tgl_dmc_ver2_08.bin"
>+#define TGL_CSR_PATH			DMC_PATH(tgl, 2, 08)
> #define TGL_CSR_VERSION_REQUIRED	CSR_VERSION(2, 8)
> MODULE_FIRMWARE(TGL_CSR_PATH);
>
>-#define ICL_CSR_PATH			"i915/icl_dmc_ver1_09.bin"
>+#define ICL_CSR_PATH			DMC_PATH(icl, 1, 09)
> #define ICL_CSR_VERSION_REQUIRED	CSR_VERSION(1, 9)
> #define ICL_CSR_MAX_FW_SIZE		0x6000
> MODULE_FIRMWARE(ICL_CSR_PATH);
>
>-#define CNL_CSR_PATH			"i915/cnl_dmc_ver1_07.bin"
>+#define CNL_CSR_PATH			DMC_PATH(cnl, 1, 07)
> #define CNL_CSR_VERSION_REQUIRED	CSR_VERSION(1, 7)
> #define CNL_CSR_MAX_FW_SIZE		GLK_CSR_MAX_FW_SIZE
> MODULE_FIRMWARE(CNL_CSR_PATH);
>
>-#define GLK_CSR_PATH			"i915/glk_dmc_ver1_04.bin"
>+#define GLK_CSR_PATH			DMC_PATH(glk, 1, 04)
> #define GLK_CSR_VERSION_REQUIRED	CSR_VERSION(1, 4)
> #define GLK_CSR_MAX_FW_SIZE		0x4000
> MODULE_FIRMWARE(GLK_CSR_PATH);
>
>-#define KBL_CSR_PATH			"i915/kbl_dmc_ver1_04.bin"
>+#define KBL_CSR_PATH			DMC_PATH(kbl, 1, 04)
> #define KBL_CSR_VERSION_REQUIRED	CSR_VERSION(1, 4)
> #define KBL_CSR_MAX_FW_SIZE		BXT_CSR_MAX_FW_SIZE
> MODULE_FIRMWARE(KBL_CSR_PATH);
>
>-#define SKL_CSR_PATH			"i915/skl_dmc_ver1_27.bin"
>+#define SKL_CSR_PATH			DMC_PATH(skl, 1, 27)
> #define SKL_CSR_VERSION_REQUIRED	CSR_VERSION(1, 27)
> #define SKL_CSR_MAX_FW_SIZE		BXT_CSR_MAX_FW_SIZE
> MODULE_FIRMWARE(SKL_CSR_PATH);
>
>-#define BXT_CSR_PATH			"i915/bxt_dmc_ver1_07.bin"
>+#define BXT_CSR_PATH			DMC_PATH(bxt, 1, 07)
> #define BXT_CSR_VERSION_REQUIRED	CSR_VERSION(1, 7)
> #define BXT_CSR_MAX_FW_SIZE		0x3000
> MODULE_FIRMWARE(BXT_CSR_PATH);
>-- =

>2.30.2
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
