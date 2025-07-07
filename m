Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB87FAFBAA9
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jul 2025 20:30:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ECE810E506;
	Mon,  7 Jul 2025 18:30:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="4ZnJ8KWi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2060.outbound.protection.outlook.com [40.107.93.60])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A4B510E50D
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Jul 2025 18:30:15 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Lat6Lr3bbhrX6iqGlZEGFwYjbS5l/EbV7YD28zhop4nLyzTaeN0/hl9mTQ7PBG8pEd0EtGPPIr6Zy7dIjHPyl5dLvGAnno8i62e3YPc/iCrh3MYt0z5UcemYWnISjk2yN3kjyll2bjBmAZ1A0VS2whrnafFJdxZ+d75fQ3UHRAI6PLAkvENtYh8Ob2ndgkxVueuAWM3HzCzJsU7FWfbxcLt1nf8OJXA179cn9jWL7M3sJj59cg7I5UvDRR36GBYv+C/pCBJwX7fp40xFfWcWke50OpsESdZWHDADF5X8ERl/kfC56HJZyKJEgdAao53ZRZkihiHm2i2LD9F3CLmUAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6M8vv7VJiKufGxBOH5yxjSGHFrzwv7ADyUqA+r4xOec=;
 b=H7dojgNH/3H8W3EhKZgNQLLwObArPHHe+bnobTNPiS+4W5BKkOKeefLdwoLAd8gn/D7jEkzjnApDhV4MDuqaTWCkm/ro/lRG/CbPRxGberAZZuwScMBbAp5DQlMOK7iLxuAwoKLZSd6d2L1pf5lBMFyeRfB7a3B4ONyMzKVwXT8K+irTntELbg9HzW+lb3erRJcK6bJeOoQEWHTfbUOgqq6wtzwfb9AmTQP26RTxFBykDC+u96M7KOk0jFR4uerMQ/8JPsywW8P9umoyMC7g+f/ac6MvIT0N7LI7ETWYgiQf/9IwmfUmIAEwHcqLdXSZnYBRP6im4U4QX3KY9PUmDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6M8vv7VJiKufGxBOH5yxjSGHFrzwv7ADyUqA+r4xOec=;
 b=4ZnJ8KWiFJhiCvnuvttj/cpaooXMsLCQdLIRtzRfGLZVb/+4ujtbTQ/LK4P+fijcoud7cLK+wD3bFNHgAugITEv7/ShowqsiOl2ZX/qohy/bcIYIfnlhxTHbkLXKlzulL83mMfb/JcVuo/Pjiwsy2HR7jF6wct4v/jbGiXNNu4E=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by IA0PR12MB7721.namprd12.prod.outlook.com (2603:10b6:208:433::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.22; Mon, 7 Jul
 2025 18:30:07 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8901.024; Mon, 7 Jul 2025
 18:30:07 +0000
Message-ID: <705afe45-1d5e-4f1a-9349-6b17f95887ba@amd.com>
Date: Mon, 7 Jul 2025 20:30:02 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Change ret value type from int to long
To: Matthew Brost <matthew.brost@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Aakash Deep Sarkar <aakash.deep.sarkar@intel.com>,
 intel-gfx@lists.freedesktop.org, jeevaka.badrappan@intel.com,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Lucas Stach <l.stach@pengutronix.de>,
 Rob Clark <robin.clark@oss.qualcomm.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Julia Lawall <julia.lawall@inria.fr>,
 Dan Carpenter <dan.carpenter@linaro.org>
References: <20250704105600.1937682-1-aakash.deep.sarkar@intel.com>
 <3b85826c1b0b03ba922c4c948d98d24543bcec67@intel.com>
 <e3e14f51-b094-4cf1-afee-642de25d9459@amd.com>
 <aGwN82fPCQdAeMhz@lstrano-desk.jf.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <aGwN82fPCQdAeMhz@lstrano-desk.jf.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR4P281CA0025.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c9::20) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|IA0PR12MB7721:EE_
X-MS-Office365-Filtering-Correlation-Id: e8e7a3e6-7012-4726-adfb-08ddbd844c85
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WnBaMXQxTm5kQm5hdDhoSG9PSXdOU2RxS2psVDBwWXRKbEpPRTlFeTZ2OHNk?=
 =?utf-8?B?QytaSzZKRU1EMzlFUE03cXB5b0poTWFwSGl4TWh1cmVhZDgvTDBGTnM0UDRH?=
 =?utf-8?B?RmJ4eHNOT2FKbG9UMWRhUEFTT1VkdDdnaTN1bFhhUUYrMEM1MVpQY0ovY0RW?=
 =?utf-8?B?cVdCT1pPaHFzVVNMQ2ZKQ0JOczR2Z1ZhTDI5SE9DWnY5K2pwZk1zanIxZzg0?=
 =?utf-8?B?Ri9laXJseE1WNkNqK0VnV1QxaitiUHJsbXV3cjF0d2ptOVNtQ0VqQXo3TStv?=
 =?utf-8?B?TGtqMmdURUZBT3dLWmduQlZSY0ljVU5zbXg0QkpmTGVwU0RreVE4cC9keHht?=
 =?utf-8?B?akxITnZibmJ5MVVqYXZXa1ZPbDRpanAwcG5tMVEya0xLNDNOV1QrOVpQbE90?=
 =?utf-8?B?anhpaU1WRndFQVk2ckFrck5NSW9GalNnUFhFVW5pbndQUzZoZlVxYlgzbFRP?=
 =?utf-8?B?OHRpOXpCYklrUGxyNjEzRHNabk41aHg3ZU03Y29iaFFvTmRZSmtSSWhRQmQ4?=
 =?utf-8?B?bkZvM09NOVR1ZTRROERmYStUUUNxYlg3WGZXOHpGbTNDcjdxY1g2YkZDeEZP?=
 =?utf-8?B?bS9tamI5UlVZV0ltTTlhRzhuc2duQ0cvUC9ic3UvdVlWUG5rbEQrZkcyNzAx?=
 =?utf-8?B?KzdEUVI2ZWwxdk5YUmFwcDVhaDlIMzBVZ3dRcXlpRFF1RVhmazhibm53Mlk2?=
 =?utf-8?B?SXRUeDhzbDZaQzVGdjVpbktpV2VDZmpoMTU4QXBGaWo1YUpwd21sNmJyZThN?=
 =?utf-8?B?T0xaZzZzM2R5Rmd2Z0FMOGI1NTZPRFFPVmd6N1FWQWczUlRsbHQ0UkRTcXZ0?=
 =?utf-8?B?U1lOTWRVS3N3OEZDV2F5aXJpNGVtTXJPeHVwQW9xU2VlRVJmUlN6RytTRTRS?=
 =?utf-8?B?SXIvZDQvZDRCb05Zd25iS1JZZ2swa1I5NmFQNDNsaklsWnNDcFdTSHNpWDY5?=
 =?utf-8?B?bUx5eXY0WWtNWHYwb053ay9iOXdjT2lMbU9za0VXQVI5NXY1UXhicUZBZ3pH?=
 =?utf-8?B?YXhhRUVKQXF6ejhYTnRzeU5aK1lQLzg0d0NKUHdKUXB1YWp5TEJ2V1lOTE1w?=
 =?utf-8?B?RHM2MjZTSE9iQW5pUncrNG1KWTdPZWhLMzRMYVNrZ0NxcnhaYWNQeXVSN1h0?=
 =?utf-8?B?QUNZUjZwVnV1K241bFdpRFNDdnI4eE1rNEFLOVd5eEt4blZBaEVZdXlvVFdB?=
 =?utf-8?B?eVJ5SC9Jc0hWZE90cy9td2h6N1hsa0UzRnN6ZkZ1QkszdlhzODQ3VmVudW12?=
 =?utf-8?B?bERNc2dQVFNidFNBVEZUVnlwVS80UkJjdE5xWHhvY1JmNldOL3ZFcWxITjFm?=
 =?utf-8?B?Q0xKc0d0RDJQZHA1YUlNazBkWnBHR1orUFFIdzVmT0pxYmtpQlp1dXdTdWEx?=
 =?utf-8?B?NmNCeFYxbU8yNDYydjROWXRZRnNsV1JXKzB1aUVNSlorNWl6ekx2Y1k4OWhx?=
 =?utf-8?B?RzVyMC9BUE51QXVISjZoQkpJZnY2a2FBTk1ZLzNHajlwS3puUGF1OVNFUlV5?=
 =?utf-8?B?Tnh5ak84YldZVW1LOXlISnI4bStmVm90TkxFL0xPR0pNY1d6cnh5YThHREpk?=
 =?utf-8?B?NEFZajhKV01DUElxZGZRRFFHQTNBUVVBb3dBTHQvS2xuMmpjWjdydE9vbm53?=
 =?utf-8?B?bVNLaXJCckxpNEdHUDRkaVRSQmlWNUhLOVJudWdvYVQ0V0tXMnFjOHNWWW4v?=
 =?utf-8?B?SUJIK2VDUk5SVmpBTzNNYjhQVklTUHBlZGs1Ky9zR2lzcDAxL1JaT25QdS91?=
 =?utf-8?B?VzRqUFNUaTYvTXFZaGVKOXpqOFlaN24wcXpodTQzZUJSS3lzRXh2Qkljdkxh?=
 =?utf-8?B?RTFHQjE4UkZCODg0NFU3VzVZQkFEUmhxdlpJYnpNZUJ1TzFIam5ybytFc1Zr?=
 =?utf-8?B?eDNIcTlKR2poei8ydHFjN1oxbGIxV0poOUVLSkZ6QlhsZUNMamFNTldtbkpW?=
 =?utf-8?Q?jgM0GPa9NyE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RmR0cy9kNmtFVzNvQk1ZcnFmSDQ3eGF6SUY4WXlKWnpNRFFMYXNjdU40WDBw?=
 =?utf-8?B?QXZHc2JKeW52b05WYmdDMUI1VEs4TVI5a3duOVNhSUdMZWZvT2xFUVR0VFJ2?=
 =?utf-8?B?WjNUSTV2VUtsamltN210ZzZuREZTNDQyUUNNMHBmZXR0QWpybmZ1MWgwRUZF?=
 =?utf-8?B?TzFQZjBXNjJ2cGpGK2VMOER3Z1FMQkFvcnVCcm9oV1d5RkduVWRobkw2SW5v?=
 =?utf-8?B?N3FBQnFLV0crem5NaFRZSDVCN2UwL2hMMWxtQUpiWnUvSE5aR3poZjBzOHpw?=
 =?utf-8?B?eUFXT1pCbU0wNlgxbkJTcENpQTNZbjJSVk94RWdqRG10d0JZSU1tZ0grTlBB?=
 =?utf-8?B?MzhPNytNZTI5YnVCaGNaZUVOMkdyR25NMTl2d1JBSm16dDA5RnpIN0JkdXZH?=
 =?utf-8?B?Q3lKWVZwUjJ6cERiRmZPckRXUW1EdDZCT3FhREF5RzhNR21QQ2VOZGIwcjZj?=
 =?utf-8?B?aFlJOGsrZzA5RDROaXE2MURYTnBHQkxGNWdzSTVIa2Q1cUVBMXplZ3FkV3FC?=
 =?utf-8?B?ZFNpMEZDa2tNZmYrb0JRYnlNUE5KYVM0OWFQM01DRDM4dVhzS0lUcTFVV3pi?=
 =?utf-8?B?R1lUWk1hOFljK1Fsbk1YUHE5cFk0WEhNcXQvSExDMUQ3eDZzRElzT21EMWZ1?=
 =?utf-8?B?MzBhRzdXY1dMMU1RR1QwZGN2cXkxMVNmenpsNmpnZ0hORUNiNjQ4VTB6N3M2?=
 =?utf-8?B?enZqaEJnNGpKakJtVFFsWGR6NzJwOHh5TlQrWmh2elZXdHFSUHYyNG9Ga25D?=
 =?utf-8?B?dTNrUkpCK2JzSktJZGtmVHRmV3dOZGF0ZGVUL0ZvM3hla0lUMkFHZDNFQXpn?=
 =?utf-8?B?RGpOcnFxZERmSHhySzdyOXNrL0c3VUFRd2g2RTJvUlowbFp2dUcwWlNyN1By?=
 =?utf-8?B?K2VjM0JhRjRnblF0N2cyVzdrcDBHMCtJeGtMSGgrWVpxbHZlNjRJRk05Z0FC?=
 =?utf-8?B?TGt1ZS9QaFBENS8zSEJKL2R5SVpoclNxTnN5d2g2c0lOajhHNU93STJ6U3A5?=
 =?utf-8?B?QzZwaVJaamMxVlBsYlE1WmJuLzQ5eDgvRytnVDhsekdKZkZGWFdJb1I2NmJT?=
 =?utf-8?B?bDhSYWlBVHpTQlRza1RTbmlFVkVsdjFWc0w2MVFlVlFURitCSkE1TTRYYnpz?=
 =?utf-8?B?c3ArdVFZZkdDSUdrUWZKZzBoM2pzWHRNbW04R2pxQzRxUmRhWjJiOTZjTW9r?=
 =?utf-8?B?RHN3WnNhdHhuSjBEZU1GRlBTU0hrN3FvKzY4aENTTEhNcUpmcnFRMU4rUzNj?=
 =?utf-8?B?SjVoWW1UNm82NnRHWENrRDRoeWFJUVhJMFp4K053eVNjVVF6VUVrNjlyRzU3?=
 =?utf-8?B?NlFGNnlDZWZoTUFuZlVPRWl3VVRzeGtsbk9GUlNzUitBY2xmT0NMZldqMmJj?=
 =?utf-8?B?NEFTMUtmZU0rcUU1TjZ0RE4xbUUzbisrb3JoL0pBRGNId2NVUlJMUFB2dWdS?=
 =?utf-8?B?WFB6NThjdnZJN0MzcXc2cEhjdzdCWVRNWDdoR2V5VUJtTzFuNGlCSUtsRHJt?=
 =?utf-8?B?VHdyVXpVWm15K0FLUFpGZlcydjlwSVdtT3NFejU4QzFGTS8xK1V1WWhaRkdk?=
 =?utf-8?B?MjhwUE1GZ3YzSHEwVUMrbDFQaEV1SjRCWlBraHhUNG9LR0tKY1Y3ZW1YSFlS?=
 =?utf-8?B?bEFBNTFkeFpuTUdncHZHTWJrdU9DWG1BSFp5Q09rM0hGYmJFS2pJSmJIS3p5?=
 =?utf-8?B?dHJacnpxMFBtRmVEUFMyQnZxcXBUbmUycDcxd0xxeE55ZldNTHUramtVWnpv?=
 =?utf-8?B?Y0JJWG9jR2haeEx0RmlURGNKQXVaeTNEcU96Ym9TMnZKcStRV0lRVUp6T2pC?=
 =?utf-8?B?cW1RV1JNV2dyemxpaFRaQzcwdVhmWFA5WEg0VnEyT051UHhBT0pyK0xJN1Rl?=
 =?utf-8?B?R1NGZGVBUldFSXZWR0N0aUdpRVNhVHpQVC9HaXArS3VITXRNL2RJUmlwaW1z?=
 =?utf-8?B?MGVST1cwSUoxQytJczhDcTBleWJrTXNRUTRodTdkeFp0b0ZYN0Qxc3R2SUkx?=
 =?utf-8?B?MW91NFRrVVJnbDdFMHRQYlZjeCtaKzNodkxveXk3NkcrZnVFQjkvRWl6MytR?=
 =?utf-8?B?Z2trc2FhWUZNNXZPdVhQdWxXUUVFYnB1UWdvK3h3ekZDWkQ1RFI2OWkwLzc1?=
 =?utf-8?Q?Hs/CIdCpgOuOpzlExJwq8o3EJ?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8e7a3e6-7012-4726-adfb-08ddbd844c85
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2025 18:30:07.6587 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WkEr9ahx/qdC/W/7+9pHJHf2Ywd5PxDZ8P45qy7NFh4D/9ZbUI/H03ynPLnPVymq
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB7721
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

On 07.07.25 20:12, Matthew Brost wrote:
>>> Then it occurs to me this looks like a common mistake to make. A little
>>> bit of git grep on dma_fence_wait_timeout() quickly finds multiple
>>> similar mistakes in drm, at least amdgpu, etnaviv, msm, and tegra. Cc
>>> some maintainers FYI. This class of bugs could cause issues elsewhere.
>>
>> I can only guess but I think all those use cases use a fixed small timeout as well. IIRC amdgpu uses a timeout in the millisecond range.
>>
> 
> Ah, no. A quick grep shows multiple cases in AMDGPU where long +
> MAX_SCHEDULE_TIMEOUT is used:
> 
> - amdgpu_vm_cpu_update
> - amdgpu_vm_wait_idle
> - amdgpu_bo_kmap
> - amdgpu_hmm_invalidate_gfx
> - amdgpu_gem_wait_idle_ioctl
> 
> I'm pretty confused by the pushback here—it's among the most confusing
> I've ever seen.

Those cases are perfectly ok. long + MAX_SCHEDULE_TIMEOUT is correct.

The problem only occurs when you use MAX_SCHEDULE_TIMEOUT and push the return value into an int.

> Again, this patch is almost certainly correct. I've made this mistake at
> least twice myself.

The problem seems to be that i915 is using a small value, while XE is using MAX_SCHEDULE_TIMEOUT.

No idea why that difference is, but when you look only at the i915 code it looks unnecessary.

Regards,
Christian.

>>> Let's also Cc Julia and Dan in case they have ideas to improve static
>>> analysis to catch this class of bugs. Or maybe one exists already, but
>>> we're just not running them!
>>
>> Yeah, agree. A script which checks if the input timeout could be >32bit and the return value is assigned to something <=32bits is probably a really good idea.
>>
> 
> Yes, I agree. -Wstrict-overflow or -Wconversion in GCC would catch this,
> but enabling them causes the core kernel includes to quickly explode. A
> static checker would be a good solution here, or we could fix the Linux
> kernel so it compiles cleanly with these options.
> 
> Matt
> 
>> Regards,
>> Christian.
>>
>>>
>>> Finally, for the actual change,
>>>
>>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>>>
>>>
>>>> Signed-off-by: Aakash Deep Sarkar <aakash.deep.sarkar@intel.com>
>>>> ---
>>>>  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
>>>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>>> index 456fc4b04cda..7035c1fc9033 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>>> @@ -7092,7 +7092,8 @@ static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_stat
>>>>  	struct drm_i915_private *i915 = to_i915(intel_state->base.dev);
>>>>  	struct drm_plane *plane;
>>>>  	struct drm_plane_state *new_plane_state;
>>>> -	int ret, i;
>>>> +	long ret;
>>>> +	int i;
>>>>  
>>>>  	for_each_new_plane_in_state(&intel_state->base, plane, new_plane_state, i) {
>>>>  		if (new_plane_state->fence) {
>>>
>>

