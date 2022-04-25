Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B3E50DCEB
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Apr 2022 11:39:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B82CC10E09B;
	Mon, 25 Apr 2022 09:39:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D2A810E091
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Apr 2022 09:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650879587; x=1682415587;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=5nUrszli+nwLMqqPirsMVeN/b8o0v1z9aaNqV6CSPbc=;
 b=EmYAD2ir6wEMZKKt23P6eFDE9rT38SMQpVWJarMasUBjyOsj4aZlbwLY
 msEnX6MoBSQlAI0vNrcW8GaTKADZs+ixkzIpgukZyORsVMDOHFXJdexpo
 nX+IPUMb0FGFY653R6JWDN8J6EDczulHNinI7sgtUxEDD7nYG5rtNA2zU
 ZhWwf3xWYgkiAaKaGpLbWhGlggSTaaohYtCjxQWCKmOONtVemrpWPpG42
 GGoGJmevaEULtfG7fXqvwx+eVMEwxb+8IdN456QdoiUbRNmwd84R364xP
 fFRQ+jDpgB/FtnXov+X0Yk2iSW85VO8FQ2w+wazppmR/kR2ehKfKZb+Jf Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10327"; a="351645513"
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="351645513"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 02:39:46 -0700
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="729646875"
Received: from lpawlock-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.2.162])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 02:39:44 -0700
Date: Mon, 25 Apr 2022 11:39:42 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YmZsXryrZ91inEDD@kamilkon-DESK1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 intel-gfx@lists.freedesktop.org,
 Ashutosh Dixit <ashutosh.dixit@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Dale B Stimson <dale.b.stimson@intel.com>
References: <cover.1649871650.git.ashutosh.dixit@intel.com>
 <2a11577139f82f50058a2167404b82fa7c80cb39.1649871650.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <2a11577139f82f50058a2167404b82fa7c80cb39.1649871650.git.ashutosh.dixit@intel.com>
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915/gt: Add media RP0/RPn to
 per-gt sysfs
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
Cc: Dale B Stimson <dale.b.stimson@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ashutosh,

On 2022-04-13 at 11:11:06 -0700, Ashutosh Dixit wrote:
> Retrieve RP0 and RPn freq for media IP from PCODE and display in per-gt
> sysfs. This patch adds the following files to gt/gtN sysfs:
> * media_RP0_freq_mhz
> * media_RPn_freq_mhz
--------- ^
Can we keep it in lowercase ? So it will be like:
media_rp0_freq_mhz
media_rpn_freq_mhz

Or is it merged with capital letters at other sysfs path ?

Regards,
Kamil

> 
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Original-author: Dale B Stimson <dale.b.stimson@intel.com>
> Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 47 +++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h             | 15 +++++++
>  2 files changed, 62 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> index 2b1cd6a01724..2a3398003933 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> @@ -12,6 +12,7 @@
>  #include "i915_sysfs.h"
>  #include "intel_gt.h"
>  #include "intel_gt_regs.h"
> +#include "intel_pcode.h"
>  #include "intel_gt_sysfs.h"
>  #include "intel_gt_sysfs_pm.h"
>  #include "intel_rc6.h"
> @@ -669,13 +670,59 @@ static ssize_t media_freq_factor_store(struct device *dev,
>  	return err ?: count;
>  }
>  
> +static ssize_t media_RP0_freq_mhz_show(struct device *dev,
> +				       struct device_attribute *attr,
> +				       char *buff)
> +{
> +	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(dev, attr->attr.name);
> +	u32 val;
> +	int err;
> +
> +	err = __intel_gt_pcode_read(gt, XEHPSDV_PCODE_FREQUENCY_CONFIG,
> +				    PCODE_MBOX_FC_SC_READ_FUSED_P0,
> +				    PCODE_MBOX_DOMAIN_MEDIAFF, &val);
> +
> +	if (err)
> +		return err;
> +
> +	/* data_out - Fused P0 for domain ID in units of 50 MHz */
> +	val *= GT_FREQUENCY_MULTIPLIER;
> +
> +	return sysfs_emit(buff, "%u\n", val);
> +}
> +
> +static ssize_t media_RPn_freq_mhz_show(struct device *dev,
> +				       struct device_attribute *attr,
> +				       char *buff)
> +{
> +	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(dev, attr->attr.name);
> +	u32 val;
> +	int err;
> +
> +	err = __intel_gt_pcode_read(gt, XEHPSDV_PCODE_FREQUENCY_CONFIG,
> +				    PCODE_MBOX_FC_SC_READ_FUSED_PN,
> +				    PCODE_MBOX_DOMAIN_MEDIAFF, &val);
> +
> +	if (err)
> +		return err;
> +
> +	/* data_out - Fused P0 for domain ID in units of 50 MHz */
> +	val *= GT_FREQUENCY_MULTIPLIER;
> +
> +	return sysfs_emit(buff, "%u\n", val);
> +}
> +
>  static DEVICE_ATTR_RW(media_freq_factor);
>  static struct device_attribute dev_attr_media_freq_factor_scale =
>  	__ATTR(media_freq_factor.scale, 0444, freq_factor_scale_show, NULL);
> +static DEVICE_ATTR_RO(media_RP0_freq_mhz);
> +static DEVICE_ATTR_RO(media_RPn_freq_mhz);
>  
>  static const struct attribute *media_perf_power_attrs[] = {
>  	&dev_attr_media_freq_factor.attr,
>  	&dev_attr_media_freq_factor_scale.attr,
> +	&dev_attr_media_RP0_freq_mhz.attr,
> +	&dev_attr_media_RPn_freq_mhz.attr,
>  	NULL
>  };
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 0d5a4ecd374a..a45a776b2dae 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6753,6 +6753,21 @@
>  #define     DG1_UNCORE_GET_INIT_STATUS		0x0
>  #define     DG1_UNCORE_INIT_STATUS_COMPLETE	0x1
>  #define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
> +#define   XEHPSDV_PCODE_FREQUENCY_CONFIG		0x6e	/* xehpsdv, pvc */
> +/* XEHPSDV_PCODE_FREQUENCY_CONFIG sub-commands (param1) */
> +#define     PCODE_MBOX_FC_SC_READ_FUSED_P0	0x0
> +#define     PCODE_MBOX_FC_SC_READ_FUSED_PN	0x1
> +/* PCODE_MBOX_DOMAIN_* - mailbox domain IDs */
> +/*   XEHPSDV_PCODE_FREQUENCY_CONFIG param2 */
> +#define     PCODE_MBOX_DOMAIN_NONE		0x0
> +#define     PCODE_MBOX_DOMAIN_GT		0x1
> +#define     PCODE_MBOX_DOMAIN_HBM		0x2
> +#define     PCODE_MBOX_DOMAIN_MEDIAFF		0x3
> +#define     PCODE_MBOX_DOMAIN_MEDIA_SAMPLER	0x4
> +#define     PCODE_MBOX_DOMAIN_SYSTOLIC_ARRAY	0x5
> +#define     PCODE_MBOX_DOMAIN_CHIPLET		0x6
> +#define     PCODE_MBOX_DOMAIN_BASE_CHIPLET_LINK	0x7
> +#define     PCODE_MBOX_DOMAIN_BASE		0x8
>  #define GEN6_PCODE_DATA				_MMIO(0x138128)
>  #define   GEN6_PCODE_FREQ_IA_RATIO_SHIFT	8
>  #define   GEN6_PCODE_FREQ_RING_RATIO_SHIFT	16
> -- 
> 2.34.1
> 
