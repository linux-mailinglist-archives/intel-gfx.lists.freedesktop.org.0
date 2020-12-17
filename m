Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E37AA2DCD0E
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Dec 2020 08:49:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B22EF6E187;
	Thu, 17 Dec 2020 07:48:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D601D6E187
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Dec 2020 07:48:57 +0000 (UTC)
Received: from [192.194.81.50] (helo=[192.168.1.190])
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <tjaalton@ubuntu.com>)
 id 1kpo1v-0005bY-H3; Thu, 17 Dec 2020 07:48:55 +0000
To: "20201117142629.28729-1-shawn.c.lee@intel.com"
 <20201117142629.28729-1-shawn.c.lee@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Roper, Matthew D" <matthew.d.roper@intel.com>
References: <20201028144312.12520-1-shawn.c.lee@intel.com>
 <20201117142629.28729-1-shawn.c.lee@intel.com>
 <20201119235117.GY2099117@mdroper-desk1.amr.corp.intel.com>
 <BY5PR11MB43072207412FC3A08BB5D3FAA3FF0@BY5PR11MB4307.namprd11.prod.outlook.com>
From: Timo Aaltonen <tjaalton@ubuntu.com>
Message-ID: <c3097cfd-b2b6-792d-5ed5-d0522102455a@ubuntu.com>
Date: Thu, 17 Dec 2020 09:48:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <BY5PR11MB43072207412FC3A08BB5D3FAA3FF0@BY5PR11MB4307.namprd11.prod.outlook.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915/rkl: new rkl ddc map for
 different PCH
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
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi,

Progress here seems to have stalled, or did I miss something?

On 20.11.2020 4.21, Lee, Shawn C wrote:
> On Thu, Nov. 19, 2020 at 11:51 PM, Matt Roper wrote:
>> On Tue, Nov 17, 2020 at 10:26:29PM +0800, Lee Shawn C wrote:
>>> After boot into kernel. Driver configured ddc pin mapping based on
>>> predefined table in parse_ddi_port(). Now driver configure rkl ddc pin
>>> mapping depends on icp_ddc_pin_map[]. Then this table will give
>>> incorrect gmbus port number to cause HDMI can't work.
>>>
>>> Refer to commit cd0a89527d06 ("drm/i915/rkl: Add DDC pin mapping").
>>> Create two ddc pin table for rkl TGP and CMP pch. Then HDMI can works
>>> properly on rkl.
>>>
>>> v2: update patch based on latest dinq branch.
>>> v3: update ddc table for RKL+TGP sku.
>>>      RKL+CNP sku will load cnp_ddc_pin_map[] setting.
>>> v4: modify the if/else judgment to avoid nesting.
>>> v5: fix typo in v4.
>>>
>>> Cc: Matt Roper <matthew.d.roper@intel.com>
>>> Cc: Aditya Swarup <aditya.swarup@intel.com>
>>> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
>>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>>> Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2577
>>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>>
>> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>>
>> Do you plan to follow up with a separate patch to fix the CMP handling in rkl_port_to_ddc_pin that I mentioned previously?  I want to make sure that part doesn't fall through the cracks.
>>
> 
> Do you mean the modification like this in rkl_port_to_ddc_pin()? If so, I will commit a separate patch to fix it later.
> 
> return GMBUS_PIN_1_BXT + phy - 1;
> 
> Best regards,
> Shawn
> 
>>
>> Matt
>>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_bios.c     | 10 ++++++++++
>>>   drivers/gpu/drm/i915/display/intel_vbt_defs.h |  2 ++
>>>   2 files changed, 12 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
>>> b/drivers/gpu/drm/i915/display/intel_bios.c
>>> index 4cc949b228f2..cf2fba490b7b 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>>> @@ -1623,6 +1623,13 @@ static const u8 icp_ddc_pin_map[] = {
>>>   	[TGL_DDC_BUS_PORT_6] = GMBUS_PIN_14_TC6_TGP,  };
>>>   
>>> +static const u8 rkl_pch_tgp_ddc_pin_map[] = {
>>> +	[ICL_DDC_BUS_DDI_A] = GMBUS_PIN_1_BXT,
>>> +	[ICL_DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
>>> +	[RKL_DDC_BUS_DDI_D] = GMBUS_PIN_9_TC1_ICP,
>>> +	[RKL_DDC_BUS_DDI_E] = GMBUS_PIN_10_TC2_ICP, };
>>> +
>>>   static u8 map_ddc_pin(struct drm_i915_private *dev_priv, u8 vbt_pin)
>>> {
>>>   	const u8 *ddc_pin_map;
>>> @@ -1630,6 +1637,9 @@ static u8 map_ddc_pin(struct drm_i915_private
>>> *dev_priv, u8 vbt_pin)
>>>   
>>>   	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1) {
>>>   		return vbt_pin;
>>> +	} else if (IS_ROCKETLAKE(dev_priv) && INTEL_PCH_TYPE(dev_priv) == PCH_TGP) {
>>> +		ddc_pin_map = rkl_pch_tgp_ddc_pin_map;
>>> +		n_entries = ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
>>>   	} else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP) {
>>>   		ddc_pin_map = icp_ddc_pin_map;
>>>   		n_entries = ARRAY_SIZE(icp_ddc_pin_map); diff --git
>>> a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>>> b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>>> index 49b4b5fca941..187ec573de59 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>>> @@ -319,6 +319,8 @@ enum vbt_gmbus_ddi {
>>>   	ICL_DDC_BUS_DDI_A = 0x1,
>>>   	ICL_DDC_BUS_DDI_B,
>>>   	TGL_DDC_BUS_DDI_C,
>>> +	RKL_DDC_BUS_DDI_D = 0x3,
>>> +	RKL_DDC_BUS_DDI_E,
>>>   	ICL_DDC_BUS_PORT_1 = 0x4,
>>>   	ICL_DDC_BUS_PORT_2,
>>>   	ICL_DDC_BUS_PORT_3,
>>> --
>>> 2.17.1
>>>
>>
>> -- 
>> Matt Roper
>> Graphics Software Engineer
>> VTT-OSGC Platform Enablement
>> Intel Corporation
>> (916) 356-2795
>>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> 


-- 
t
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
