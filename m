Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75752414877
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 14:08:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC5606EB85;
	Wed, 22 Sep 2021 12:08:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C95146EB85
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Sep 2021 12:08:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="210814300"
X-IronPort-AV: E=Sophos;i="5.85,313,1624345200"; d="scan'208";a="210814300"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 05:08:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,313,1624345200"; d="scan'208";a="653247465"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 22 Sep 2021 05:08:36 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 22 Sep 2021 05:08:35 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 22 Sep 2021 05:08:35 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 22 Sep 2021 05:08:35 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 22 Sep 2021 05:08:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cbCW0T28DP9IBK5IJBPol49rnFcAwnX1JtM3XDJMkSmyyUBWSvbfh2ULgI9xbLa4tKa/FAsJwIhmr7tcsJTr99HjSf5jH75DoR3NBac+4JeDjxdks98kyo+rl7lkVAfeQyv5vVDZQr+v8zLQzZBAu+1Q80FtEgKAWhCuh5QtJFgnmFeqNcPsC0jNKRT2FPx91gEJph/L8wYVS1BAcYvG0dAxnzQrbe78B0BNXssxzAmiHn9SwGsBH2NZ/HkXrV5BLw/AZFKFKtCoIKXFvtccGYm32nZllNhU1rpXAj0Jk4o6Kkhz1s+gZccf2SJiGkk5bNrgBIvaPD+GeqbWkCoV/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=3s8fkEL7AQZaNgG0Gn+Hpn+Yevu+pvsgTD2xTl1Z/Jg=;
 b=HhX6S4AGWHhvzVf/MmOCbhnVGwXDDF+J1zo+Xv8waE2QYTk070n9FRGXskI0bxv0EyR3fiVtJQlrtqPcEmE5IZGAlufLjNS3OsS3wQp6yUaueiOyrnrpz5KZDc3Ve1UPDpqDaaPxtkfU1DDIdlRJSOPTlOqxkohaEgsWKEvt1Q0BZCCfwnH0jJc7RTQf8lHypud/BN1MR1+33fDmj+kIw19obgOb5bFJRPH8G7n6jxhwokG1dWcYMudp1LsgqzcRgxsP/Xe3EEJD4eYPVjMFzh9vPtVR60JuOn9rWQtQPTcFaayj8s7fnD5YJCxjgWik3bR6qwzZBZEThNeGQcgVCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3s8fkEL7AQZaNgG0Gn+Hpn+Yevu+pvsgTD2xTl1Z/Jg=;
 b=MzobVByrwfI1127+fMc1b2rd+FgYVtVF4Tojn+9ldZ3tMIeyOPP2aZHnQQoakvLocjjmMC4utaNMeVAU3xnvPruhVYsdLaHLS3mn8Oz6sea/lNWPsrXAVLFAYvXE0OLeymRYMxHMOT5N+JOfVKo/YSAriDFP3weu5A68Hl+sD78=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5424.namprd11.prod.outlook.com (2603:10b6:5:39c::8) by
 DM6PR11MB4025.namprd11.prod.outlook.com (2603:10b6:5:197::31) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4544.13; Wed, 22 Sep 2021 12:08:33 +0000
Received: from DM4PR11MB5424.namprd11.prod.outlook.com
 ([fe80::d5e2:ceac:b53e:351f]) by DM4PR11MB5424.namprd11.prod.outlook.com
 ([fe80::d5e2:ceac:b53e:351f%4]) with mapi id 15.20.4544.013; Wed, 22 Sep 2021
 12:08:33 +0000
To: "Manna, Animesh" <animesh.manna@intel.com>, "Souza, Jose"
 <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
References: <20210921004113.261827-1-jose.souza@intel.com>
 <20210921004113.261827-3-jose.souza@intel.com>
 <d2f5eeeb999341f482518d9d2e0657d4@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <c07a70bf-44f9-9ba4-61d3-c8b3459937f0@intel.com>
Date: Wed, 22 Sep 2021 15:08:22 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <d2f5eeeb999341f482518d9d2e0657d4@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU2PR04CA0221.eurprd04.prod.outlook.com
 (2603:10a6:10:2b1::16) To DM4PR11MB5424.namprd11.prod.outlook.com
 (2603:10b6:5:39c::8)
MIME-Version: 1.0
Received: from [10.237.72.208] (134.134.137.88) by
 DU2PR04CA0221.eurprd04.prod.outlook.com (2603:10a6:10:2b1::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4544.14 via Frontend Transport; Wed, 22 Sep 2021 12:08:31 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 899eaa6c-6f5f-4696-000c-08d97dc1b2f4
X-MS-TrafficTypeDiagnostic: DM6PR11MB4025:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR11MB402515E27F330C7507AF9427B8A29@DM6PR11MB4025.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2512;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /M7/1aVHZQ80lPApL/HFK44Lay9NnuwsZH/zfs4nP0+1xDYxARlYtK4b9dyDi+SXaLyoWVwHLcGztgISmYXfJplKWzdSPTU/Dw5SqvM4dQdEWMVjSE1GrFcppTDNiQZUpZLw+mVgDtxoakLifxjOP3jxpYe7jDJfuAtwovEzU+uU29RrgSMa+0Qakc+ShLnWstFIUb9prtQpGVT+08+eh9xE/MkrV93vZsW3QRGm5APQPtPnx6Bfo0jXIODzqybNEszAFokHnIvRWSkZeaKNXUdZh1/P77BqTiU27qw4xrfHFKLcnKdstcoaRJwKQfyrEdOS4nEPAYaRK4Ud+kZgt/6XU8VsmYro2PvTj2wDC0TCJK+TJJmWVh0gDSKohBX3hdm0mYxgwmrmbyj6A6x53coMsqyU0Y2nBoekZdgK0D9hfNzYCbygMO+M+9ZIXmagm2QQfNPuq4d1CRlHdPUtgvCW9qU6VDTNlmbGw3udn9ASKlr77WGCGWD4xm5fJl/JFbwEPWucKQ6F/p+SdUO4eF7ZtTJDf2kezYZotgzmcujeDFFtwMzzf5n57K0uy6OT3lEi5y6xU5IlSzdmDRY1ueLe2rzqGOidt/5clHekCAjIekvDPX4BxVHqzddjzMp3Llx8o2aLWMPkig7gNV7MFyPFVkQmUSnUrofJrrL0s/rNpsB203zJ6x4KZXGEh4psWlzG8pC4oC+ocz12RtnEXTq0h41GdktKziJnkj1gIuo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(508600001)(956004)(26005)(83380400001)(2616005)(5660300002)(66946007)(31696002)(110136005)(53546011)(6666004)(66476007)(8676002)(316002)(16576012)(86362001)(36756003)(38100700002)(8936002)(31686004)(66556008)(186003)(2906002)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RTJ3RFpWL2dpT2VEalpuQ3pmU0xBUkpvT2xabUNrbDY0WE5QUGZ5QjZUUmRz?=
 =?utf-8?B?eXBLTWtNckZsS3dFRFBZczRnVklUS1Rrdzc3VEZkNkhNdjEwWVFwREVRNERm?=
 =?utf-8?B?MGc3VXFyY2pFZk1MT3U5SmpQK1ZURDcva1RROUI1NEZlQVZBK0Q2YnRYcHlv?=
 =?utf-8?B?NkQydTlPV0RFckp0TVdqU3drMlViWG9FS3NqUlFBZllCZjFEczNKR05VTUNB?=
 =?utf-8?B?ZFVIK1BoeS9QQzRiSU5naW9DeVJPdUtQNW0wWjd4YzRNS0Faa1EwZCs3UXJt?=
 =?utf-8?B?NGZVZzdzV0s5c3hQdUVDRUN2VlZaV0tWSHY4VGI5VkVNdWhJbHBxQzlsSnNx?=
 =?utf-8?B?MVZXMkt3ckxNNDFVNGJ6clpYRndjSE40aGVmRjdUK2Rid0xsRlR4Y2gvbktK?=
 =?utf-8?B?RWE2VFFhWVkzMWo4cWp6Y3Q1cmJubkV2eE1RU1ZNdDh6czNpWlg0SHh6MWxy?=
 =?utf-8?B?NUZLMmJRdHpKb21Db2hkTURWNE5iQjQzdTBMWnFLdGN1WDYxRHlOS09BRlBF?=
 =?utf-8?B?dGtDcjVpNXRVSGw3WUJ2ZU9CSnU0VjNscm9pdXZLdk1DaGI5bjJZR2xDcmto?=
 =?utf-8?B?YzFRVlB0U0xVMjdySDZZeVJBMGpjN1RuR1Blb3YzR1EzSkZVS2NYS256aUxO?=
 =?utf-8?B?Sk5Oa056MHd3c0VxWHoxRUxKdlhCeG9ZQVNDU3M3NTEzbDZaRm9IZGVueGJG?=
 =?utf-8?B?c2NsRXIzSVlreVdUSDlsaFF6eGo1Wm1UTWk1ajFlYmhUTlRnSVp5ZXA3am1M?=
 =?utf-8?B?SW9RdnIvaWFQbTBvcDYvOHNHS0tycHRsbHdlRkVLdlBvRDY5MXpMaTI0NDJS?=
 =?utf-8?B?S2ZoVDN4U2padkdRdmhGV3dCRGhsTUtpYmtRUkJPTk1uZFh4RXpkVkJPWDRh?=
 =?utf-8?B?b1VZUDJIQk9zZlBkbFIzTlhWYjFwZW5yYjlkczd2Nm16bm1XS0ZwT2NxVUFZ?=
 =?utf-8?B?ZEtlcDEwSVM1OEZ2eEpUcGdKYm4rdjhKTFhqSjRHdUYwTUJkOSsyRm9CcUw4?=
 =?utf-8?B?TWZSaTRVN0dOVnpkVy94amhGTkZvUXdudW1KbmI3Y2JmOVhwQnFabG5FdHp4?=
 =?utf-8?B?NUhBVjBwN0IxaXFBR1RsaWFIWTV4L2dsNWdCTnE3MjlCWWJGdW4xOVhpODM3?=
 =?utf-8?B?ZXhXMVhLRk5tbzI3dVk2Q2hlNnNJV3c5djBFc3IvWWFXdDA1b0lkN0g1MDdS?=
 =?utf-8?B?VUVRcVNIUlJTQTZETU95LzlXakl4WlA1c0pYOXUyRTE1RjM0TDMyOHdMSXRq?=
 =?utf-8?B?c3o5bVNLbk5FUE9mTGtqdldFMjBZNGFPREk2TG5Ubmc5TDBoalBiWnplcTIy?=
 =?utf-8?B?RnViM2txZTJZdkNxTmVCbDNqMjMrTC83UngzaUhkK1BiaHpDWUZRbVNOYW1x?=
 =?utf-8?B?R3JsMFlabjdTaUg2R2JSUERKcThyS0VFQzhURHZWRnVXVk5ZakRBYTRxM01Z?=
 =?utf-8?B?TXh4c05xL0ZPYTRhYVVteFhQWU9ZaDRZT0M0NE5XMFE4U0UzQjJsZTRxejQ1?=
 =?utf-8?B?TVh1WU4yWEJZZE80TVkwTlV5M2tiZ09IcDVvZFRFM2JTQTlWUmJmc216QVhy?=
 =?utf-8?B?clFNdGM4UDhZZUlaRUdnN2NaV3VtdVBNdnRSbitTTUgzL1ZFUFcrQWFFQ3kz?=
 =?utf-8?B?eVZtRElOTGJ6YzR6UWE3MVZROWo5d3cwNjkzQmtGQmZjWTJ1RUZEa0FMV2Rt?=
 =?utf-8?B?dGV4UDdyQS80YVFYNnpBaExKM01VTmg4NUJSWDY5UGpTZnRqSFhFR1YxdVFq?=
 =?utf-8?Q?uLcNDxhjpkTBbcb5uE+Nd/nE042gzoJtO7xhscJ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 899eaa6c-6f5f-4696-000c-08d97dc1b2f4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2021 12:08:33.5634 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X7BRKZEJ+R2gaG9PDqvJXmGWfsNWHRdB5pp+dBCJLyX0RjBsqTwRTRmV/jWHTnlYdhf+WMh7zJDgUZdIn0wurAz3BybI7ZQet6YQXGpk558=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4025
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 3/3] drm/i915/display/psr: Do full fetch
 when handling biplanar formats
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



On 9/22/21 11:28 AM, Manna, Animesh wrote:
> 
> 
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of José
>> Roberto de Souza
>> Sent: Tuesday, September 21, 2021 6:11 AM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Mun, Gwan-gyeong <gwan-gyeong.mun@intel.com>; Souza, Jose
>> <jose.souza@intel.com>
>> Subject: [Intel-gfx] [PATCH v3 3/3] drm/i915/display/psr: Do full fetch when
>> handling biplanar formats
>>
>> From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
>>
>> We are still missing the PSR2 selective fetch handling of biplanar formats but
>> until proper handle is added we can workaround it by doing full frames fetch
>> when state has biplanar formats.
>>
>> We need the second check because an update in a regular format could
>> intersect with a biplanar plane that was not initialy part of the atomic commit.
>>
>> Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
>> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_psr.c | 11 ++++++++++-
>>   1 file changed, 10 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
>> b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 8ceb22c5a1a6b..e6a4c27975d8c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -1601,9 +1601,13 @@ int intel_psr2_sel_fetch_update(struct
>> intel_atomic_state *state,
>>    * TODO: Not clear how to handle planes with negative
>> position,
>>    * also planes are not updated if they have a negative X
>>    * position so for now doing a full update in this cases
>> + *
>> + * TODO: We are missing biplanar formats handling, until it is
>> + * implemented it will send full frame updates.
>>    */
>>   if (new_plane_state->uapi.dst.y1 < 0 ||
>> -    new_plane_state->uapi.dst.x1 < 0) {
>> +    new_plane_state->uapi.dst.x1 < 0 ||
>> +    new_plane_state->hw.fb->format->is_yuv) {
>>   full_update = true;
>>   break;
>>   }
>> @@ -1682,6 +1686,11 @@ int intel_psr2_sel_fetch_update(struct
>> intel_atomic_state *state,
>>   if (!drm_rect_intersect(&inter, &new_plane_state->uapi.dst))
>>   continue;
>>
> 
> Code comment can be added here why we need this check again in same function.
> Enabling full frame update is fine for me for planar format but not sure we need the 2nd check.
> 
That's right, we don't need to set this code here because we set 
full_update above when " new_plane_state->hw.fb->format->is_yuv" is true.

I will update this in the next version.

Thanks, Animesh.

> Regards,
> Animesh
> 
>> +if (new_plane_state->hw.fb->format->is_yuv) {
>> +full_update = true;
>> +break;
>> +}
>> +
>>   sel_fetch_area = &new_plane_state->psr2_sel_fetch_area;
>>   sel_fetch_area->y1 = inter.y1 - new_plane_state->uapi.dst.y1;
>>   sel_fetch_area->y2 = inter.y2 - new_plane_state->uapi.dst.y1;
>> --
>> 2.33.0
> 
