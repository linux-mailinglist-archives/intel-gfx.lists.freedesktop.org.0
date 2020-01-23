Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC61147123
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 19:50:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA7BD6E10D;
	Thu, 23 Jan 2020 18:50:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F5886E10D
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 18:50:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 10:43:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,354,1574150400"; d="scan'208";a="228091509"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga003.jf.intel.com with ESMTP; 23 Jan 2020 10:43:41 -0800
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.138])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 00NIheYQ002080; Thu, 23 Jan 2020 18:43:40 GMT
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>,
 "Ye, Tony" <tony.ye@intel.com>
References: <20200122194825.101240-1-michal.wajdeczko@intel.com>
 <67edac14-e319-a1b2-76a1-1404ca5836e2@intel.com>
 <157979173710.19995.3438477214193047615@skylake-alporthouse-com>
 <op.0euq22k9xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <2f7cc5aa-026f-c710-fc98-383d455d3b01@intel.com>
Date: Thu, 23 Jan 2020 19:43:40 +0100
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.0euzm2zsxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <2f7cc5aa-026f-c710-fc98-383d455d3b01@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/huc: Fix error reported by
 I915_PARAM_HUC_STATUS
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
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 23 Jan 2020 19:26:58 +0100, Ye, Tony <tony.ye@intel.com> wrote:

>
>
> On 1/23/2020 7:38 AM, Michal Wajdeczko wrote:
>> On Thu, 23 Jan 2020 16:02:17 +0100, Chris Wilson  
>> <chris@chris-wilson.co.uk> wrote:
>>
>>> Quoting Daniele Ceraolo Spurio (2020-01-22 23:52:33)
>>>>
>>>>
>>>> On 1/22/20 11:48 AM, Michal Wajdeczko wrote:
>>>> >  From commit 84b1ca2f0e68 ("drm/i915/uc: prefer intel_gt over i915
>>>> > in GuC/HuC paths") we stopped using HUC_STATUS error -ENODEV only
>>>> > to indicate lack of HuC hardware and we started to use this error
>>>> > also for all other cases when HuC was not in use or supported.
>>>> >
>>>> > Fix that by relying again on HAS_GT_UC macro, since currently
>>>> > used function intel_huc_is_supported() is based on HuC firmware
>>>> > support which could be unsupported also due to force disabled
>>>> > GuC firmware.
>>>> >
>>>> > Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
>>>> > Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>>>> > Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
>>>> > Cc: Tony Ye <tony.ye@intel.com>
>>>>
>>>> Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>>>
>>> Once upon a time did you (Michal) not argue we should indicate the lack
>>> of firmware in the error code? Something like
>>>
>>> if (!HAS_GT_UC(gt->i915))
>>>     return -ENODEV;
>>>
>>> if (!intel_huc_is_supported(huc))
>>>     return -ENOEXEC;
>>  Yes, we discussed this here [1] together with [2] but we didn't
>> conclude our discussion due to different opinions on how represent
>> some states, in particular "manually disabled" state.
>>  In this patch I just wanted to restore old notation.
>>  But we can start new discussion, here is summary:
>>  ------------------+----------+----------+----------
>>   HuC state        | today*   | option A | option B
>> ------------------+----------+----------+----------
>> no HuC hardware   | -ENODEV  | -ENODEV  | -ENODEV
>> GuC fw disabled   |   0      |     0    | -EOPNOTSUPP
>> HuC fw disabled   |   0      |     0    | -EOPNOTSUPP
>> HuC fw missing    |   0      | -ENOPKG  | -ENOEXEC
>> HuC fw error      |   0      | -ENOEXEC | -ENOEXEC
>> HuC fw fail       |   0      | -EACCES  |    0
>
> What is the difference of HuC fw error and HuC fw fail here?

see corresponding internal fw status codes:

	INTEL_UC_FIRMWARE_ERROR, /* invalid format or version */
	INTEL_UC_FIRMWARE_FAIL, /* failed to xfer or init/auth the fw */

>
> Regards,
> Tony
>
>> HuC authenticated |   1      |     1    |    1
>> ------------------+----------+----------+----------
>>  Note that all above should be compatible with media driver,
>> which explicitly looks for no error and value 1
>>  Michal
>>  [1] https://patchwork.freedesktop.org/patch/306419/?series=61001&rev=1
>> [2] https://patchwork.freedesktop.org/series/60800/#rev1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
