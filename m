Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B26644BF7A1
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 13:01:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED20010E248;
	Tue, 22 Feb 2022 12:01:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D84D010E248
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 12:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645531315; x=1677067315;
 h=message-id:date:mime-version:subject:from:to:cc:
 references:in-reply-to:content-transfer-encoding;
 bh=mEp2GKgi2bSZueQN5L0uI0ngeEbOZdBY+1QD5aXMlbM=;
 b=kABWCpPr97iuQkXBygemRqb9/7PsyUGpmPXzLITDFs4vvMboT3mX3dEf
 pUSzFSMqFuuJWf0Uc0lZ421Vi22N+WpN4L6yjln0v11B8U8KpfLlkpQch
 IksD19rpGc7m8qKVidpmshs9wsA9POm+KXORje4UNKQ806jROUg5K5bDQ
 wwukPFJkPYc94aJyoJD4tJNEr5r2Twy832sVu5Jefbu96DfoGta+Mhzia
 QBeLnM0NaI5qxNUM2YhjzW0nU727O12RO3YBa+oGTJTOYYbPGyttX5Yr0
 U9fDvsMZEb9duS0y8TfZzAdkvv+rFtDAgJ8Q4xcovWfP23+IpnfpOu883 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="239086872"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="239086872"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 04:01:54 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="507959769"
Received: from sjgillin-mobl.ger.corp.intel.com (HELO [10.213.218.63])
 ([10.213.218.63])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 04:01:53 -0800
Message-ID: <61d4ed2f-86a0-8fad-ab50-735b8404a82f@linux.intel.com>
Date: Tue, 22 Feb 2022 12:01:50 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220221191031.267690-1-jose.souza@intel.com>
 <3c58aae6-337b-3ee5-1595-bc7a84242965@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <3c58aae6-337b-3ee5-1595-bc7a84242965@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Simply subplatform detection
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
Cc: Fred Gao <fred.gao@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 22/02/2022 08:27, Tvrtko Ursulin wrote:
> On 21/02/2022 19:10, José Roberto de Souza wrote:
>> In the past we had a need to differentiate TGL U and TGL Y, there
>> was a different voltage swing table for each subplatform and some PCI
>> ids of this subplatforms are shared but it turned out that it was a
>> specification mistake and the voltage swing table was indeed the same
>> but we went ahead with that patch because we needed to differentiate
>> TGL U and Y from TGL H and by that time TGL H was embargoed so that
>> was the perfect way to land it upstream.
>>
>> Now the embargo for TGL H is long past and now we even have
>> INTEL_TGL_12_GT1_IDS with all TGL H ids, so we can drop this PCI root
>> check and only rely in the PCI ids to differentiate TGL U and Y from
>> TGL H that actually has code differences.
>>
>> Besides the simplification this will fix issues in virtualization
>> environments where the PCI root is virtualized and don't have the same
>> id as actual hardware.
>>
>> Cc: Fred Gao <fred.gao@intel.com>
>> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
>> ---
>>   .../drm/i915/display/intel_ddi_buf_trans.c    |  2 +-
>>   drivers/gpu/drm/i915/i915_drv.h               |  9 +++------
>>   drivers/gpu/drm/i915/i915_reg.h               |  6 ------
>>   drivers/gpu/drm/i915/intel_device_info.c      | 20 +------------------
>>   drivers/gpu/drm/i915/intel_step.c             |  2 +-
>>   5 files changed, 6 insertions(+), 33 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c 
>> b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>> index 0c32210bf5031..934a9f9e7dabb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>> @@ -1321,7 +1321,7 @@ tgl_get_combo_buf_trans_dp(struct intel_encoder 
>> *encoder,
>>       struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>       if (crtc_state->port_clock > 270000) {
>> -        if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv)) {
>> +        if (IS_TGL_UY(dev_priv)) {
>>               return intel_get_buf_trans(&tgl_uy_combo_phy_trans_dp_hbr2,
>>                              n_entries);
>>           } else {
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h 
>> b/drivers/gpu/drm/i915/i915_drv.h
>> index 1c2f4ae4ebf98..c5eb2a3a1a590 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -1147,12 +1147,9 @@ IS_SUBPLATFORM(const struct drm_i915_private 
>> *i915,
>>   #define IS_ICL_WITH_PORT_F(dev_priv) \
>>       IS_SUBPLATFORM(dev_priv, INTEL_ICELAKE, INTEL_SUBPLATFORM_PORTF)
>> -#define IS_TGL_U(dev_priv) \
>> +#define IS_TGL_UY(dev_priv) \
>>       IS_SUBPLATFORM(dev_priv, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_ULT)
>> -#define IS_TGL_Y(dev_priv) \
>> -    IS_SUBPLATFORM(dev_priv, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_ULX)
>> -
>>   #define IS_SKL_GRAPHICS_STEP(p, since, until) (IS_SKYLAKE(p) && 
>> IS_GRAPHICS_STEP(p, since, until))
>>   #define IS_KBL_GRAPHICS_STEP(dev_priv, since, until) \
>> @@ -1170,11 +1167,11 @@ IS_SUBPLATFORM(const struct drm_i915_private 
>> *i915,
>>        IS_DISPLAY_STEP(__i915, since, until))
>>   #define IS_TGL_UY_GRAPHICS_STEP(__i915, since, until) \
>> -    ((IS_TGL_U(__i915) || IS_TGL_Y(__i915)) && \
>> +    (IS_TGL_UY(__i915) && \
>>        IS_GRAPHICS_STEP(__i915, since, until))
>>   #define IS_TGL_GRAPHICS_STEP(__i915, since, until) \
>> -    (IS_TIGERLAKE(__i915) && !(IS_TGL_U(__i915) || IS_TGL_Y(__i915)) 
>> && \
>> +    (IS_TIGERLAKE(__i915) && !IS_TGL_UY(__i915)) && \
>>        IS_GRAPHICS_STEP(__i915, since, until))
>>   #define IS_RKL_DISPLAY_STEP(p, since, until) \
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h 
>> b/drivers/gpu/drm/i915/i915_reg.h
>> index 2b8a3086ed35a..30aa1d99f2244 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -8823,12 +8823,6 @@ enum skl_power_gate {
>>   #define   DSB_ENABLE            (1 << 31)
>>   #define   DSB_STATUS            (1 << 0)
>> -#define TGL_ROOT_DEVICE_ID        0x9A00
>> -#define TGL_ROOT_DEVICE_MASK        0xFF00
>> -#define TGL_ROOT_DEVICE_SKU_MASK    0xF
>> -#define TGL_ROOT_DEVICE_SKU_ULX        0x2
>> -#define TGL_ROOT_DEVICE_SKU_ULT        0x4
>> -
>>   #define CLKREQ_POLICY            _MMIO(0x101038)
>>   #define  CLKREQ_POLICY_MEM_UP_OVRD    REG_BIT(1)
>> diff --git a/drivers/gpu/drm/i915/intel_device_info.c 
>> b/drivers/gpu/drm/i915/intel_device_info.c
>> index ae13bc3c7970e..4329828b0db25 100644
>> --- a/drivers/gpu/drm/i915/intel_device_info.c
>> +++ b/drivers/gpu/drm/i915/intel_device_info.c
>> @@ -149,6 +149,7 @@ static const u16 subplatform_ult_ids[] = {
>>       INTEL_WHL_U_GT3_IDS(0),
>>       INTEL_CML_U_GT1_IDS(0),
>>       INTEL_CML_U_GT2_IDS(0),
>> +    INTEL_TGL_12_GT2_IDS(0),
>>   };
>>   static const u16 subplatform_ulx_ids[] = {
>> @@ -243,25 +244,6 @@ void intel_device_info_subplatform_init(struct 
>> drm_i915_private *i915)
>>           mask = BIT(INTEL_SUBPLATFORM_G12);
>>       }
>> -    if (IS_TIGERLAKE(i915)) {
>> -        struct pci_dev *root, *pdev = to_pci_dev(i915->drm.dev);
>> -
>> -        root = list_first_entry(&pdev->bus->devices, typeof(*root), 
>> bus_list);
>> -
>> -        drm_WARN_ON(&i915->drm, mask);
>> -        drm_WARN_ON(&i915->drm, (root->device & TGL_ROOT_DEVICE_MASK) !=
>> -                TGL_ROOT_DEVICE_ID);
>> -
>> -        switch (root->device & TGL_ROOT_DEVICE_SKU_MASK) {
>> -        case TGL_ROOT_DEVICE_SKU_ULX:
>> -            mask = BIT(INTEL_SUBPLATFORM_ULX);
>> -            break;
>> -        case TGL_ROOT_DEVICE_SKU_ULT:
>> -            mask = BIT(INTEL_SUBPLATFORM_ULT);
>> -            break;
>> -        }
>> -    }
> 
> Hmm 1d3cc7ab2b00 ("drm/i915/tgl: Set subplatforms") should have declared 
> it was using the subtplatform bits. Now I suggest you add this to 
> intel_device_info.h for documentation purposes:
> 
> /* TGL */
> #define INTEL_SUBPLATFORM_ULT   (0)

Should have wrote INTEL_SUBPLATFORM_UY to match the naming of new macros 
from this patch.

Regards,

Tvrtko

> 
> Regards,
> 
> Tvrtko
> 
>> -
>>       GEM_BUG_ON(mask & ~INTEL_SUBPLATFORM_MASK);
>>       RUNTIME_INFO(i915)->platform_mask[pi] |= mask;
>> diff --git a/drivers/gpu/drm/i915/intel_step.c 
>> b/drivers/gpu/drm/i915/intel_step.c
>> index ac1a796b28084..4fd69ecd14811 100644
>> --- a/drivers/gpu/drm/i915/intel_step.c
>> +++ b/drivers/gpu/drm/i915/intel_step.c
>> @@ -165,7 +165,7 @@ void intel_step_init(struct drm_i915_private *i915)
>>       } else if (IS_ROCKETLAKE(i915)) {
>>           revids = rkl_revids;
>>           size = ARRAY_SIZE(rkl_revids);
>> -    } else if (IS_TGL_U(i915) || IS_TGL_Y(i915)) {
>> +    } else if (IS_TGL_UY(i915)) {
>>           revids = tgl_uy_revids;
>>           size = ARRAY_SIZE(tgl_uy_revids);
>>       } else if (IS_TIGERLAKE(i915)) {
