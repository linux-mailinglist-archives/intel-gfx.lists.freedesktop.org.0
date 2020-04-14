Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9E91A7F8B
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 16:22:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8342891FA;
	Tue, 14 Apr 2020 14:22:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42E8D891FA
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 14:22:14 +0000 (UTC)
IronPort-SDR: K9q1hkdBO0lnChE3KKBBJ8gMIV567lJmwZJq3+OM/VQsKn1Geufl/lK8joIWu4G4NmctjdNu7Y
 JZpNxNlAITwg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 07:22:13 -0700
IronPort-SDR: mjivkPebTBFTOkSPwxdDYde9vEM0/P0maz+/T0OBoiHXVUfsZueDoDS4Q9vm9RT4lXkZL3h3Kz
 cgB+xc7nTu7g==
X-IronPort-AV: E=Sophos;i="5.72,382,1580803200"; d="scan'208";a="427075948"
Received: from amanna-mobl1.gar.corp.intel.com (HELO [10.215.132.4])
 ([10.215.132.4])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 07:22:12 -0700
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200409060646.30817-1-anshuman.gupta@intel.com>
 <20200409060646.30817-2-anshuman.gupta@intel.com>
From: "Manna, Animesh" <animesh.manna@intel.com>
Message-ID: <02393d9d-d04a-4565-a60a-ec4498673d23@intel.com>
Date: Tue, 14 Apr 2020 19:52:07 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200409060646.30817-2-anshuman.gupta@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 1/4] drm/i915: Power well id for ICL PG3
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
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 09-04-2020 11:36, Anshuman Gupta wrote:
> Gen11 onwards PG3 is contains functions for pipe B,
> external displays, and VGA. It make sense to add
> a power well id with name ICL_DISP_PW_3 rather then
> TGL_DISP_PW_3, Also PG3 power well id requires to
> know if lpsp is enabled.
>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>

Looks good to me.
Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_display_power.c | 6 +++---
>   drivers/gpu/drm/i915/display/intel_display_power.h | 2 +-
>   2 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 433e5a81dd4d..3672c00be94a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -943,7 +943,7 @@ static void assert_can_enable_dc5(struct drm_i915_private *dev_priv)
>   
>   	/* Power wells at this level and above must be disabled for DC5 entry */
>   	if (INTEL_GEN(dev_priv) >= 12)
> -		high_pg = TGL_DISP_PW_3;
> +		high_pg = ICL_DISP_PW_3;
>   	else
>   		high_pg = SKL_DISP_PW_2;
>   
> @@ -3571,7 +3571,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
>   		.name = "power well 3",
>   		.domains = ICL_PW_3_POWER_DOMAINS,
>   		.ops = &hsw_power_well_ops,
> -		.id = DISP_PW_ID_NONE,
> +		.id = ICL_DISP_PW_3,
>   		{
>   			.hsw.regs = &hsw_power_well_regs,
>   			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
> @@ -3949,7 +3949,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
>   		.name = "power well 3",
>   		.domains = TGL_PW_3_POWER_DOMAINS,
>   		.ops = &hsw_power_well_ops,
> -		.id = TGL_DISP_PW_3,
> +		.id = ICL_DISP_PW_3,
>   		{
>   			.hsw.regs = &hsw_power_well_regs,
>   			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index da64a5edae7a..56cbae6327b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -100,7 +100,7 @@ enum i915_power_well_id {
>   	SKL_DISP_PW_MISC_IO,
>   	SKL_DISP_PW_1,
>   	SKL_DISP_PW_2,
> -	TGL_DISP_PW_3,
> +	ICL_DISP_PW_3,
>   	SKL_DISP_DC_OFF,
>   };
>   
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
