Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OInOEE2R82la5AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 19:28:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8734A6696
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 19:28:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF0A110F40F;
	Thu, 30 Apr 2026 17:28:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="A/vqMCEI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SJ2PR03CU001.outbound.protection.outlook.com
 (mail-westusazon11012010.outbound.protection.outlook.com [52.101.43.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C884510F412;
 Thu, 30 Apr 2026 17:28:40 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d9jRnhPWY9KjffdYlCGheYiDz/eHlXLqzIpVn3XxeRYzgTixamgfHEN2EWE3uo6VFVfC8lrp3BOvUU+baMQgz/AAXbfLmUfzFflD03sRpi0xvMfPfENmysCAifPxEn2yxgJk1SjnjbBSpbpwVRBfZJjJIKJUQVoaHlW4Q/5SsO97iyInVSzgt+Huw/yH8CuLMox4TIsFM7xQmJvaECsf7JegFBPeLbfX6ah171I/spq2VRSnXUNttoF0zdNVInKT6oZMkvbghyKdOiM1sENyYfG/urPc7mcoul01K8naWW9HJGDnyD7H1pcVX3gd5cZl7ac4mhGdDdcethdEtHj4ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OGFtEk20lwd+Sx4vG8vmZlLMGGG7sG/Ip5+rgMB3EiU=;
 b=dM+7yWgqzJhWFCB5ov7pGxLvg6ESIKhuztXiKWxcnu6juUZzf86H4OCCh1dT85f9OC8UK7RHyCCGcV1d/CpIm7d2B/sNlw9z9lpUSa4HKI37ERdrMaKLVBgGtuophYOWpKl/U2IWlzVVKj4BQ9E+h+R8ALdZ5R6a7TKYGGtVAIqpZ2AnqTDt+wGxYz1ez2ZJzngA/q1OKwrwuFuXMznH5AO7NeENo5lzrpmW4KzmmmN0/dyvbEiY9I2F3RAI7dgIaO/BHha3/CDqrBIdwlrFRROgNRHiT7kwffiaZ3Kbipf7rX0q2OLOzz+nKS60kPyoQBmVKD7F0RKaIa03PNaAHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OGFtEk20lwd+Sx4vG8vmZlLMGGG7sG/Ip5+rgMB3EiU=;
 b=A/vqMCEIQZlFrYwELM8/Xn0QLFD3N8nu2muht7zh7gpf1AkmqMX82KVWyg5vglb6zs6WgWjqcJ7jENWMKswjdkVV0CFUhNIFZx6hRnMzPkP4CaQalsUncV53NJ14W0JBpvX8EFZxn06TfATqIBf3i7NQv3GDiAcDLJQ3CeKsfAw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BL1PR12MB5126.namprd12.prod.outlook.com (2603:10b6:208:312::8)
 by CY5PR12MB6129.namprd12.prod.outlook.com (2603:10b6:930:27::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.20; Thu, 30 Apr
 2026 17:28:37 +0000
Received: from BL1PR12MB5126.namprd12.prod.outlook.com
 ([fe80::c3e7:1bc5:2b91:1cfe]) by BL1PR12MB5126.namprd12.prod.outlook.com
 ([fe80::c3e7:1bc5:2b91:1cfe%5]) with mapi id 15.20.9870.020; Thu, 30 Apr 2026
 17:28:37 +0000
Message-ID: <c58df997-c2d2-4975-974c-551a0f057930@amd.com>
Date: Thu, 30 Apr 2026 13:28:32 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/13] drm/colorop: Add DRM_COLOROP_FIXED_MATRIX
To: Melissa Wen <mwen@igalia.com>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: louis.chauvet@bootlin.com, contact@emersion.fr, alex.hung@amd.com,
 daniels@collabora.com, uma.shankar@intel.com, maarten.lankhorst@intel.com,
 pekka.paalanen@collabora.com, pranay.samala@intel.com,
 swati2.sharma@intel.com
References: <20260408051514.608781-1-chaitanya.kumar.borah@intel.com>
 <20260408051514.608781-2-chaitanya.kumar.borah@intel.com>
 <c15ff4ca-79c3-4e65-bcc3-24e74adc2636@igalia.com>
 <e4eced80-8b22-473d-8add-7e4a517937f8@intel.com>
 <1483a913-dede-4daf-ac82-0329656a3d17@igalia.com>
Content-Language: en-US
From: Harry Wentland <harry.wentland@amd.com>
In-Reply-To: <1483a913-dede-4daf-ac82-0329656a3d17@igalia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: YT2PR01CA0018.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:38::23) To BL1PR12MB5126.namprd12.prod.outlook.com
 (2603:10b6:208:312::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR12MB5126:EE_|CY5PR12MB6129:EE_
X-MS-Office365-Filtering-Correlation-Id: 5214a67a-4f5f-4a0a-135c-08dea6dde96b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: HSAbG1Ti47ipkO6mbqdtgWSE0UXkOWd0u3EjU2vmJZkzMY6EPxhKtp66RwfygCgVIxRS/Mh+8UlSj6a66cmdU3NEMRRwGfT0NewSmcUsr17lMKqhTtXfkpUTc77yu495Kj+KguiOllTz+9TPC8ZLBzp3DAiF1/Vs+R3zyXJNjY21Hr5qiPLEGZXv+s3xeD7Yc57EQ0guYAnYifWOxAcVX8p26ewFcGjQ46mrGLcxhyNVsJYiqQigXGc44Sg/lji8pD2L4EySYA2mGt4dSVUHzHNdxOXmn3qv2plesFpWbn7noBiLS6zi4aDA5Iat7R87MAmI//55ky34oCUVHloAkocAic5VI+hNHAGqla0X5RUJS48NJHX8jAn6plWYM1lrZSpV1L16/AZawTX+hmrWtrJECAIBc39N+ygm2JrYhPyx5XJgyxLmp5ATFGcTh1hU5SIWH6HSDTtJ4i5OsxTAnMg3vP0Xoi/DoqJk+Mxk7HxFMF7jF0oBs0tHDuT8+M6DcOByEnrrE3YfM5GspzSnrRT7Fyp61sjcwcHn1GvR+wNfe/jbPH2JHyzXn8VUMd+mJhzRfGlxQWyOR+xAoIlLnTuB+tSfPnVgpoHA9AxTgnocmdzu/pcNq3X6LvdtzUh24V77j7ZRTcfqQVPdbhkkNbKJvasI7QP9SaHrUwiTKy2PUZsn7y+g3V7RF11WS48NCIgkeqiZykmeI5Zu1GyA5Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR12MB5126.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QyswdGUvRGhiai9ORDFMUzAxVXFDbWJ0azN0OHRaWDQrV05LNWdvWHRveVdS?=
 =?utf-8?B?TDFXcXdKTTJhcWFkUDJ4c3R2YjQ1Z3lsMStuSHNpYThNOE15TzlZTlIyMlRn?=
 =?utf-8?B?aWxBN1MyOE52R05qeTAyWUdiZ0JxUGlrUjJnWFdmbjJuOWRGQ1ZnWkhUeHl3?=
 =?utf-8?B?bUpGK0hhRHpHcFdkaTFydlJHaDF6amdVZUh4YWI2TFM1OFVTY2ZhcmdGa0FM?=
 =?utf-8?B?QmN5YTIvTE1uZXBzZzBjR2lSMk0xTTZGVDlSS2UzR3plbnNENEFSTlRlVE9u?=
 =?utf-8?B?OHNZVW1aK0dwT2xmcndMTjNDTC9YNXlZTUxxWFJtZmxEZzBzNG92UVB4aUVM?=
 =?utf-8?B?K2dLM0xDbUZkZEZvUW81cSsrbEU5M0tnbU8zOEo4RFpXcG43eEhxb1Vvckg5?=
 =?utf-8?B?Qll1MkVVeSt2MENPTGQ3eUNYSGpNUEpNeWpnMkdVNW1jdjFUQ3FDLzlWcEo4?=
 =?utf-8?B?OTY1VW5ybEpLOVpwR2YrclN5TVlsZUhyUHBOYm1QRjR3QmNSWFJtMlJ5eHU0?=
 =?utf-8?B?YnY3T3VnaSsxRFRrVkFZb09YTWt5MHFXU245eTFHNk5RakRqNjQva2xXYWRO?=
 =?utf-8?B?UVdhNnU1V0haaEppY0hWWXhEblBweUFDVGVoQ2JhUzcrTmhTTjFESEkzcFZU?=
 =?utf-8?B?cE0rV0FpNzlXczJXWFFZdUp4b3dVMlZ6OS9JREhrMWVhbjlUOXB1dnRVYWJY?=
 =?utf-8?B?SktoZVh6SU82V3I1bUFXdlJxZWhJOXZ2NXdaUFhKc1FYRFF1b1hWOGlvbmpp?=
 =?utf-8?B?UDNsUHkyNm4xQ3g0OTJGS0QrRE9Ia2ovWDFkQ2N4T2tzSFJPWmk4VEZEUW5n?=
 =?utf-8?B?a2d4KzFXd09HWVQzckZMTUhpdU9NVnlqT3o5cEY1U1JqT0lONkwwbS9DRTZ4?=
 =?utf-8?B?Qy90SzhIc2I1QnR5MmFUeGlid0lSVDlYV0lsSVBIelhmUHF4UkxTV0VKdDE1?=
 =?utf-8?B?UGZacXdTZjdEakVCRHlXa2EvN016cElEYUt4SUlPRlBMNWFmUzRvaFRJOWdw?=
 =?utf-8?B?aHNIVHA1eG9nWCt1VmlaazFQRFZiYUhETC9qRnVLNWV6eXdjWUJIUU9sY0ph?=
 =?utf-8?B?Wk41TzN1ZUJRejdJd2k1ditBSnZYb0NCQkJXVUVVOG1QMnN2MFA5WG12b2pH?=
 =?utf-8?B?U0pKTmZpVTIzL0VOOTF1UUJ2RFo4a1d2Q0c1ZThwaVdVSk14d1V0Vi96Z1Rh?=
 =?utf-8?B?cU5HRWo4THJMV2FoSTJKTmR1OWgyU3N3T3pHOStrZUR1aVAyNUhYdCtLZzJE?=
 =?utf-8?B?YUVnVGFTVjZzaDdqUnI5YktmeVR1M2w5N2xnZGJCbXR2MU5wZlpEd1p0eGE2?=
 =?utf-8?B?K1NkN2RwNFpNZEc5c1BGYTZOL3NIaVovY3pOMWp0VU9WcEdMVGxNWTMrOEdT?=
 =?utf-8?B?VkMzdVhHd0NnZUJ5OWk2clYvcEc0bHRvVTJlTFNtNDhiTFlDOE5kdklQOHk4?=
 =?utf-8?B?WUtpWVFMWVM0WEpqSWRtbGJpS0hTek9YckVqRVBWRW56U3UxRjdnek5XY2cz?=
 =?utf-8?B?WHF5NzZqZThPUjBKWnp6akJ3aGRzejFWNjRxNlFERXN4Si9FaTRJZVpuanZs?=
 =?utf-8?B?Mlp3anloTEViWnYvNEFvYUdwUDlUbGhnQ005N1RzWlZzcm5Bdm1rcVVxQXM2?=
 =?utf-8?B?QlJ2Mi8xY2YyNUs2cWdCeE1DM3BRZVd3UGIzTFBndDI5VVNSdTN6VzhLMER3?=
 =?utf-8?B?MmJtelk3T25yNjVuOE0xMXRJcXVsOEQ5N2lENmkzZkd5S0EvbFgrMHFMeFhh?=
 =?utf-8?B?emUrbHl3VzQ4QVl2UmFqYkhOMmhYMlFacWFDaS91cSthM3ppWnZQblVTekU3?=
 =?utf-8?B?UW0vREMwYWRyYVFqRU5Yd2RBL3ZNWld0YlFNaE9jNUZ2TGlzUEE2czdFSlp6?=
 =?utf-8?B?ejAveGJpMWhEUDNRa09seFZkRzZ0Y2ZPa0Zwb1cvOTV1aWZOa1VRWkZKekVV?=
 =?utf-8?B?RWswSTFtQmRsZlY5VDZTeENVMGloc2svbnZ0R0xlYzFaWW96alJad3N0Y0tR?=
 =?utf-8?B?dnpCZTU3NnZVMTFIb0diWnVHSU40UE1OV3c4dGROWlV0UU14Zi9ubllQcjhY?=
 =?utf-8?B?VGh6MkV0N09YZVRYOGtyN2Q5K2M4VWFYbmNHMytqVFpib2pGeHdhOS9nZ2JT?=
 =?utf-8?B?dkF1RFlRczc1c0dwaUxYaG42UFZ2VmtyckJJanNib3JuWTR2YnlkTGV0dlJW?=
 =?utf-8?B?MFZrdmFuKzlBZWdFSTd1Sk42STFSbjRZY0JOdHozRnQyVGdwM1NMMm5rZ1pV?=
 =?utf-8?B?TitXaHBLVGVRSTVERE81dnoxcEFlbmZUR29uMjRGVjhRMDhHSVAzZVZyeHN6?=
 =?utf-8?B?aGE3ZUVPNGFKeEpDUDdGaVY3ai9hdU1PdWtITXh5WWZKVkgyM0xUQT09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5214a67a-4f5f-4a0a-135c-08dea6dde96b
X-MS-Exchange-CrossTenant-AuthSource: BL1PR12MB5126.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2026 17:28:36.9097 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ApUqcarwoYKsabf/Y4cp7Tk5+Wh0o73kxrkRU6XZ0P4JzSqDQRrP7nBEGEbdt75YYma0C3bSis6mc7YGm0AcZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB6129
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
X-Rspamd-Queue-Id: 7D8734A6696
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,amd.com:email,amd.com:dkim,amd.com:mid];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]



On 2026-04-22 17:30, Melissa Wen wrote:
> 
> 
> On 21/04/2026 11:57, Borah, Chaitanya Kumar wrote:
>>
>>
>> On 4/21/2026 6:40 PM, Melissa Wen wrote:
>>>
>>>
>>> On 08/04/2026 02:15, Chaitanya Kumar Borah wrote:
>>>> Introduce DRM_COLOROP_FIXED_MATRIX, a new colorop type representing a
>>>> hardware that performs a fixed matrix operation.
>>>>
>>>> Unlike CTM-based colorops, this block does not expose programmable
>>>> coefficients. Instead, userspace selects one of the predefined
>>>> hardware modes via a new FIXED_MATRIX_TYPE enum property. Supported modes
>>>> include common YCbCr->RGB and RGB709->RGB2020 conversions.
>>>>
>>>> v2:
>>>>   - Naming changes (Pekka)
>>>>
>>>> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>>>> ---
>>>>   drivers/gpu/drm/drm_atomic.c      |   4 ++
>>>>   drivers/gpu/drm/drm_atomic_uapi.c |   4 ++
>>>>   drivers/gpu/drm/drm_colorop.c     | 107 ++++++++++++++++++++++++++++++
>>>>   include/drm/drm_colorop.h         |  84 +++++++++++++++++++++++
>>>>   include/uapi/drm/drm_mode.h       |  12 ++++
>>>>   5 files changed, 211 insertions(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
>>>> index 41c57063f3b4..16a2183b11bf 100644
>>>> --- a/drivers/gpu/drm/drm_atomic.c
>>>> +++ b/drivers/gpu/drm/drm_atomic.c
>>>> @@ -845,6 +845,10 @@ static void drm_atomic_colorop_print_state(struct drm_printer *p,
>>>> drm_get_colorop_lut3d_interpolation_name(colorop- >lut3d_interpolation));
>>>>           drm_printf(p, "\tdata blob id=%d\n", state->data ? state- >data->base.id : 0);
>>>>           break;
>>>> +    case DRM_COLOROP_FIXED_MATRIX:
>>>> +        drm_printf(p, "\tfixed_matrix_type=%s\n",
>>>> +               drm_get_colorop_fixed_matrix_type_name(state- >fixed_matrix_type));
>>>> +        break;
>>>>       default:
>>>>           break;
>>>>       }
>>>> diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/ drm_atomic_uapi.c
>>>> index 5bd5bf6661df..d69406b08a0f 100644
>>>> --- a/drivers/gpu/drm/drm_atomic_uapi.c
>>>> +++ b/drivers/gpu/drm/drm_atomic_uapi.c
>>>> @@ -761,6 +761,8 @@ static int drm_atomic_colorop_set_property(struct drm_colorop *colorop,
>>>>       } else if (property == colorop->data_property) {
>>>>           return drm_atomic_color_set_data_property(colorop, state,
>>>>                                 property, val);
>>>> +    } else if (property == colorop->fixed_matrix_type_property) {
>>>> +        state->fixed_matrix_type = val;
>>>>       } else {
>>>>           drm_dbg_atomic(colorop->dev,
>>>>                      "[COLOROP:%d:%d] unknown property [PROP:%d:%s]\n",
>>>> @@ -793,6 +795,8 @@ drm_atomic_colorop_get_property(struct drm_colorop *colorop,
>>>>           *val = colorop->lut3d_interpolation;
>>>>       else if (property == colorop->data_property)
>>>>           *val = (state->data) ? state->data->base.id : 0;
>>>> +    else if (property == colorop->fixed_matrix_type_property)
>>>> +        *val = state->fixed_matrix_type;
>>>>       else
>>>>           return -EINVAL;
>>>> diff --git a/drivers/gpu/drm/drm_colorop.c b/drivers/gpu/drm/ drm_colorop.c
>>>> index 566816e3c6f0..dd385e8dacbe 100644
>>>> --- a/drivers/gpu/drm/drm_colorop.c
>>>> +++ b/drivers/gpu/drm/drm_colorop.c
>>>> @@ -68,6 +68,7 @@ static const struct drm_prop_enum_list drm_colorop_type_enum_list[] = {
>>>>       { DRM_COLOROP_CTM_3X4, "3x4 Matrix"},
>>>>       { DRM_COLOROP_MULTIPLIER, "Multiplier"},
>>>>       { DRM_COLOROP_3D_LUT, "3D LUT"},
>>>> +    { DRM_COLOROP_FIXED_MATRIX, "Fixed Matrix"},
>>>>   };
>>>>   static const char * const colorop_curve_1d_type_names[] = {
>>>> @@ -90,6 +91,14 @@ static const struct drm_prop_enum_list drm_colorop_lut3d_interpolation_list[] =
>>>>       { DRM_COLOROP_LUT3D_INTERPOLATION_TETRAHEDRAL, "Tetrahedral" },
>>>>   };
>>>> +static const char * const colorop_fixed_matrix_type_names[] = {
>>>> +    [DRM_COLOROP_FM_YCBCR601_FULL_RGB]  = "YCbCr 601 Full to RGB",
>>>> +    [DRM_COLOROP_FM_YCBCR709_FULL_RGB]    = "YCbCr 709 Full to RGB",
>>>> +    [DRM_COLOROP_FM_YCBCR2020_FULL_RGB_NC]  = "YCbCr 2020 Full to RGB NC",
>>>> +    [DRM_COLOROP_FM_YCBCR_LIMITED_FULL]  = "YCbCr limited to full",
>>>> +    [DRM_COLOROP_FM_RGB709_RGB2020]     = "RGB709 to RGB2020",
>>>> +};
>>>> +
>>>>   /* Init Helpers */
>>>>   static int drm_plane_colorop_init(struct drm_device *dev, struct drm_colorop *colorop,
>>>> @@ -455,6 +464,81 @@ int drm_plane_colorop_3dlut_init(struct drm_device *dev, struct drm_colorop *col
>>>>   }
>>>>   EXPORT_SYMBOL(drm_plane_colorop_3dlut_init);
>>>> +/**
>>>> + * drm_plane_colorop_fixed_matrix_init - Initialize a DRM_COLOROP_FIXED_MATRIX
>>>> + *
>>>> + * @dev: DRM device
>>>> + * @colorop: The drm_colorop object to initialize
>>>> + * @plane: The associated drm_plane
>>>> + * @funcs: control functions for the new colorop
>>>> + * @supported_fm: A bitfield of supported drm_colorop_fixed_matrix_type enum values,
>>>> + *               created using BIT(fixed_matrix_type) and combined with the OR '|'
>>>> + *               operator.
>>>> + * @flags: bitmask of misc, see DRM_COLOROP_FLAG_* defines.
>>>> + * @return zero on success, -E value on failure
>>>> + */
>>>> +int drm_plane_colorop_fixed_matrix_init(struct drm_device *dev, struct drm_colorop *colorop,
>>>> +                    struct drm_plane *plane,
>>>> +                    const struct drm_colorop_funcs *funcs,
>>>> +                    u64 supported_fm, uint32_t flags)
>>>> +{
>>>> +    struct drm_prop_enum_list enum_list[DRM_COLOROP_FM_COUNT];
>>>> +    int i, len;
>>>> +
>>>> +    struct drm_property *prop;
>>>> +    int ret;
>>>> +
>>>> +    if (!supported_fm) {
>>>> +        drm_err(dev,
>>>> +            "No supported FM type op for new Fixed Matrix colorop on [PLANE:%d:%s]\n",
>>>> +            plane->base.id, plane->name);
>>>> +        return -EINVAL;
>>>> +    }
>>>> +
>>>> +    if ((supported_fm & -BIT(DRM_COLOROP_FM_COUNT)) != 0) {
>>>> +        drm_err(dev, "Unknown Fixed Matrix provided on [PLANE:%d:%s]\n",
>>>> +            plane->base.id, plane->name);
>>>> +        return -EINVAL;
>>>> +    }
>>>> +
>>>> +    ret = drm_plane_colorop_init(dev, colorop, plane, funcs, DRM_COLOROP_FIXED_MATRIX, flags);
>>>> +    if (ret)
>>>> +        return ret;
>>>> +
>>>> +    len = 0;
>>>> +    for (i = 0; i < DRM_COLOROP_FM_COUNT; i++) {
>>>> +        if ((supported_fm & BIT(i)) == 0)
>>>> +            continue;
>>>> +
>>>> +        enum_list[len].type = i;
>>>> +        enum_list[len].name = colorop_fixed_matrix_type_names[i];
>>>> +        len++;
>>>> +    }
>>>> +
>>>> +    if (WARN_ON(len <= 0))
>>>> +        return -EINVAL;
>>>> +
>>>> +    prop = drm_property_create_enum(dev, DRM_MODE_PROP_ATOMIC, "FIXED_MATRIX_TYPE",
>>>> +                    enum_list, len);
>>>> +
>>>> +    if (!prop)
>>>> +        return -ENOMEM;
>>>> +
>>>> +    colorop->fixed_matrix_type_property = prop;
>>>> +    /*
>>>> +     * Default to the first supported CSC mode as provided by the driver.
>>>> +     * Intuitively this should be something that keeps the colorop in pixel bypass
>>>> +     * mode but that is already handled via the standard colorop bypass
>>>> +     * property.
>>>> +     */
>>>> +    drm_object_attach_property(&colorop->base, colorop- >fixed_matrix_type_property,
>>>> +                   enum_list[0].type);
>>>> +    drm_colorop_reset(colorop);
>>>> +
>>>> +    return 0;
>>>> +}
>>>> +EXPORT_SYMBOL(drm_plane_colorop_fixed_matrix_init);
>>>> +
>>>>   static void __drm_atomic_helper_colorop_duplicate_state(struct drm_colorop *colorop,
>>>>                               struct drm_colorop_state *state)
>>>>   {
>>>> @@ -521,6 +605,13 @@ static void __drm_colorop_state_reset(struct drm_colorop_state *colorop_state,
>>>>                                 &val);
>>>>           colorop_state->curve_1d_type = val;
>>>>       }
>>>> +
>>>> +    if (colorop->fixed_matrix_type_property) {
>>>> + drm_object_property_get_default_value(&colorop->base,
>>>> + colorop->fixed_matrix_type_property,
>>>> +                              &val);
>>>> +        colorop_state->fixed_matrix_type = val;
>>>> +    }
>>>>   }
>>>>   /**
>>>> @@ -561,6 +652,7 @@ static const char * const colorop_type_name[] = {
>>>>       [DRM_COLOROP_CTM_3X4] = "3x4 Matrix",
>>>>       [DRM_COLOROP_MULTIPLIER] = "Multiplier",
>>>>       [DRM_COLOROP_3D_LUT] = "3D LUT",
>>>> +    [DRM_COLOROP_FIXED_MATRIX] = "Fixed Matrix",
>>>>   };
>>>>   static const char * const colorop_lu3d_interpolation_name[] = {
>>>> @@ -617,6 +709,21 @@ const char *drm_get_colorop_lut3d_interpolation_name(enum drm_colorop_lut3d_inte
>>>>       return colorop_lu3d_interpolation_name[type];
>>>>   }
>>>> +/**
>>>> + * drm_get_colorop_fixed_matrix_type_name: return a string for fixed matrix type
>>>> + * @type: fixed matrix type to compute name of
>>>> + *
>>>> + * In contrast to the other drm_get_*_name functions this one here returns a
>>>> + * const pointer and hence is threadsafe.
>>>> + */
>>>> +const char *drm_get_colorop_fixed_matrix_type_name(enum drm_colorop_fixed_matrix_type type)
>>>> +{
>>>> +    if (WARN_ON(type >= ARRAY_SIZE(colorop_fixed_matrix_type_names)))
>>>> +        return "unknown";
>>>> +
>>>> +    return colorop_fixed_matrix_type_names[type];
>>>> +}
>>>> +
>>>>   /**
>>>>    * drm_colorop_set_next_property - sets the next pointer
>>>>    * @colorop: drm colorop
>>>> diff --git a/include/drm/drm_colorop.h b/include/drm/drm_colorop.h
>>>> index bd082854ca74..c13b4b045fff 100644
>>>> --- a/include/drm/drm_colorop.h
>>>> +++ b/include/drm/drm_colorop.h
>>>> @@ -134,6 +134,71 @@ enum drm_colorop_curve_1d_type {
>>>>       DRM_COLOROP_1D_CURVE_COUNT
>>>>   };
>>>> +/**
>>>> + * enum drm_colorop_fixed_matrix_type - type of Fixed Matrix
>>>> + *
>>>> + * Describes a Fixed Matrix operation to be applied by the DRM_COLOROP_FIXED_MATRIX
>>>> + */
>>>> +enum drm_colorop_fixed_matrix_type {
>>>> +    /**
>>>> +     * @DRM_COLOROP_FM_YCBCR601_FULL_RGB:
>>>> +     *
>>>> +     * enum string "YCbCr 601 Full to RGB"
>>>> +     *
>>>> +     * This selects the matrix that converts full range YCbCr into RGB
>>>> +     * according to the BT.601 coefficients.
>>>> +     */
>>>> +    DRM_COLOROP_FM_YCBCR601_FULL_RGB,
>>>> +
>>>> +    /**
>>>> +     * @DRM_COLOROP_FM_YCBCR709_FULL_RGB:
>>>> +     *
>>>> +     * enum string "YCbCr 709 Full to RGB"
>>>> +     *
>>>> +     * This selects the matrix that converts full range YCbCr into RGB
>>>> +     * according to the BT.709 coefficients.
>>>> +     */
>>>> +    DRM_COLOROP_FM_YCBCR709_FULL_RGB,
>>>> +
>>>> +    /**
>>>> +     * @DRM_COLOROP_FM_YCBCR2020_NC_FULL_RGB:
>>>> +     *
>>>> +     * enum string "YCbCr 2020 Full to RGB NC"
>>> Nit: I think you mean "YCbCr 2020 NC Full to RGB"?
>>>> +     *
>>>> +     * This selects the matrix that converts full range YCbCr into RGB
>>>> +     * according to the BT.2020 non-constant luminance coefficients.
>>>> +     */
>>>> +    DRM_COLOROP_FM_YCBCR2020_FULL_RGB_NC,
>>> ... and here ^ DRM_COLOROP_FM_YCBCR_NC_FULL_RGB
>>
>> Ack.
>>
>>>> +
>>>> +    /**
>>>> +     * @DRM_COLOROP_FM_YCBCR_LIMITED_FULL:
>>>> +     *
>>>> +     * enum string "YCbCr limited to full"
>>>> +     *
>>>> +     * This selects the matrix that converts limited range YCbCr into
>>>> +     * full range YCbCr. Though not strictly a matrix operation but
>>>> +     * can be represented as one.
>>>> +     */
>>>> +    DRM_COLOROP_FM_YCBCR_LIMITED_FULL,
>>> I didn't full understand how this is going to work.
>>> Looks like it's merging two properties (COLOR_ENCODING and COLOR_RANGE) in a single colorop.
>>> But we can only select one enum value. So how to communicate, for example, a "YCbCr 709 Limited to RGB" conversion?
>>> The driver will have to define a coloro pipeline with two fixed matrix colorop in a row, one with only "Limited to Full" and another with "YCbCr Full to RGB" ?
>>>
>>
>> It depends on what the HW supports. Let's say a fixed function HW block can itself support "YCbCr Limited to RGB" then we just need a single colorop that exposes this enum. These are being added in the series that Harry published.[1]
>>
>> In Intel's case, we have two separate blocks to do this. One that does the range correction (Limited to Full) and then a fixed function CSC block that does only "YCbCr Full to RGB" conversion. If they are adjacent in the pipeline, they can very well be represent by a single colorop described in the previous paragraph but we have a unique situation where there is a 1D LUT in between the two blocks.
>>
>> [YUV Limited to Full] -> [1D LUT] -> [YCbCr XXX Full to RGB] -> [1D LUT].
> 
> I see. Thanks for clarifying.
> 
> Apart from the DRM_COLOROP_FM_YCBCR_NC_FULL_RGB fix above-mentioned, this patch LGTM.
> It was missing IGT tests, but I see Harry provided it in the series you linked.
> 
> Reviewed-by: Melissa Wen <mwen@igalia.com>

Feel free to also add my
Reviewed-by: Harry Wentland <harry.wentland@amd.com>

Harry

> 
>>
>> ==
>> Chaitanya
>>
>> [1] https://lore.kernel.org/dri-devel/20260330153451.99472-3-harry.wentland@amd.com/
>>
>>> Melissa
>>>> +
>>>> +    /**
>>>> +     * @DRM_COLOROP_FM_RGB709_RGB2020:
>>>> +     *
>>>> +     * enum string "RGB709 to RGB2020"
>>>> +     *
>>>> +     * Selects the fixed-function CSC preset that converts RGB
>>>> +     * (BT.709) colorimetry to RGB (BT.2020).
>>>> +     */
>>>> +    DRM_COLOROP_FM_RGB709_RGB2020,
>>>> +
>>>> +    /**
>>>> +     * @DRM_COLOROP_FM_COUNT:
>>>> +     *
>>>> +     * enum value denoting the size of the enum
>>>> +     */
>>>> +    DRM_COLOROP_FM_COUNT
>>>> +};
>>>> +
>>>>   /**
>>>>    * struct drm_colorop_state - mutable colorop state
>>>>    */
>>>> @@ -183,6 +248,13 @@ struct drm_colorop_state {
>>>>        */
>>>>       struct drm_property_blob *data;
>>>> +    /**
>>>> +     * @fixed_matrix_type:
>>>> +     *
>>>> +     * Type of Fixed Matrix operation.
>>>> +     */
>>>> +    enum drm_colorop_fixed_matrix_type fixed_matrix_type;
>>>> +
>>>>       /** @state: backpointer to global drm_atomic_state */
>>>>       struct drm_atomic_state *state;
>>>>   };
>>>> @@ -368,6 +440,13 @@ struct drm_colorop {
>>>>        */
>>>>       struct drm_property *data_property;
>>>> +    /**
>>>> +     * @fixed_matrix_type_property:
>>>> +     *
>>>> +     * Sub-type for DRM_COLOROP_FIXED_MATRIX type.
>>>> +     */
>>>> +    struct drm_property *fixed_matrix_type_property;
>>>> +
>>>>       /**
>>>>        * @next_property:
>>>>        *
>>>> @@ -424,6 +503,10 @@ int drm_plane_colorop_3dlut_init(struct drm_device *dev, struct drm_colorop *col
>>>>                    uint32_t lut_size,
>>>>                    enum drm_colorop_lut3d_interpolation_type interpolation,
>>>>                    uint32_t flags);
>>>> +int drm_plane_colorop_fixed_matrix_init(struct drm_device *dev, struct drm_colorop *colorop,
>>>> +                    struct drm_plane *plane,
>>>> +                    const struct drm_colorop_funcs *funcs,
>>>> +                    u64 supported_fm, uint32_t flags);
>>>>   struct drm_colorop_state *
>>>>   drm_atomic_helper_colorop_duplicate_state(struct drm_colorop *colorop);
>>>> @@ -480,6 +563,7 @@ drm_get_colorop_lut1d_interpolation_name(enum drm_colorop_lut1d_interpolation_ty
>>>>   const char *
>>>>   drm_get_colorop_lut3d_interpolation_name(enum drm_colorop_lut3d_interpolation_type type);
>>>> +const char *drm_get_colorop_fixed_matrix_type_name(enum drm_colorop_fixed_matrix_type type);
>>>>   void drm_colorop_set_next_property(struct drm_colorop *colorop, struct drm_colorop *next);
>>>> diff --git a/include/uapi/drm/drm_mode.h b/include/uapi/drm/drm_mode.h
>>>> index a4bdc4bd11bc..dc4b8566fec8 100644
>>>> --- a/include/uapi/drm/drm_mode.h
>>>> +++ b/include/uapi/drm/drm_mode.h
>>>> @@ -971,6 +971,18 @@ enum drm_colorop_type {
>>>>        *         color = lut3d[index]
>>>>        */
>>>>       DRM_COLOROP_3D_LUT,
>>>> +
>>>> +    /**
>>>> +     * @DRM_COLOROP_FIXED_MATRIX:
>>>> +     *
>>>> +     * enum string "Fixed Matrix"
>>>> +     *
>>>> +     * A Colorop block that performs a pre-defined matrix operation selected
>>>> +     * via the FIXED_MATRIX_TYPE enum property. The driver advertises the supported
>>>> +     * operations through this property.
>>>> +     */
>>>> +    DRM_COLOROP_FIXED_MATRIX,
>>>> +
>>>>   };
>>>>   /**
>>>
>>
> 

