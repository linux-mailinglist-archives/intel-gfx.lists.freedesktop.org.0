Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CE23E9E6B
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 08:29:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACDAF6E24E;
	Thu, 12 Aug 2021 06:29:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-relay-canonical-0.canonical.com
 (smtp-relay-canonical-0.canonical.com [185.125.188.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 725FA6E24E
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 06:29:16 +0000 (UTC)
Received: from [192.168.50.13] (mobile-user-2e84bb-128.dhcp.inet.fi
 [46.132.187.128])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPSA id 7DA9E40C9B; 
 Thu, 12 Aug 2021 06:29:14 +0000 (UTC)
From: Timo Aaltonen <tjaalton@ubuntu.com>
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210708211827.288601-1-jose.souza@intel.com>
 <20210708211827.288601-2-jose.souza@intel.com>
 <a33d19b3-8ee0-2923-ab18-85bf65454b8a@ubuntu.com>
Message-ID: <b4d84d43-a11d-2607-49ee-e1109f781435@ubuntu.com>
Date: Thu, 12 Aug 2021 09:29:13 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <a33d19b3-8ee0-2923-ab18-85bf65454b8a@ubuntu.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915: Implement Wa_1508744258
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 12.8.2021 6.27, Timo Aaltonen wrote:
> On 9.7.2021 0.18, José Roberto de Souza wrote:
>> Same bit was required for Wa_14012131227 in DG1 now it is also
>> required as Wa_1508744258 to TGL, RKL, DG1, ADL-S and ADL-P.
>>
>> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
>> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 +++++++
>>   1 file changed, 7 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c 
>> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> index e5e3f820074a9..c346229e2be00 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> @@ -670,6 +670,13 @@ static void gen12_ctx_workarounds_init(struct 
>> intel_engine_cs *engine,
>>              FF_MODE2_GS_TIMER_MASK,
>>              FF_MODE2_GS_TIMER_224,
>>              0);
>> +
>> +    /*
>> +     * Wa_14012131227:dg1
>> +     * Wa_1508744258:tgl,rkl,dg1,adl-s,adl-p
>> +     */
>> +    wa_masked_en(wal, GEN7_COMMON_SLICE_CHICKEN1,
>> +             GEN9_RHWO_OPTIMIZATION_DISABLE);
>>   }
>>   static void dg1_ctx_workarounds_init(struct intel_engine_cs *engine,
>>
> 
> Hi, I don't see this (or patches 3, 4) in drm-intel-next, are they not 
> needed anymore?

but is in drm-intel-gt-next..


-- 
t
