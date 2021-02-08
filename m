Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5AF3130FA
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 12:36:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00B886E8A0;
	Mon,  8 Feb 2021 11:36:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 998D76E8A0
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 11:36:13 +0000 (UTC)
IronPort-SDR: SSvCRF6n0KXdVnzIUMLRE9xDwzOYVlooaFbtgyXV0hNw6YqMolu6x8N5Zh9g0aqCSAhDmUhbPG
 AdEvEfRk81yA==
X-IronPort-AV: E=McAfee;i="6000,8403,9888"; a="180920880"
X-IronPort-AV: E=Sophos;i="5.81,161,1610438400"; d="scan'208";a="180920880"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 03:36:11 -0800
IronPort-SDR: yHmM/5fEfK5tzVGjK/ApLh+pc0BSUPYIBrMIym1M/2Igl9XNXa2BwoWASwwePiJCgwOtlmwQ+P
 /23ORE11PIpA==
X-IronPort-AV: E=Sophos;i="5.81,161,1610438400"; d="scan'208";a="395352029"
Received: from aknautiy-mobl.gar.corp.intel.com (HELO [10.213.70.150])
 ([10.213.70.150])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 03:36:08 -0800
To: Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org
References: <20210208104338.25023-1-ankit.k.nautiyal@intel.com>
 <20210208105602.25151-1-ankit.k.nautiyal@intel.com>
 <87eehqersm.fsf@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <f486747c-c0d6-1eb4-e937-e5e39b13be7e@intel.com>
Date: Mon, 8 Feb 2021 17:04:53 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <87eehqersm.fsf@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Fix HAS_LSPCON macro for
 platforms between GEN9 and GEN10
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


On 2/8/2021 4:43 PM, Jani Nikula wrote:
> On Mon, 08 Feb 2021, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Legacy LSPCON chip from MCA and Parade is only used for platforms
>> between GEN9 and GEN10. Fixing the HAS_LSPCON macro to reflect the same.
>>
>> v2: Added the missing 'drm/' to subject (Jani N).
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Never mind, I pushed the earlier patch and fixed the prefix while
> applying.
>
> In general, there's no need to resend for tiny edits in commit log that
> can be done while applying.
>
> BR,
> Jani.
>
Noted. Thanks Jani for yet again fixing the patch.

Regards,

Ankit

>> ---
>>   drivers/gpu/drm/i915/i915_drv.h | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>> index 4fc9a8691873..fd04fc434ca6 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -1763,7 +1763,7 @@ tgl_stepping_get(struct drm_i915_private *dev_priv)
>>   
>>   #define HAS_GMCH(dev_priv) (INTEL_INFO(dev_priv)->display.has_gmch)
>>   
>> -#define HAS_LSPCON(dev_priv) (INTEL_GEN(dev_priv) >= 9)
>> +#define HAS_LSPCON(dev_priv) (IS_GEN_RANGE(dev_priv, 9, 10))
>>   
>>   /* DPF == dynamic parity feature */
>>   #define HAS_L3_DPF(dev_priv) (INTEL_INFO(dev_priv)->has_l3_dpf)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
