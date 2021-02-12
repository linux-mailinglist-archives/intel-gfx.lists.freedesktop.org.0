Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB96319F51
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 14:04:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E59BE6E0F4;
	Fri, 12 Feb 2021 13:04:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AC316E0F4
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 13:04:24 +0000 (UTC)
IronPort-SDR: 25AB3JXvjjzJ9KSTvdHoGy7xAm74TVRdgQ0gbGqIfTe8kjaUuWPdJkd8XZ9k2QeqmctwPLtCVd
 DZ3gKYLdC4JA==
X-IronPort-AV: E=McAfee;i="6000,8403,9892"; a="181631471"
X-IronPort-AV: E=Sophos;i="5.81,173,1610438400"; d="scan'208";a="181631471"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 05:04:23 -0800
IronPort-SDR: xcqOkd/HDdhOaJygiAIO7bhd453XLrEPmCKyFKjKX+XqGr3R+cKczgcEENf0RXknJGOO7dWYis
 +435hIDzAslQ==
X-IronPort-AV: E=Sophos;i="5.81,173,1610438400"; d="scan'208";a="397970249"
Received: from mpetrica-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.54.176])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 05:04:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Saichandana S <saichandana.s@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210209133154.31115-1-saichandana.s@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210115130110.2650-1-saichandana.s@intel.com>
 <20210209133154.31115-1-saichandana.s@intel.com>
Date: Fri, 12 Feb 2021 15:04:18 +0200
Message-ID: <87czx5cu99.fsf@intel.com>
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
Cc: chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 09 Feb 2021, Saichandana S <saichandana.s@intel.com> wrote:
> This debugfs provides the display PM debug information like Time
> to Next VBI and Time to Next Fill from Display Engine <-> PCU Mailbox.

We still lack a rationale for this and the test design. In past review,
I got the impression that a) you need the wakeref, but b) grabbing the
wakeref messes up the test.

What are you testing? What are you trying to achieve?

BR,
Jani.


PS. You leak the wakeref and stay up indefinitely if csr isn't loaded.

>
> V2:
> Added a functional print to debugfs. [Jani Nikula]
>
> V3:
> Used separate variables to store the register values and also
> used REG_GENMASK and REG_BIT for mask preparation. [Anshuman Gupta]
>
> Removed reading of register contents. Replaced local variable with yesno().
> Placed register macros separately, distinguishing from other
> macros. [Jani Nikula]
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
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index d6e4a9237bda..29aaa41fdeec 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -591,6 +591,29 @@ static int i915_dmc_info(struct seq_file *m, void *unused)
>  	return 0;
>  }
>  
> +static int i915_pcu_pm_req_res_info(struct seq_file *m, void *unused)
> +{
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

Leak.

> +	seq_printf(m, "Time to Next Fill : 0x%08x\n",
> +		   intel_de_read(i915, PM_RSP_DBG_0) & PM_RESP_TTNF_MASK);
> +	seq_printf(m, "Time to Next VBI : 0x%08x\n",
> +		   (intel_de_read(i915, PM_RSP_DBG_0) & PM_RESP_TTNVBI_MASK) >> 16);
> +	seq_printf(m, "Selective Exit Latency : 0x%08x\n",
> +		   intel_de_read(i915, PM_RSP_DBG_1) & PM_RESP_SEL_EXIT_LATENCY_MASK);
> +
> +	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> +	return 0;
> +}
> +
>  static void intel_seq_print_mode(struct seq_file *m, int tabs,
>  				 const struct drm_display_mode *mode)
>  {
> @@ -2128,6 +2151,7 @@ static const struct drm_info_list intel_display_debugfs_list[] = {
>  	{"i915_edp_psr_status", i915_edp_psr_status, 0},
>  	{"i915_power_domain_info", i915_power_domain_info, 0},
>  	{"i915_dmc_info", i915_dmc_info, 0},
> +	{"i915_pcu_pm_req_res_info", i915_pcu_pm_req_res_info, 0},
>  	{"i915_display_info", i915_display_info, 0},
>  	{"i915_shared_dplls_info", i915_shared_dplls_info, 0},
>  	{"i915_dp_mst_info", i915_dp_mst_info, 0},
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 224ad897af34..93d319bf80fd 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -12525,4 +12525,13 @@ enum skl_power_gate {
>  #define TGL_ROOT_DEVICE_SKU_ULX		0x2
>  #define TGL_ROOT_DEVICE_SKU_ULT		0x4
>  
> +/*These registers are of functional registers for PM debug request and response registers*/
> +#define PM_REQ_DBG_0				_MMIO(0x45284)
> +#define PM_REQ_DBG_1				_MMIO(0x45288)
> +#define PM_RSP_DBG_0				_MMIO(0x4528C)
> +#define   PM_RESP_TTNF_MASK			REG_GENMASK(15, 0)
> +#define   PM_RESP_TTNVBI_MASK			REG_GENMASK(31, 16)
> +#define PM_RSP_DBG_1				_MMIO(0x45290)
> +#define   PM_RESP_SEL_EXIT_LATENCY_MASK		REG_GENMASK(2, 0)
> +
>  #endif /* _I915_REG_H_ */

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
