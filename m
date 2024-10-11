Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8BB999D62
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 09:04:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DC4D10EA54;
	Fri, 11 Oct 2024 07:04:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TiFGBnls";
	dkim-atps=neutral
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0063210EA54
 for <Intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2024 07:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728630269; x=1760166269;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=quF0JQ1wW8vwCgIpa/GIYZntnnp1CO+5VJORBkQ+K1Y=;
 b=TiFGBnlsbrVz88v0alaSbEVXPRruMYXw/hg6OHEoj2RBxI1AMyigHTmR
 zz5glaUIDepCGfy42GhMusdwoD7xQF/WJ5JiwKY3XMQPfGAQzz4iWC6/R
 0nuzpiwVC1VBmbSqcJYXQ7gqIlBFo6qaHr6781mepy/xHd5mR1k3JmnGO
 2AuUcNSixKSfr4EkXO/bsF9l9rDGx7i2fyrID49OUhYgJ3tcwEk6Shjpw
 ejNKVT8bg4/ZUr086Y4HVDv7BAs/Wa+5SgZPXoct/xBw4xEKAlsy23atX
 G9HapU7oVNTLlc8zDNokU7Q3VhIJ29Pt8kY/z1IUNOq5oXoV+a7HOLMcr g==;
X-CSE-ConnectionGUID: EWXQvXvsRpSo5f/FyhjcVg==
X-CSE-MsgGUID: fMcReFSHRZ6djtQBXJgn6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="38667779"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="38667779"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 00:04:25 -0700
X-CSE-ConnectionGUID: cFQEVkACS5+bv18duYawyw==
X-CSE-MsgGUID: 97KcDTYBTg2ZU2LguSMdzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="77138863"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2024 00:04:25 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 11 Oct 2024 00:04:24 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 11 Oct 2024 00:04:24 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 11 Oct 2024 00:04:24 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 11 Oct 2024 00:04:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B+OU2U/kfUdUIyl6g3YzXjH8eoHQhXwMd8xLlRMfnn3fFolsfhl4rJqO7qJNcdOVGuXijbcVcSXD0FYSDyfqadSBb7CQtbcW2H4dU/wtBysAoqzYZPG6DdwIvuitvGVqnHHoZ9SLhgkKJ6YYyU5AhLYmi982P/KnCuGJ7cla9PjRXSxtcD9d3+aBug0XXz2sYoPmD3nQd40kov2FiXOUX3VKVegn1Y2mcK6/yEC2QPBoV25SJOHl5J3z2pYaw2vqSpnzdO2iOJDkA8VVbj8qo6a48cFv6clFbF+P1/JOwt9w8MzJ+46JeQPeRU8PgDQVsfIblBOVwgkXtjc01AFz8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UNoAFO8yZTaT0kVuNM8tviIG9kRIM9X/5STULJK4h3s=;
 b=qc11SK/bb2FiNHXBuhUsbR1kERM0l7UBij9/midm2loUof017myBTtp+2mjjlgIHhKXZubNaJL+rGApDRzIF7B3PKj7L5C4D9BkauSSVG+m6gTgziEzRYqz12zMYOTLD/AwF7z7KHJm34m+zbPraw/qVMqJ4UdmGFOrwjHp/K4oeAcYF90n6xAX0/O99/Rv0fD7ZQByYhX6tbL9/WdC+GxPn8ZcPwTLnSOmq4YUaKY5DPZ4kY7FH5AezqOY746lnB0UYCgGXYtSWA5b+tsY3G69QbWHv0E5HeDiNNCk6QeGIrEBxgxtvnZf9MKm1K8Ctpg7tz1oF1Vrv1JXget09yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3238.namprd11.prod.outlook.com (2603:10b6:a03:7e::30)
 by IA0PR11MB7838.namprd11.prod.outlook.com (2603:10b6:208:402::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.18; Fri, 11 Oct
 2024 07:04:21 +0000
Received: from BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03]) by BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03%3]) with mapi id 15.20.8048.017; Fri, 11 Oct 2024
 07:04:21 +0000
Message-ID: <85919a8b-0027-4a40-8be0-69be8582d70e@intel.com>
Date: Fri, 11 Oct 2024 12:34:15 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display/dp: Reduce log level for SOURCE OUI
 write failures
To: "Taylor, Clinton A" <clinton.a.taylor@intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
References: <20241004210816.3976058-1-clinton.a.taylor@intel.com>
 <35fd248c-db2a-47f5-a59e-549e2adaad72@intel.com>
 <2916f018481d3ecb354c0c1d6c2bd8f0c891bef4.camel@intel.com>
Content-Language: en-US
From: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
In-Reply-To: <2916f018481d3ecb354c0c1d6c2bd8f0c891bef4.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0116.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::18) To BYAPR11MB3238.namprd11.prod.outlook.com
 (2603:10b6:a03:7e::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3238:EE_|IA0PR11MB7838:EE_
X-MS-Office365-Filtering-Correlation-Id: b6cf418d-732d-4dc4-a3b5-08dce9c2ee47
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NEJhUTNLVm12aERBdjhRZ0s5ZWlKZmFCM1ZRVHZETkd1OTl4bTNPak9KUkcx?=
 =?utf-8?B?bFE4UUU4MTVFNllKdExabG5BM0pmNHdudy9rQTJYODc0cURvRm9yQkFNUHBz?=
 =?utf-8?B?d25aVzd6UmxLTzBpc1cxUXlPbTZ6WHdiTEIvRzd0N0RyVExBaUVnakxSOFk4?=
 =?utf-8?B?Nmx3a3dPYjZNUW1wRlR4Qk05clJCTGFWWkNhYVdXaHUwSGRGdzBvZlpQQ05B?=
 =?utf-8?B?d2RjbENJM0x6RXNDaFFSQVFGZkhPMjZ2ajBlU2FKSEZvSGowL1BwelVUMWZs?=
 =?utf-8?B?UXNhYWsxbEw2Q3RTUWF5T2RiL3Y4MTBNTGdvMDhxY2c1YzA3TVFFY01QbWk1?=
 =?utf-8?B?VUtHaE9zSFdHVytkR2h5bmgwYis4akhLLzltUFFzSC9RcWh1UnhWWFo4RmxD?=
 =?utf-8?B?KzdNWWVoMUt0YUN1Sld4UzEvNmdZbXkxTm8yZ0NOdWpzQ3A3N3pqQmZxdzlL?=
 =?utf-8?B?RUgzdnliVkJDU25nWEVOQ2tzdldJaGlIMDJCbHlmQ3JRbGtidEpvUXZ5RnNE?=
 =?utf-8?B?MHdwSVoyK0s3RjMwVVVnVlV2cW9Yc09FZHpIVStTWlM3amxpNmJNNkJpaE1H?=
 =?utf-8?B?c3MrZHpGUmRYYkFFZnV2UnJMVHpYc0loUmMrU2NzWENYUDZ5aHFtT0d0c0xN?=
 =?utf-8?B?MmtxT2UzQXVlM2dSNGxYKzAvQy92Sno1a2tLUXlqaHJVR3crVFRQOExGNVpB?=
 =?utf-8?B?UHplRnVEdG85T0ppQzUrbU05MkpEY3hrWUUvdVFOaW15em9qaWlqNWJKdUJT?=
 =?utf-8?B?NWVWSWJaN3QrOXpFN2pkZzk0VnYrS1hCWEVndW1oR2pZNk5Hc3M0ak1HQk5n?=
 =?utf-8?B?MGxxbjcyTklRVVd6VEc0eUtDSU0xYTdQdGR2ekJoWlUxMkJ2eW14QWlRUEdL?=
 =?utf-8?B?OURFUWo5S2Z6Z3hPajN2VUZ4aWVwb3VFbGU1c0RLd2pWOUdLZW45YW14YWY5?=
 =?utf-8?B?VUJnUFhlNm94RnFkbWJBa2NhdVhEMHI2enlmaThuZjVEWGJNdCs2cXFwaGpM?=
 =?utf-8?B?M0VtZnVWL2g1eG9sdGFMTUpQVyt0TXMya0l4eWp6a0ZSTFFCdzJmQVY3M3cw?=
 =?utf-8?B?OFIyOU1iR1dtSWtmcWhFdUhyRXdNZkppOVN6MlEzeU8vVVVCc0QyNEJQTXVm?=
 =?utf-8?B?akM0c0ZwNW5aWnREWmFyb1doQXIwMmtrN0pWOUZrL2dMcDN6WTRSUWZYNFUr?=
 =?utf-8?B?V1Yva2JOZ0t2ODBVREp5MHN1dlczMWJyTWVVUGM4M3NGM1RFNzJwSkI1UmNs?=
 =?utf-8?B?d0k4QzNBSUhML0JXWWpBaGIzc2lpSE1qTDN1aUlHV0hxdXZJUCtxTlR0OGlE?=
 =?utf-8?B?dTJDTkVIWnZmVSt3cVgzM01NRWpDY0Z0dXExZC9hdldxMHdaWmhPaThrS1dN?=
 =?utf-8?B?aytaUW9FMWhEemFPNUcwdkJjcEJwWkJ1RkExbGc2eGZMMXp3QWd4OGY1Uk5C?=
 =?utf-8?B?bEpHVldKa2o0ZDFISm9VR29yaThvaVJrL1FlVzljMEtTNkVaS2R6S3YyYUFi?=
 =?utf-8?B?QVp6Q0V4WHNjQUVCOE9aZGpMRjF4ZlZFdlhNMEFmUXR2QWtxbElkRFhmYk9Q?=
 =?utf-8?B?YXBVVjRGeUw5NlFacHRicHZqMDRZbHFyNzk5T2c3cTR3RWgyVWNaRDE2VlRB?=
 =?utf-8?B?aDh5ejdRUDNqVXJ5a1p4VFFSYjd3SlZUVUVHZ3FyZFh3b2xDSnlRcDlKUHl5?=
 =?utf-8?B?bExSWVlGQm5KUGdVWkwweGdBSzA0RHlpMjREbEkySkk0VndEckMybWp3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3238.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RHVDWGtZOUVrNTRrMjI5a3VTVEpvQnh4VnZtcmVMSjhnVjlPZVNBbVgxSFVl?=
 =?utf-8?B?ZjIwM2xUNTloY3gvVXhHc3YvWXBFMzhRRld5YUZiVFgxcUdwdmMyUUlKZ0Nj?=
 =?utf-8?B?SXVFTnY2QmpjOWFRY1dtYThRTG9Rall3aG9ZdTFENlFiWlA4ZXljdENydktP?=
 =?utf-8?B?WkNTNjUvakM3SnZSa2J6cnQyTWk5MkFuUlYxa1lsOHVxZHhXSEJCUmFkYk10?=
 =?utf-8?B?aUhIQjRyTTVnb043cUFId0JCTmF6d2dmOGtyWWNPaGFtUXF2K3Ayc0J2NmxB?=
 =?utf-8?B?SUpQSVVlZ3JDRDVtS3I2RHNHa3NDdDVCRExGQkdITzB1bWRGSUUyT1BFZkV3?=
 =?utf-8?B?R2ZEN2xVbm5COEZ5czFpczM4YlowTzBmb0Nkazk3ZFlMNjA1ODN4cVpLelBV?=
 =?utf-8?B?WkZkR01TbC9nam5OUTZENDFsNkczdWRKemhERS9HdnZQVGRwbmtlbXZRMGVa?=
 =?utf-8?B?NGdMblBSTSthN2xGaVB4b3grdklvcWJBWXNKSEZ3R0Q4dDc3NzRWYUM3d0x6?=
 =?utf-8?B?cmNTaHVoM2dlTXhSWUJMNDFOc2hmRmZOT3o0WGJVcHJBeXFvb1d6RkZjU2Z0?=
 =?utf-8?B?Y3RSZWZjSmFvMThBNm56eng4WG82V0NHY3hPS3JBVjR4c3prRFlacVdpUFRl?=
 =?utf-8?B?UDhDTlJOKytpTGR6d3E2UXRqSFhsK3VDc1F6aVYvdmV5UWFXRzNaR2pyb3V4?=
 =?utf-8?B?cDlHSjAwajU1SFdwcTdtTEpSMXUzQlBzK1NQR1cwekFmbW94MmtVSG9qQTZK?=
 =?utf-8?B?RlQvNFJpNE5MS0g3bVRRVFJWaG9RaitRZFFCYUkyRGRydzdTd3BBVTc2ZHZZ?=
 =?utf-8?B?aGhTWGNnK0xXM1FCUVIyaXR1WFJ1WUkwRnpvTzczS3FVVXIrL1QwSW5oRGlH?=
 =?utf-8?B?aTFuVWRuQ3JlSTcwUTlKcnNiS1ZvWXpEdG9NVnYyS1VHR2V6TXNGOU4wRDZk?=
 =?utf-8?B?UXIzUDRucXZYR0F4OWJHcndSM1J5bW5xem9JMUZCc0dCNEhhL2QzWUlwQU5i?=
 =?utf-8?B?am5TQVE0TXQrZXhLRlRUUnpMb1pTOTJNTW1uS25rOTMwMC9ZTnE1OUoxbVFj?=
 =?utf-8?B?YmxwbHRNM1RWU29xM0lwNkNUTlZDVmpOK0pNZjN0QXhvY0lqclltN1R1UlQ4?=
 =?utf-8?B?cEM3M2IzNUI3UkJGNWpVTkVTNDdwaHlOeTFwMzNWK3ZtNmVHOUhySFRuK2Vp?=
 =?utf-8?B?ME5wY0lpNFNTcVZXc3B2QmczNHNvOU9NWXlabFpna0JGNWFiS2I3ZzFRbnA2?=
 =?utf-8?B?Wm1OMXVsTnZxUnlzTEpTdk9hK2VrOHpQdzRDTURITmdzRDNXcWNqM2JzbVRO?=
 =?utf-8?B?c3FQbllDb21JSHBvM2JBQmc2emlyWWU4SW16ZVFJZkJ3WXRGak5SR3E3dXNm?=
 =?utf-8?B?c2pFcmNlV2grVndmc1VTQ1lRaVUrZjFHeG92WU9aNWxuTjFsYlVaUG5QT3VG?=
 =?utf-8?B?UlRtNlJmTVpWZXZlNkQrcUJmNEsvQnlmbFdmYzIyYkJ1MGd4RWVUQTBYM0dJ?=
 =?utf-8?B?K3VHcWlVVUtvdm1XZDVVaWU2V2FBYitlTzFIQ2pWamo0OG9ZQ0tGMnlDODhX?=
 =?utf-8?B?Z3dybHNqQkZOcFJYa25sRllLVld1OXNubnlPN3c4UTB6TjIzYmdKeUpQQWkw?=
 =?utf-8?B?azFDMGpYblUxcWt4WWkzNVVIRUZFd0VGTm5KMFNqVTJ4MDV0R05jSzhwcUFm?=
 =?utf-8?B?UUVOV0ZiNTRQVU5ET09Scit4OTdRdW1zS2R0a0x1enloZzczUTAwK2lrQ3dF?=
 =?utf-8?B?NjlOcjVoTzVoT0RrV0w0aWtYcVYvcllOak1MUkRQYnpZSG4velVLM1h6WkVz?=
 =?utf-8?B?VWtkaE5UTlNleXhIdC9vMThBQVp5T0t6dW1LcXZrNE5qUm0xTFphcVRGcndq?=
 =?utf-8?B?cGMxOGV2MERtbWlUSTk1TEcxWXJkNkVPYTBvNmZyczllOW5JNlpGVG11N1BP?=
 =?utf-8?B?dEovOHVjRHdmdDY0alVubDFhSDQxYlZ2S2UzTDloL3V0VnIvWTJKd3NZOHkx?=
 =?utf-8?B?SE54TjROaGZySURQaTZvMDR0Uis2REZQNWlkL0x2azgvM29ReTBwOWRyNEk0?=
 =?utf-8?B?ZEJPNGlJMlBYVm5xaTh2dWhENVlONFFTNzVEOHlRN2VkZEgvTTFRREtIcG5R?=
 =?utf-8?B?QmM2bjVMV0Zxcnc4YzIzVHBxM1VKdUtoNUZWZm9FU0ZFT3dXOGdDYXloN3kz?=
 =?utf-8?B?Qnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b6cf418d-732d-4dc4-a3b5-08dce9c2ee47
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3238.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2024 07:04:21.3581 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LkKD7SMX3I/LCKwjrf7eslYh4QWifddDx9B3kvRS92byQ55F7OOh9Hdpus6CLrLt/AYm+XfKZ1sqRoOXUeD01Pmm9G0Y+5sqo1EDrCrXdlw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7838
X-OriginatorOrg: intel.com
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


On 11-10-2024 03:00, Taylor, Clinton A wrote:
> On Wed, 2024-10-09 at 22:32 +0530, Pottumuttu, Sai Teja wrote:
>> On 05-10-2024 02:38, Clint Taylor wrote:
>>> Some devices NAK DPCD writes to the SOURCE OUI (0x300) DPCD registers.
>>> Reduce the log level priority to prevent dmesg noise for these devices.
>>>
>>> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>>> b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index fbb096be02ad..9920ec1f9c53 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -3418,7 +3418,7 @@ intel_edp_init_source_oui(struct intel_dp *intel_dp, bool
>>> careful)
>>>    	}
>>>    
>>>    	if (drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI, oui, sizeof(oui)) < 0)
>>> -		drm_err(&i915->drm, "Failed to write source OUI\n");
>>> +		drm_info(&i915->drm, "Failed to write source OUI\n");
>>>    
>> Just had one small question here, I think NAK is one case, but in case
>> of other errors/failures (EINVAL, ENOMEM) would we still want to reduce
>> the log level?
> If EINVAL or ENOMEM occurs there will be plenty of other failures earlier and later that
> will be logged. This function returns void so we don't handle any failure for SourceOUI
> write anyway. This just prevents noise in the dmesg log from known devices that NAK this
> particular DPCD operation. The other option would be to list all known devices that return
> NAK and filter them via a DCPD quirk.
>
> -Clint
Ok, in that case, should we also consider decreasing the log level of 
read failure a little above?
>    
>> Thanks,
>> Sai Teja
>>
>>>    	intel_dp->last_oui_write = jiffies;
>>>    }
