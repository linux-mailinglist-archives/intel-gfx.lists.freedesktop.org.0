Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6044044B4D5
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Nov 2021 22:35:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7918C6E3F5;
	Tue,  9 Nov 2021 21:35:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB27C6E3F5
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Nov 2021 21:35:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10163"; a="232791771"
X-IronPort-AV: E=Sophos;i="5.87,221,1631602800"; d="scan'208";a="232791771"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 13:35:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,221,1631602800"; d="scan'208";a="601955115"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 09 Nov 2021 13:35:23 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 9 Nov 2021 13:35:23 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 9 Nov 2021 13:35:20 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 9 Nov 2021 13:35:20 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 9 Nov 2021 13:35:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NtJWBKn+D/ndz8QIlGh+OoJwIC1XMqYu81UY1NiWZwHnUqOGcLiC8X3i+VNu7Bq6br6T3vBIi7YnsKrR4saIoWjSecmKbIbQ6q5+20knvlTAo9TQfnrq8OIwvwKvMEKDkltIFoq2R2Ikr7Ttt7HmdZJPk8YBBs0glyg5/niIHPbuYoenMGYZWgnPPO5urqQGdh8C+iuyWbgVj6pUjkJwmGrYoNbI54kl308SndsVANzB5ZT+YO8z+AcGd9BL57ljZdJ8y4upqtw21pQdyppEnXCq2j4YqqejYP0Wlrs3N65yIX/RoPMG1+EHu4FHX2TuQZrY3KBerMGyq9zU9RkpPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EeeTynHTrB22zRzG6OsN1XMHOt/Tz9g7jKJfZQv+z14=;
 b=N9P7a8HaFIcSutC3rdKHdaBaaSWoSWKXNJQkyJ2SXG7MX+J7siRuZbkmNUTB4LvpI1M5zDNbAKvGohxELFNvOHOjgrq6G94bZcHPylqa/1p75JV6Lzqazr7L+4Ls+OqDqPBnLH3ztQf+E7h4zqQpMwMw+6WYkAqUBz51KSEOKuiMRXry0rs3+WxIgFnzPEWmCjSo0gNsZ7DJ5N2Kaxv7EJT3o5ALLwoqzhNtcRH54WRDP4A4uf8xkptaBkSWgXkAKcBieCYVmcEqc/FZsayfsVdGfIclVPAHyr73EjU4lPA2F4LwlH3mfW3tH/2haOtLX9M03ZSLyX1JYtQgOpPqlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EeeTynHTrB22zRzG6OsN1XMHOt/Tz9g7jKJfZQv+z14=;
 b=tSghO9of0/nsISHPq/cEYtC2yiTkqaQg7rbkUteAdGficO0UpGMu4zLCpxZDlatBYBjjNYI8S1vW+hCnibkhOVRLIAWZPbZTQv6Eeme5tM0qHL8N5rqcFXkSx6hb/or+Gfg0+1mp9ZoD/HEQUccGPwQhwTINEg9sRf5ys93AQ/M=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM6PR11MB4476.namprd11.prod.outlook.com (2603:10b6:5:201::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4669.13; Tue, 9 Nov 2021 21:35:18 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::a9be:a6bc:6d1f:3068]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::a9be:a6bc:6d1f:3068%4]) with mapi id 15.20.4690.015; Tue, 9 Nov 2021
 21:35:18 +0000
Message-ID: <ae685443-78b3-53d1-a190-a291904c8b1b@intel.com>
Date: Tue, 9 Nov 2021 13:35:15 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.3.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>, "Surendrakumar Upadhyay,
 TejaskumarX" <tejaskumarx.surendrakumar.upadhyay@intel.com>
References: <20211108105617.3522809-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <87h7cm79g8.fsf@intel.com>
 <SN6PR11MB34214435060D405A81BBA0F1DF929@SN6PR11MB3421.namprd11.prod.outlook.com>
 <87czn97sb4.fsf@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <87czn97sb4.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR21CA0030.namprd21.prod.outlook.com
 (2603:10b6:a03:114::40) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
Received: from [192.168.1.65] (99.72.232.53) by
 BYAPR21CA0030.namprd21.prod.outlook.com (2603:10b6:a03:114::40) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.3 via Frontend
 Transport; Tue, 9 Nov 2021 21:35:17 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ba81336f-43b6-4af9-b273-08d9a3c8d2f3
X-MS-TrafficTypeDiagnostic: DM6PR11MB4476:
X-Microsoft-Antispam-PRVS: <DM6PR11MB4476097FF03A8A3975E8AC6FF4929@DM6PR11MB4476.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MTyMOTgv4W4QB3fMFE22aOuouubPxyBmcv8uYJahnWwsNMmmzQvy4P5J8xru5Qf3tWL7jWAjyFA7Dt71EU+qDc6gSKhUrXLvhKFC8aXUvyWHelyHalOO7lFkSV7QHmPnk0Ms0PZH5Q+fbgsy3bST7/Gvbt1TV7aQVYWVJwDOPjiEeSnyS7hEOKcVQ3UF9Y+8Sm4RXiOeJOJQglJrCbjpMhKYtcu2bzQ1x/hJtQT4ucUIGbJPinCDRZQZN7I9dlVJ8on3IpmbMOMktrAauOZqhF2stncrMLFYRRUeY2+pwdnweI0HObQbDRyXnQzznmNKvfcClF2ut3eFRVJ6STHLPshaC45ASy3vIAa5OSyYVyNPViBCaPOzxNO56Za+6mE3WY84RTJyEPVfQJ3NpBB9qnPIudQmBHsX9U+Hd/tccgwbOpZ8bBMFdk+TXgb0VNHARXFQBgufAxZCxoForF6B1EBuGuDv2OX4rHJks4/nKdTrcyviPJS6672BngYmsl6C1E526KNPypOonYrCHZ+NLqvqhxUB4BKPfkJ8pPn9WtkxyGvCPX1fGwFwImT4fE9xfyDhGmBTMgqfeGBL15/WB6ncFz1Z81x7MOYdM8GulNNuWDOE2Mt2cGR7aWh9ZrGcck3/56lYBzkZLRGFTgtIbnUF9ud3l/6u7cva2VcIi//bbetvRKi7dAQed1rbQK/0IaOLN6KOAbpRlb5FpHPzALSzXaiGxstCOYZDNJg15lQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(2906002)(31696002)(5660300002)(26005)(316002)(4326008)(15650500001)(8676002)(6486002)(186003)(8936002)(82960400001)(31686004)(86362001)(508600001)(45080400002)(66946007)(16576012)(110136005)(6636002)(66556008)(2616005)(956004)(66476007)(38100700002)(36756003)(83380400001)(53546011)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TVZzVmNJMnlaRGFnQjVMd3B1anV2US9mQVRsOEFZVVlYemNRbkduZEhZamJR?=
 =?utf-8?B?S1lMZ3NpM1FrQTlTNUU3WGh1bllqZmNDdm5ZTnhNdzBRNzVNbm5qK3hZM092?=
 =?utf-8?B?OERMaGp1SnFka2pGeVBYMU8yalpnVlhQMS9MajA5RkFGL29xQXBFUXpSUnRp?=
 =?utf-8?B?Y1JhdmVDK2F4TEhhNDBISEFxcDE0WVBoMXdRTytIRTY5dktJNk40YmR2ME5U?=
 =?utf-8?B?RzVIY080M29KWGQyZU1TRzdiSlJpL29tRUxoNXNBcmlTUUpmQmhndVZNck9v?=
 =?utf-8?B?cW1TS0pKQmFtUXhtM1AweC90bFZaWFBKbkZXUGwvT2ZNbGpxak4yT2FSRzM0?=
 =?utf-8?B?ZFJpT24zQXphY3JvaWMzREliQTNrUGtCeFpwMk9nSTlNNlErVjZrbHphd1VN?=
 =?utf-8?B?a2QrdG52V1RSYnVzWmJjNkdmZWpDNFhEVWxFWVVaSndSRDlTVFRMV1BueTVr?=
 =?utf-8?B?WC9sUGxxTjYxWW43MG95UTBMS0R3d0xtS041YmhPcVVGcmhqVFgreEF0Y0pQ?=
 =?utf-8?B?UndhVVVrK0taT3U5U2htdG1oeitpeXVldk9HU0F3MkZucXM3dVNBcVhxNVR1?=
 =?utf-8?B?YythU2phM2l2VkZQcU1HeVc0aW53VUh2QVorTVZkekNpT0NhWlorTkVBNlJW?=
 =?utf-8?B?dGxMb3lEYTA2azNBUUJ0VTVqbFQ3TVU0UjRjelpiL25VNThubWh6RGVyQ3Iw?=
 =?utf-8?B?aXExTTBYcXM0aXZic1pVdUVpbEtRR2FCL2F5QU8vNlVHVWJXUHJEb05sc3NV?=
 =?utf-8?B?VWVSQWVxbHVOOU5CUGxERmVjVlNQY3JTcThkL1FZTnFOdjJDM2hWL3MrUFAz?=
 =?utf-8?B?STluTzlPZEwvYVFtYUhrMTNHbTVZSEFyMVV0cDBSWHhQQzlUSTlHL1V6Y3R4?=
 =?utf-8?B?QW9qbGtvU3RSaHdjYlRkd2dLOGkvZyswMGRZL2cxV3YxMkhuRmtSUGVxYjVD?=
 =?utf-8?B?eGhlcXo0d3BjZm1nNURUU2cwRmpxUkl1MmQxOXlCREppemdqcExMdlo0Qk1C?=
 =?utf-8?B?b003REVLT2hVZ0tuNjRuOFZJR0NYZU0zWnlSejJ5VWw4aXFOVDNkTHdaLzZX?=
 =?utf-8?B?Nmx4TEJLRnZnTjlNMXE2eHAySm5xdXRPVEQ0L00ybTVhelZCT2doRDBJUDV1?=
 =?utf-8?B?OXN2U1ZJRlM2SUJYMTJWM0xqVHFYb00wMlhab1hSL0plUGhjSVg1bi9GZHN6?=
 =?utf-8?B?S1hKaHo5TS9iU1pKanV6d2ZkU1RnYS8vUHluY01leDkrcnVITUM2d2poNXpQ?=
 =?utf-8?B?Ny9lMmNVREJCL2RXejN4MW1XM3EvN0d3cjZrUFZZQ3dKSnB1VUpjV3FYZUFt?=
 =?utf-8?B?VGxxZmZidmlqNkFyT1Z5R0FqcDdPZm5PMW5hVlg1WUw2ZlBSZzRWeXNENmNp?=
 =?utf-8?B?dU1MOVgrS21Tc05Oa2JTSSt2cGtpUytoWTBvMkxjVGs1S2lITzR4a0N1cHpZ?=
 =?utf-8?B?QzZxMlN6T1UzWHVUZGZJRmU5RlFuMHYrS1JRdXB2ZUR0bW5EMmd2cHI0bXd4?=
 =?utf-8?B?RW1HczNqbmkwdlYrSkJFTVVIbHNkTGhLajZwdUR0dUwzejRSYTJ0T0xsVjhy?=
 =?utf-8?B?VUovOUxVWEFTdmIvOWpOQThLN1NwSHNwQWJYb2hJRmU4RW9BbmNvOXhaRFFs?=
 =?utf-8?B?cE1ab0d4RDdzaTZVeGU4YVppdTdwN0owNWZRektLL1ZTNWZZMlVwZFNhVnow?=
 =?utf-8?B?OFdjMFFNd25ZMDlERDBNNk5qc3huM2t1bVk4OCtya3FWQXRmaDdQMDZNWmZ0?=
 =?utf-8?B?UjQwOUN6VDRBUkwrQjBNck1MdmIvcCtqaG5jSUdwbG8wRHBmTlR3K1g3bHc5?=
 =?utf-8?B?VEZKcklYeDN6QmRRbXM4Mkd2ZW9PZS9hTnRCR1lWTVlUbnNGSmhqQzBYR2pJ?=
 =?utf-8?B?RjFVWlpyU21KUmdDemhReGJyWXhSMjg1RFAvMi8xcnRjZVhPcmtFcFp1WVhY?=
 =?utf-8?B?TG51TlljeEhPRXNHck5GU0IzR2Q1RUhkcURhSDNNNG92TXN3dUdpUlNXYml3?=
 =?utf-8?B?VHNDVlp0Q2I3UnF3T3J6ZjR4WHRyMVp2UXFsOHM3K1VZcGtNTjUvWmR3Y2pF?=
 =?utf-8?B?Uzh5akRjbnR5WVYzdldONi9US2dhQVI0TjlhMU9zY1pMcThRNWZoSVJjdzQ2?=
 =?utf-8?B?MFREMXI3ZlBYZHpzS3BxUlhaVTlrMXZ5WVo3eUl1NW8wdktMMTVWRHNqNnM2?=
 =?utf-8?B?TUZiQm15NTFRT0VXRTR2c05VVlM2UFN2NWI2RG5KbTN2amJ1SEcxWjdobFNh?=
 =?utf-8?B?aHJjOGpWUnJoOTdhWGdHZUR2NXBRPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ba81336f-43b6-4af9-b273-08d9a3c8d2f3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Nov 2021 21:35:17.9042 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TKBZhb11NWLp8CR0DoPSzoEl139H+89BbKIq0bdlQ+6mOzMx+V1gaUxMVF+VcRfvGq9qBKzeg1FIcROIRenlxT5SKpw2KJ8I4nk55ElKasw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4476
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/gt: Hold RPM wakelock during
 PXP suspend
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 11/8/2021 10:32 PM, Jani Nikula wrote:
> On Tue, 09 Nov 2021, "Surendrakumar Upadhyay, TejaskumarX"	<tejaskumarx.surendrakumar.upadhyay@intel.com> wrote:
>>> -----Original Message-----
>>> From: Jani Nikula <jani.nikula@linux.intel.com>
>>> Sent: 09 November 2021 00:37
>>> To: Surendrakumar Upadhyay, TejaskumarX
>>> <tejaskumarx.surendrakumar.upadhyay@intel.com>; intel-
>>> gfx@lists.freedesktop.org
>>> Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/gt: Hold RPM wakelock during
>>> PXP suspend
>>>
>>> On Mon, 08 Nov 2021, Tejas Upadhyay
>>> <tejaskumarx.surendrakumar.upadhyay@intel.com> wrote:
>>>> selftest --r live shows failure in suspend tests when RPM wakelock is
>>>> not acquired during suspend.
>>>>
>>>> This changes addresses below error :
>>>> <4> [154.177535] RPM wakelock ref not held during HW access <4>
>>>> [154.177575] WARNING: CPU: 4 PID: 5772 at
>>>> drivers/gpu/drm/i915/intel_runtime_pm.h:113
>>>> fwtable_write32+0x240/0x320 [i915]
>>>> <4> [154.177974] Modules linked in: i915(+) vgem drm_shmem_helper fuse
>>>> snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_generic
>>>> ledtrig_audio mei_hdcp mei_pxp x86_pkg_temp_thermal coretemp
>>>> crct10dif_pclmul crc32_pclmul ghash_clmulni_intel snd_intel_dspcfg
>>>> snd_hda_codec snd_hwdep igc snd_hda_core ttm mei_me ptp snd_pcm
>>>> prime_numbers mei i2c_i801 pps_core i2c_smbus intel_lpss_pci btusb
>>>> btrtl btbcm btintel bluetooth ecdh_generic ecc [last unloaded: i915]
>>>> <4> [154.178143] CPU: 4 PID: 5772 Comm: i915_selftest Tainted: G
>>>> U            5.15.0-rc6-CI-Patchwork_21432+ #1
>>>> <4> [154.178154] Hardware name: ASUS System Product Name/TUF
>>> GAMING
>>>> Z590-PLUS WIFI, BIOS 0811 04/06/2021 <4> [154.178160] RIP:
>>>> 0010:fwtable_write32+0x240/0x320 [i915] <4> [154.178604] Code: 15 7b
>>>> e1 0f 0b e9 34 fe ff ff 80 3d a9 89 31
>>>> 00 00 0f 85 31 fe ff ff 48 c7 c7 88 9e 4f a0 c6 05 95 89 31 00 01 e8
>>>> c0 15 7b e1 <0f> 0b e9 17 fe ff ff 8b 05 0f 83 58 e2 85 c0 0f 85 8d
>>>> 00 00 00 48
>>>> <4> [154.178614] RSP: 0018:ffffc900016279f0 EFLAGS: 00010286 <4>
>>>> [154.178626] RAX: 0000000000000000 RBX: ffff888204fe0ee0
>>>> RCX: 0000000000000001
>>>> <4> [154.178634] RDX: 0000000080000001 RSI: ffffffff823142b5
>>>> RDI: 00000000ffffffff
>>>> <4> [154.178641] RBP: 00000000000320f0 R08: 0000000000000000
>>>> R09: c0000000ffffcd5a
>>>> <4> [154.178647] R10: 00000000000f8c90 R11: ffffc90001627808
>>>> R12: 0000000000000000
>>>> <4> [154.178654] R13: 0000000040000000 R14: ffffffffa04d12e0
>>>> R15: 0000000000000000
>>>> <4> [154.178660] FS:  00007f7390aa4c00(0000) GS:ffff88844f000000(0000)
>>>> knlGS:0000000000000000
>>>> <4> [154.178669] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033 <4>
>>>> [154.178675] CR2: 000055bc40595028 CR3: 0000000204474005
>>>> CR4: 0000000000770ee0
>>>> <4> [154.178682] PKRU: 55555554
>>>> <4> [154.178687] Call Trace:
>>>> <4> [154.178706]  intel_pxp_fini_hw+0x23/0x30 [i915] <4> [154.179284]
>>>> intel_pxp_suspend+0x1f/0x30 [i915] <4> [154.179807]
>>>> live_gt_resume+0x5b/0x90 [i915]
>>>>
>>>> Changes since V1 :
>>>> 	- split the HW access parts in gt_suspend_late - Daniele
>>>> 	- Remove default PXP configs
>>>>
>>>> Signed-off-by: Tejas Upadhyay
>>>> <tejaskumarx.surendrakumar.upadhyay@intel.com>
>>>> ---
>>>>   drivers/gpu/drm/i915/gt/intel_gt_pm.c   |  7 ++++---
>>>>   drivers/gpu/drm/i915/pxp/intel_pxp_pm.c | 15 ++++++++++++---
>>>> drivers/gpu/drm/i915/pxp/intel_pxp_pm.h | 18 ++++++++++++++++--
>>>>   3 files changed, 32 insertions(+), 8 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>>> b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>>> index b4a8594bc46c..d4029de1c80d 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>>> @@ -303,7 +303,7 @@ void intel_gt_suspend_prepare(struct intel_gt *gt)
>>>>   	user_forcewake(gt, true);
>>>>   	wait_for_suspend(gt);
>>>>
>>>> -	intel_pxp_suspend(&gt->pxp, false);
>>>> +	intel_pxp_suspend_prepare(&gt->pxp, false);
>>>>   }
>>>>
>>>>   static suspend_state_t pm_suspend_target(void) @@ -328,6 +328,7 @@
>>>> void intel_gt_suspend_late(struct intel_gt *gt)
>>>>   	GEM_BUG_ON(gt->awake);
>>>>
>>>>   	intel_uc_suspend(&gt->uc);
>>>> +	intel_pxp_suspend(&gt->pxp);
>>>>
>>>>   	/*
>>>>   	 * On disabling the device, we want to turn off HW access to memory
>>>> @@ -355,7 +356,7 @@ void intel_gt_suspend_late(struct intel_gt *gt)
>>>>
>>>>   void intel_gt_runtime_suspend(struct intel_gt *gt)  {
>>>> -	intel_pxp_suspend(&gt->pxp, true);
>>>> +	intel_pxp_runtime_suspend(&gt->pxp);
>>>>   	intel_uc_runtime_suspend(&gt->uc);
>>>>
>>>>   	GT_TRACE(gt, "\n");
>>>> @@ -373,7 +374,7 @@ int intel_gt_runtime_resume(struct intel_gt *gt)
>>>>   	if (ret)
>>>>   		return ret;
>>>>
>>>> -	intel_pxp_resume(&gt->pxp);
>>>> +	intel_pxp_runtime_resume(&gt->pxp);
>>>>
>>>>   	return 0;
>>>>   }
>>>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
>>>> b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
>>>> index 23fd86de5a24..3f91996dc6be 100644
>>>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
>>>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
>>>> @@ -7,8 +7,9 @@
>>>>   #include "intel_pxp_irq.h"
>>>>   #include "intel_pxp_pm.h"
>>>>   #include "intel_pxp_session.h"
>>>> +#include "i915_drv.h"
>>>>
>>>> -void intel_pxp_suspend(struct intel_pxp *pxp, bool runtime)
>>>> +void intel_pxp_suspend_prepare(struct intel_pxp *pxp, bool runtime)
>>>>   {
>>>>   	if (!intel_pxp_is_enabled(pxp))
>>>>   		return;
>>>> @@ -23,10 +24,18 @@ void intel_pxp_suspend(struct intel_pxp *pxp, bool
>>> runtime)
>>>>   	 */
>>>>   	if (!runtime)
>>>>   		intel_pxp_invalidate(pxp);
>>>> +}
>>>>
>>>> -	intel_pxp_fini_hw(pxp);
>>>> +void intel_pxp_suspend(struct intel_pxp *pxp) {
>>>> +	intel_wakeref_t wakeref;
>>>>
>>>> -	pxp->hw_state_invalidated = false;
>>>> +	if (!intel_pxp_is_enabled(pxp))
>>>> +		return;
>>>> +	with_intel_runtime_pm(&pxp_to_gt(pxp)->i915->runtime_pm,
>>> wakeref) {
>>>> +		intel_pxp_fini_hw(pxp);
>>>> +		pxp->hw_state_invalidated = false;
>>>> +	}
>>>>   }
>>>>
>>>>   void intel_pxp_resume(struct intel_pxp *pxp) diff --git
>>>> a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
>>>> b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
>>>> index c89e97a0c3d0..f2cf3117ed93 100644
>>>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
>>>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
>>>> @@ -9,10 +9,15 @@
>>>>   #include "intel_pxp_types.h"
>>>>
>>>>   #ifdef CONFIG_DRM_I915_PXP
>>>> -void intel_pxp_suspend(struct intel_pxp *pxp, bool runtime);
>>>> +void intel_pxp_suspend_prepare(struct intel_pxp *pxp, bool runtime);
>>>> +void intel_pxp_suspend(struct intel_pxp *pxp);
>>>>   void intel_pxp_resume(struct intel_pxp *pxp);  #else -static inline
>>>> void intel_pxp_suspend(struct intel_pxp *pxp, bool runtime)
>>>> +static inline void intel_pxp_suspend_prepare(struct intel_pxp *pxp,
>>>> +bool runtime) { }
>>>> +
>>>> +static inline void intel_pxp_suspend(struct intel_pxp *pxp)
>>>>   {
>>>>   }
>>>>
>>>> @@ -20,5 +25,14 @@ static inline void intel_pxp_resume(struct
>>>> intel_pxp *pxp)  {  }  #endif
>>>> +static inline void intel_pxp_runtime_suspend(struct intel_pxp *pxp) {
>>>> +	intel_pxp_suspend_prepare(pxp, true);
>>>> +	intel_pxp_suspend(pxp);
>>>> +}
>>>>
>>>> +static inline void intel_pxp_runtime_resume(struct intel_pxp *pxp) {
>>>> +	intel_pxp_resume(pxp);
>>>> +}
>>> For the casual reader, the pxp suspend/resume functions have become an
>>> impossible interface to use correctly without digging into the source code.
>>>
>>> Separate runtime suspend/resume calls *and* a suspend function with
>>> runtime parameter?!?
>> Hi Daniele, would you be ok if I add runtime arg? Please let me know what do you think.
> Err, please *avoid* having runtime as parameter.
>
> BR,
> Jani.

Might be better to just open-code the runtime_suspend function, i.e.:

void intel_pxp_runtime_suspend(struct intel_pxp *pxp)
{
	if (!intel_pxp_is_enabled(pxp))
		return;

	pxp->arb_is_valid = false;
	pxp->hw_state_invalidated = false;

	intel_pxp_fini_hw(pxp);
}


And remove the bool param from suspend_prepare. No changes required for 
the resume.
Note that the change above requires the function to be moved to the C 
file, with an empty implementation to be added in the header for when 
the PXP config is not set (basically the same thing we do for the 
pxp_suspend function).

Daniele

>
>> Thanks,
>> Tejas
>>> BR,
>>> Jani.
>>>
>>>>   #endif /* __INTEL_PXP_PM_H__ */
>>> --
>>> Jani Nikula, Intel Open Source Graphics Center

