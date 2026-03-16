Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kPprLCpFuGmLbAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 19:00:10 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE59429EB0C
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 19:00:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 436E610E2CB;
	Mon, 16 Mar 2026 18:00:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="P6+zb0f7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BN1PR04CU002.outbound.protection.outlook.com
 (mail-eastus2azon11010010.outbound.protection.outlook.com [52.101.56.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA8B710E2CB;
 Mon, 16 Mar 2026 18:00:06 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dBnThM5viX3KtQsfw40s8UsXxiRHG98VXoyp+nrl4n1lR1xRvCWy5ZtO9gwR1iyym+ItsLHLG8Gz9oLDAk5kooEGC9wPCX/kDWOYVgQ0Ok1kCduFPw3YuMrAGRmxLyYOKab/LjgLNRsuUIOGYCq/2chM+8r7UURM/5eYQaDcAzK+r8G8/VKFpeHTCn/QLnlCyM7YzQAkoPgUwlfcUhLw9xWIDJQXACgAYZ5LGigzexD0b7L6RaMRuF30hKjlPdwROldA0+K37nNuKQ/XsmWcyeFyhBZVMPZh1Gh22mNL8bam5aYJyUvCnQXne3cEmkoLcO7iVQTN3kgG19dOAj4IWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QzqBfMUKmYCB8PolVuCea4jpLDK3jZrzsoaGQFPGwU4=;
 b=JrnRZa+6BIkKMsPoF9V44KR8LvxWDu/VoBDqx9BeybVRG/KhC04gT/2B/Tlg+B4b19voXD24B5mMUE/mxU+sK7lublW2ONKIeSV/ik1YEuGqcPxRH2bC1WiRGLMZCdFnMvuz8rDiKzaLx/3ONbTgvPiL5DcTMLCKZFIEQowbyZHyYs1J12lV5M1ycO/F+Xhsvhv/HQi2Nbhoj7oWACd/7Hdh189/Pd+Z33HrBrRjKOBYHVTINPUnOhakvbBikkwZxKC4ZOCEANDTUNp4ejZP4ARJaELQlW9tTdouf5v6F4CwyGDv4pznBP8Wi2cQHdmfONttsN9CLWIb/Z1eLw6biA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QzqBfMUKmYCB8PolVuCea4jpLDK3jZrzsoaGQFPGwU4=;
 b=P6+zb0f7rZW3j0teZWHEnkOYTbDcpv1yTtRuzkMf4sLMGp2DDoefrZ6JaMbDO3HRvFUx12dZX1Ek/IhiEeD2u4f+P/537Io+OQ44VhGrdzlG7LvwUGJuuxDn1ZwdCeHCUe4lfZH0RzRVQD/B7rFXHK7IR3Y2PrwYqrkoH3Zg8XY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BL1PR12MB5126.namprd12.prod.outlook.com (2603:10b6:208:312::8)
 by BL3PR12MB6524.namprd12.prod.outlook.com (2603:10b6:208:38c::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.16; Mon, 16 Mar
 2026 18:00:02 +0000
Received: from BL1PR12MB5126.namprd12.prod.outlook.com
 ([fe80::c3e7:1bc5:2b91:1cfe]) by BL1PR12MB5126.namprd12.prod.outlook.com
 ([fe80::c3e7:1bc5:2b91:1cfe%4]) with mapi id 15.20.9723.016; Mon, 16 Mar 2026
 18:00:02 +0000
Message-ID: <cd9e1aa2-85b8-4add-a3b9-ba7acbd29f60@amd.com>
Date: Mon, 16 Mar 2026 13:59:57 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/10] drm/colorop: Add DRM_COLOROP_CSC_FF
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
Content-Language: en-US
From: Harry Wentland <harry.wentland@amd.com>
In-Reply-To: <20260316180338.0b2f6923@eldfell>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: YT4PR01CA0042.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:fe::22) To BL1PR12MB5126.namprd12.prod.outlook.com
 (2603:10b6:208:312::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR12MB5126:EE_|BL3PR12MB6524:EE_
X-MS-Office365-Filtering-Correlation-Id: 45377604-f66e-4306-2a2c-08de8385d896
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: hRXuT93EF+owwstOqFoSPSKAdlfVP5iS0n0mDpH1wiyyzXy5Jag+esXff8pxIARfvTzY3OkZVtnMxU+v6LannMYaivMfvrUkHnzQaqy0o2Fvw5zo47am4MeywjT/rUEoUdUDhbrOWd1ffINrLCKUSuSLdzeWDHmVPcSG2UDaNbI9OpWqRmSolTgL9+UyGVx2ZmI7oxZvKUmJAisp3gk6bJ+PyQweMHIUDrgOFpn0d8/ro4Kdu8GV5MFVD/Hj8QdL3S+qaJvBoGqnoBeKmEryEC7hZzGQW2xNWkkWYaSciQtcvCoppdcLvBVEgV4ufUUMVC52ITp5rkO545MEsBkienFTTTsE84/xOX0Lp7wtThYAtrSDCGdWndKXa+nSfYDH65UVt5341FGJYa9dfDjSvFapO0K0l7mRCoRepWtDVYF0A+aUxPzKBCNtJmx2E1IaQRdDsqQJP+RAb9GFUMeauuCh0x5HhAuZpmbvedWFXA9vURuxapij5YruJEGaZW8joeq2O32emC2KmfiOWWvDKGyoonDd7Ls1k9XJJchhVnQrDVc/nf3AKSYYcxllYob0TdXyVCYqz00H9PxILltPknHfrkJa0JTawzDEsD9THV9Ez/UagvoGfrS1sr0O8FMgUMJLBcewmET/V+taXA/IigE864fjz2UEI851kLvmJ7MNGMA0GIn7v+e3S+m0DmgN
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR12MB5126.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YVNWT2J3RUNmTFF6eFBzUWh2S3dBME5teVdJVXVQbWMwL1BBN1U0dElCNlA4?=
 =?utf-8?B?ekM4b0lSTXhJNVFKUTlEaXVNVkRBdU9jcituZUxiR2o4czJjb2xxd3JFQmFi?=
 =?utf-8?B?VG1KQjdHcGlpWVRiakR4NVA5djgrNFE4MlNGd3ZBU0NkVWpKSG1WZjdPQzJY?=
 =?utf-8?B?c0NRbzc3TkFkU3JwRGdyN1J3UnZrWnZ3Y2k4LzIrV3h3VVFCRVFKNUY3V3FV?=
 =?utf-8?B?dEM5V2VNTkp1YUN2TnI2Rjk0TmxUU3dyb0xhQmswelp2QU1MNHF3TTJiVFVv?=
 =?utf-8?B?dkpVUzhVYmdtRmlWUU9KUG8yS2hhVzVaYVRmYWZXNUhXQkliV2NoWXFVeXlj?=
 =?utf-8?B?S2tTYkI4b21VQW1aQWVscmc4dE9VOWd5RHVLcDRBUU5FQmFRZlByVWpqUnE4?=
 =?utf-8?B?WXFRSWh6L3dwcEVyaTAwZElQYjI2SEJqQnVFWEFYQ3hiSjBxTVpyQmNtQ2Vl?=
 =?utf-8?B?cWNnbUdxQTl4aTJ2UStNSDBtMmZ3SHI3WVlOU3VULzRmcmp2cnpuQ25ZbHFk?=
 =?utf-8?B?M21yVGdJeXdBTFZWUUVVTVFvYjVBTEZDTEQyeVBXY0c4VDZPZzhDSklrdHor?=
 =?utf-8?B?aC8zQVc1bWhUMTM2cVUvL1oyVTNHM1NNZzFwZ1NMRjVjVWhTczRySWNWRWtZ?=
 =?utf-8?B?Wi93dWllejlkTk9mL2JTVG0wUnlmajNQZEw4WFRkWWVRTmN3RkpvWTdBVDZW?=
 =?utf-8?B?UGhkdm5iYWd0VHJrRG0xOU9LV2Rrd2U5T3U1L2dyUUpRdDZkRzY1OUtNNlBp?=
 =?utf-8?B?UmtDTUpLL3NiT0djeGVycEZuZmJqSm9HWW1seW1RYmN5VHp2d0lsOHFSSlZD?=
 =?utf-8?B?a1hVSUpTZ3VVSk9HL0l3TmdPT3RZWUJzL3lMVUZOZDBKRmhzd3JMM0dIVEVq?=
 =?utf-8?B?VzNwMEhvY3lYUkFsNkVXZ3JESXcwQ2NML2E4ZndlcGxIcWFnd2ttVlpqYkRj?=
 =?utf-8?B?ODQ3VTc0d2Y2bW85cjJrZjdSdkpoMVVHMVVpVFNQWDBFaVlESUIvTkV5RzEx?=
 =?utf-8?B?Wm1zYWFUY1V3V0pVb1Bid3l2UktuZmFDL1p5Tkp6K3hLRFdKMCtMdWJQczhh?=
 =?utf-8?B?QTBpQXJYc2JreVVWNTZnc3doSlhhVStDb3VKeDFLNGdzdFNLb1dDSytvRStW?=
 =?utf-8?B?MEMwdk80WWFpVjFlOXNMbFdwQnR3Q2F3cXVDWUVHR0JvRENUTXA0VHRLcVdt?=
 =?utf-8?B?QWFOWVEwSStOY2prTStmc29FK2NFbWRwRWJQcWlkUERqQlJoQkEyMnlSbmJK?=
 =?utf-8?B?MlZTVnlLbkFFekNOaDQ2MjdwSHp1THlYUDBReTQ4VTNERFA3Zk1zTnBvWVJN?=
 =?utf-8?B?cEZ2YzhQbE5Vd0NuTEtkNStTK2RYczJ5ZWx6dzlhc1ZPVE9sbEFxcHl2L0J0?=
 =?utf-8?B?bGRrMlNZV1I3RFlJeTJMWlVSSzNuQktKVUtLYXhSOWJCVUduVXphUUg5Qnlj?=
 =?utf-8?B?aXkrbG50M3NQd0NMM2U5RXN5clJMYndOUEJEK2x1TU82MjFnOVhBK1FHQUdk?=
 =?utf-8?B?azNubDRlVG44Z1VtZ1crR01Mb1A2Q2IwRGxNQ3RseUFWUVZCeStZU2pNenhh?=
 =?utf-8?B?RUx5UGU2SVRRcnRCREl5cE1aUENMdGI5OFlERURwWHRqK2c3RTZHdERCdmcr?=
 =?utf-8?B?UWh0T3RjNjhsb2NZa2htYms0NFJuL2JueGdlaFM1L2d3b29neXBWMzVUT2dN?=
 =?utf-8?B?M01DZW41SnFBQS9saVpEblY4YnV3c0xRZmFSU0VFZ3M2V29hYUQ2Wlhvajhs?=
 =?utf-8?B?bVc5MlIyN2Y3RUdkT21vN1IrWmsxQ2FsVmI5eGdTbDBmWENGZm5SUzZmRnFt?=
 =?utf-8?B?OHBEYWNSUEEzZUpyaDYvOHZVWDE3R2JhK1htanF1KzdseEZhUDN2K0dmZXcz?=
 =?utf-8?B?WUxJaVlxR0M4anQ2SVpCOVk2anhyUXZjdVo2ZDV2Y1YxMytBTHMyWWplK0sr?=
 =?utf-8?B?OU9YMllVbjIvem9Kdk80ZnFSSzFrS1pBUXpucFJlenhMZndJd0g4T3RneE5F?=
 =?utf-8?B?dEt1K040V3hJOEI5MGx0bFg1OGh1UFBHc2xxYW9aZ0hyRmlrcTVIYnJxSExO?=
 =?utf-8?B?RndJckg3eUhjSXFleGZ2TEVsamY0WE9QL3NPR2x2aG9HMDlPMzRIM3Z1cjhR?=
 =?utf-8?B?YjVpUGNNbXA0RkxFRDBwK2ZydWUxTU5IdTREa3FTcTRyTEVnYTdoOE1ldUV3?=
 =?utf-8?B?QVJ0OERHUHpTUDJ3SU5Bcm91WmFvNTEyQzNHcXNJLytUZUNwUEFldFMwN3VN?=
 =?utf-8?B?OG1ISjVlVWVhQzcvSG1UOTUvSVJyTFZpSWpGdXRQcksvMlJGK0czYmc1RXBS?=
 =?utf-8?B?YUw3V201UGJXN1NqYmpURHdIUnN1UmlNRXdyZVgwRWNuSzRWSXhHZz09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45377604-f66e-4306-2a2c-08de8385d896
X-MS-Exchange-CrossTenant-AuthSource: BL1PR12MB5126.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2026 18:00:02.1996 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SF1Abrks+08+rsrE6x0KcwFKVJT2Q7UARbFv9dYLhhGDtxPs8lpwkMbCNmgMu80PUk3ezjJ5y9pTIG2ryXLB/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR12MB6524
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,amd.com:dkim,amd.com:email,amd.com:mid,wiley.com:url];
	FROM_NEQ_ENVFROM(0.00)[harry.wentland@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Queue-Id: EE59429EB0C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 2026-03-16 12:03, Pekka Paalanen wrote:
> On Mon, 16 Mar 2026 10:36:44 -0400
> Harry Wentland <harry.wentland@amd.com> wrote:
> 
>> On 2026-03-16 07:53, Pekka Paalanen wrote:
>>> On Mon, 16 Mar 2026 16:04:32 +0530
>>> "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
>>>   
>>>> On 3/16/2026 2:27 PM, Pekka Paalanen wrote:  
>>>>> On Mon, 16 Mar 2026 12:46:39 +0530
>>>>> "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
>>>>>     
>>>>>> Hi Pekka,
>>>>>>
>>>>>> Thank you for looking into the patch.    
>>>>>
>>>>> Hi Chaitanya!
>>>>>
>>>>> Replies inline below.
>>>>>     
>>>>>>
>>>>>> On 3/10/2026 8:02 PM, Pekka Paalanen wrote:    
>>>>>>> On Fri,  6 Mar 2026 22:22:58 +0530
>>>>>>> Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
>>>>>>>        
>>>>>>>> Introduce DRM_COLOROP_CSC_FF, a new colorop type representing a
>>>>>>>> fixed-function Color Space Conversion (CSC) block.
>>>>>>>>
>>>>>>>> Unlike CTM-based colorops, this block does not expose programmable
>>>>>>>> coefficients. Instead, userspace selects one of the predefined
>>>>>>>> hardware modes via a new CSC_FF_TYPE enum property. Supported modes
>>>>>>>> include common YUV->RGB and RGB709->RGB2020 conversions.
>>>>>>>>
>>>>>>>> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>  
>>>
>>> ...
>>>   
>>>>>>>> diff --git a/drivers/gpu/drm/drm_colorop.c b/drivers/gpu/drm/drm_colorop.c
>>>>>>>> index f421c623b3f0..49422c625f4d 100644
>>>>>>>> --- a/drivers/gpu/drm/drm_colorop.c
>>>>>>>> +++ b/drivers/gpu/drm/drm_colorop.c
>>>>>>>> @@ -68,6 +68,7 @@ static const struct drm_prop_enum_list drm_colorop_type_enum_list[] = {
>>>>>>>>    	{ DRM_COLOROP_CTM_3X4, "3x4 Matrix"},
>>>>>>>>    	{ DRM_COLOROP_MULTIPLIER, "Multiplier"},
>>>>>>>>    	{ DRM_COLOROP_3D_LUT, "3D LUT"},
>>>>>>>> +	{ DRM_COLOROP_CSC_FF, "CSC Fixed-Function"},    
>>>>>>>
>>>>>>> Hi,
>>>>>>>
>>>>>>> the fundamental idea seems fine to me, but I have a lot to say about the
>>>>>>> nomenclature.
>>>>>>>
>>>>>>> What would you think of a more readable name DRM_COLOROP_FIXED_MATRIX
>>>>>>> "Fixed Matrix"?
>>>>>>>
>>>>>>> Alternatively DRM_COLOROP_ENUM_MATRIX "Enumerated Matrix".
>>>>>>>        
>>>>>>
>>>>>> I was intentionally staying away from the word matrix because there was
>>>>>> no programmable matrix but it would make sense to name it something like
>>>>>> DRM_COLOROP_FIXED_MATRIX (or *_PRESET_MATRIX for that matter).
>>>>>>    
>>>>>>>>    };
>>>>>>>>    
>>>>>>>>    static const char * const colorop_curve_1d_type_names[] = {
>>>>>>>> @@ -90,6 +91,13 @@ static const struct drm_prop_enum_list drm_colorop_lut3d_interpolation_list[] =
>>>>>>>>    	{ DRM_COLOROP_LUT3D_INTERPOLATION_TETRAHEDRAL, "Tetrahedral" },
>>>>>>>>    };
>>>>>>>>    
>>>>>>>> +static const char * const colorop_csc_ff_type_names[] = {
>>>>>>>> +	[DRM_COLOROP_CSC_FF_YUV601_RGB601]   = "YUV601 to RGB601",
>>>>>>>> +	[DRM_COLOROP_CSC_FF_YUV709_RGB709]   = "YUV709 to RGB709",
>>>>>>>> +	[DRM_COLOROP_CSC_FF_YUV2020_RGB2020] = "YUV2020 to RGB2020",
>>>>>>>> +	[DRM_COLOROP_CSC_FF_RGB709_RGB2020]  = "RGB709 to RGB2020",    
>>>>>>>
>>>>>>> I'd suggest names:
>>>>>>>
>>>>>>> "YCbCr 601 to RGB"
>>>>>>> "YCbCr 709 to RGB"
>>>>>>> "YCbCr 2020 NC to RGB"
>>>>>>> "RGB709 to RGB2020"
>>>>>>>
>>>>>>> or something in that direction.
>>>>>>>
>>>>>>> The relevant ITU-R BT specifications use YCbCr nomenclature IIRC. Wrt.
>>>>>>> YCbCr-to-RGB conversion, there is no RGB601, RGB709 or RGB2020. There
>>>>>>> is only some RGB, and which primaries it uses is not always tied to
>>>>>>> which YCbCr conversion was used.
>>>>>>>       
>>>>>>
>>>>>> What I understand from this is that the BT.709(et al.) only defines the
>>>>>> matrix that is used for YCbCr->RGB, "what" RGB it is defined by the
>>>>>> primaries (which comes with metadata?).    
>>>>>
>>>>> Unfortunately, BT.601, BT.709 and BT.2020 define two separate things each:
>>>>> - the YCbCr<->RGB conversion, and
>>>>> - the colorspace primaries (and white point, but that is the same for
>>>>>    them all).
>>>>>  
>>
>> Would it make sense to treat these as two separate things in terms
>> of colorops?
> 
> Hi Harry,
> 
> no, if your hardware not care. There are no semantics for the numbers
> in the UAPI, it's just whatever numbers, and mathematical operations on
> them.
> 
> I suspect that your hardware does care, though, and actually has
> separate hardware elements for the YCbCr conversion and the colorspace
> conversion matrix. After all, one has to be able to put a LUT or a
> curve between the two to make sense.
> 
> IOW, two different colorops, yes. But different colorop types? Maybe
> that depends on whether they would have the same colorop properties or
> not.
> 

If I understand you correctly you're saying we can have a single
colorop type to represent either type. A client of the API needs
to understand what it's doing with the colorop and can use it
as either a YCbCr conversion matrix in the case of YCbCr-to-RGB
conversion, or an NPM for conversion of linear, normalized data
from one set of primaries to another.

Is that understanding correct?

>> I have done some work on a CSC colorop and intend to send out the
>> patches in the next couple of days.
>>
>> https://gitlab.freedesktop.org/hwentland/linux/-/commits/csc-colorop
>>
>> It follows the drm_plane's COLOR_RANGE and COLOR_ENCODING semantic
>> and is only intended for YCbCr-to-RGB conversion, like the original
>> properties on the plane.
>>
>> For the colorspace conversion within RGB (e.g., BT709 to BT2020)
>> it might make sense then to have its own colorop if HW works on
>> pre-defined transformations, or use the CTM 3x3 or 3x4 matrix ops
>> if HW provides a flexible matrix.
>>
>> We might need to think about naming, since colorspace conversion (CSC)
>> right now seems to refer to both YCbCr conversion and primaries
>> conversion.
> 
> Indeed.
> 
> YCbCr conversion is usually a matrix operation. H.273 calls it
> MatrixCoefficients, but it also lists cases where you need the EOTF in
> the mix. I could go with "YCbCr coefficients". The pure matrix forms
> are used on electrical pixel values.
> 
> The color space conversion matrices that are based on (Normalized)
> Primary Matrices (NPM) must be used on optical pixel values. NPM is the
> matrix that converts optical RGB values to CIE 1931 XYZ. For an
> RGB-to-RGB conversion you need one NPM and another inverse NPM chained.
> 

This could be expressed in a single matrix, right?

I intend to send out my patches as an RFC either way, but I think I
could just as well work with the CSC_FF colorop. I'll have a look at
basing my work on this.

Harry

> I guess using CSC for the latter is not obvious enough because it has
> been used for the former (color model conversion) as well?
> 
> How about "color-primary conversion"?
> 
> I stole it from
> https://onlinelibrary.wiley.com/doi/pdf/10.1002/9780470994375.app8
> 
> 
> Thanks,
> pq
> 
>>>>> BT.601 actually has two different sets of primaries. Bt.2020 defines
>>>>> two different YCbCr conversions. BT.709 uses the same primaries as
>>>>> sRGB, but is different from sRGB on all other aspects.
>>>>>
>>>>> Therefore, when you refer to any one of these, you also need to be
>>>>> clear whether you are referring to the YCbCr conversion or to the
>>>>> primaries.
>>>>>     
>>>>
>>>> In that case, if the HW block says that it does YCbCr to RGB conversion 
>>>> using rec BT.709, the resultant RGB follows the primaries as described 
>>>> by BT.709 or mathematically it does not really matter?  
>>>
>>> Hi,
>>>
>>> the resultant RGB may or may not follow BT.709 primaries, and knowing
>>> the primaries is important for further processing in general.
>>>
>>> YCbCr<->RGB conversion does not change the primaries. What went in,
>>> will come out.
>>>   
>>>>>> I will read up on why our HW names these bits as such.    
>>>>>
>>>>> Sure, but keep in mind that your hardware naming is irrelevant for the
>>>>> UAPI design.    
>>>>
>>>> Understood, I just want to make sure that the HW does exactly what we 
>>>> will advertise through the UAPI.  
>>>
>>> Precisely.
>>>
>>>
>>> Thanks,
>>> pq
>>>   
>>>>>>> For YCbCr 2020 I feel it's nice to remember, that there are two
>>>>>>> different conversions in the specification: the simple matrix one
>>>>>>> called "non-constant luminance", and the complex one called "constant
>>>>>>> luminance". Hence "NC".
>>>>>>>
>>>>>>> It's also good to recall that YCbCr-RGB conversions are done in an
>>>>>>> electrical space, while RGB709-to-RGB2020 conversion must be done in the
>>>>>>> optical space. It is up to the userspace to arrange the neighbouring
>>>>>>> colorops to use the fixed matrix right.
>>>>>>>        
>>>>>>
>>>>>> Ack on the above.  
>>
> 

