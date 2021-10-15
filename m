Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF0642FD9F
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 23:46:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BDD76E3EC;
	Fri, 15 Oct 2021 21:46:27 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAF006E3EC;
 Fri, 15 Oct 2021 21:46:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10138"; a="226765568"
X-IronPort-AV: E=Sophos;i="5.85,376,1624345200"; d="scan'208";a="226765568"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 14:46:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,376,1624345200"; d="scan'208";a="443327886"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 15 Oct 2021 14:46:24 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 15 Oct 2021 14:46:24 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 15 Oct 2021 14:46:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 15 Oct 2021 14:46:24 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 15 Oct 2021 14:46:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IA+eRTrCw/gl9ZYImRC+sk1wZxixPH6PxK+5IYCGyeeMAIAHPr5PYqiv4V3gwgMFl9QnF12Npd9R9RWl/rt+5dtvMErSoSJm/vVYjAUDkXvosGFaY5M5GnAC63yXSaU6ql3PU1zG9q+Cbc3iU75ydgJbUgvi9trB5WytEIV7AGrpx8Mu9vFjvMXZhJPE9GVj0UkvMBwKUeBwO9Sj4tWWVUPKGakPO9CNaFoXLN4jLkBkG08hRIOK/+v+pnplEzvU/+fJxrUg/UUKSCSDmX6zpa44zC+eZtn/LtkXl3SN8NBAtRVP/6DX+v/tOXlersT1LSRpQRZsgLTqALjKUqrkOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ooXihxAI+f2VBNEHkHgsHU6VsWzrMizPpIDVe2wwZwE=;
 b=RgHYcxjr3Jjktu+nHZabp4BnKlR35xFKjxSBMWsFUoxfyxRMu3ifF/5s32EnzlzseMtkkTF7IBqjOmhXt9tzTbERqOdrLZBANs4WkwFvOT8VCclzQKPh5j43HgX212PPddz9wn10bm8vaetaMtoBGCYuk4i2rhuNpkhwQGVtPDijA0rd4FkJuKoTl5tFYeFNzOK9vmit8IhuES7JfSH4Hs23EafLJBD+2S3n4BUK2jkSSg2lBZC3UvAq6w/ogFr1gYjqd2phDjkliDMSEZn/Qv4xmwGVXYP6cSmnj2HQCWjLgA8Zno2Sqvt5cmyFMptMicuRu2d9S5RaxAj96JPPig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ooXihxAI+f2VBNEHkHgsHU6VsWzrMizPpIDVe2wwZwE=;
 b=Hc3Xr/jPuB5TqekQTs1Lkm7Jc3H5G/u8h1DOQVrtQQoMJVe5yoKhL1hZQ2pUdv9ArwiG8hzZ4ghcRzPBCsk1/v/FlzgVYd7Jx7vnR0Evu0Pc7zmm7ckMnu8YzJ+aHPixEYKaJzE3bMhsB2Rov3TwOG7K1d3BMtpQL6y2+Q5ULtM=
Authentication-Results: Lists.FreeDesktop.Org; dkim=none (message not signed)
 header.d=none; Lists.FreeDesktop.Org;
 dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5642.namprd11.prod.outlook.com (2603:10b6:510:e5::13)
 by PH0PR11MB5594.namprd11.prod.outlook.com (2603:10b6:510:e4::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.17; Fri, 15 Oct
 2021 21:46:22 +0000
Received: from PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::880d:1a54:ca07:738a]) by PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::880d:1a54:ca07:738a%8]) with mapi id 15.20.4608.017; Fri, 15 Oct 2021
 21:46:22 +0000
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
CC: <IGT-Dev@Lists.FreeDesktop.Org>, <Intel-GFX@Lists.FreeDesktop.Org>
References: <20211014194238.1078854-1-John.C.Harrison@Intel.com>
 <87k0iecpc1.wl-ashutosh.dixit@intel.com>
From: John Harrison <john.c.harrison@intel.com>
Message-ID: <92e77c59-f783-8d2c-c306-be163c6626d3@intel.com>
Date: Fri, 15 Oct 2021 14:46:20 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
In-Reply-To: <87k0iecpc1.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
X-ClientProxiedBy: CO2PR05CA0058.namprd05.prod.outlook.com
 (2603:10b6:102:2::26) To PH0PR11MB5642.namprd11.prod.outlook.com
 (2603:10b6:510:e5::13)
MIME-Version: 1.0
Received: from [192.168.1.106] (73.157.192.58) by
 CO2PR05CA0058.namprd05.prod.outlook.com (2603:10b6:102:2::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4628.10 via Frontend Transport; Fri, 15 Oct 2021 21:46:21 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1c3ee65a-9d98-4c1d-79ac-08d990253a7b
X-MS-TrafficTypeDiagnostic: PH0PR11MB5594:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <PH0PR11MB5594A1142DCB3E5623F9CA41BDB99@PH0PR11MB5594.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aRo5JFKeJ7LcWD3ZE463PWy/b8i7t3BsB4y3kW3FJnm96OEjQwH9G0zhvgaHexKnSw9wHGhpTz4BiJw2Soc2kB2jViPhU2Pm8/tVEuoor8XJDzxqxx3Fe7HmKVTU920F/EjMFd399gbK8KrvGynpZWhAcFyhu6clYyK0rPcxGWYr6JVqM356G23A/8e6Tvv3y1mxnjBvMyCbY1LFJ7Os2UGG9K+kKwoV8BlS1b486+LS5bIM3UQkJ+A2s8ikNY6IKyP1FQsBp8KQwe3M1yShM/S8zumsphEyJDZrnK3ndeagynsPOzrq/peW5M7+ZEdaFX+U6Qfnrl1gSs0OEA0YWlIdZjqXaQIWKrRutRVViUfG6Am5u9SGti3nKpoSW0pe49oavo7EbZZBqGB61mHBoN7e8HXsjCQ2sB2aWBNVIMMH5Y2qNKmPQFTCVpy93e7Z6q4wDC+JS/PMr14PMxshjsIlEmCeyFeD3ZZCkfXy0CHt2zMOeDej861Lj8i8DkONDNWQDdP0FUsYHx2nqox29f2TviLRoHce4eCxYjq/U2d1ERD0FEC05fL/cXTUJDha/EWUDq8BVkBXSMiCbnMR83ZjeCw9Tq6Zw+JNwF6SpqzgJIb7aDRUdKYGd9ONBeFUw47/F9j0Gycngs5kAMFPBtNHW2vY5QNvEy8OYt7tUllzJtlsUvY5ic0nB5WTfXGhVRO1OM3EnQkfxzbDs5ouOH/1/wSPZrEva2YBoB8F8kI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5642.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(83380400001)(956004)(2616005)(6486002)(38100700002)(2906002)(82960400001)(450100002)(4326008)(16576012)(8676002)(508600001)(86362001)(37006003)(31686004)(36756003)(6636002)(316002)(6862004)(66946007)(66476007)(66556008)(186003)(26005)(5660300002)(53546011)(8936002)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V28vRUhzZ1c0eFlHbFZDNzZpUzRwNDdHVmZMLzV6NTRYTEhCdEszQmlSVzhT?=
 =?utf-8?B?NTJwQ2FsRWdVSEhwazVoRlptendLU2xGNkJTcldTbDBRSkNFVW5FOGU0MWcr?=
 =?utf-8?B?N2xzU2NHaGRidUNaRC9ic3BkbWN1R2ZqRmZhbUpEcmV6b0ZleG1EU2ZnaDdn?=
 =?utf-8?B?TGFqS2dvcy9oU2doRnFYTDk4R2p2N21ldk5US2dOWDcwNzlqQXFKd1JNYnVi?=
 =?utf-8?B?UlhOcHBSRW9ScnFxS2N5dGR4b3hYNUUxeENUMXd1eU1mQmp4YXpxK0lQVWMw?=
 =?utf-8?B?M1BYNHBNRnJuQUQzWk8wOEZ6c2hCMDYxbkFlTUJlY3EvTTlmejZlcitsb094?=
 =?utf-8?B?S0gwYWxFS0dSdDhiTy9Ka2xUVjlPdjZtZ3YzTHIrblhqckpnSDNMUHFwK01T?=
 =?utf-8?B?MTJaTzdvN0Nuc1FESGlSNGZWNm5ob2wrdlRyTXZjcVkxS3ZNQlB3Zld3MWMx?=
 =?utf-8?B?TS9pVTVzckxiNEgvMGV2TGU2c1g5V3BJWXV1SjBEUit3YU9LRmwxMDl4YVNr?=
 =?utf-8?B?a2JnQWhmcVVpSVdHQXlVaGtWRVZFbEg3blNjbDQyV3p5Q2RlcXdqWU5jQzJR?=
 =?utf-8?B?S2pXVlhETTF4NnMxOEdXaENXcmExOFdobG1IZU80YzU0M2dITFNORGhueS9R?=
 =?utf-8?B?RC8wUFBxTDhscy9ZN2ZIUzJmdytiMnpFbGVHY1ZteG83VDBhV2M4eERTcllq?=
 =?utf-8?B?RW9MWUNwcWpHc3gvMjBublF5c2lYZk0wQlc1S2xEKzFVT0htZG9BM05yOFdS?=
 =?utf-8?B?T0RGdTkrWVd3SlJxOTJwS3NML3JJZzFYVy94R1l2dHdsRUZYbDRnUlhRVkUr?=
 =?utf-8?B?bUFVeGJpWWVxM2JOUjFNeUkxT2tuWERTb0x1SHBlWWN6dHFucVd2UXZra1M5?=
 =?utf-8?B?WUZZbFdyQThHVXYrS3BLdHJSYmhGMldsUjdjZi9idUMyZGlTbGtvcXhxTE1Q?=
 =?utf-8?B?eFhERklTMnZCVTJ3TElTYktCVzZPMXV1Y3Y5N28yU3lIU1diWWU0V04yNnFl?=
 =?utf-8?B?ZGk3WUQ2UnBEcnhnTVdQTEMrZ29rbFE1ZDJkaDJWVVRBYUFXWGlleFZIQXQy?=
 =?utf-8?B?MHpjMllMV3ZkcTQ1QjFWN0FobG9iTmg2d2JNQUx2ZFgraDU4YTFEdWI5Tnk2?=
 =?utf-8?B?MWJldmJGQzNOLzVJUjhseEVWVTVlZ3BTNzdSdEVtNUFNdmNxSXVHdm44dUdW?=
 =?utf-8?B?VkhpeENsT3BRaVE1VENWM1diaFRneVVzc2J1RlI2Q3ZhLys3VThmbXBEK3JL?=
 =?utf-8?B?UThVaHBKWGpIM1pKYUlZQ1FPamVOa29LYUxYejZFb2RnRTRUL0xmeGN4NnlD?=
 =?utf-8?B?bWNpdGlRNThFVTNhVDNyUTdqZEk2WEtsWmcxZVdMUkxWMUMxRVhTRWRGWDJz?=
 =?utf-8?B?THU5YjkwT3JoNFNNUGZEZ1prbDEvSi9FSDFQS2pEK2NPWlRnYzFYQ253YzJl?=
 =?utf-8?B?L3NtZkpWQmVpdFVldU95SkgwUzIyMUZQRW00RXR3VGxFNmpzTjVnbnhKNDhH?=
 =?utf-8?B?cFJRZjhxWmdPa05OWlJzaW9ZZEdjZmFvNHpRSmxoWTdDaWdqWWlLSGpEdGpQ?=
 =?utf-8?B?a2JGVkJkRUl4ckZPaXE5QXJhQzRUMC9JMHNFQy8wWCtVc0JXMllWOHgvTktJ?=
 =?utf-8?B?RFBnZHVUM1lqUDdsN2tPV1dDSHR3QXVZbk1ZK3JhZ1lnQkh2UWNncFV5aFBM?=
 =?utf-8?B?eVNzTW5KTmVESFdDdmI1VGlsdkVaUk40Nzc1UGswU2NVdlFpb0pDellnZjhC?=
 =?utf-8?Q?hZlnGX4HnMJ14M0uUAQRL7jCOu3HLd3ZoneU5nC?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c3ee65a-9d98-4c1d-79ac-08d990253a7b
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5642.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2021 21:46:22.0061 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mzYrowGyflS7U4z5g4Fj6RXBV1BdlBHT2Tf0YvijHU71/pfUf9WUR5LyvDOK3h34Nk28HXKRAbeFLmhg0jER/ruDQUkwfnJIv/R9FmT4ll0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5594
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH v2 i-g-t] tests/i915: Skip
 gem_exec_fair on GuC based platforms
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

On 10/15/2021 07:52, Dixit, Ashutosh wrote:
> On Thu, 14 Oct 2021 12:42:38 -0700, <John.C.Harrison@Intel.com> wrote:
>> +		/*
>> +		 * These tests are for a specific scheduling model which is
>> +		 * not currently implemented by GuC. So skip on GuC platforms.
>> +		 */
>> +		devid = intel_get_drm_devid(i915);
>> +		igt_require((intel_gen(devid) < 12) || IS_TIGERLAKE(devid) ||
>> +			    IS_ROCKETLAKE(devid) || IS_ALDERLAKE_S(devid));
> As I hinted on v1 let's just do this here:
>
> 	igt_require(gem_has_guc_submission(i915));
>
> So that we can can have a single unified way of detecting if GuC is being
> used throughout IGT. Today it is gem_has_guc_submission() and it works with
> the current kernel.
Earlier, you were saying that 'has' was only checking for capability not 
usage. Which would be pretty useless for this situation. Looking at the 
code, though it sort of does work. It checks the live value of the 
enable_guc module parameter. If that says that GuC submission is enabled 
then either we are using GuC submission or we have no engines (because a 
failure to start the submission backend is terminal, there is no 
fallback to execlist mode if GuC didn't work). So it can be used.

I say sort of, though, because the code also sets 'has_execlists' when 
it sets 'has_guc'. Which means that the gem_has_execlists() test is not 
useable as an indication that the execlist back end is being used. So 
gem_has_execlists() and gem_has_guc_submission() are basically very 
non-orthogonal. One is a test of hardware presence irrespective of use, 
the other is a test of usage irrespective of presence. The comment in 
the code is 'query whether the driver is using execlists as a hardware 
submission method'. So it seems like that was the original intention. 
Whether it has been broken since or was just broken from the beginning 
is unclear.

John.

