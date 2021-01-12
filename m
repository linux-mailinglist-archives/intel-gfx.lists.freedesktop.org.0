Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4A82F3308
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 15:37:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 929FF6E22C;
	Tue, 12 Jan 2021 14:37:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 211566E22C
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 14:37:28 +0000 (UTC)
IronPort-SDR: fuBGGI4HBTpfN2Jou8Oi8EnTaoM+g5yDnLQzvNlgeQ4ZXTW6Ddx2z/QxInVvz16fZvIZv0hyS3
 VRfjwb8ZqqjQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="196669584"
X-IronPort-AV: E=Sophos;i="5.79,341,1602572400"; d="scan'208";a="196669584"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 06:37:27 -0800
IronPort-SDR: Y+QBoY8gpkpJ+WS986FuIGufvUHLR+qPaTHWkNt3id6/b4U5YQb1upc50azEapdPGkDu+WpL8a
 wEggxJpsXAsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,341,1602572400"; d="scan'208";a="424179145"
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139])
 by orsmga001.jf.intel.com with ESMTP; 12 Jan 2021 06:37:26 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 12 Jan 2021 14:37:24 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Tue, 12 Jan 2021 20:07:23 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "S, Saichandana" <saichandana.s@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3] drm/i915/debugfs : PM_REQ and PM_RES registers
Thread-Index: AQHW6Oeu/LmQMjzhrk+YqGNimaXKZaokDQ+A
Date: Tue, 12 Jan 2021 14:37:23 +0000
Message-ID: <149dc69fa1104c4d8a9111fb65461e89@intel.com>
References: <20210104103036.1443-1-saichandana.s@intel.com>
 <20210112133346.12325-1-saichandana.s@intel.com>
In-Reply-To: <20210112133346.12325-1-saichandana.s@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/debugfs : PM_REQ and PM_RES
 registers
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: S, Saichandana <saichandana.s@intel.com>
> Sent: Tuesday, January 12, 2021 7:04 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Gupta, Anshuman
> <anshuman.gupta@intel.com>; S, Saichandana <saichandana.s@intel.com>
> Subject: [PATCH v3] drm/i915/debugfs : PM_REQ and PM_RES registers
> 
> PM_REQ register provides the value of the last PM request[Gupta, Anshuman] , response from PCU to
*PM_DBG_{REQ,RSP}* 
> Display Engine. PM_RES register provides the value of the last PM response
> from Display Engine to PCU.
> This debugfs will be used by DC9 IGT test to know about "DC9 Ready"
I would rephrase it as "This debugs DC9 Ready but will be used by dc9 igt test .
It will also print the useful debug information from Display Engine to PCU mailbox register"
> status.
> B.Spec : 49501, 49502
> 
> V2:
> Added a functional print to debugfs. [Jani Nikula]
> 
> V3:
> Used separate variables to store the register values and also used
> REG_GENMASK and REG_BIT for mask preparation. [Anshuman Gupta]
> 
> Removed reading of register contents. Replaced local variable with yesno().
> Placed register macros separately, distinguishing from other macros. [Jani
> Nikula]
> 
> Signed-off-by: Saichandana S <saichandana.s@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 23
> +++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h               | 10 ++++++++
>  2 files changed, 33 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index cd7e5519ee7d..e5997debb8e5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -559,6 +559,28 @@ static int i915_dmc_info(struct seq_file *m, void
> *unused)
>  	return 0;
>  }
> 
> +static int i915_pm_req_res_info(struct seq_file *m, void *unused) {
> +	struct drm_i915_private *dev_priv = node_to_i915(m->private);
Please use i915 as variable as Jani has suggested earlier.
Thanks,
Anshuman.
> +	struct intel_csr *csr = &dev_priv->csr;
> +	u32 DC9_status;
> +
> +	if (!HAS_CSR(dev_priv))
> +		return -ENODEV;
> +	if (!csr->dmc_payload)
> +		return 0;
> +	DC9_status = intel_de_read(dev_priv, PM_RSP_DBG_1) &
> +PM_RESP_DC9_READY;
> +
> +	seq_printf(m, "Time to Next Fill : 0x%08x\n",
> +		   intel_de_read(dev_priv, PM_RSP_DBG_0) &
> PM_RESP_TTNF_MASK);
> +	seq_printf(m, "Time to Next VBI : 0x%08x\n",
> +		   (intel_de_read(dev_priv, PM_RSP_DBG_0) &
> PM_RESP_TTNVBI_MASK) >> 16);
> +	seq_printf(m, "Selective Exit Latency : 0x%08x\n",
> +		   intel_de_read(dev_priv, PM_RSP_DBG_1) &
> PM_RESP_SEL_EXIT_LATENCY_MASK);
> +	seq_printf(m, "DC9 Ready : %s\n", yesno(DC9_status));
> +	return 0;
> +}
> +
>  static void intel_seq_print_mode(struct seq_file *m, int tabs,
>  				 const struct drm_display_mode *mode)  {
> @@ -2100,6 +2122,7 @@ static const struct drm_info_list
> intel_display_debugfs_list[] = {
>  	{"i915_edp_psr_status", i915_edp_psr_status, 0},
>  	{"i915_power_domain_info", i915_power_domain_info, 0},
>  	{"i915_dmc_info", i915_dmc_info, 0},
> +	{"i915_pm_req_res_info", i915_pm_req_res_info, 0},
>  	{"i915_display_info", i915_display_info, 0},
>  	{"i915_shared_dplls_info", i915_shared_dplls_info, 0},
>  	{"i915_dp_mst_info", i915_dp_mst_info, 0}, diff --git
> a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 0023c023f472..8c91d598dc29 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -12423,4 +12423,14 @@ enum skl_power_gate {
>  #define TGL_ROOT_DEVICE_SKU_ULX		0x2
>  #define TGL_ROOT_DEVICE_SKU_ULT		0x4
> 
> +/*These registers are of functional registers for PM debug request and
> response registers*/
> +#define PM_REQ_DBG_0				_MMIO(0x45284)
> +#define PM_REQ_DBG_1				_MMIO(0x45288)
> +#define PM_RSP_DBG_0				_MMIO(0x4528C)
> +#define   PM_RESP_TTNF_MASK			REG_GENMASK(15,
> 0)
> +#define   PM_RESP_TTNVBI_MASK			REG_GENMASK(31,
> 16)
> +#define PM_RSP_DBG_1				_MMIO(0x45290)
> +#define   PM_RESP_SEL_EXIT_LATENCY_MASK
> 	REG_GENMASK(2, 0)
> +#define   PM_RESP_DC9_READY			REG_BIT(15)
> +
>  #endif /* _I915_REG_H_ */
> --
> 2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
