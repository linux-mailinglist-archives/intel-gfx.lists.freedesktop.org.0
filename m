Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qNHrMNeYymmg+QUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 17:37:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EED435E04A
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 17:37:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BC6110E75A;
	Mon, 30 Mar 2026 15:37:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="B6Nqa5Xw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BN8PR05CU002.outbound.protection.outlook.com
 (mail-eastus2azon11011014.outbound.protection.outlook.com [52.101.57.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9993510E75A;
 Mon, 30 Mar 2026 15:37:56 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yxkVPjc04IkZhv1K2t7eHQTgslMoHc9BQ9a1xyFx5LTO3K8FUSjgNQsbfvnSA9FX+kDS0s4Q6yvUGfivzUHqSiGk4x7xQfF4M5J+yojS3qFLUwQwr2PeXMfdlKiVkZ8Q+pDEuAdsV2puvna20tzjMCjWEhfD6bmAlD/OquDjgxfeR6Apdo3zA/YV8OjLm80rwMNaSsrz8G9rXnnCG3hjyAZFXL8Xi9kZ8UCLSccXkJSDH9T+Qi9L7lU6h84lxSgI6KEBkZrsFXdQ+2PXCjkgy6+reD+Xu0wBEgPdDrJQMpMRD/RCcqvrYPPgzzVZe2bHy0pzWA8lXMZBLY9BpvBmFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tpFOiOkOnWZ7pkBeijW6wZXZouonLtWVJ9PwY39nkCw=;
 b=uC/0e5FQMjh++BL6HgmVbPUlSpZyXQX8Io2tXBHpStDCW8q/qICQmiwP/0rOh06xuROtKi5Rz5fQQrTrSMqdx0OkDCua1aEVwmRY4wZkmRXAi9oS9R2vjmcoFHdNC9r9rjAh+1hsbYqZhxcDMrmVU+TYoVIld8kldRsn5ahbxHEe+tuiIn1Fhsap9jSsheYUKFPidUOG6PBbEmM+YXWVAZeC2Mx9N1Y6e8w1DQEEb18MhWPVbaZ/7v4j1w2e8+Vi2k8Kvh1sTMldmMyA2zwXLG5o87yL9H/Z16sduBeiV+nqrzRdd0j53fSkarvRJcMdusuMgmYJXp9XoupaD1Qb7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tpFOiOkOnWZ7pkBeijW6wZXZouonLtWVJ9PwY39nkCw=;
 b=B6Nqa5Xw0duHvYyCC6sHtherCYI+cH+DK2rxMRnN8Ay/Vb8/P8GuKD8rmLfFtWztEoGpJC9X21bZuZ6afiYmj1nAcfE+X5vKMpX7TxAm4ZVdbG7z1TnH2GUB1pS24QntQ7u2GidRNvcIqFCZAmzFioQkxLCK/NlGFULh1JodW3k=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BL1PR12MB5126.namprd12.prod.outlook.com (2603:10b6:208:312::8)
 by SJ5PPFABE38415D.namprd12.prod.outlook.com
 (2603:10b6:a0f:fc02::99e) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.12; Mon, 30 Mar
 2026 15:37:51 +0000
Received: from BL1PR12MB5126.namprd12.prod.outlook.com
 ([fe80::c3e7:1bc5:2b91:1cfe]) by BL1PR12MB5126.namprd12.prod.outlook.com
 ([fe80::c3e7:1bc5:2b91:1cfe%6]) with mapi id 15.20.9769.014; Mon, 30 Mar 2026
 15:37:50 +0000
Message-ID: <0d438de9-cb79-4db4-8f33-dfef47a9a7bd@amd.com>
Date: Mon, 30 Mar 2026 11:37:44 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/10] drm/colorop: Add DRM_COLOROP_CSC_FF
From: Harry Wentland <harry.wentland@amd.com>
To: Pekka Paalanen <pekka.paalanen@collabora.com>
Cc: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, louis.chauvet@bootlin.com, mwen@igalia.com,
 contact@emersion.fr, alex.hung@amd.com, daniels@collabora.com,
 uma.shankar@intel.com, maarten.lankhorst@intel.com, pranay.samala@intel.com,
 swati2.sharma@intel.com
References: <20260306165307.3233194-1-chaitanya.kumar.borah@intel.com>
 <20260306165307.3233194-2-chaitanya.kumar.borah@intel.com>
 <20260310163229.521186ab@eldfell>
 <53c3f610-942c-46bf-be5f-a4c51625c358@intel.com>
 <20260316105724.47d24409@eldfell>
 <eaaea3f6-76ce-4b20-b7b1-b483594070cd@intel.com>
 <20260316135349.06476e85@eldfell>
 <0969dd82-0212-4fec-b693-e53c6ddd692c@amd.com>
 <20260316180338.0b2f6923@eldfell>
 <cd9e1aa2-85b8-4add-a3b9-ba7acbd29f60@amd.com>
Content-Language: en-US
In-Reply-To: <cd9e1aa2-85b8-4add-a3b9-ba7acbd29f60@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: YT4P288CA0031.CANP288.PROD.OUTLOOK.COM
 (2603:10b6:b01:d3::9) To BL1PR12MB5126.namprd12.prod.outlook.com
 (2603:10b6:208:312::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR12MB5126:EE_|SJ5PPFABE38415D:EE_
X-MS-Office365-Filtering-Correlation-Id: 4fc6b020-075f-404b-3b49-08de8e724d42
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: mnv8T42sRSLkSNZEfcAXFWIny3E1GQ9zl/HZw/IV7gGfpZH7rvgkaK/58Ctdnq8ikD5SBylvZjrHxteo8/h7Pt5Py0xw6/MyzHAgthV9tuMluQwHu7L04VZoz4Zct1sNBOLQ6tyAqC3I+V/kJWbnoIdCPvweT0ArH0uo1hqbK4zf50aGv67URlLk0ze7EYjTCBAvSNntIaL/Ovo+xvSoNpx0LGfukf6/UW7pjlZHyhxRaNM6rUmMH7bm24D6I1T5KRr8wguTxpqCgjK/0WmfNpOai1sSs9RMoCq0II3v+XnRMGrRy3MWCsmwpomnv0+DYDHWy3diATssPwz5cAiynNFgpwdsl4XEIp3MkpW4EAFepHMeFdacLbRgHZqT2vvOGmqLrrgGsbD5/xb4kA6eRKen85l8qRw2pfCGpxr+auyVaJb84IUNQvpmhPILwGTv/xh5gi/QmTkcnEX3TKd6vBWZpcellYoHtwycqdQwdqk/XMueZIZl2zeF/yq8CCz/A862OhXjYOPFdRzm2JQBvsAlodv7fpArPrODJwokZRfSjCOc3MOnjbDwqYL/LhIufmpVakKogVpHd/kSNPjcebAsR2BLBN2acs4eKFiC2ZhvjlN7WrU3yoDqCsCfdzvxbSF7CCx7tg7Ia1ZmRfejQNojf6f0ybx017XOXOZXmgiKcXEKK5oVXy9U0MzQMZXX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR12MB5126.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SnV1UHl6a0ZPb3gwMitHUEFzL1h0QzNDZDQ4SnhRMUJuaE5KTnlkTWVEY2wr?=
 =?utf-8?B?UEhuZHRVUkxlNkhoelFuOGZCNXB6UmdDS3BPQUlmSkNXeEloa2xTN1owTGNV?=
 =?utf-8?B?Y3RvQlhYdDVRWnJ6WUFDTzdyM0tXNjR0aFJtalRVRktheVFvUHB0R0hZVTRw?=
 =?utf-8?B?ZXg0blJHcFh4YlpTVUJZS0g0Y253VitqOFBpUVZNQUdOek1NVUtSNVRtWG4w?=
 =?utf-8?B?ZmV0bVNUUThQc1orVGtqNjZjM2JqSVVlNnpMV1dZakJEbDh6WnJsbWgwb01k?=
 =?utf-8?B?YWhMMnA3T3VoRFR4SGxrcjE2MVV5KzdyUTNTZDFpVUp6WDgwanRnQnp6WkNY?=
 =?utf-8?B?emNicHZRbGZ3dkpSN0x3WFVGdUxGTnVNcGI0SnRIeVhMMTV5OFl4aEFUdDda?=
 =?utf-8?B?cW40QjlMVk5pTWFXdjIwVklJcGJuK1ExN1FobktQQ0Q0TW5EakFhSkJOV05I?=
 =?utf-8?B?MG5vK2hHR0VZVUlNWFF0dWVVeEVqYnBvVEIwRlU5dE9nRlRQc05Kdmw5TGJM?=
 =?utf-8?B?cnpya2FpeVl2dUlnem5zVUk2ZzR6ZDBscFgvS2xiaE5zeW1GUmhZNFgxRkM4?=
 =?utf-8?B?dVFkait3ZllMd0ZKWEw0S29oMTRmWVZwUyt4UE1lYlNCNS9vblppdDgxbFla?=
 =?utf-8?B?TWJBdkhkZ29SZTE5S3Z0Q0lQaERHckNpZkdRZ2lyc1dWZ0dKYnJTcEt5UXQx?=
 =?utf-8?B?YUNUUFVmMHZwbm1HRHFTZGZhamJrdVdiS0tVckpvUVp4NWtjNlNRK1h3dWE5?=
 =?utf-8?B?RHlVUUh2c09YZWhOcnFPRk1kcGx4NjFabGY0RXJDSm0xM29hMXg5RkhPVGNu?=
 =?utf-8?B?NE5RVFFuckhybGM1MjJFVExRZi9RZGx2WXd0SHB4cUJGdkJZRXhjTStXQzNK?=
 =?utf-8?B?emFHYktmdlAyRkNuajNBbUdKYVBLN3cyRjJKdEU5K2FrR3A1MmxsZVZSWmVK?=
 =?utf-8?B?TGVrVWdBK1dDc0hDOHMvbkRZT0paemRWdndzYk1jaFQ5M21xRDM5alNLWFRP?=
 =?utf-8?B?MGRQY0M1WTJONFhXLzN6R2pGWFkwTlpUWk1KazRxcVNkYlFnWFZrL055RjBK?=
 =?utf-8?B?WkN4VnoxajA5NmJUanhQR2FlaUZ6TmFGZUN2NnIxcWtMczY1Q01tTXZnVnc0?=
 =?utf-8?B?NUFNV1ptZWlQMmlmSTFmRnJyMkZZWWtWV1Y4alpyV2Z5ZHNuR2F0V0d0V3Bn?=
 =?utf-8?B?MGM5M0tIWWxnWm9HQlVlUUNGeXhvclV4QUZVd1ZSMS9BaHI5bFpMT3QyMmlo?=
 =?utf-8?B?aFpyS2NMSEg3bDhaV1EvYmdmeWY0a1JBNzdCVE9uSE9Rc2l6eStrUnJqVERx?=
 =?utf-8?B?bEdObkJWSlpBN2dqbG5IS0ZpRjNEYWlRblFTLy9zWHFKTGE2d2V4dks1ZzV2?=
 =?utf-8?B?ak9Qc3R3RVdDSSt2aS9hT1NKN1V1Z3dQcTMyYyt2ZDRQYzJlZHkyK0pvRW5G?=
 =?utf-8?B?dWxXbU4vemQvcEhETkhKTWhFNlI0UkMzblU4L01lODY5U2gwS3lVd3drVVN2?=
 =?utf-8?B?blY4YkJRU1Q0SUwyVklRNVR5TGlhVTVBYXJmT1NDZHVMRWhEUHdNWm56N1po?=
 =?utf-8?B?MWhzbUdvSkVzMjIwbWxiNGhLTnJOb2R5azc0ZVJVV0hGeFVNeTlHazJid3k2?=
 =?utf-8?B?NmM0UU45dGU0ODlxUVVDcjdXYlRjY1l4enVXSW5tS3o4OWhOTGFyWVB2cGRP?=
 =?utf-8?B?QVkyaE5yYlU3NlhSTjROdnJVVzdycmxRcUJyQU0vNEdDbzUwZzlCS0N4SFYz?=
 =?utf-8?B?WlV6U3k4UXp4WkViTDJ6bHZveXpWdVZLc1ZTQXp3cllMOEx2ZklvaTZNVVhF?=
 =?utf-8?B?NlBNVEJkaUhueHdlMjljN2Y5alkwcGd2N3dNMjJwelhReEE1TDdWN0FlRnJX?=
 =?utf-8?B?WDNjY2lxOERROFVTc2d4dFk1VFUxU0lMNXhZaUJnYmhVUjNsanVDNEFudVVq?=
 =?utf-8?B?b0V4ak1yTnNSdFFKd21YRVJnalF0Y3JxTnF3eTluNmUxbWZQYTM4eW8rcEpw?=
 =?utf-8?B?bVJJaEp0YmRFazJtRlZaakt3bnpYSnJQZVVHbTA2dzZKQnBSYzMzYTVCTE4y?=
 =?utf-8?B?RUtEbExVWkJsWDFCTmVXUWRVenJaOGhJOEFhZ3B4NFRwY0JJZmppTytDc2x2?=
 =?utf-8?B?V1orUitUZFVxU3dkOHpRWnZRaEM0bzRBbk5DK0Zjald2eUNJWDh2NGZIbURw?=
 =?utf-8?B?RTl3U05hQVd5VUxtTVlSdEt6dEdBbTFSaDViUmxjcklUVTREU1E0SDNjcE1T?=
 =?utf-8?B?U3RmTE1zUlQvY3V0SGZKZGUvdUgxSVhGWWlyT1BWeFRaclVZUm11VXRUdjQ3?=
 =?utf-8?B?dkx2NUdSQUM5bVpWU1BTbERwUDhyNS9saHpCQnJLczd5RXVFeFdqQT09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fc6b020-075f-404b-3b49-08de8e724d42
X-MS-Exchange-CrossTenant-AuthSource: BL1PR12MB5126.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2026 15:37:50.8391 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kQ6vV46EoEwT3sIQUReQ+08uwoQHYII2SWggX3vx6kbIdWfwA7BueFrfRYdQU9qLZ/3EYa0pmu6eN53SWlPtPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFABE38415D
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,gitlab.freedesktop.org:url,amd.com:dkim,amd.com:email,amd.com:mid];
	FROM_NEQ_ENVFROM(0.00)[harry.wentland@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Queue-Id: 2EED435E04A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 2026-03-16 13:59, Harry Wentland wrote:
> 
> 
> On 2026-03-16 12:03, Pekka Paalanen wrote:
>> On Mon, 16 Mar 2026 10:36:44 -0400
>> Harry Wentland <harry.wentland@amd.com> wrote:
>>
>>> On 2026-03-16 07:53, Pekka Paalanen wrote:
>>>> On Mon, 16 Mar 2026 16:04:32 +0530
>>>> "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
>>>>   
>>>>> On 3/16/2026 2:27 PM, Pekka Paalanen wrote:  
>>>>>> On Mon, 16 Mar 2026 12:46:39 +0530
>>>>>> "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
>>>>>>     
>>>>>>> Hi Pekka,
>>>>>>>
>>>>>>> Thank you for looking into the patch.    
>>>>>>
>>>>>> Hi Chaitanya!
>>>>>>
>>>>>> Replies inline below.
>>>>>>     
>>>>>>>
>>>>>>> On 3/10/2026 8:02 PM, Pekka Paalanen wrote:    
>>>>>>>> On Fri,  6 Mar 2026 22:22:58 +0530
>>>>>>>> Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
>>>>>>>>        
>>>>>>>>> Introduce DRM_COLOROP_CSC_FF, a new colorop type representing a
>>>>>>>>> fixed-function Color Space Conversion (CSC) block.
>>>>>>>>>
>>>>>>>>> Unlike CTM-based colorops, this block does not expose programmable
>>>>>>>>> coefficients. Instead, userspace selects one of the predefined
>>>>>>>>> hardware modes via a new CSC_FF_TYPE enum property. Supported modes
>>>>>>>>> include common YUV->RGB and RGB709->RGB2020 conversions.
>>>>>>>>>
>>>>>>>>> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>  
>>>>
>>>> ...
>>>>   
>>>>>>>>> diff --git a/drivers/gpu/drm/drm_colorop.c b/drivers/gpu/drm/drm_colorop.c
>>>>>>>>> index f421c623b3f0..49422c625f4d 100644
>>>>>>>>> --- a/drivers/gpu/drm/drm_colorop.c
>>>>>>>>> +++ b/drivers/gpu/drm/drm_colorop.c
>>>>>>>>> @@ -68,6 +68,7 @@ static const struct drm_prop_enum_list drm_colorop_type_enum_list[] = {
>>>>>>>>>    	{ DRM_COLOROP_CTM_3X4, "3x4 Matrix"},
>>>>>>>>>    	{ DRM_COLOROP_MULTIPLIER, "Multiplier"},
>>>>>>>>>    	{ DRM_COLOROP_3D_LUT, "3D LUT"},
>>>>>>>>> +	{ DRM_COLOROP_CSC_FF, "CSC Fixed-Function"},    
>>>>>>>>
>>>>>>>> Hi,
>>>>>>>>
>>>>>>>> the fundamental idea seems fine to me, but I have a lot to say about the
>>>>>>>> nomenclature.
>>>>>>>>
>>>>>>>> What would you think of a more readable name DRM_COLOROP_FIXED_MATRIX
>>>>>>>> "Fixed Matrix"?
>>>>>>>>
>>>>>>>> Alternatively DRM_COLOROP_ENUM_MATRIX "Enumerated Matrix".
>>>>>>>>        
>>>>>>>
>>>>>>> I was intentionally staying away from the word matrix because there was
>>>>>>> no programmable matrix but it would make sense to name it something like
>>>>>>> DRM_COLOROP_FIXED_MATRIX (or *_PRESET_MATRIX for that matter).
>>>>>>>    
>>>>>>>>>    };
>>>>>>>>>    
>>>>>>>>>    static const char * const colorop_curve_1d_type_names[] = {
>>>>>>>>> @@ -90,6 +91,13 @@ static const struct drm_prop_enum_list drm_colorop_lut3d_interpolation_list[] =
>>>>>>>>>    	{ DRM_COLOROP_LUT3D_INTERPOLATION_TETRAHEDRAL, "Tetrahedral" },
>>>>>>>>>    };
>>>>>>>>>    
>>>>>>>>> +static const char * const colorop_csc_ff_type_names[] = {
>>>>>>>>> +	[DRM_COLOROP_CSC_FF_YUV601_RGB601]   = "YUV601 to RGB601",
>>>>>>>>> +	[DRM_COLOROP_CSC_FF_YUV709_RGB709]   = "YUV709 to RGB709",
>>>>>>>>> +	[DRM_COLOROP_CSC_FF_YUV2020_RGB2020] = "YUV2020 to RGB2020",
>>>>>>>>> +	[DRM_COLOROP_CSC_FF_RGB709_RGB2020]  = "RGB709 to RGB2020",    
>>>>>>>>
>>>>>>>> I'd suggest names:
>>>>>>>>
>>>>>>>> "YCbCr 601 to RGB"
>>>>>>>> "YCbCr 709 to RGB"
>>>>>>>> "YCbCr 2020 NC to RGB"
>>>>>>>> "RGB709 to RGB2020"
>>>>>>>>
>>>>>>>> or something in that direction.
>>>>>>>>
>>>>>>>> The relevant ITU-R BT specifications use YCbCr nomenclature IIRC. Wrt.
>>>>>>>> YCbCr-to-RGB conversion, there is no RGB601, RGB709 or RGB2020. There
>>>>>>>> is only some RGB, and which primaries it uses is not always tied to
>>>>>>>> which YCbCr conversion was used.
>>>>>>>>       
>>>>>>>
>>>>>>> What I understand from this is that the BT.709(et al.) only defines the
>>>>>>> matrix that is used for YCbCr->RGB, "what" RGB it is defined by the
>>>>>>> primaries (which comes with metadata?).    
>>>>>>
>>>>>> Unfortunately, BT.601, BT.709 and BT.2020 define two separate things each:
>>>>>> - the YCbCr<->RGB conversion, and
>>>>>> - the colorspace primaries (and white point, but that is the same for
>>>>>>    them all).
>>>>>>  
>>>
>>> Would it make sense to treat these as two separate things in terms
>>> of colorops?
>>
>> Hi Harry,
>>
>> no, if your hardware not care. There are no semantics for the numbers
>> in the UAPI, it's just whatever numbers, and mathematical operations on
>> them.
>>
>> I suspect that your hardware does care, though, and actually has
>> separate hardware elements for the YCbCr conversion and the colorspace
>> conversion matrix. After all, one has to be able to put a LUT or a
>> curve between the two to make sense.
>>
>> IOW, two different colorops, yes. But different colorop types? Maybe
>> that depends on whether they would have the same colorop properties or
>> not.
>>
> 
> If I understand you correctly you're saying we can have a single
> colorop type to represent either type. A client of the API needs
> to understand what it's doing with the colorop and can use it
> as either a YCbCr conversion matrix in the case of YCbCr-to-RGB
> conversion, or an NPM for conversion of linear, normalized data
> from one set of primaries to another.
> 
> Is that understanding correct?
> 
>>> I have done some work on a CSC colorop and intend to send out the
>>> patches in the next couple of days.
>>>
>>> https://gitlab.freedesktop.org/hwentland/linux/-/commits/csc-colorop
>>>
>>> It follows the drm_plane's COLOR_RANGE and COLOR_ENCODING semantic
>>> and is only intended for YCbCr-to-RGB conversion, like the original
>>> properties on the plane.
>>>
>>> For the colorspace conversion within RGB (e.g., BT709 to BT2020)
>>> it might make sense then to have its own colorop if HW works on
>>> pre-defined transformations, or use the CTM 3x3 or 3x4 matrix ops
>>> if HW provides a flexible matrix.
>>>
>>> We might need to think about naming, since colorspace conversion (CSC)
>>> right now seems to refer to both YCbCr conversion and primaries
>>> conversion.
>>
>> Indeed.
>>
>> YCbCr conversion is usually a matrix operation. H.273 calls it
>> MatrixCoefficients, but it also lists cases where you need the EOTF in
>> the mix. I could go with "YCbCr coefficients". The pure matrix forms
>> are used on electrical pixel values.
>>
>> The color space conversion matrices that are based on (Normalized)
>> Primary Matrices (NPM) must be used on optical pixel values. NPM is the
>> matrix that converts optical RGB values to CIE 1931 XYZ. For an
>> RGB-to-RGB conversion you need one NPM and another inverse NPM chained.
>>
> 
> This could be expressed in a single matrix, right?
> 
> I intend to send out my patches as an RFC either way, but I think I
> could just as well work with the CSC_FF colorop. I'll have a look at
> basing my work on this.
> 

I sent out a new version of my series, reworked to use the CSC_FF
colorop.

https://lore.kernel.org/dri-devel/20260330153451.99472-1-harry.wentland@amd.com/

Harry

> Harry
> 
>> I guess using CSC for the latter is not obvious enough because it has
>> been used for the former (color model conversion) as well?
>>
>> How about "color-primary conversion"?
>>
>> I stole it from
>> https://onlinelibrary.wiley.com/doi/pdf/10.1002/9780470994375.app8
>>
>>
>> Thanks,
>> pq
>>
>>>>>> BT.601 actually has two different sets of primaries. Bt.2020 defines
>>>>>> two different YCbCr conversions. BT.709 uses the same primaries as
>>>>>> sRGB, but is different from sRGB on all other aspects.
>>>>>>
>>>>>> Therefore, when you refer to any one of these, you also need to be
>>>>>> clear whether you are referring to the YCbCr conversion or to the
>>>>>> primaries.
>>>>>>     
>>>>>
>>>>> In that case, if the HW block says that it does YCbCr to RGB conversion 
>>>>> using rec BT.709, the resultant RGB follows the primaries as described 
>>>>> by BT.709 or mathematically it does not really matter?  
>>>>
>>>> Hi,
>>>>
>>>> the resultant RGB may or may not follow BT.709 primaries, and knowing
>>>> the primaries is important for further processing in general.
>>>>
>>>> YCbCr<->RGB conversion does not change the primaries. What went in,
>>>> will come out.
>>>>   
>>>>>>> I will read up on why our HW names these bits as such.    
>>>>>>
>>>>>> Sure, but keep in mind that your hardware naming is irrelevant for the
>>>>>> UAPI design.    
>>>>>
>>>>> Understood, I just want to make sure that the HW does exactly what we 
>>>>> will advertise through the UAPI.  
>>>>
>>>> Precisely.
>>>>
>>>>
>>>> Thanks,
>>>> pq
>>>>   
>>>>>>>> For YCbCr 2020 I feel it's nice to remember, that there are two
>>>>>>>> different conversions in the specification: the simple matrix one
>>>>>>>> called "non-constant luminance", and the complex one called "constant
>>>>>>>> luminance". Hence "NC".
>>>>>>>>
>>>>>>>> It's also good to recall that YCbCr-RGB conversions are done in an
>>>>>>>> electrical space, while RGB709-to-RGB2020 conversion must be done in the
>>>>>>>> optical space. It is up to the userspace to arrange the neighbouring
>>>>>>>> colorops to use the fixed matrix right.
>>>>>>>>        
>>>>>>>
>>>>>>> Ack on the above.  
>>>
>>
> 

