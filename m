Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F09D315137
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 15:08:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 993636EB40;
	Tue,  9 Feb 2021 14:08:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74C9C6EB43
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 14:08:01 +0000 (UTC)
IronPort-SDR: zbaI+zneUElk9+44X3rFf73aacfZTFtwRlY31NiXGfWXDgYLDPZZVVpIjUfhmUUqC4l3vlwuv5
 fwq8muF7Eczg==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="243378205"
X-IronPort-AV: E=Sophos;i="5.81,165,1610438400"; d="scan'208";a="243378205"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 06:08:00 -0800
IronPort-SDR: NlhMefqJLZlxIzsEVEEP8xdZaIibzbKkuIhuzFDUp2ezEeyc0jHCw0A9OJnDd3aX901gzGfT/v
 ergaghWhs0dA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,165,1610438400"; d="scan'208";a="419444544"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Feb 2021 06:07:59 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 9 Feb 2021 14:07:58 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2106.002;
 Tue, 9 Feb 2021 19:37:57 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "S, Saichandana" <saichandana.s@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v5] drm/i915/debugfs : PCU PM_REQ and PM_RES registers
Thread-Index: AQHW/uhBgCEveweni0qsehja2GKSc6pP2oRQ
Date: Tue, 9 Feb 2021 14:07:56 +0000
Message-ID: <8189f4d23f6449d19cddcbff14c53031@intel.com>
References: <20210115130110.2650-1-saichandana.s@intel.com>
 <20210209133154.31115-1-saichandana.s@intel.com>
In-Reply-To: <20210209133154.31115-1-saichandana.s@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915/debugfs : PCU PM_REQ and PM_RES
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: S, Saichandana <saichandana.s@intel.com>
> Sent: Tuesday, February 9, 2021 7:02 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; chris@chris-wilson.co.uk; Gupta,
> Anshuman <anshuman.gupta@intel.com>
> Subject: [PATCH v5] drm/i915/debugfs : PCU PM_REQ and PM_RES registers
I would have kept the patch name "Add PCU PM_REQ and PM_RES Debugfs"
> 
> This debugfs provides the display PM debug information like Time to Next VBI
> and Time to Next Fill from Display Engine <-> PCU Mailbox.
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
> V4 : Used i915 as local variable. [Anshuman Gupta, Jani Nikula]
> 
> V5 : Added wakeref to wakeup device. [Chris Wilson]
> Signed-off-by: Saichandana S <saichandana.s@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 24 +++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h               |  9 +++++++
>  2 files changed, 33 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index d6e4a9237bda..29aaa41fdeec 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -591,6 +591,29 @@ static int i915_dmc_info(struct seq_file *m, void
> *unused)
>  	return 0;
>  }
> 
> +static int i915_pcu_pm_req_res_info(struct seq_file *m, void *unused) {
> +	struct drm_i915_private *i915 = node_to_i915(m->private);
> +	struct intel_csr *csr = &i915->csr;
> +	intel_wakeref_t wakeref;
> +
> +	if (!HAS_CSR(i915))
> +		return -ENODEV;
> +
> +	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
> +	if (!csr->dmc_payload)
> +		return 0;
> +	seq_printf(m, "Time to Next Fill : 0x%08x\n",
> +		   intel_de_read(i915, PM_RSP_DBG_0) &
These values including TTNVBI are in microseconds, you can print the 
decimal values  in micro seconds to keep it human readable format. 

Thanks,
Anshuman Gupta.
> PM_RESP_TTNF_MASK);
> +	seq_printf(m, "Time to Next VBI : 0x%08x\n",
> +		   (intel_de_read(i915, PM_RSP_DBG_0) &
> PM_RESP_TTNVBI_MASK) >> 16);
> +	seq_printf(m, "Selective Exit Latency : 0x%08x\n",
> +		   intel_de_read(i915, PM_RSP_DBG_1) &
> +PM_RESP_SEL_EXIT_LATENCY_MASK);
> +
> +	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> +	return 0;
> +}
> +
>  static void intel_seq_print_mode(struct seq_file *m, int tabs,
>  				 const struct drm_display_mode *mode)  { @@
> -2128,6 +2151,7 @@ static const struct drm_info_list
> intel_display_debugfs_list[] = {
>  	{"i915_edp_psr_status", i915_edp_psr_status, 0},
>  	{"i915_power_domain_info", i915_power_domain_info, 0},
>  	{"i915_dmc_info", i915_dmc_info, 0},
> +	{"i915_pcu_pm_req_res_info", i915_pcu_pm_req_res_info, 0},
>  	{"i915_display_info", i915_display_info, 0},
>  	{"i915_shared_dplls_info", i915_shared_dplls_info, 0},
>  	{"i915_dp_mst_info", i915_dp_mst_info, 0}, diff --git
> a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h index
> 224ad897af34..93d319bf80fd 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -12525,4 +12525,13 @@ enum skl_power_gate {
>  #define TGL_ROOT_DEVICE_SKU_ULX		0x2
>  #define TGL_ROOT_DEVICE_SKU_ULT		0x4
> 
> +/*These registers are of functional registers for PM debug request and
> response registers*/
> +#define PM_REQ_DBG_0				_MMIO(0x45284)
> +#define PM_REQ_DBG_1				_MMIO(0x45288)
> +#define PM_RSP_DBG_0				_MMIO(0x4528C)
> +#define   PM_RESP_TTNF_MASK			REG_GENMASK(15, 0)
> +#define   PM_RESP_TTNVBI_MASK			REG_GENMASK(31, 16)
> +#define PM_RSP_DBG_1				_MMIO(0x45290)
> +#define   PM_RESP_SEL_EXIT_LATENCY_MASK		REG_GENMASK(2, 0)
> +
>  #endif /* _I915_REG_H_ */
> --
> 2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
