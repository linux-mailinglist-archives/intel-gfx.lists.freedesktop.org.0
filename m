Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 454E2197C84
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 15:11:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9770D89FF9;
	Mon, 30 Mar 2020 13:11:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3354C89FF9
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 13:11:32 +0000 (UTC)
IronPort-SDR: ebn2bT3v4BpQyaKkBSKBA8Hr6Ft8tYBqnp/ZG8Lo6vpgT+AiCyxJM1qrJVfJaMX1y9kcWNx4zh
 dZhJgAPaEP5w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 06:11:31 -0700
IronPort-SDR: wKhTQzqmyBNHEiaUaCPEKMuC/ZK5SDsjcJDqGX1QwDwUuXtLSphPprkjkkhoOE6rgql99u35XX
 0GIilqs/5SDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,324,1580803200"; d="scan'208";a="242024254"
Received: from swarupar-mobl.gar.corp.intel.com (HELO [10.249.36.112])
 ([10.249.36.112])
 by orsmga008.jf.intel.com with ESMTP; 30 Mar 2020 06:11:29 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200327103209.3099292-1-lionel.g.landwerlin@intel.com>
 <20200327103209.3099292-2-lionel.g.landwerlin@intel.com>
 <158530560250.19268.45847609565708891@build.alporthouse.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <8e141e98-b6af-aedb-d2e7-c55d19f59cfc@intel.com>
Date: Mon, 30 Mar 2020 16:11:28 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <158530560250.19268.45847609565708891@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/perf: break OA config buffer
 object in 2
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

On 27/03/2020 12:40, Chris Wilson wrote:
> Quoting Lionel Landwerlin (2020-03-27 10:32:07)
>> We want to enable performance monitoring on multiple contexts to cover
>> the Iris use case of using 2 GEM contexts (3D & compute).
>>
>> So start by breaking the OA configuration BO which contains global &
>> per context register writes.
>>
>> NOA muxes & OA configurations are global, while FLEXEU register
>> configurations are per context.
>>
>> Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>> ---
>>   drivers/gpu/drm/i915/i915_perf.c | 194 ++++++++++++++++++++++---------
>>   1 file changed, 137 insertions(+), 57 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index 3222f6cd8255..f524f50abdef 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -376,7 +376,8 @@ struct i915_oa_config_bo {
>>          struct llist_node node;
>>   
>>          struct i915_oa_config *oa_config;
>> -       struct i915_vma *vma;
>> +       struct i915_vma *ctx_vma;
>> +       struct i915_vma *global_vma;
> What's the allocation like? Worth packing into one vma and use an
> offset?
> -Chris

Good point, thanks!


-Lionel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
