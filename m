Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA791B06ED
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 12:54:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9C176E29E;
	Mon, 20 Apr 2020 10:54:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52BE66E29E
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 10:54:27 +0000 (UTC)
IronPort-SDR: gF00klaOtHP1GxZalHw4APMFocAMVU4+ejg+gmC085R4Z4lCYd1z+VtgkumvWHpfX2NDUGEn09
 EqWExcvApJgA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 03:54:26 -0700
IronPort-SDR: LH8GDeJH+ZjKCwlQ9kA5i+HPXUKBwMqj9meKDyFR1pbdHfN5r4WNvYwsVLVsWMJuaX+mCoC23p
 9O8qka9GBaZw==
X-IronPort-AV: E=Sophos;i="5.72,406,1580803200"; d="scan'208";a="429079272"
Received: from amanna-mobl1.gar.corp.intel.com (HELO [10.213.70.225])
 ([10.213.70.225])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 03:54:25 -0700
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200417172835.15461-1-anshuman.gupta@intel.com>
From: "Manna, Animesh" <animesh.manna@intel.com>
Message-ID: <607794c7-3ed7-5842-02b8-9ce30b407b07@intel.com>
Date: Mon, 20 Apr 2020 16:24:20 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200417172835.15461-1-anshuman.gupta@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add ICL PG3 PW ID for EHL
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 17-04-2020 22:58, Anshuman Gupta wrote:
> Gen11 onwards PG3 contains functions for pipe B,
> external displays, and VGA. Add missing ICL_DISP_PW_3
> for ehl_power_wells.
>
> Cc: Animesh Manna <animesh.manna@intel.com>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1737
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>

Looks ok to me.
Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 1d01c79fb9db..e9ced41fe7e3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -3804,7 +3804,7 @@ static const struct i915_power_well_desc ehl_power_wells[] = {
>   		.name = "power well 3",
>   		.domains = ICL_PW_3_POWER_DOMAINS,
>   		.ops = &hsw_power_well_ops,
> -		.id = DISP_PW_ID_NONE,
> +		.id = ICL_DISP_PW_3,
>   		{
>   			.hsw.regs = &hsw_power_well_regs,
>   			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
