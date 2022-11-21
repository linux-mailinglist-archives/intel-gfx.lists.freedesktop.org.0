Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75107632DB2
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 21:13:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4C9B10E1A1;
	Mon, 21 Nov 2022 20:13:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A000D10E17E
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 20:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669061608; x=1700597608;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=lfUVK1uoWdSmWTxcI80QY2spBuFSt9aAh4KjpuKq7gk=;
 b=kPYK5SokMJu538utOifJz9NIYiOg7oJ2Oc0P+efGzUU2dU1h8aPFf+w/
 NUTmiZpaDOMFVDw4el0WgHGBagFXbssXFB76S27bUHgGt1y5fJTHCx/1b
 9POBUDy7ubr0lyPzhoJYgxsMoBkG86f/SmNh333RRGFcLrXm+nbmQmqxJ
 zhIpTMSanS11rcg1dohjwXldVuZWt3zwzW/GhDJWkWGHNG+NU5OC3oleu
 u047sV3K0uNGlyuhPepQsjXL0CqYqp+y/VFfqcUno/7/wUBMk3XkC5WHn
 jsTLR4q/vCstXl/QqRRuomgRjEmsR+IIBgI8lhdjtP6cySWrtyc4lcEpJ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="297010329"
X-IronPort-AV: E=Sophos;i="5.96,182,1665471600"; d="scan'208";a="297010329"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 12:13:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="641148708"
X-IronPort-AV: E=Sophos;i="5.96,182,1665471600"; d="scan'208";a="641148708"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 21 Nov 2022 12:13:22 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 12:13:22 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 12:13:22 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 21 Nov 2022 12:13:22 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 21 Nov 2022 12:13:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WUyBBZr4IYwXenQwgIFKnkOFeqKyTz/aGinQUchdYGeirZT2uWz/xHqXyEiPPROXa8N12MPTdwcxP09rwxWIKXFUrSZ6gKgvbUh5reH6T2MdLohoMjssvL2hxiHWspArCcAj2oUqpdcbFuRP04NQ/BwExXwLRlYyA8qErjaGef+FkWW//Rsq9ljk5n1seiClaha/EHh/ZAIwTBq2FhagSz9b+lxht7Ezo00Y/9j2QD6S/HtZ29g5QTpPdCvruY72CAMh0Ea1hcXcxJXZuf9KxSJ3+PSwxJcUWs/VmJghQdkqA0z6HHIZLvZVZFRyazaC/W2FKWpQw85UAdW6pXv/CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZahG0N/kX2ZZ0StL1WexMZe0eyBWanyZ2Ij+xDD3yg4=;
 b=eEWHHZlCF9xhLThYPn3wUge7Xl09OIo5CZnQlN3RoW0v7cSiheK5OcCzashJ/1nGFfWj1F1cWwH6+2sseDCprvzBljlkseCBt/L4RYxb2tJv3Tq+/kYW8JwoXqANZfcpH9Hd6l01Y4Gce0aiOj3lrgbNLc/ar84gzAn8b9EiBg4TbmdOUozmdFr+RwehWqt2gDYLI9bOQIlntsZRn0FofNemLfpfta41V2pHwuMHjyHnZ0Wf5sBjD0HJGIsjtEFyNxb0eRG41SzyweKUjlL9cY01LP1D7H4qdsHy9Z8B4RA1JLDCgFn7JLYwn+3CjhQkC/vFYz9eODIWiQ6PAvnvpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 IA1PR11MB7679.namprd11.prod.outlook.com (2603:10b6:208:3f1::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5834.15; Mon, 21 Nov 2022 20:13:20 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a%4]) with mapi id 15.20.5813.018; Mon, 21 Nov 2022
 20:13:20 +0000
Date: Mon, 21 Nov 2022 20:13:15 +0000
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y3vb27jBmcOuqcvJ@DUT042-DG2FRD.fm.intel.com>
References: <20221110171913.670286-1-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20221110171913.670286-1-umesh.nerlige.ramappa@intel.com>
X-ClientProxiedBy: SJ0PR05CA0143.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::28) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|IA1PR11MB7679:EE_
X-MS-Office365-Filtering-Correlation-Id: 03c8073e-60a0-4e27-dfea-08dacbfcd5a3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xRPeduiu3VY4ioc09Ou1YSqY7UDT7oBWc10ZgfoTypmCDc/EXgjwmKqjYYajrByGW14S3Y1VarC750VvWHdGpNvcJmI1G2ifJPlbHg78XTco/kR7UEVryzQmlMo6sP6JyxiaezmgHRSuu/uHr9I25+6HFuJWr52QfjdijlHkeSco8if0ZM/ThKMsAEuaBPQQgWF90lwLOeyYZYnMgZ/4ATlAsUCq8tiYBNHQ31/+vbY6t/U9ZDeMF7e8apGAAwbJhQ2jZ1/HnfM1NmJ+TzhQ6d9rTdanxNgTvQut1fF8i+9vcCinEWryg0dJ/9Ti40t1N7z8kbaM0jLXbevfiSkcxLRGGxnjaX5eYThpxw4l/5ZKQK5jZa/lfCpZj0aBPWaL8jgVzXf56bwKl/IAAx304yrZ+ZLf/04wWXuih3PAeGmRChIXrt3FKodZiIYSXjcFAEGwPueHYSctRhyH8YwWFEwkQ/xSf6+Y2P7OXHrSjlQJxahLBzkb3gkGlXsX2n/hBf96bCjnbzfX4vpsowjEUf6D2BNclKUdqbn4UFO7fTUxYMpII+Edw3s21LyK1+ru23RCcV3cRjyvQn6XvvHIdQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(376002)(39860400002)(136003)(346002)(451199015)(38100700002)(83380400001)(86362001)(8676002)(8936002)(82960400001)(2906002)(41300700001)(66476007)(66556008)(5660300002)(26005)(6666004)(6512007)(6506007)(6916009)(316002)(186003)(478600001)(66946007)(966005)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WFFVYWtvU3lhTWVEcVlnNkF2L1R3R2xDKzEzUjVtTkZsb2hQZENzMkFkUHda?=
 =?utf-8?B?U1ZmSm53Wk9vYUdOMWdHRUpGRUFMYXlqK1hWL2pibC9LQkRvZ0dXeEJMNk1k?=
 =?utf-8?B?ZUxPenV0UVEvaW5qMkJVVEVNZ0FZZ2FZOVhSeDVPaDJQOXJxUXpSNUEybDg4?=
 =?utf-8?B?ZWZQUjN2NjdzL3BSQ2NnWHRkeXV1SzNSekxxb3I3TE1TL3RLMTYxcVV0Q1lr?=
 =?utf-8?B?eW5VUk12TW1RMVMxeU5rN1N6QlZEWXliNGpwZmdsSnh4azFBTjRjRXZhNEw5?=
 =?utf-8?B?NHIwZFFFT0NYak5BcVV3VUNQSzlZVzVQY29xQUlKbkFMRXRaRDFVNGthYzVs?=
 =?utf-8?B?QlU3SDhvQi92aHJ6a2hTTjBHZmtxTlBHSmt2SFFZTmFodXNRaTRWczFRNVcx?=
 =?utf-8?B?U3dKTWV2NFFzSnFaa08zWjNmTC9qSjBQQTFHTEZXdzBBbGNWNnV0VmFtK2tQ?=
 =?utf-8?B?akYwWXljaTMvMEwvRndaSnFVekVlSVI2WmlBOHZUbGlld05MK3JaZnhhdFdj?=
 =?utf-8?B?aFJDcGFDRy81aGRkbExnV1krRDRXUDVhdk9COWFCdHBSYURoa1VYQnFXaDBP?=
 =?utf-8?B?SFVYZmx0WXF4cUM0eUVWSmxaRms1WWhqUWtVdUNxRmtkZUVMeEZOVkVoVDln?=
 =?utf-8?B?cE85UXNqcC9SZjJGeVBkaUtCMUtMbXFoaEdGU2JOMlZIencrSXptd25qM2xn?=
 =?utf-8?B?SmtFM0NzS25FR2VGa2NnWkdkU0xUcytHcnd3RnkrWXV6NzNCSktnQzhCd1p6?=
 =?utf-8?B?OGlSWWxTaXdyMFoxeEp2aWV3Rmw4MW05ZVE3SG82cmNTVGxyL0RyZW9zREow?=
 =?utf-8?B?NEJmU0RLdGpTODZ5amx4dWJxdTZ6eGNTMlB0Q2Q2YS91bWV5NEpFK2M3Q1Qv?=
 =?utf-8?B?VXVhY0tEaWkxcnNmTGFldVprYjgySDVOa1Q5VDNrOGVnWC9uQ2NldjZUVzJK?=
 =?utf-8?B?OW8zWkZJZG9yeUpDNFgxdkFXUWg3SXEwdkhkTEROSldzZXd5Nmp2MmU5UW1B?=
 =?utf-8?B?Y2RqZC9QS2ZpZGhNT2JhZ3NHaGtIZ3JpUlRxR094Zy9lY2pwTnV4ODcreVkz?=
 =?utf-8?B?UTZwSFJoV0hZKy9WRlhIVFp2L2s5Z28yKzBBZlphNlNGK3diRnZsM2VacU9C?=
 =?utf-8?B?RE00U244OFQyL0dvTkZHTzErOTNNSUNRYjdFK3NOM3BqV1N5ZmJiUHlNdmhi?=
 =?utf-8?B?eC9WdUc0R2J0eXB4empMcXJWSlV3akFYeTJEeG9wdnZEa1orNVlqVDBuM3kv?=
 =?utf-8?B?MFBLUGJKNllBRG1vZExnc3JCTU92amlOQ1Z5elFEaElONm5Zd2VYcm40SDho?=
 =?utf-8?B?MGcvdUR1d1FkZFhySmF5NnpXbGFlajQ2M3FQMlNZUkNhdjEySEYwamM2Q0dh?=
 =?utf-8?B?TjhKclVsdVZGckl0U0N3WWIxbzFrOVFDK3dzcW90S0grN3hoRkFIRHB6WEZa?=
 =?utf-8?B?WHNYNXRaZVR6enUySS9NS2IwTmFKOWgwL2VsYzA0TmtiblhLcEtTbnN0Tzhz?=
 =?utf-8?B?MzEvSG05NUhsbUtsRTd0NFczMmpxbVdCN1B4Q1hhanpCZjZYamgySFVoakta?=
 =?utf-8?B?UkFSeHQvV2pRRCtJSmxVNERLUXFlSHBkN1RDWjg3K0ZEK2tLOG5yVEpFQk9J?=
 =?utf-8?B?RkUwemQxMVpCYjdKclV5QUFrcFV6bW12RmxNL2h0QXZFTzBWaFRQdEIwbThW?=
 =?utf-8?B?UXhLc0MzYjRvMW9LRGhzQzNxbkRxYjR3Z1RudFBCYzFwaEZPRE5HSDBnV3py?=
 =?utf-8?B?NFlzVkgwTlVHWTVWMTdoV0ZxcE5Nc1hLdXgzZ0QrMC9yQmVsL3RlTW0vMStk?=
 =?utf-8?B?L0JVVEU1ZUdRaHJTL0ZVcVBzMUlQaEF6MDNhT2ZzelZvOU1VZW5mcGZrQUxJ?=
 =?utf-8?B?VUx5OWg1dU5MUTF3UHNDQ0RLeXRKTUdKY3F6YlZETFpUMEZhWjZyZVR2Ukdl?=
 =?utf-8?B?Y1JQVUVHKzNUM3ltNC8rQ3ZUSm1hTEkyRWRmY0VKc2IrMkp0bE9kNW4veTE0?=
 =?utf-8?B?VEE3bHF1cU9sWmdVU1JRNW5Sc0FkZFhJK3U5K2R5MTVCeHNqcmlQdUFGSE40?=
 =?utf-8?B?Ri8wNDI2SnJ1N25aYkF6VEljcEhYMHB0dDhweWNyZmRCdEtERWR3bmZGZCsv?=
 =?utf-8?B?QmhFdU1XM1U2QkxuSjV3dGxLdFl3K2JxSjFZeDlteGJrWU1leVp4cUl5eDh4?=
 =?utf-8?Q?6q4AYnBJ8Uli8F+IpY1qKrg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 03c8073e-60a0-4e27-dfea-08dacbfcd5a3
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2022 20:13:20.4548 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sh6lPKWjBGPNlze0vGDOW0hckb8880cKzkh6T2pxM9dTOWNC+GQiONAPJKOB6Bw4Zl3PlTI3Z0T4UVID2BAG0sezekdpLrYfsUKXY6JmL80=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7679
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 0/2] Fix live busy stats selftest failure
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

Reg: Fi.CI.IGT

https://patchwork.freedesktop.org/series/110557/#rev3 shows the below CI 
failures:

igt@i915_module_load@reload-with-fault-injection:
shard-snb: PASS -> INCOMPLETE

igt@i915_selftest@live@evict:
shard-skl: NOTRUN -> INCOMPLETE

igt@kms_cursor_crc@cursor-alpha-transparent@pipe-d-edp-1:
shard-tglb: PASS -> INCOMPLETE

These failures are not related to the changes in this series.

Thanks,
Umesh

On Thu, Nov 10, 2022 at 05:19:11PM +0000, Umesh Nerlige Ramappa wrote:
>Fix live busy stats selftest failure in BAT. The issue is seen more easily on
>DG1 runs.
>
>v2: (Tvrtko)
>In addition refactor intel_uncore_read64_2x32 to obtain the forcewake
>once before reading upper and lower register dwords.
>
>v3: (Ashutosh)
>Update commit msg
>
>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>
>Umesh Nerlige Ramappa (2):
>  i915/uncore: Acquire fw before loop in intel_uncore_read64_2x32
>  drm/i915/selftest: Bump up sample period for busy stats selftest
>
> drivers/gpu/drm/i915/gt/selftest_engine_pm.c |  2 +-
> drivers/gpu/drm/i915/intel_uncore.h          | 44 +++++++++++++-------
> 2 files changed, 31 insertions(+), 15 deletions(-)
>
>-- 
>2.25.1
>
