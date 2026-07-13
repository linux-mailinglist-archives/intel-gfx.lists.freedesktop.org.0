Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id z9qnDDJFVWo3mQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 22:06:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B353074EF33
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 22:06:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=ecDW9i3s;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B139C10E661;
	Mon, 13 Jul 2026 20:06:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH8PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11012043.outbound.protection.outlook.com [40.107.209.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 592B810E65A;
 Mon, 13 Jul 2026 20:06:06 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RtK7ZmQIP2qQ3w21I3oDcXztJj+UlRRDMtGviF+ZSkp8euq70MwV75juUNkS/V8gmS1DS942Dtyp8Nnf16S1Uvodd7lG7mk48Vd0KIfpne+UKCuiGanYZ0/wJ69PkswAwJls7vBOclAqSthrh6OnxXuEUEfv1p8X/VnW6QQiYqd/F6Fp+t8jQt1Gcrv2ir+I3SmmCIO/VD8Jho3v83Ehg5ZcWTgWcANeGDej5K59H53KSqX3zPsdZcT7owSaXT638jWBVgTPx6OCvf7+gsfP9PU70QvPL7yTxqeuUjRLAqipIs2LrGsjd+zi+ZHzNLw6YtQiqXTHUsgYonerFFLyTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CvtFaoklJHZcO7xD9NbgTPWTQmEla24kl7d1kBmeS/0=;
 b=QWAieqy6L0p8834O5MGtwe3pLRG7311U/p9JHXCxQ+vn9SAzN59cRlwnBQ+7rnqDZ3geraqeP2O2qNiR7+Lootw+CZ9wvomNUJtzBMc/SzLC9fnjPgfBtn01yrmA8EkQ7a2E8vE3j8OurwAd4wSzoDF8Xv6jjPWZt7RPrjNljgbgVqBaPFK4igMjACpoe6u/0/zpLfTwuKwFld+RcxeWpbH6822gRjHVTww/CMSrOx6oZ8ZN3fqbyymRCwppmy7ggDgd/bcKvTY7APQZN9HAo1Xi3eHYdTStsfsRB4XGRl4VuUODxnPxUUErRDYlfmiipQWZUehKZBR5z7OxfwIAcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CvtFaoklJHZcO7xD9NbgTPWTQmEla24kl7d1kBmeS/0=;
 b=ecDW9i3sSn5WbI+kYF/uQd5Lf898GHmar+kYLcSuM40uV8Fmj/txEaCwjYj0RxwwGOrxXl0QWK6gDU3j3zZVVHsjScznd4B0AqChVq28bIBa73Jp0HtU4lJhZHED5++T7Ns3vTBtN/1C7Zu+coeVA3mOOPKZenM3gMYeyHSEr/Y=
Received: from SJ0PR12MB7007.namprd12.prod.outlook.com (2603:10b6:a03:486::8)
 by SN7PR12MB7348.namprd12.prod.outlook.com (2603:10b6:806:29b::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.18; Mon, 13 Jul
 2026 20:06:03 +0000
Received: from SJ0PR12MB7007.namprd12.prod.outlook.com
 ([fe80::6f95:c4a2:894d:9e8a]) by SJ0PR12MB7007.namprd12.prod.outlook.com
 ([fe80::6f95:c4a2:894d:9e8a%5]) with mapi id 15.21.0181.019; Mon, 13 Jul 2026
 20:06:02 +0000
Message-ID: <2fa23cb1-b4c9-459b-a0dc-31960313a243@amd.com>
Date: Mon, 13 Jul 2026 16:05:51 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] drm: Guard DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Robert Mader <robert.mader@collabora.com>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 dri-devel@lists.freedesktop.org
Cc: Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Daniel Stone <daniels@collabora.com>, Uma Shankar <uma.shankar@intel.com>,
 Louis Chauvet <louis.chauvet@bootlin.com>, Melissa Wen <mwen@igalia.com>,
 Simon Ser <contact@emersion.fr>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Leandro Ribeiro <leandro.ribeiro@collabora.com>
References: <20260703073230.19982-1-robert.mader@collabora.com>
 <6d8806b8-fc71-4699-82c4-7189a0ea2284@intel.com>
 <bb5918f5-a6da-4908-9332-18e0df39c005@linux.intel.com>
 <7d58b289-eabe-4d68-9080-c7202b0f60a0@intel.com>
 <d42d5750-f3c5-4e2b-baa3-514b87e59e86@linux.intel.com>
 <361dfc91-94e8-4289-9b3e-5280803d9257@collabora.com>
 <a7887776-c26c-4f6d-a662-2d8ef005ff4c@linux.intel.com>
Content-Language: en-US
From: Harry Wentland <harry.wentland@amd.com>
In-Reply-To: <a7887776-c26c-4f6d-a662-2d8ef005ff4c@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: YT4PR01CA0375.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:fd::10) To SJ0PR12MB7007.namprd12.prod.outlook.com
 (2603:10b6:a03:486::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR12MB7007:EE_|SN7PR12MB7348:EE_
X-MS-Office365-Filtering-Correlation-Id: 5e6cf495-b3ff-4b51-e556-08dee11a2a24
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|23010399003|22082099003|18002099003|4143699003|11063799006|56012099006|6133799003;
X-Microsoft-Antispam-Message-Info: KDmTXZrKpxJM1/ZgYCmTXOsdv8NYeCZfqvy8VMfQSxAG31Cls8vCL9D6o2im/bujVZ5xL/TzdNWCxrBjeRJ45hTK1M3u81DG9v//2DSCqC+NcdURNxrkAxkJhtGLZdZoV2/2fR1bEdwg2mWuiskr3VeLAXpSFvr1T4Bt7OTdwYStHgKOrnOES6FR43XGtnW29yOEyviQKCYBpZXsKS/IF+SH6xsUhKKbZCoGdb96Ec1F8TR9Ojs3aohh6bPpRIXY/araXEAK2opohMHkODBebNJDIuSGKfUzGYuNVe+QoJsbpGA6n6Fh5TQqm08JxapKpWgARWjYTPmq/CIjkk2woXFEhKV40QRH99ot5c98yPidxg07QJwAzj2UranrVx/mP2t552y6jTyCOUAKpsqQPgQgh6DMhkFzgyIq7TGLxy6fIA05bmIQEUCEidNO24LAKs0/ngSuHar+/rkWuXOHdJ4j7zWR0NtJxAA5y36/rhc0rO3T3OirhVOq76yb8Tbl3q5Lwns1WkKVckRAKRW4lEh0qX5pGskJnohKpmyyfV24IjUnK7zQn0PtmiG5RwFZa9Er8DHrQq0Gs1kg3P0Qnc7y4xFegUsbkplYGolUs7fx+jYB0c1oNOqFRyTFdEybPfhRItMwc9JJM+c2xxv+pGP3Q6qBZV/A6Woj+qNztlg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR12MB7007.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(23010399003)(22082099003)(18002099003)(4143699003)(11063799006)(56012099006)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZWVPeFhESlR5N0x2MEc3ZHorNWYzL0RzOFZDL0pLVjZqTFI2Z0IrKzlqNGxU?=
 =?utf-8?B?V2RHbkFaRWh3bEdPbGYrMVJrRHBJeFB1YWZHSElZUEdJempNRGJWdkJOZ3Zw?=
 =?utf-8?B?N3JlbXJpenJ2eDNnR3YrZUQ4MXlZV0hjNmxFZldybzdSd3BqMFdValEySEVp?=
 =?utf-8?B?aFh2dDJmQyt3K3p1OEVXY1lFN3htTFB2UEVRQjBXSGNaVUI1TUl6Kzk5VnJ1?=
 =?utf-8?B?UFFTN2k3QjFsS2lGOVNrOEhSSW54aER0SXNvQllWMXdyL3FSVUN3UjJtQ1Jz?=
 =?utf-8?B?ZFIyUE1OOVN3VVFSbHR1ZEE1MndqTnZuQmk4ZFNKdVRWV1dHbnZlSjIzeFdh?=
 =?utf-8?B?ajhDSkdlSXMycGlWQXZ5RXEvbHpRMUpZbEhsc1NWV0dtR0QvN3NzMi9IbWdl?=
 =?utf-8?B?a2RraWZRN0V2UXdrV0FCN2JxejFFajhTSXVxc3lXWk1NZ3ZMeUszL0ZsVWhl?=
 =?utf-8?B?NTVvNTRENm40TkowT1JxUzhDNjVsNUVidmY3cmFFMkJPdjlEMWpGWW10c0wy?=
 =?utf-8?B?WFBpSEtWa0xIS1lIOGt0aWNXWGpLa2hrMGRndVRQK3hxSlUxazBPS3FZa210?=
 =?utf-8?B?TGU3bHNOaDByTDFOblVDSlVidmtHaFNCR2o5UUc1bVhZSVd1TU5qNkRVYzNi?=
 =?utf-8?B?dEt0dy9vRCtDRkkvTFozZEpTM0dYaUlKdFczMEljamxjN2daUDJZOGJuTlZV?=
 =?utf-8?B?OE44bm5FcUs5ditReXhlT2wrMG1LVCs2ZUQ5S2VBZHAxT2pXSHJtTllNc3R0?=
 =?utf-8?B?NXVrODdDZTZkcDVZeFN4UXcyRHlRRmgrTmF6clhXY3dnd1h3VDdFSmE3NTUr?=
 =?utf-8?B?dWsvUjFhNm02UUVRV0F3S3F5SDZlZDRES1I4b0RPVDlwc0ZyUUt4bUJtSW5a?=
 =?utf-8?B?bWlFY0FYVXUwYThRVXZBbWgwOElwSXR4OGhDbHFHc1ZUVzI4RXNyajh5ejI0?=
 =?utf-8?B?aVZsWjZWaFd1TUE3TGJLaHFxNDZER1YycWEvOHRaKzI0YitZM2ZZYVlHTTN4?=
 =?utf-8?B?czlOSEVESHo0T1JJNzd1Y215M0QxaytmR3MvSkJOVDdNdVpreHNhQ3BrMVpz?=
 =?utf-8?B?Yy82SkNYZzEwTUw3VDRDaExvbjZtQUFieGNwNFZ2bVJvYzZaOUZFdjBjb0dq?=
 =?utf-8?B?UmcrS285QkVZeUwxK0FET3dZN2toQ1E0RnJjaG52dFgrRDJ1NG13dXErRUs2?=
 =?utf-8?B?RWNaM2k4WnV4dFp4Skl4K1VCaTI2aFVFaGQ2QjFmN1REdW9kTms4MFRRU1JV?=
 =?utf-8?B?K1FDVC9aQU0vNUFVVHk5blgreGliUlp2QXkrQmZacklZSXltVE1tV3Y5R29r?=
 =?utf-8?B?c3Ywd3BQVHFTUGFFeHNMR1lOUTUyWVVxb2ZNZmtySm1iL2pNNkd4eHJ6d2dr?=
 =?utf-8?B?TzEvV3JTcnJqb0RPbFRGMVB2dDNka2orMlFaSVdsZXJYdWpUdEpRZW1mQ1pI?=
 =?utf-8?B?QXdYdDhvZkJVZnlCM3c4TnduYnMvZEpVd0dFVVhXYmZkS0NUOWZheGErNnFo?=
 =?utf-8?B?dDhOUFR4Y1BmS0tGUGJqV2h1TkZySXVjSENnS3lZZW0zem5zOGlxVkl5QWor?=
 =?utf-8?B?d25id1lSVmRoMklrdU02K3diQ2cyaHV0Zzc2OU9mbzRQTnFCZXI5YzdxMTRH?=
 =?utf-8?B?Tnc3b1J0VThyN3MrdlZlSGJmYVg3aXZvc3dFNVA4Zk5hRHA3WFU5YmxUZTI5?=
 =?utf-8?B?bUdXQUgzZng5bkVqZDdFcHVwZ0ZrVEhZaTd5WlVCMndzNy9iYTNEN0pWZnA0?=
 =?utf-8?B?b0ExcFNqOXBxL0laa2Y2OFVIOGFZZ21MOEJyczhkL3NjNFJHUXd1eFNJMm9o?=
 =?utf-8?B?ck1iRXNDYXBNTDVmeVdUaUU1V2tWdzdTeGNaZ3UrSWs5M0oyRHBvb1FuaXlS?=
 =?utf-8?B?ZzgxVTZlNWRqVlV5Ym1EcTFzSHRMYVlJeW9kaDZEQkxEZUkrNmNHOU9IYXds?=
 =?utf-8?B?UTJYenJ6R056b011MElFVnRHcDQ2YTIwd2ZlUkR3bzNlWjJJQmRINjNvSm02?=
 =?utf-8?B?c0VGZXIwM1JOZGhjdU1rcnNwQllXdmlBNnhRQWJ6YW04WGxzTmpUVkZQQ29E?=
 =?utf-8?B?ZmdQLy9zeVA0K0Q1VnZmSTNsdWk2Ujl6bjE5TUNHMWJhWXQ4OTc5UGJSTjBW?=
 =?utf-8?B?bHF4ZkppWDFnT3ZGQ1pBaW9PVFhnMWZzdGovSWJMRTRFRG5GTi9ZZktEc1JY?=
 =?utf-8?B?Nm9WZDE3S1VOZmw2NEVRa1E3S0NNT2sxUmtyUmJGQmNLTlpnU2RUSnNXTHRU?=
 =?utf-8?B?TXpsTEdyT0dpSzhLZ2FnV1FoN2kzSmQvLzZKSDBYMktsNUFUTkhtSGdTcmZT?=
 =?utf-8?B?eXVnRWVwbm1XT0drNUR3dmVVbklrS0VTSS85M0NRcmFFR2xlZUZzQT09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e6cf495-b3ff-4b51-e556-08dee11a2a24
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR12MB7007.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2026 20:06:02.7241 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9nc4baFflIsc6WL7TPzSn12O0oNcEwqKEboL3sO+bhJWlBfc+YiNynQG3X0uGUiIcLK/cruUyLiToT3Ttkb7XA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB7348
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,collabora.com,intel.com,bootlin.com,igalia.com,emersion.fr];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[harry.wentland@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[amd.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,amd.com:from_mime,amd.com:dkim,amd.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B353074EF33



On 2026-07-09 07:49, Maarten Lankhorst wrote:
> Hey,
> 
> On 7/9/26 13:14, Robert Mader wrote:
>> Hi,
>>
>> On 09.07.26 12:02, Maarten Lankhorst wrote:
>>> Hey,
>>>
>>> On 7/9/26 08:44, Borah, Chaitanya Kumar wrote:
>>>>
>>>> On 7/7/2026 6:31 PM, Maarten Lankhorst wrote:
>>>>> Hey,
>>>>>
>>>>> On 7/7/26 10:03, Borah, Chaitanya Kumar wrote:
>>>>>> On 7/3/2026 1:02 PM, Robert Mader wrote:
>>>>>>> The client cap is currently advertised unconditionally, even for drivers
>>>>>>> that do not support plane color pipelines. If clients supporting the later,
>>>>>> s/later/latter
>>>>>>
>>>>>>> like Wayland compositors or tools like drm_info, enable the client cap on
>>>>>>> such drivers they will be left without both color pipeline and the legacy
>>>>>>> properties COLOR_ENCODING and COLOR_RANGE, effectively breaking YUV->RGB
>>>>>>> conversion support.
>>>>>>>
>>>>>>> Prevent that by only marking the cap supported if there are actually planes
>>>>>>> with color pipelines.
>>>>>>>
>>>>>>> Note: while the color pipeline replacement for the legacy properties is
>>>>>>> still under review (1), we can assume that it will work as a drop-in
>>>>>>> replacement.
>>>>>> This change will but a driver can also choose to export colorops like programmable CTM_3x4 to achieve the same.
>>>>>>
>>>>>> We should also perhaps document this somewhere that if a driver supports LEGACY properties, it is imperative to implement some version of it with the color pipeline line property.
>>>>> Would this be doable inside drm core? Implement the color pipeline properties, get the fixed pipeline for free?
>>>> Right now, the Bypass(default) pipeline is automatically created when we call drm_plane_create_color_pipeline_property(), we could come up with a similar helper that could also create a pipeline that replaces the legacy properties.
>>>>
>>>> But this can't replace the existing helper entirely because some HW (though unlikely) might not support YUV buffers.
>>> No need to do this for free, but a cheaper way for drivers to implement legacy
>>> properties by only implementing the pipeline would be nice, similar to how
>>> atomic also implements legacy modesetting and universal planes.
>>
>> I really like this idea - should we take it to the corresponding series, https://lore.kernel.org/dri-devel/20260623164812.81110-1-harry.wentland@amd.com/ so the initial implementations for AMD and VKMS directly do so?
> 
> That would be great!
> 

If I understand you correctly you suggest to map legacy COLOR_RANGE and COLOR_ENCODING to the new FIXED_MATRIX colorop in a generic way, instead of having drivers advertise them separately. Do I have that right?

It's probably a good idea. It should be easy to make that change after merging the Fixed Matrix series with YUV support.

Harry

> Kind regards,
> ~Maarten Lankhorst

