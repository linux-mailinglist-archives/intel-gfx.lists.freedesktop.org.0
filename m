Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D172EA4AF
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 06:19:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 600C289D61;
	Tue,  5 Jan 2021 05:19:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F81E89D61
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 05:19:38 +0000 (UTC)
IronPort-SDR: OEYnPO/wYwE7KH3bVXEeTqWy+kzbxngZmopJ84jvS0i5pMqo5LUbnUo3W1QpF7amnewalsU/KW
 LPHgBgFORoUg==
X-IronPort-AV: E=McAfee;i="6000,8403,9854"; a="177154439"
X-IronPort-AV: E=Sophos;i="5.78,476,1599548400"; d="scan'208";a="177154439"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2021 21:19:37 -0800
IronPort-SDR: lri7wnpgDymNDDMXj2Xj8cG8s5OwKvKipPIgtY4WiPzbkYZEiwcli9DKhzWKIamwmeF2fRA63d
 f9Enka0EaQvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,476,1599548400"; d="scan'208";a="421639482"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by orsmga001.jf.intel.com with ESMTP; 04 Jan 2021 21:19:35 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 5 Jan 2021 05:19:35 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Tue, 5 Jan 2021 10:49:34 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "S, Saichandana" <saichandana.s@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915/debugfs : PM_REQ and PM_RES registers
Thread-Index: AQHW4oS27rXpqH8mW0GDsFZSePBJQKoYff+Q
Date: Tue, 5 Jan 2021 05:19:34 +0000
Message-ID: <f6bf3d48f8ab42d7833aaeed2de1c94f@intel.com>
References: <20210104103036.1443-1-saichandana.s@intel.com>
In-Reply-To: <20210104103036.1443-1-saichandana.s@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/debugfs : PM_REQ and PM_RES
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
> Sent: Monday, January 4, 2021 4:01 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: S, Saichandana <saichandana.s@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>; Gupta, Anshuman <anshuman.gupta@intel.com>
> Subject: [PATCH v2] drm/i915/debugfs : PM_REQ and PM_RES registers
> 
> From: Saichandana <saichandana.s@intel.com>
> 
> PM_REQ register provides the value of the last PM request from PCU to
> Display Engine.PM_RES register provides the value of the last PM response
> from Display Engine to PCU.This debugfs will be used by
> DC9 IGT test to know about "DC9 Ready" status.
> 
> B.Spec : 49501, 49502
Please mention here the review comment u had fixed.
So it will be easy for review.
V2:
Added a functional print to debugs. [Keep name of Reviewer]
> 
> Signed-off-by: Saichandana <saichandana.s@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 30
> +++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h               |  8 +++++
>  2 files changed, 38 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index cd7e5519ee7d..551fb1a90bb3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -559,6 +559,36 @@ static int i915_dmc_info(struct seq_file *m, void
> *unused)
>  	return 0;
>  }
> 
> +static int i915_pm_req_res_info(struct seq_file *m, void *unused) {
> +	struct drm_i915_private *dev_priv = node_to_i915(m->private);
> +	struct intel_csr *csr = &dev_priv->csr;
> +	const char *status;
> +
> +	if (!HAS_CSR(dev_priv))
> +		return -ENODEV;
> +	if (!csr->dmc_payload)
> +		return 0;
> +	seq_printf(m, "PM debug request 0 (0x45284): 0x%08x\n",
> +		   intel_de_read(dev_priv, PM_REQ_DBG_0));
> +	seq_printf(m, "PM debug request 1 (0x45288): 0x%08x\n",
> +		   intel_de_read(dev_priv, PM_REQ_DBG_1));
> +	seq_printf(m, "PM debug response 0 (0x4528C): 0x%08x\n",
> +		   intel_de_read(dev_priv, PM_RSP_DBG_0));
> +	seq_printf(m, "PM debug response 1 (0x45290): 0x%08x\n",
> +		   intel_de_read(dev_priv, PM_RSP_DBG_1));
> +	status = (intel_de_read(dev_priv, PM_RSP_DBG_1) &
> MASK_DC9_BIT) ?
> +"yes" : "no";
You don't need to read the value of register again , please store in a variable
And use that value.
Thanks,
Anshuman Gupta.
> +
> +	seq_printf(m, "Time to Next Fill = 0x%0x\n",
> +		   (intel_de_read(dev_priv, PM_RSP_DBG_0) &
> ~MASK_RSP_0));
> +	seq_printf(m, "Time to Next VBI = 0x%0x\n",
> +		   ((intel_de_read(dev_priv, PM_RSP_DBG_0) &
> MASK_RSP_0)) >> 16);
> +	seq_printf(m, "Selective Exit Latency = 0x%0x\n",
> +		   (intel_de_read(dev_priv, PM_RSP_DBG_1) &
> MASK_RSP_1));
> +	seq_printf(m, "DC9 Ready = %s\n", status);
> +	return 0;
> +}
> +
>  static void intel_seq_print_mode(struct seq_file *m, int tabs,
>  				 const struct drm_display_mode *mode)  {
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h index 0023c023f472..3e9ed555f928
> 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -371,6 +371,14 @@ static inline bool
> i915_mmio_reg_valid(i915_reg_t reg)
>  #define VLV_G3DCTL		_MMIO(0x9024)
>  #define VLV_GSCKGCTL		_MMIO(0x9028)
> 
> +#define PM_REQ_DBG_0		_MMIO(0x45284)
> +#define PM_REQ_DBG_1		_MMIO(0x45288)
> +#define PM_RSP_DBG_0		_MMIO(0x4528C)
> +#define PM_RSP_DBG_1		_MMIO(0x45290)
> +#define MASK_RSP_0		(0xFFFF << 16)
> +#define MASK_RSP_1		(7 << 0)
> +#define MASK_DC9_BIT		(1 << 17)
> +
>  #define GEN6_MBCTL		_MMIO(0x0907c)
>  #define   GEN6_MBCTL_ENABLE_BOOT_FETCH	(1 << 4)
>  #define   GEN6_MBCTL_CTX_FETCH_NEEDED	(1 << 3)
> --
> 2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
