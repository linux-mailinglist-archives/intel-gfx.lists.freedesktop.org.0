Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 096672D620C
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 17:36:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 655676E434;
	Thu, 10 Dec 2020 16:36:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E9476E434
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 16:36:05 +0000 (UTC)
IronPort-SDR: jgJLIwkAakpV9FzWZtHrQ2xWJhvIP2hXIXjQ7Qe3Deg1bO68N+Ms4SZLC1XUJmoy6DCV7Ud8tn
 vfX/FdIQibvw==
X-IronPort-AV: E=McAfee;i="6000,8403,9830"; a="154096820"
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="154096820"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 08:36:04 -0800
IronPort-SDR: jLOgO54t/3ipaR15RM7n1Rx9Wz9hrao5e7v8naFVFXbfwgtYFjb2a/3X9UoDlHxsXIdSYjeaxc
 7qMMzbAdn2fQ==
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="364762114"
Received: from yechielg-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.81.29])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 08:36:01 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Saichandana S <saichandana.s@intel.com>, intel-gfx@lists.freedesktop.org,
 saichandana.s@intel.com, uma.shankar@intel.com, Anshuman.Gupta@intel.com
In-Reply-To: <20201210132853.1521-1-saichandana.s@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201210132853.1521-1-saichandana.s@intel.com>
Date: Thu, 10 Dec 2020 18:35:57 +0200
Message-ID: <87mtyl8vpu.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs : PM_REQ and PM_RES
 register debugfs
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
Cc: Saichandana <saichandana.s@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


[Stripped "--cc=" from Cc: addresses]

On Thu, 10 Dec 2020, Saichandana S <saichandana.s@intel.com> wrote:
> From: Saichandana <saichandana.s@intel.com>
>
> PM_REQ register provides the value of the last PM request from PCU to
> Display Engine.PM_RES register provides the value of the last PM response from
> Display Engine to PCU.
> This debugfs will be used by DC9 IGT test to know about "DC9 Ready"
> status.
> B.Spec : 49501, 49502
>
> Signed-off-by: Saichandana <saichandana.s@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 24 +++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h               |  5 ++++
>  2 files changed, 29 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index cd7e5519ee7d..09e734e54032 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -559,6 +559,29 @@ static int i915_dmc_info(struct seq_file *m, void *unused)
>  	return 0;
>  }
>  
> +static int i915_pm_req_res_info(struct seq_file *m, void *unused)
> +{
> +        struct drm_i915_private *dev_priv = node_to_i915(m->private);
> +        struct intel_csr *csr = &dev_priv->csr;
> +
> +        if (!HAS_CSR(dev_priv))
> +                return -ENODEV;
> +
> +        if (!csr->dmc_payload)
> +                return 0;
> +
> +        seq_printf(m, "PM debug request 0 (0x45284) : 0x%x\n",
> +                        intel_de_read(dev_priv, PM_REQ_DBG_0));
> +        seq_printf(m, "PM debug request 1 (0x45288) : 0x%x\n",
> +                        intel_de_read(dev_priv, PM_REQ_DBG_1));
> +        seq_printf(m, "PM debug response 0 (0x4528C) : 0x%x\n",
> +                        intel_de_read(dev_priv, PM_RSP_DBG_0));
> +        seq_printf(m, "PM debug response 1 (0x45290) : 0x%x\n",
> +                        intel_de_read(dev_priv, PM_RSP_DBG_1));

IMO there is no point in providing a debugfs interface for reading and
dumping platform specific registers. Instead, you should provide a more
generic interface that parses the relevant information. Look at *all*
the other register reads in the i915_debugfs.c file. None of them output
the registers as-is.

BR,
Jani.

> +
> +        return 0;
> +}
> +
>  static void intel_seq_print_mode(struct seq_file *m, int tabs,
>  				 const struct drm_display_mode *mode)
>  {
> @@ -2100,6 +2123,7 @@ static const struct drm_info_list intel_display_debugfs_list[] = {
>  	{"i915_edp_psr_status", i915_edp_psr_status, 0},
>  	{"i915_power_domain_info", i915_power_domain_info, 0},
>  	{"i915_dmc_info", i915_dmc_info, 0},
> +	{"i915_pm_req_res_info", i915_pm_req_res_info, 0},
>  	{"i915_display_info", i915_display_info, 0},
>  	{"i915_shared_dplls_info", i915_shared_dplls_info, 0},
>  	{"i915_dp_mst_info", i915_dp_mst_info, 0},
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 0023c023f472..b477a1f7b1bd 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -371,6 +371,11 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>  #define VLV_G3DCTL		_MMIO(0x9024)
>  #define VLV_GSCKGCTL		_MMIO(0x9028)
>  
> +#define PM_REQ_DBG_0		_MMIO(0x45284)
> +#define PM_REQ_DBG_1 		_MMIO(0x45288)
> +#define PM_RSP_DBG_0 		_MMIO(0x4528C)
> +#define PM_RSP_DBG_1 		_MMIO(0x45290)
> +
>  #define GEN6_MBCTL		_MMIO(0x0907c)
>  #define   GEN6_MBCTL_ENABLE_BOOT_FETCH	(1 << 4)
>  #define   GEN6_MBCTL_CTX_FETCH_NEEDED	(1 << 3)

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
