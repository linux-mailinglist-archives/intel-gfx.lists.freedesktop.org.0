Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DF018ACEC
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 07:39:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 101366E07D;
	Thu, 19 Mar 2020 06:39:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F02F96E07D
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 06:39:23 +0000 (UTC)
IronPort-SDR: fKXqmQ48/4AB+IPvmuBq9tnk+GI1ULna034+5mklHJ68Uy6/ft/Jo149yNOBtf38nMx3YjE2Jp
 uVVH3yE6ObVg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 23:39:22 -0700
IronPort-SDR: WdQg+fXD628UntkVKI9OAe3cmQRru35yXWSrjkgNT9y7JDO0bSo5ssllrTAfVBNFlTfn2y5tLH
 gQK/pArTqrrA==
X-IronPort-AV: E=Sophos;i="5.70,570,1574150400"; d="scan'208";a="391703514"
Received: from amanna-mobl1.gar.corp.intel.com (HELO [10.215.182.55])
 ([10.215.182.55])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 23:39:21 -0700
To: Manasi Navare <manasi.d.navare@intel.com>
References: <20200317001320.GC24231@intel.com>
 <20200318063514.17943-1-animesh.manna@intel.com>
 <20200318200415.GA6198@intel.com>
From: "Manna, Animesh" <animesh.manna@intel.com>
Message-ID: <ce9d15bf-d05b-305b-f94b-7ad6f5092306@intel.com>
Date: Thu, 19 Mar 2020 12:09:18 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200318200415.GA6198@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 6/7] drm/i915/dp: Register definition for
 DP compliance register
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 19-03-2020 01:34, Manasi Navare wrote:
> On Wed, Mar 18, 2020 at 12:05:14PM +0530, Animesh Manna wrote:
>> DP_COMP_CTL and DP_COMP_PAT register used to program DP
>> compliance pattern.
>>
>> v1: Initial patch.
>> v2: used pipe instead of port in macro definition. [Manasi]
>> v3: used trans_offset for offset calculation. [Manasi]
>>
>> Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
>> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
>> ---
>>   drivers/gpu/drm/i915/i915_reg.h | 16 ++++++++++++++++
>>   1 file changed, 16 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>> index 309cb7d96b35..8b6c9fbfe74b 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -9792,6 +9792,22 @@ enum skl_power_gate {
>>   #define  DDI_BUF_BALANCE_LEG_ENABLE	(1 << 31)
>>   #define DDI_BUF_TRANS_HI(port, i)	_MMIO(_PORT(port, _DDI_BUF_TRANS_A, _DDI_BUF_TRANS_B) + (i) * 8 + 4)
>>   
>> +/* DDI DP Compliance Control */
>> +#define _DDI_DP_COMP_CTL_A			0x605F0
>> +#define DDI_DP_COMP_CTL(pipe)			_MMIO_TRANS2(pipe, _DDI_DP_COMP_CTL_A)
> Any reason why you couldnt use _MMIO_PIPE2 ?

As DP_COMP_CTL is part of transcoder register group, so I choose _MMIO_TRANS2 for calculation. Yes _MMIO_PIPE2 will also work as the offset difference between subsequent pipe is same (0x1000).
If the offset difference of subsequent transcoder register is different from the difference of subsequent pipe register we may have issue that time.

>
>> +#define   DDI_DP_COMP_CTL_ENABLE		(1 << 31)
>> +#define   DDI_DP_COMP_CTL_D10_2			(0 << 28)
>> +#define   DDI_DP_COMP_CTL_SCRAMBLED_0		(1 << 28)
>> +#define   DDI_DP_COMP_CTL_PRBS7			(2 << 28)
>> +#define   DDI_DP_COMP_CTL_CUSTOM80		(3 << 28)
>> +#define   DDI_DP_COMP_CTL_HBR2			(4 << 28)
>> +#define   DDI_DP_COMP_CTL_SCRAMBLED_1		(5 << 28)
>> +#define   DDI_DP_COMP_CTL_HBR2_RESET		(0xFC << 0)
>> +
>> +/* DDI DP Compliance Pattern */
>> +#define _DDI_DP_COMP_PAT_A			0x605F4
>> +#define DDI_DP_COMP_PAT(pipe, i)		_MMIO(_TRANS2(pipe, _DDI_DP_COMP_PAT_A) + (i) * 4)
> Why cant you use a simple _MMIO_PIPE2(pipe,  _DDI_DP_COMP_PAT_A) ?
> The offsets are same as the DP_COMP_CTL

Here extra parameter "i" needed for 80 bit custom pattern & as mentioned above DDI_DP_COMP_PAT is also part of transcoder register group,
so used _TRANS2 macro to calculate the offset then convert into mmio_reg.

Regards,
Animesh

>
> Manasi
>
>> +
>>   /* Sideband Interface (SBI) is programmed indirectly, via
>>    * SBI_ADDR, which contains the register offset; and SBI_DATA,
>>    * which contains the payload */
>> -- 
>> 2.24.0
>>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
