Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDmiC4cVuGl/YwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 15:36:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71FCD29B7FC
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 15:36:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0F0510E3D1;
	Mon, 16 Mar 2026 14:36:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="DBfE0pf7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH1PR05CU001.outbound.protection.outlook.com
 (mail-northcentralusazon11010011.outbound.protection.outlook.com
 [52.101.193.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08D4310E3D1;
 Mon, 16 Mar 2026 14:36:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wi3JXsAwCjBo1h7+DeXBgvV4R61OZtE49GOL7W+SIJuGMVnZtWSjdouw2g54AHOsbpzvzvPBcYLZBfiLctJYlC9WBgqXaencYG/9v+kkXKT4N+RSZfJ+CcpxcSLXQbtHDyesE5aoYvEWnbpcRNmiQjVYlNQI7RjbmJJV/1kDF5O6GrObR/EIM3VQB5fBka7A0rbsL9G+kcHF4Uj54Hn4WnPpE23A6RwGGq8aLK1SIGYmLWYEorkxj1vK4YKky5WbHvid+wAJ8ccquqnbDAfBJoGDG/wsUlrd7096RkWKpYo9HYtn5dSTRuTAtAtTOoVaS+G9C5EWGgxSADzLZUWtfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qXyPdJp9J7znrVPrdEvVSpsG+uir4OXIm6/GsaH3PIA=;
 b=NN1WXfh1RURFKfaE7gQnN3HRY7SG3qW/Fd23zXgiMYg0V+aqXFcLiXI91F5VjUffAUSdsaupxb/SYUMv8MDhWa2JsFhF0J8XP6EdoF/pCL7snoZyjR4nTyIc0Be+2NYu4k+R8RCOXyJf+N/FaeRL77jR4G23qyPlCkscZTm7vLdZkfT27k/i4s3iuf+6UszyODFXxyobJtzibGuKIHD5P1s7Yv5Ydf2pletMQHTrezqRY4jUO5iJmEDhp3YRa55iDXIA63YUGR4vRglfx673JBGvbLrsgKrqjIs4v3eaBwwYfdlWei5lKHgEwGM4gWsiy9nRn2YCtHrDptv6tZHZTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qXyPdJp9J7znrVPrdEvVSpsG+uir4OXIm6/GsaH3PIA=;
 b=DBfE0pf7dbO1lqPKaXtrAHLHjv6595CBWc5qPcjXl5luOwiNK8Ws/+pm9Iradagl7sKyU+146wEhcuqgiWNBNQ3ZKQtUvORYviH+vdoaSdfb2u1nQq1u2b9LrImkqOIGHTlVD2U0hjilE3iHMLqtro+Vmlrqt6W9ht/mWKEbS4U=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BL1PR12MB5126.namprd12.prod.outlook.com (2603:10b6:208:312::8)
 by DM6PR12MB4220.namprd12.prod.outlook.com (2603:10b6:5:21d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.17; Mon, 16 Mar
 2026 14:36:47 +0000
Received: from BL1PR12MB5126.namprd12.prod.outlook.com
 ([fe80::c3e7:1bc5:2b91:1cfe]) by BL1PR12MB5126.namprd12.prod.outlook.com
 ([fe80::c3e7:1bc5:2b91:1cfe%4]) with mapi id 15.20.9723.016; Mon, 16 Mar 2026
 14:36:47 +0000
Message-ID: <0969dd82-0212-4fec-b693-e53c6ddd692c@amd.com>
Date: Mon, 16 Mar 2026 10:36:44 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/10] drm/colorop: Add DRM_COLOROP_CSC_FF
To: Pekka Paalanen <pekka.paalanen@collabora.com>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
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
Content-Language: en-US
From: Harry Wentland <harry.wentland@amd.com>
In-Reply-To: <20260316135349.06476e85@eldfell>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: YT4PR01CA0041.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:fe::18) To BL1PR12MB5126.namprd12.prod.outlook.com
 (2603:10b6:208:312::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR12MB5126:EE_|DM6PR12MB4220:EE_
X-MS-Office365-Filtering-Correlation-Id: b6b0b99f-d086-48ef-40ee-08de836973e4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: Bj1oTRfr4X7ob04yKm6cfz5B++G9WmChvQTC50uSuqFVnYS07qbWBwCUVywlp4QccikNJ4RlUlmwWfSF7PPf9gFSDS+JreYeZ/B8osbjzn+yvUNDSjds4rd/2tPHtoVGNW1bOikYQ5Dnu0wECeDvT1f4j4+m7ajg424Q6n2ywab8Mqw/nYOX0T8hkBuSgLLi6ueeP6tN0HCLgMVQGhRhwOpWP/RofntwDOoQOIOPaM+3djDrfKGzRshAcPUZfd0CicvIzYTYffn6FxUnkwYfDq29jJbgCBEx7N/dpdnTLGMePQp5A8QCIQOyCIF8qrXCJbWWtoMqV43ypSvArpHuOngLH+Bw/1YkPbLWJ3UFBX3/ZyuG1jl3h/pIQPLNBJ3eQy+kdXNy/kTBvrDtd9j7fWFow8wc9cDZIoMZwF8uAl1kjvfzMCF4OnbC7vuyZx/BpZ4IylJVhc3/pGRlLn32j8W1oxkkGHRKiIovNFRCKlAXafLuSRxmg95JvyL3zxYC5AsT3SdWWIFtitQKD1pf/hI6TcJWmC2bpORlZ1PFzb3i66a/H/xzK8x2XJMGb16b/nWu72FsLW0QSo0CmQDilX5lwL2C40+umH+zYesGSD5ARkRKaD1ed6qmq+oUXA62HhcgFU7JuS+/0Wdrk40iZ6hqO3uxRxWQY2u6XCdPav1Q1O9lbUZNs4w+6Vj3ddYG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR12MB5126.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?amNnZ0RxT1Vqd1RycjUzSjJoL1RQQWJNdFVqYlRybEVxcWxEelRCUTNhREwx?=
 =?utf-8?B?NWtzR0UxYmc5ekJWaHJsdVViZzBRWTVZTUw3MXNzU0tzaSsyS3BOdXdIcEZ0?=
 =?utf-8?B?QXlMYkFIeW5iTTFUOEF3czdtTTFFVXA0TU1JT2JSLzEzQ0lpSlRzZm01d2lE?=
 =?utf-8?B?TTZMZHhTMGVnYmU3VlBreXN0YzJJZVFDdVlVQkQzcG1aU1dWdlU5bm9pMUdX?=
 =?utf-8?B?NEp1NjVCdlp0dUxsMmtIK1F6aFF4a2NORkwrT3ZzRi9obm1IblNnS1VCa2Jn?=
 =?utf-8?B?bS9RSU9RdjJiTVh3Yll1Q0Q2ODVnRi9UREV3TzVTa04zWHYvc3pIbXRRRkVz?=
 =?utf-8?B?N0lKanlNMGJCd0c5blk1RHBBb2hUODgzMHN5NXRwRGxjbmNDdUtIdVN5amZo?=
 =?utf-8?B?VmF5b2pIc2JCeHM3a0NIOFkzbU9ZdXhvNE84NlU2Zm9WYm5QMW5wV2dIZVRB?=
 =?utf-8?B?M00xSzQ5M0xXNHZ1cVh1Z2h3Zzd4TlBaK1dwa0tYT3R2TXN3S0p1MER4WVJm?=
 =?utf-8?B?dk1WUUtKQ2xxb2RQZG9Yc2dFMlhnNVdpVW5wRnRtRk1CQU1aL0ZrVDRuZnpQ?=
 =?utf-8?B?S21uZVZPTGFsd2ZCcXJ6aGhGSnRjWlRld3ArNXU3WWU3YjQ4amM5RkFmVEh5?=
 =?utf-8?B?ODlQZkhvUnJIaGZXWmZUaE9MVzUrc253eGlKQzRnM1QycERYb0RwYnBwZGV3?=
 =?utf-8?B?ZVVsZlV3a051dUJNUjBvZ2VUV1loOE9PLzZ5ZmNWNVpBMW5meStQY2ZNS1pD?=
 =?utf-8?B?MUxGM1VFRWtEaXRrVGNOVlFtTEhDUHdFVGsxSW1sQTZSVlZXV1p3ZjZOdHB5?=
 =?utf-8?B?dHg1VUxwQXJIaEc4Q2w4dVQ2MWRGMXZxNjcxandMbVF4R2JaNm1ZMDUyVHVt?=
 =?utf-8?B?aWZ2SUVvR04rQVhQSkxVNit6WEtnT1BYdVZvakpSdlBFaUx6Zmp5ZG8xcmVP?=
 =?utf-8?B?VzdGdm1tOXcrV3dHVmh1OWY5YXU4MHhNdWd5S0ZyL1ZDMVJvVzNPN3FseWtw?=
 =?utf-8?B?eDZPY1RkWHBlcEtwdm1WZGgwcnF0MkduM3RpdzY2SXVHWG00NG1IMTBVYlVp?=
 =?utf-8?B?UTVqS01vSy84bGVyaEZaamxVN2o1MmN4K0dJSDk3eHRsdkNpTmV6NktSWUF1?=
 =?utf-8?B?ajYyTks5eVNNeElCUWd6R2E0WUJUKzF3bWppMFkxTmlPa1Q1MWlpK0VOa1Nm?=
 =?utf-8?B?cGxwc1B5bmFLUzhDVUVQcGRSa3J5TmQ4d2lXZThOZXRYbk5GYWdOWjdVa2o1?=
 =?utf-8?B?cUVKaEFzV0hJVXorZGgrcDlMKzNJRWJ6TUUzcFVRZ0Y3SjFjdXJzUzJzQVZh?=
 =?utf-8?B?OGRaQjMrelE1Wnl0VnRORjlhbGlWbXpOQWFWQnF2WGJUTW5IM29DWXo4VVdp?=
 =?utf-8?B?c1FUNjI0OUZTR0lld2JiVU04YlN4SGR4eGNLM2VGeldIczZ1Q1JqLzlxd0M1?=
 =?utf-8?B?TG41WmdBanFINGM5S0JvYlBoV2tJdFhURnNsOHo4T0dEdG1DaDcwc1oxQUdp?=
 =?utf-8?B?VUo2MS80bFRwZkEycGdPSXFleHM0eDZTSEJFcUY3amhVSjJsWlRkN0Q0KzNx?=
 =?utf-8?B?Q2tOVHFPYllLbVBrVGYweHpkdTlkRVdHeTdqT2puVHFWaWhOdG5BUFBXZEFH?=
 =?utf-8?B?S1dTM3hlWjU0eG1jOFgyVDgyeUw5SmRnUFdNdTdldDBaUlpqdFYzWEF6blB3?=
 =?utf-8?B?bTJYTFpXVm5vQWt4bzBRTFZ5cG5DNWR6a2FrcXIycWE0UDArTENLNms2bGxI?=
 =?utf-8?B?YUxMMVorSWpkWk9YZ0YzeFZKL1BuVWZoREdYQnE4Mm9qczBWVjE0Y0xIempo?=
 =?utf-8?B?YzdJVllReGs5Wm9ZdVBCYzhLaGZzcUdYdFh1b1lIRVpKOGpnY043RnRib2c5?=
 =?utf-8?B?bXBKSXlodGFEM3lPeUdSQjhtWm9ya2o3TmxVeDNuZFlmSVpxSXBHWGVSejRq?=
 =?utf-8?B?ZU5kQTJBNWtCVWtSRjlUKy95WkQzT1NyVWkxRU1qQzFGSXZJMXp1UzdtQjEz?=
 =?utf-8?B?ZS9qb25WcDhZVjNGK1pXL1ZuT3o2MGwwY1hCbTR5aDFhb1N2Q3NJY0o2djVL?=
 =?utf-8?B?dG9XTXNKRGxCcFNOQU5wZXUwb1c0RThHWVNFRWJJWWlmRHE4R1hoVlpHVnZz?=
 =?utf-8?B?clRzK2Z4ZFhTdjFtbmY0dTBUSXJXOHpSbWMwR0hJQ1hQc0pjK2lFRVNmTVJV?=
 =?utf-8?B?UFQrQWV3RnptS1pPc1NldDFmQnl0Nkgxcnp5eFlORnd6WVk3eU04dTJsL3NQ?=
 =?utf-8?B?WlBZOHBtMWRLRm9xYXB3aVBuTjJQazliNUh4Q0RoZ0xkVFUyYVorK0pkTjVp?=
 =?utf-8?B?b0Q4bUEvOWRsMHdJeThMSW81anBhYW5iVGl2YkQzaXhrZE53ZHY1dz09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6b0b99f-d086-48ef-40ee-08de836973e4
X-MS-Exchange-CrossTenant-AuthSource: BL1PR12MB5126.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2026 14:36:47.4693 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lHf8FoqzoFsTyWhd6RWpYvlH6Myy7AqbCDjuy1q0QMGCTJYxZYk9NWMXTZVMc97ti+VKhGdUDx2Ala7b3l37Kg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4220
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[harry.wentland@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,amd.com:dkim,amd.com:mid];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Queue-Id: 71FCD29B7FC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2026-03-16 07:53, Pekka Paalanen wrote:
> On Mon, 16 Mar 2026 16:04:32 +0530
> "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
> 
>> On 3/16/2026 2:27 PM, Pekka Paalanen wrote:
>>> On Mon, 16 Mar 2026 12:46:39 +0530
>>> "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
>>>   
>>>> Hi Pekka,
>>>>
>>>> Thank you for looking into the patch.  
>>>
>>> Hi Chaitanya!
>>>
>>> Replies inline below.
>>>   
>>>>
>>>> On 3/10/2026 8:02 PM, Pekka Paalanen wrote:  
>>>>> On Fri,  6 Mar 2026 22:22:58 +0530
>>>>> Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
>>>>>      
>>>>>> Introduce DRM_COLOROP_CSC_FF, a new colorop type representing a
>>>>>> fixed-function Color Space Conversion (CSC) block.
>>>>>>
>>>>>> Unlike CTM-based colorops, this block does not expose programmable
>>>>>> coefficients. Instead, userspace selects one of the predefined
>>>>>> hardware modes via a new CSC_FF_TYPE enum property. Supported modes
>>>>>> include common YUV->RGB and RGB709->RGB2020 conversions.
>>>>>>
>>>>>> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> 
> ...
> 
>>>>>> diff --git a/drivers/gpu/drm/drm_colorop.c b/drivers/gpu/drm/drm_colorop.c
>>>>>> index f421c623b3f0..49422c625f4d 100644
>>>>>> --- a/drivers/gpu/drm/drm_colorop.c
>>>>>> +++ b/drivers/gpu/drm/drm_colorop.c
>>>>>> @@ -68,6 +68,7 @@ static const struct drm_prop_enum_list drm_colorop_type_enum_list[] = {
>>>>>>    	{ DRM_COLOROP_CTM_3X4, "3x4 Matrix"},
>>>>>>    	{ DRM_COLOROP_MULTIPLIER, "Multiplier"},
>>>>>>    	{ DRM_COLOROP_3D_LUT, "3D LUT"},
>>>>>> +	{ DRM_COLOROP_CSC_FF, "CSC Fixed-Function"},  
>>>>>
>>>>> Hi,
>>>>>
>>>>> the fundamental idea seems fine to me, but I have a lot to say about the
>>>>> nomenclature.
>>>>>
>>>>> What would you think of a more readable name DRM_COLOROP_FIXED_MATRIX
>>>>> "Fixed Matrix"?
>>>>>
>>>>> Alternatively DRM_COLOROP_ENUM_MATRIX "Enumerated Matrix".
>>>>>      
>>>>
>>>> I was intentionally staying away from the word matrix because there was
>>>> no programmable matrix but it would make sense to name it something like
>>>> DRM_COLOROP_FIXED_MATRIX (or *_PRESET_MATRIX for that matter).
>>>>  
>>>>>>    };
>>>>>>    
>>>>>>    static const char * const colorop_curve_1d_type_names[] = {
>>>>>> @@ -90,6 +91,13 @@ static const struct drm_prop_enum_list drm_colorop_lut3d_interpolation_list[] =
>>>>>>    	{ DRM_COLOROP_LUT3D_INTERPOLATION_TETRAHEDRAL, "Tetrahedral" },
>>>>>>    };
>>>>>>    
>>>>>> +static const char * const colorop_csc_ff_type_names[] = {
>>>>>> +	[DRM_COLOROP_CSC_FF_YUV601_RGB601]   = "YUV601 to RGB601",
>>>>>> +	[DRM_COLOROP_CSC_FF_YUV709_RGB709]   = "YUV709 to RGB709",
>>>>>> +	[DRM_COLOROP_CSC_FF_YUV2020_RGB2020] = "YUV2020 to RGB2020",
>>>>>> +	[DRM_COLOROP_CSC_FF_RGB709_RGB2020]  = "RGB709 to RGB2020",  
>>>>>
>>>>> I'd suggest names:
>>>>>
>>>>> "YCbCr 601 to RGB"
>>>>> "YCbCr 709 to RGB"
>>>>> "YCbCr 2020 NC to RGB"
>>>>> "RGB709 to RGB2020"
>>>>>
>>>>> or something in that direction.
>>>>>
>>>>> The relevant ITU-R BT specifications use YCbCr nomenclature IIRC. Wrt.
>>>>> YCbCr-to-RGB conversion, there is no RGB601, RGB709 or RGB2020. There
>>>>> is only some RGB, and which primaries it uses is not always tied to
>>>>> which YCbCr conversion was used.
>>>>>     
>>>>
>>>> What I understand from this is that the BT.709(et al.) only defines the
>>>> matrix that is used for YCbCr->RGB, "what" RGB it is defined by the
>>>> primaries (which comes with metadata?).  
>>>
>>> Unfortunately, BT.601, BT.709 and BT.2020 define two separate things each:
>>> - the YCbCr<->RGB conversion, and
>>> - the colorspace primaries (and white point, but that is the same for
>>>    them all).
>>>

Would it make sense to treat these as two separate things in terms
of colorops?

I have done some work on a CSC colorop and intend to send out the
patches in the next couple of days.

https://gitlab.freedesktop.org/hwentland/linux/-/commits/csc-colorop

It follows the drm_plane's COLOR_RANGE and COLOR_ENCODING semantic
and is only intended for YCbCr-to-RGB conversion, like the original
properties on the plane.

For the colorspace conversion within RGB (e.g., BT709 to BT2020)
it might make sense then to have its own colorop if HW works on
pre-defined transformations, or use the CTM 3x3 or 3x4 matrix ops
if HW provides a flexible matrix.

We might need to think about naming, since colorspace conversion (CSC)
right now seems to refer to both YCbCr conversion and primaries
conversion.

Harry

>>> BT.601 actually has two different sets of primaries. Bt.2020 defines
>>> two different YCbCr conversions. BT.709 uses the same primaries as
>>> sRGB, but is different from sRGB on all other aspects.
>>>
>>> Therefore, when you refer to any one of these, you also need to be
>>> clear whether you are referring to the YCbCr conversion or to the
>>> primaries.
>>>   
>>
>> In that case, if the HW block says that it does YCbCr to RGB conversion 
>> using rec BT.709, the resultant RGB follows the primaries as described 
>> by BT.709 or mathematically it does not really matter?
> 
> Hi,
> 
> the resultant RGB may or may not follow BT.709 primaries, and knowing
> the primaries is important for further processing in general.
> 
> YCbCr<->RGB conversion does not change the primaries. What went in,
> will come out.
> 
>>>> I will read up on why our HW names these bits as such.  
>>>
>>> Sure, but keep in mind that your hardware naming is irrelevant for the
>>> UAPI design.  
>>
>> Understood, I just want to make sure that the HW does exactly what we 
>> will advertise through the UAPI.
> 
> Precisely.
> 
> 
> Thanks,
> pq
> 
>>>>> For YCbCr 2020 I feel it's nice to remember, that there are two
>>>>> different conversions in the specification: the simple matrix one
>>>>> called "non-constant luminance", and the complex one called "constant
>>>>> luminance". Hence "NC".
>>>>>
>>>>> It's also good to recall that YCbCr-RGB conversions are done in an
>>>>> electrical space, while RGB709-to-RGB2020 conversion must be done in the
>>>>> optical space. It is up to the userspace to arrange the neighbouring
>>>>> colorops to use the fixed matrix right.
>>>>>      
>>>>
>>>> Ack on the above.

