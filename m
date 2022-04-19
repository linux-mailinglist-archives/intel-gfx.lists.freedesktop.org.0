Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0695066C7
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Apr 2022 10:18:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 290BD10E7D5;
	Tue, 19 Apr 2022 08:17:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF8BF10E7D5
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Apr 2022 08:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650356275; x=1681892275;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lCWA9UDfnYfMTvfs0JN3ymrm6gJoTPtsubNwFoipMMQ=;
 b=WiqCgUKkGApRN6FsV4UfUXlVq52csEzuoqVT3R/+bcAHwS2Ishs7dt85
 8TZZQ+PnWMttltsCNvElFHxYSe5rJYMAq/jmQMJJPoU6tlWe9igessv9h
 MZugT4lPjQvhm5DnlSMX3WPR4CspbzB3sD4VJ60egl4QRfaedA4kDINOO
 +r1F0ZBDAYIssboXOeegnkV+p/guyOFoRJcHxCngqdrmJzNZb1ZvxC5G5
 HFWRBUozwKkkLzi7eLKoEUidV2KYzKpol1KppnhSFIsacwsbc8myCMI8f
 eZq9M+vi/1H0n6pbstuaUa7ju4iLvyRjsW+/4RwzfanNJGfXc4sbuEudN w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10321"; a="288805644"
X-IronPort-AV: E=Sophos;i="5.90,272,1643702400"; d="scan'208";a="288805644"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 01:17:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,272,1643702400"; d="scan'208";a="592699504"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 19 Apr 2022 01:17:54 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 19 Apr 2022 01:17:54 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 19 Apr 2022 01:17:53 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 19 Apr 2022 01:17:53 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 19 Apr 2022 01:17:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N8JU3FA0YlbK53D63qOIBYDdYD3OBDBwm3i7YuVs5M76CDg6t+5S5fiyqlUwAA0lfxfsVgoL6afbmZrvBJfOddcFpPHusZ5Nu+wa0mVNaWuIDcc9XbJ2Xlb75qotA5E0dVzQNNqSw1lZbUpJqXG//mQ2eane2JXE9ftZ+RPizTzNJk7NsgfkCgj2YhlAcWB8iN7iN/WEld88mpZOr++ickAh1yHOHSTyhLM2ZUCfFFMulS7Q0B3ggH6MSB9+Efl/nJtHgLBRQ/poIs5kCcdsbr1Z+QJ3OOvGD2EM84tKx0NFMt3xWVcON7H//wmXyk6W1tjL0MAafqccYAIKCxpcZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tcScIlyZSBR/nMVsviGaRvIgydAWt06tHO+g2AUcK2I=;
 b=Ht9sNfNL23lTi1aCslJkLOuDblUE7PpXsV6VhRYrlzQfLeojLLm4A0fBtWGwtVG8QdtaaSUuJMLaoAS4lB/AN1/Npe7RV+NrEuHatR6ddS6obdf1ez68tHROllyRg4GvILCf23D2DRAW2y53Gw+BGDAhKoe3zECldgXVLH3GmGnHD8POujTn/gdeAxhc+bYZQVJ1dBiAPoS5M4FR2kAfiwOO67928/jFEPLCCeC8u127bXUyFyIEJye9iF53s6uf48oyGTELQKEyy6wz6q/cp3ThgfJgmDlxS/WBt7UOE+RF/vPbBLJ3Wy2LAKSDqrILfv1ramn8WszNNP0ENuaRBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5231.namprd11.prod.outlook.com (2603:10b6:5:38a::19)
 by SA0PR11MB4656.namprd11.prod.outlook.com (2603:10b6:806:96::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.13; Tue, 19 Apr
 2022 08:17:51 +0000
Received: from DM4PR11MB5231.namprd11.prod.outlook.com
 ([fe80::5027:4735:1a5b:a083]) by DM4PR11MB5231.namprd11.prod.outlook.com
 ([fe80::5027:4735:1a5b:a083%6]) with mapi id 15.20.5164.025; Tue, 19 Apr 2022
 08:17:51 +0000
Message-ID: <ce2f7bd9-b064-41b7-12be-be214b976cd6@intel.com>
Date: Tue, 19 Apr 2022 13:47:40 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220316125627.1738613-1-siva.mullati@intel.com>
 <20220316125627.1738613-2-siva.mullati@intel.com>
 <Yl1FnlacgZnjs0Ic@bvivekan-mobl.gar.corp.intel.com>
From: Siva Mullati <siva.mullati@intel.com>
In-Reply-To: <Yl1FnlacgZnjs0Ic@bvivekan-mobl.gar.corp.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN0PR01CA0015.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:4f::20) To DM4PR11MB5231.namprd11.prod.outlook.com
 (2603:10b6:5:38a::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2c99aeb3-c66c-4a08-2422-08da21dd18e4
X-MS-TrafficTypeDiagnostic: SA0PR11MB4656:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <SA0PR11MB46565415F29F7FE38DE34B1688F29@SA0PR11MB4656.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 48SACz/Nhb6rMh9q3pkQrxPL9x7d0axWnyNN7C/8W8Z5qcQadZTptrudXVoiuSJtMg4yYWzc8q2r4nJy1a1zA/5xJDzvjLim/uQZonb4KZHfxOGsBZZELVMVmMM7JXIPCbeciW7eRrKxILxuHiZweHWu7eNJm0mzgYKHF5JXp/I/ZXns1dKcJHSKYkordieRdBcDh+//FpjdfndFqP3iXvuVaXvDMcTsM7lVozvD7v2QJ1ih5WOTCRAjoKGDVqNWeNTYE3I2SI4QX7qrAhFc8gOhpfmpD506Oth4x/NzvVvVC1QEGQR0k0hLPFZTkft7bo6wxc0FbEwS1sABApO7xzw1aZHyclH7b5rTYSiH2jt59ASW2PWT2PsM72+R3ffYdiKZ0kPI9k4t8rhNGknNJhHSBvrpco6vTJxfoD5LAVmfViVwCWdNbeidXC2/0H9diwUMnAFtKVItkAUrOKkb15QZI16n6JAc43a4rYLcgV1ohWrOC5BeAdW8KlCzj2vHUGoSCsAGhrZMS6KKyAByhxxi6pQKqCqnvKbNXxcQxHlQC59oBp8PAkIwKFZW4t7CqVT2Z3njPDMex8wuedm48Gzkeqr2N1OQ/IuNXuE1+gQo/7O/rClR1BJ7VQACai+LLmA5C7SWQZM8xpEuRUGvx1n6CB1LtkekJprUpkgFK+COU/B1wE3fWyRyEDMMyjoOTYpdy9KePKS651/WmMBD4N3+0b8c7ncI90vwuWgEfQ8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5231.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(186003)(508600001)(86362001)(6512007)(6486002)(8936002)(44832011)(2616005)(107886003)(2906002)(6666004)(83380400001)(5660300002)(53546011)(6506007)(31696002)(36756003)(66946007)(66476007)(31686004)(4326008)(66556008)(8676002)(82960400001)(38100700002)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Sk56cThSeGw2QUIveVRQb1B0bFBETU1aTlVFMzhEVEN0aitaUFpRQnp3RGVD?=
 =?utf-8?B?RnNwOUVoMXlNQkwycWhNRWJHeWpha1ZGaTZzU2UyeTczNVR1aEM5NkFnUEE2?=
 =?utf-8?B?TTlCRnpXR2IvM1g0cUlyU0Z4L2NjYWNzTGZWUStQMmI1RzFKVWo1akFJZFJR?=
 =?utf-8?B?azRHRVB0alYvaVVUTEMwSzJoSUluYXBLQTVDZHZnN21pd25Kb1dyc2RpcVEy?=
 =?utf-8?B?T05XbHR6K3EwRW9EY0w4L3B6N2I4MzhEdUFEdCtYZG1RNUpjeDlWdUdKTUZy?=
 =?utf-8?B?aEpxQzd6N2VPL01kTkRuSmgxOE92M0NBVm9iUi81dExjblJqVmNtcENmNEIv?=
 =?utf-8?B?NFV4bURQcmhDaTR2djl4UU9uQ0NqaEU2ell1c3RRZFVlUUdzWUs3UFEzOUkz?=
 =?utf-8?B?M1h3bXBWL1pFU3hOZnVBZTRDR1k4eUtVQk5WcVNtcVNXVVJoY24zZ28xdXVw?=
 =?utf-8?B?dURobE5TdXMySk9yaXBENStjOXRnMVl5M3hMY1RPMlQ2V3NJMnlQL2xjeHBy?=
 =?utf-8?B?QVpnbEFrRDFmYVNYTm5hTzZEQ05ISm1VQmpZZGR2TFFKSWxYRVNLUmRVVTA5?=
 =?utf-8?B?a0JwYWZ6eWx1dG92aG84UU5lZERZZVZjTWJXNWFoU0d1ck5tRGtpaDU2bVR6?=
 =?utf-8?B?ZCtRbXRZTmVGbWIxSTNNaXM2SmFkdTZBWnhLcDBINnEzUWJLeGYwc08wYXJw?=
 =?utf-8?B?NEF4YVBnYnBmRXhyV2tyUGJQK3lEaWhlOUs5RGtxcUVZQVY3UU94VEMrUkJ5?=
 =?utf-8?B?SEc4amlqK1EwOVQxSG56Z1k5VERBK2ZrVE4vOEVHc09YQXFvL0EvWmVyM2Nq?=
 =?utf-8?B?WGl2ak1JODlDQ0FRK3U3OVV4dXBhWnJ6NDZiMlpTV1dHYkIvVkZMQzBuQ3dp?=
 =?utf-8?B?Z1FjZEovd2dwREczZDJqa1dWVksyeW5Ia1BkSXluZlRTMDFDMXM5L1JKdnN3?=
 =?utf-8?B?bUdUSW5VbFYrbjFWQy83NUY4dUg4MXFoWDlYREY1L0phakszNEYrUURKL0Rq?=
 =?utf-8?B?NkRHWUNYYkd2TlpYQ2x4b0VuN2laS0hSd2trMkV5U04vT2hBYThFRHJsNE9W?=
 =?utf-8?B?Z0xtYi8zT3ZHQWVvUzFha1NyT2pLOENMUkd6S05pZG5keHNraEN2YU9wTlFU?=
 =?utf-8?B?QkQyb3FCWkljQU5INnVwTU9UR2p3NWtveWdIam5NaGJFTFh1WnZCQVhET3l2?=
 =?utf-8?B?ajJuMmJ4Z1QweTVIb2I2REJQY3p2TjJWR1Baa2hHTmxFZDNFb1lkMmxiK3Vl?=
 =?utf-8?B?OERWWUZsaS93NWRzSVJBeHNJVnp5c0xJUmxHQk03S1lublQ0WmxvUkt1U3VH?=
 =?utf-8?B?R0UrN1RxaWJXciswMnlzTWQxZU5NcUFKa0NkZEdRSGZiZWtaOHo5Wnlyb1VZ?=
 =?utf-8?B?Q2M2cERXTHRHanNRQWtoV3NoQ3dDczBFcUJqMUJadEtQTENWZlRCMGJpQ0NJ?=
 =?utf-8?B?QWcvVUVGWm5wVnB1dklrS21ISkREb1ZyZFE0VTJ0VGpHT0EwUnNIejlqcHdy?=
 =?utf-8?B?SlUycTVMQ1NnYWV3RGw2U2lFdHpJSlBvWGlSNTF5ZFlWVHJmWFlpYUdQZnJJ?=
 =?utf-8?B?R0FCdm91bFR6aU1kMXdyeVE4RkE3clFPTSswN1NuQ3pWYTFtUlJWRlR6TzU4?=
 =?utf-8?B?am1BYmtWazljRnlzRXh5Q1lJdnNLTjFxVk9NV3p6aW1PeUdmY1VSNjY2WmFT?=
 =?utf-8?B?TWdoZ1JmSlhqTFBYQWd5TWFpejJ6UnN4Y2YydmIwZVMyKzhaS3E2NDhOb3RQ?=
 =?utf-8?B?STBEeFZVajJIdmJPc1dEY3R2TDZNTnN2U24xZ24yUG5IOWxPYXMxU1RnSXJ5?=
 =?utf-8?B?RTV4Um9zKzlEaWVCNC9UWVdmTi9iUUgyc1UvaVpjZ1JuZThiN2RnT0p6S3hz?=
 =?utf-8?B?NVJ3NVdrUGx3eldrNzl4RGVSSmJLMWJpME9FY0c1WXlVOFUvS1RzU3VoS0Qz?=
 =?utf-8?B?RWpmL0RjY29HWkVneE5DZUlIVXEra1FRV1drc0tVSCttTTk0U1oxWjlLSTI2?=
 =?utf-8?B?d1htOGNXVlI2cCtybzJSYTdVRDVFUDZaQUZXQkV1SnQzblNvczhRTkJGdml5?=
 =?utf-8?B?RTFYU0dEWVZKN0FVRE9MRENRZ0FUWjZjckNMcWI4QmNmeWs5ZWcxd1VCMExK?=
 =?utf-8?B?M3pRVFBqNnI0WDlqNDVvRFZZeFVhYUNMOUNPU0dpbzFrNTNqTVMyNEwwcUdh?=
 =?utf-8?B?ZWRDREdKa2ZzVHRzNnE3QTIzY1lsUFUvVzRsM1RacG9lM1JrYStwdkRQd1Vo?=
 =?utf-8?B?Z1hqR25lczArVTEwTy9ac1V1SUlxd3FlbFhVY0pNQ2tsYzlOdjd5RHpJTW9H?=
 =?utf-8?B?Vi9wc2VQbnBXbWE2TmZONWQ1endEZ1lYTE5WYkpnZVBTa0RNdzE4dGM3ZGRo?=
 =?utf-8?Q?J8kxkIAzyeAasSpi+IA9AlCJrtNZqHlriXuO2xGE7RnOT?=
X-MS-Exchange-AntiSpam-MessageData-1: 4qTrkOKhE/oZRb2ufLG846+YEe8iQq5riyk=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c99aeb3-c66c-4a08-2422-08da21dd18e4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5231.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2022 08:17:51.7314 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0RH47DCBWB6dWIc+XGq1EE/+Z0JiRcFFAQ6S+La+Ogc83VwZJgDi4P7aa2cs6yYfimEJ0hAIZwktjVcdwSmpiQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4656
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Convert slpc to iosys_map
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 18/04/22 16:33, Balasubramani Vivekanandan wrote:
> On 16.03.2022 18:26, Mullati Siva wrote:
>> From: Siva Mullati <siva.mullati@intel.com>
>>
>> Convert slpc shared data to use iosys_map rather than
>> plain pointer and save it in the intel_guc_slpc struct.
>> This will help with in read and update slpc shared data
>> after the slpc init by abstracting the IO vs system memory.
>>
>> Signed-off-by: Siva Mullati <siva.mullati@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   | 79 +++++++++++--------
>>  .../gpu/drm/i915/gt/uc/intel_guc_slpc_types.h |  5 +-
>>  2 files changed, 47 insertions(+), 37 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
>> index 9f032c65a488..3a9ec6b03ceb 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
>> @@ -14,6 +14,13 @@
>>  #include "gt/intel_gt_regs.h"
>>  #include "gt/intel_rps.h"
>>  
>> +#define slpc_blob_read(slpc_, field_) \
>> +		       iosys_map_rd_field(&(slpc_)->slpc_map, 0, \
>> +		       struct slpc_shared_data, field_)
>> +#define slpc_blob_write(slpc_, field_, val_) \
>> +			iosys_map_wr_field(&(slpc_)->slpc_map, 0, \
>> +			struct slpc_shared_data, field_, val_)
>> +
>>  static inline struct intel_guc *slpc_to_guc(struct intel_guc_slpc *slpc)
>>  {
>>  	return container_of(slpc, struct intel_guc, slpc);
>> @@ -52,50 +59,50 @@ void intel_guc_slpc_init_early(struct intel_guc_slpc *slpc)
>>  	slpc->selected = __guc_slpc_selected(guc);
>>  }
>>  
>> -static void slpc_mem_set_param(struct slpc_shared_data *data,
>> +static void slpc_mem_set_param(struct intel_guc_slpc *slpc,
>>  			       u32 id, u32 value)
>>  {
>> +	u32 bits = slpc_blob_read(slpc, override_params.bits[id >> 5]);
>> +
>>  	GEM_BUG_ON(id >= SLPC_MAX_OVERRIDE_PARAMETERS);
>>  	/*
>>  	 * When the flag bit is set, corresponding value will be read
>>  	 * and applied by SLPC.
>>  	 */
>> -	data->override_params.bits[id >> 5] |= (1 << (id % 32));
>> -	data->override_params.values[id] = value;
>> +	bits |= (1 << (id % 32));
>> +	slpc_blob_write(slpc, override_params.bits[id >> 5], bits);
>> +	slpc_blob_write(slpc, override_params.values[id], value);
>>  }
>>  
>> -static void slpc_mem_set_enabled(struct slpc_shared_data *data,
>> +static void slpc_mem_set_enabled(struct intel_guc_slpc *slpc,
>>  				 u8 enable_id, u8 disable_id)
>>  {
>>  	/*
>>  	 * Enabling a param involves setting the enable_id
>>  	 * to 1 and disable_id to 0.
>>  	 */
>> -	slpc_mem_set_param(data, enable_id, 1);
>> -	slpc_mem_set_param(data, disable_id, 0);
>> +	slpc_mem_set_param(slpc, enable_id, 1);
>> +	slpc_mem_set_param(slpc, disable_id, 0);
>>  }
>>  
>> -static void slpc_mem_set_disabled(struct slpc_shared_data *data,
>> +static void slpc_mem_set_disabled(struct intel_guc_slpc *slpc,
>>  				  u8 enable_id, u8 disable_id)
>>  {
>>  	/*
>>  	 * Disabling a param involves setting the enable_id
>>  	 * to 0 and disable_id to 1.
>>  	 */
>> -	slpc_mem_set_param(data, disable_id, 1);
>> -	slpc_mem_set_param(data, enable_id, 0);
>> +	slpc_mem_set_param(slpc, disable_id, 1);
>> +	slpc_mem_set_param(slpc, enable_id, 0);
>>  }
>>  
>>  static u32 slpc_get_state(struct intel_guc_slpc *slpc)
>>  {
>> -	struct slpc_shared_data *data;
>> -
>>  	GEM_BUG_ON(!slpc->vma);
>>  
>> -	drm_clflush_virt_range(slpc->vaddr, sizeof(u32));
>> -	data = slpc->vaddr;
>> +	drm_clflush_virt_range(slpc->slpc_map.vaddr, sizeof(u32));
> clflush will not be required if the slpc_map contains io memory address.
> So the drm_clflush_virt_range can be added under a check for system
> memory
Agreed!
>>  
>> -	return data->header.global_state;
>> +	return slpc_blob_read(slpc, header.global_state);
>>  }
>>  
>>  static int guc_action_slpc_set_param(struct intel_guc *guc, u8 id, u32 value)
>> @@ -156,7 +163,7 @@ static int slpc_query_task_state(struct intel_guc_slpc *slpc)
>>  		drm_err(&i915->drm, "Failed to query task state (%pe)\n",
>>  			ERR_PTR(ret));
>>  
>> -	drm_clflush_virt_range(slpc->vaddr, SLPC_PAGE_SIZE_BYTES);
>> +	drm_clflush_virt_range(slpc->slpc_map.vaddr, SLPC_PAGE_SIZE_BYTES);
> Also here we need clfush only for system memory address.
>>  
>>  	return ret;
>>  }
>> @@ -243,10 +250,11 @@ int intel_guc_slpc_init(struct intel_guc_slpc *slpc)
>>  	struct drm_i915_private *i915 = slpc_to_i915(slpc);
>>  	u32 size = PAGE_ALIGN(sizeof(struct slpc_shared_data));
>>  	int err;
>> +	void *vaddr;
>>  
>>  	GEM_BUG_ON(slpc->vma);
>>  
>> -	err = intel_guc_allocate_and_map_vma(guc, size, &slpc->vma, (void **)&slpc->vaddr);
>> +	err = intel_guc_allocate_and_map_vma(guc, size, &slpc->vma, (void **)&vaddr);
>>  	if (unlikely(err)) {
>>  		drm_err(&i915->drm,
>>  			"Failed to allocate SLPC struct (err=%pe)\n",
>> @@ -254,6 +262,12 @@ int intel_guc_slpc_init(struct intel_guc_slpc *slpc)
>>  		return err;
>>  	}
>>  
>> +	if (i915_gem_object_is_lmem(slpc->vma->obj))
>> +		iosys_map_set_vaddr_iomem(&slpc->slpc_map,
>> +					  (void __iomem *)vaddr);
>> +	else
>> +		iosys_map_set_vaddr(&slpc->slpc_map, vaddr);
>> +
>>  	slpc->max_freq_softlimit = 0;
>>  	slpc->min_freq_softlimit = 0;
>>  
>> @@ -335,40 +349,37 @@ static int slpc_reset(struct intel_guc_slpc *slpc)
>>  
>>  static u32 slpc_decode_min_freq(struct intel_guc_slpc *slpc)
>>  {
>> -	struct slpc_shared_data *data = slpc->vaddr;
>> -
>>  	GEM_BUG_ON(!slpc->vma);
>>  
>>  	return	DIV_ROUND_CLOSEST(REG_FIELD_GET(SLPC_MIN_UNSLICE_FREQ_MASK,
>> -				  data->task_state_data.freq) *
>> +				  slpc_blob_read(slpc, task_state_data.freq)) *
>>  				  GT_FREQUENCY_MULTIPLIER, GEN9_FREQ_SCALER);
>>  }
>>  
>>  static u32 slpc_decode_max_freq(struct intel_guc_slpc *slpc)
>>  {
>> -	struct slpc_shared_data *data = slpc->vaddr;
>> -
>>  	GEM_BUG_ON(!slpc->vma);
>>  
>>  	return	DIV_ROUND_CLOSEST(REG_FIELD_GET(SLPC_MAX_UNSLICE_FREQ_MASK,
>> -				  data->task_state_data.freq) *
>> +				  slpc_blob_read(slpc, task_state_data.freq)) *
>>  				  GT_FREQUENCY_MULTIPLIER, GEN9_FREQ_SCALER);
>>  }
>>  
>> -static void slpc_shared_data_reset(struct slpc_shared_data *data)
>> +static void slpc_shared_data_reset(struct intel_guc_slpc *slpc)
>>  {
>> -	memset(data, 0, sizeof(struct slpc_shared_data));
>> -
>> -	data->header.size = sizeof(struct slpc_shared_data);
>> +	iosys_map_memset(&slpc->slpc_map,
>> +			 0, 0, sizeof(struct slpc_shared_data));
>> +	slpc_blob_write(slpc,
>> +			header.size, sizeof(struct slpc_shared_data));
>>  
>>  	/* Enable only GTPERF task, disable others */
>> -	slpc_mem_set_enabled(data, SLPC_PARAM_TASK_ENABLE_GTPERF,
>> +	slpc_mem_set_enabled(slpc, SLPC_PARAM_TASK_ENABLE_GTPERF,
>>  			     SLPC_PARAM_TASK_DISABLE_GTPERF);
>>  
>> -	slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_BALANCER,
>> +	slpc_mem_set_disabled(slpc, SLPC_PARAM_TASK_ENABLE_BALANCER,
>>  			      SLPC_PARAM_TASK_DISABLE_BALANCER);
>>  
>> -	slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_DCC,
>> +	slpc_mem_set_disabled(slpc, SLPC_PARAM_TASK_ENABLE_DCC,
>>  			      SLPC_PARAM_TASK_DISABLE_DCC);
> After converting to iosys_map instance, each
> slpc_mem_set_enabled/disabled calls slpc_mem_set_param twice and each
> slpc_mem_set_param calls slpc_blob_read/write 3 times resulting in 18
> calls to memcpy.
> Therefore it is efficient to consolidate all updates by reading the
> complete override_params field, update necessary members and finally
> overwrite the entire override_params.
>
> Regards,
> Bala
>>  }
>>  
>> @@ -617,7 +628,7 @@ int intel_guc_slpc_enable(struct intel_guc_slpc *slpc)
>>  
>>  	GEM_BUG_ON(!slpc->vma);
>>  
>> -	slpc_shared_data_reset(slpc->vaddr);
>> +	slpc_shared_data_reset(slpc);
>>  
>>  	ret = slpc_reset(slpc);
>>  	if (unlikely(ret < 0)) {
>> @@ -705,8 +716,6 @@ void intel_guc_slpc_dec_waiters(struct intel_guc_slpc *slpc)
>>  int intel_guc_slpc_print_info(struct intel_guc_slpc *slpc, struct drm_printer *p)
>>  {
>>  	struct drm_i915_private *i915 = slpc_to_i915(slpc);
>> -	struct slpc_shared_data *data = slpc->vaddr;
>> -	struct slpc_task_state_data *slpc_tasks;
>>  	intel_wakeref_t wakeref;
>>  	int ret = 0;
>>  
>> @@ -716,11 +725,10 @@ int intel_guc_slpc_print_info(struct intel_guc_slpc *slpc, struct drm_printer *p
>>  		ret = slpc_query_task_state(slpc);
>>  
>>  		if (!ret) {
>> -			slpc_tasks = &data->task_state_data;
>> -
>>  			drm_printf(p, "\tSLPC state: %s\n", slpc_get_state_string(slpc));
>>  			drm_printf(p, "\tGTPERF task active: %s\n",
>> -				   str_yes_no(slpc_tasks->status & SLPC_GTPERF_TASK_ENABLED));
>> +				   str_yes_no(slpc_blob_read(slpc, task_state_data.status) &
>> +				   SLPC_GTPERF_TASK_ENABLED));
>>  			drm_printf(p, "\tMax freq: %u MHz\n",
>>  				   slpc_decode_max_freq(slpc));
>>  			drm_printf(p, "\tMin freq: %u MHz\n",
>> @@ -739,4 +747,5 @@ void intel_guc_slpc_fini(struct intel_guc_slpc *slpc)
>>  		return;
>>  
>>  	i915_vma_unpin_and_release(&slpc->vma, I915_VMA_RELEASE_MAP);
>> +	iosys_map_clear(&slpc->slpc_map);
>>  }
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
>> index bf5b9a563c09..96f524f25b52 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
>> @@ -7,15 +7,16 @@
>>  #define _INTEL_GUC_SLPC_TYPES_H_
>>  
>>  #include <linux/atomic.h>
>> -#include <linux/workqueue.h>
>> +#include <linux/iosys-map.h>
>>  #include <linux/mutex.h>
>>  #include <linux/types.h>
>> +#include <linux/workqueue.h>
>>  
>>  #define SLPC_RESET_TIMEOUT_MS 5
>>  
>>  struct intel_guc_slpc {
>>  	struct i915_vma *vma;
>> -	struct slpc_shared_data *vaddr;
>> +	struct iosys_map slpc_map;
>>  	bool supported;
>>  	bool selected;
>>  
>> -- 
>> 2.33.0
>>
