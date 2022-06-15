Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3DB54CE22
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 18:14:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16E0A10E0D6;
	Wed, 15 Jun 2022 16:14:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE55810F808
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 16:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655309687; x=1686845687;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EZ2RVlDZOJ2OSiakr2e+yXZEUOjbJzRGLKfyeycBFO0=;
 b=DOBAdBCM/tCWDT08ncu6oIFKZ8nrnSgFkiHGbgrRhbnGlcLe8eWPPmjw
 yuRkJvuMQzXbrEkCDP2NdLYdtCTzwEtCZJm8Dd/ijl23qq1VgSU9Y7gXI
 n2OqXGBJPXdd9eFNA8fzjKmhSF4NLUuvC2Z98nWIkCbm2eYdbGPLT2oO+
 eNCRsD4I442M1vHOjO0a1ft7WkCuPhNxxcnNM69blBOfRVf0qbYeEYa9C
 bdSWEi4nYrky8TPSMJ9awkkw5rTNmTlwG6sFvaBVY4S28l78/887mhQ6y
 mJ0KGNeXocCk6xtJAUPefT0jd/hbTumtDdwrmy4jWOa1kv4R98feJx+oK A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="279065079"
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="279065079"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 09:14:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="831126729"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga006.fm.intel.com with ESMTP; 15 Jun 2022 09:14:37 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 15 Jun 2022 09:14:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 15 Jun 2022 09:14:36 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 15 Jun 2022 09:14:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AZdGvHPqY8dYd2XlQb1DzKxeALu4twzaCQNJeMhjsumRfHN8jJNUmw3hHCJKBPhCXwYOnG11ahVawYgQr1AJr3UZolxwg4fV0UfwhlnlJsGy9hfnGbTrNun3Cuph2rJEOsdjQ+4qlIDORb7bfgMe0pZhZ7za7LnGFfqkyK+XRWB1arUpubZd8oJdM1WTphh4y1MLe2bdAILnNEuo0LBpuQqsojwYvN1Wig15Rzc2wvLATc4lyAmce1Ub6c1qT1Z3JR5Rru4q8zFV8VREVq+HvMjYIDTENRlmmOUDQWghZ1BNga8DAHv4f4WMe2OADTcnIsQmQUe34vI9QhTSLwfFaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OpPoWJG7aBi9f1wHreDYDibjg+a75T99zjDVHaQbYyU=;
 b=g809AjNI6dd9FrPUucSiu45q2+Gces0BDKgKw8uC9+fEtp5DMkoCkOtVD6/YzPj3F/orRDDaKk656BTepgOW09N0bO9K0k2IIvVW21epA2XIo3a26DqY3f2Zq6aPqyTcia6BHxQ8UglqBlyd7BNAsljukwshfuKBHbwKhJPeC/3fYRG3bVepOKtT+oj/RqDASL+u7hLd1qW7GirCwId48Px8m35fRfULfFhiVpnMjMLm6TrqTelh73PH+EhU6e8dX6XPwbmFAOj+a9kA0iYS1f6iFLivFU/giUKb6h5iHTj4uF/lgZR0C3Ie+HlVNvfoKv7zjv7m4U/X81xqLufbQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB4514.namprd11.prod.outlook.com (2603:10b6:5:2a3::17)
 by SN6PR11MB3104.namprd11.prod.outlook.com (2603:10b6:805:cc::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.13; Wed, 15 Jun
 2022 16:14:34 +0000
Received: from DM6PR11MB4514.namprd11.prod.outlook.com
 ([fe80::b110:6564:ad3:1728]) by DM6PR11MB4514.namprd11.prod.outlook.com
 ([fe80::b110:6564:ad3:1728%7]) with mapi id 15.20.5353.014; Wed, 15 Jun 2022
 16:14:34 +0000
Message-ID: <913becb5-7ffe-ca7b-7acd-71c2ee3ade23@intel.com>
Date: Wed, 15 Jun 2022 09:14:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, "Ceraolo Spurio, Daniele"
 <daniele.ceraolospurio@intel.com>, <intel-gfx@lists.freedesktop.org>,
 "Zhang, Carl" <carl.zhang@intel.com>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
 <dbc2ad75-1248-8d53-281d-f0a308733972@linux.intel.com>
 <7ede8090-bfbf-17a7-31f6-24e844a70673@intel.com>
 <a0860c06-4aba-deff-9101-aecdd8c14a02@linux.intel.com>
 <d6bc42f5-86c1-3bc9-d731-2bd0a978ece5@intel.com>
 <f50ee482-ed77-a644-095f-b2a988306de2@linux.intel.com>
 <7b394930-e6fb-8dc6-ba63-352f7a623b97@intel.com>
 <4d44c67a-4a38-fa53-6709-d5f206a9b0db@linux.intel.com>
 <e90f9dd1-7229-f958-d2e6-6fc4ec5a866b@intel.com>
 <954db3a4-e8c9-e157-5211-aceec87dfd9d@linux.intel.com>
 <4a7f6abe-e479-a3d9-8615-e52a2863733c@intel.com>
 <c565a81a-d86c-a5fd-c97e-27bd1459da6e@intel.com>
 <05a33039-ed2e-3364-6036-197955abacfc@linux.intel.com>
From: "Ye, Tony" <tony.ye@intel.com>
In-Reply-To: <05a33039-ed2e-3364-6036-197955abacfc@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0044.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::19) To DM6PR11MB4514.namprd11.prod.outlook.com
 (2603:10b6:5:2a3::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: adc5834f-b76a-4bf8-7030-08da4eea22e4
X-MS-TrafficTypeDiagnostic: SN6PR11MB3104:EE_
X-Microsoft-Antispam-PRVS: <SN6PR11MB3104B0374842FCF1FB43116FF1AD9@SN6PR11MB3104.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: H4zbdATlLE3CoQh7mJ28zYr0OzQ7odOJkk+WMnnCgPwwwt/jba+rSfB6r0KWiWoiSljCKSXO6aA5GLNeYIUXlgI22EQwgOPsz0RwgyjCObveO4LqrizeQzMLi1AvGwtyPuGLFZon7F4wGzo+d+ejJlZX1linM+/AonZLq/u/w/NhA61shyQE6nCs/qv6Gb1PmWSgi8FAXV/Ps1hR7xM4CT3mby9sRSbfPQuDyWwLqWp6XAKBU8uWR1DEaBKpeowNgSjJq0tp8x8jOG/BdrgDM8XepWBHZFuT0iIj3ZXSj/zGR0rSpODmRY7mRYHZTHeeIh8jBc0S0hqWMsqqmxfBzc+RgxrbjEZGFZ2mmsLXUdd09wM4A4A1ENIVA66o5NJgviWT+te5JgAV2d/7c39sqicTz6GBd2Rxf213sF5irSXkcIhhn5VV+X+z2TiCeef79+fL+F2VNcVDyi1b2u6Yug30dvp8sutIfn0SAN/APDRndRL6j8O1I3XQwoNjhlrEtPsc+G81GzDcUknrKh7yAgx5YUohVAHEs4u0YqB9PAPX/WqbZGa5olK9qF/ZRGz/bu8xo1d+AoiY9GbD9xA0UNsGo9l15NxsT83RruNQCBaL0XPlKylT5z8FtlOJsD/TSHtsZNTGRhKehbtVYI5Gc6MQUauQev+q8BfTg5w8rAj+W4inJsNzjWrzvJ/VSk0UsNx1nZH2pxkoNK4v7U91mue8O0F9edOCg8l6NrYRfNsWy05Q+ksdcTJ+K4Y+Jsx17nGKT7f7iAqXrEBAa9kq4A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4514.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(4326008)(8676002)(66946007)(66476007)(66556008)(508600001)(26005)(2616005)(6512007)(8936002)(316002)(6506007)(86362001)(6666004)(38100700002)(82960400001)(6486002)(53546011)(31696002)(54906003)(83380400001)(36756003)(30864003)(2906002)(186003)(5660300002)(6636002)(31686004)(110136005)(60764002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dlFLNDFIK1phajZkNjh4N0hXdDVTTU9JSTVUNEE0MzUzbDYvVzI4VEpCL21j?=
 =?utf-8?B?ZHZxZkRiemhLQkZ5RUY4Z29ScWRkcmVxVzFnWHdwbHBnYWpLdHZjV3FYdzEz?=
 =?utf-8?B?c2dwOFpOUnc1ZVZxczRWcmw3aDBpMHduUHB5MnVSV0ttMXhqSGxCMHJPekNV?=
 =?utf-8?B?OVhxTzBxekYycG9pZzRMUmdKdjVlMG40Um9DN0YyUGZsR21EMCtVMXlyZVUv?=
 =?utf-8?B?VGlwVkl1MG5mNWJpQ2hNeStnTTZMQkxjdjhVb2tVaXZFeTZOZk9TRkpIdHpy?=
 =?utf-8?B?NWdzd3JsOU1xVm1HNDZTUUMvS01TaUEzUUFPUWttZ2N1dnZjWTdGQW93SUQy?=
 =?utf-8?B?RTR3NTJDVVlBeUlrSTR2UW1kSnJWRXVJUGhmRjNnSUU3TFgyUGFVOU9VTkE4?=
 =?utf-8?B?dGg2WVErQnRIUWd0ZlZxQXp0Q3VFS0NiaGQzQW8zUlk2ejg2SU4vRHZCNytG?=
 =?utf-8?B?SWtvMmZIVG5WVmFPTVUwVjZiU2R0YjdUZHA0K05LRGxFS3pmWW9lVkw5czJo?=
 =?utf-8?B?VDJneWRMSlVhMFU4L1diY1BzdXozNy83bzV6TksyN2RYUWxvVElmckZMVkFM?=
 =?utf-8?B?ckREMkhxYVllUWNYcmlHK3RaMnRvNmVXMW9VcmRPb2h0Nm8vN3VXK0gwYUZx?=
 =?utf-8?B?aStDQno4Nk5oeldrOXJlV3lrdXJRUjdZMkNuRFBwb3NhQmxNdFh6UjFnTnkw?=
 =?utf-8?B?MitpRm50MStDY0NLcTNxVW5Fd2swR2ZGYjMvdC80RTc3aStsc213MTFXQ3N6?=
 =?utf-8?B?VUJCbWo5UngwSE00QzNpdTZxTkN0dXM1aGZaSCsrNDhVSUIwK1RUN3Rjb3lU?=
 =?utf-8?B?MTBNcG50S25abnF0dWRZTHhMWFFLWnJkYnBOc2VadmpLMFNUM2dOVGJkdm4r?=
 =?utf-8?B?bXZ1VGw1VFNlRzhXZHdscjl1Wm1JcmN6S3dlZHduNEdOc1JBbjNjUk5uT293?=
 =?utf-8?B?TTlrVGxRZlVxUjZ0cXM5L3grREtBYThUR1JRYjNVV2x6c0tHay9pY2paeUgz?=
 =?utf-8?B?SHlWV2RFb1F1TkUrLzNWMS9WdE1RTWdOSW1rS3JETk5zZFRVOWhxUE9XeVFM?=
 =?utf-8?B?TGZjcUM5VFBHNUlwTm54cHBZMW1lUEZoMk5URTlHbVdJa3IwYTFwQlJVd3Vz?=
 =?utf-8?B?V3gvcEY3MmRxYzBpOUt5MlBvUkh5TDFIdjdmYmFzeVRxWHZOZy9hS243NGJ0?=
 =?utf-8?B?WDBiMTIvRXpKemlkMWRyUW9lcisrSkpnOThyTXZPd0VxYXVrUnE4azcwNklG?=
 =?utf-8?B?d2V6WExLMk9mZmJIc0VDS1IyemhlWjhUTmhPMmZDRDNLVSs1MnRXUjFYVTYv?=
 =?utf-8?B?Ry8yS0VCN0w1VUJlQVp4R2FzcWQzR2RMMjhPSFFmZHlDSjFNa1VEamJuMlI2?=
 =?utf-8?B?V1NRWDlFK0NTYitDZ3dqcUxkVi91RGhsamZvUStLNDVlYmZlMkNHTmxnK1Ir?=
 =?utf-8?B?Ky9rMVZsQXVRZzhicCsybzFiT2lkR24zd0xQd1RTVEM2NnNSMnhNL3hRczli?=
 =?utf-8?B?SlJLNEIzOUVYZ3dzRGw2N3ZEUTBPSmQ5TllNYU5nOW9xZHk4SC9JM2UrU2k5?=
 =?utf-8?B?SVRFVVpVcWRTVWpEVEhsWUJxRXF0RnVNNzFmenE0OVZmZG96cWVwN05pMklK?=
 =?utf-8?B?WHhLb01GcmdJMVQzTVdyWEt2NTQxMlJ0MCtBY3V0MDlhb0ZYdkczWEo0T1Z0?=
 =?utf-8?B?ZG5kRmx0TVJ1Z1VyVTkyNGwzVS9zZWlkN0Nlb2NkMWt6RXlISEZwc05NVHMx?=
 =?utf-8?B?Q1RmbEdsRnlDZXNialcvUFRMWE9OU3hUclNlNVV5UGdLeExJV0xWQ2s1bmdR?=
 =?utf-8?B?QzhLQW9aVDFiZ3d4TEdleWZFL0VPREZNbUNOdTFOMkdpcHFsQ210ZGUxc1Zk?=
 =?utf-8?B?Qko2aXBJODRZNnpTOVd6UnJySjRjUmZVZW9vRXl4RmYreUtMK0l1S1lSNFkx?=
 =?utf-8?B?djdvMys3V2FiUmYxajBoSFBHQVk4TC9LTXYvMzJLOXZ2RzBWaFpNeC93KzNO?=
 =?utf-8?B?VnZFelhsV2lDdFNMc2pibmo2TlZrbXhsSFN3OXltc0FIZ2VESXhHcE1rMWwz?=
 =?utf-8?B?OURQZ3pjaDRuS25VelBpeFIzaFdudWJNYjAxWWpZOTBQbHpiMlRsUFNHVnZk?=
 =?utf-8?B?T0g4QTRleW14ZW1GNU1uSDFWUTh0RllSN0hIQ1VPZGQ5d2ZEWjB6Q3YwVklB?=
 =?utf-8?B?R1VYa3Z6aFFHMGdaelFERE5xWERlcDh5aWZUM0p1aFZxTitsMTkvZnFIeUI5?=
 =?utf-8?B?ZHQvcG5wRklFazdzUXpFckMyVlZsTjgrT0dxd1lzZ3NJU2o5Nm02K2VkNXVx?=
 =?utf-8?B?VU54S0NFb1VlWWFYOGtWZXQrRWlDNFFGa1FLbERWYXgvSHk1Ykd4Zz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: adc5834f-b76a-4bf8-7030-08da4eea22e4
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4514.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2022 16:14:34.2618 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HAPZ8/cKTb7mXTwm2aG/jS+pUNwZtUoXH6/FwaHauCXt/iSGQbP4frFagE5mr61MyuscSwx2hVOqiiT60FAM7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3104
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 00/15] HuC loading for DG2
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
Cc: Alexander Usyskin <alexander.usyskin@intel.com>,
 alan.previn.teres.alexis@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 6/15/2022 3:13 AM, Tvrtko Ursulin wrote:
>
> On 15/06/2022 00:15, Ye, Tony wrote:
>> On 6/14/2022 8:30 AM, Ceraolo Spurio, Daniele wrote:
>>> On 6/14/2022 12:44 AM, Tvrtko Ursulin wrote:
>>>>
>>>> On 13/06/2022 19:13, Ceraolo Spurio, Daniele wrote:
>>>>> On 6/13/2022 10:39 AM, Tvrtko Ursulin wrote:
>>>>>> On 13/06/2022 18:06, Ceraolo Spurio, Daniele wrote:
>>>>>>> On 6/13/2022 9:56 AM, Tvrtko Ursulin wrote:
>>>>>>>> On 13/06/2022 17:41, Ceraolo Spurio, Daniele wrote:
>>>>>>>>> On 6/13/2022 9:31 AM, Tvrtko Ursulin wrote:
>>>>>>>>>>
>>>>>>>>>> On 13/06/2022 16:39, Ceraolo Spurio, Daniele wrote:
>>>>>>>>>>> On 6/13/2022 1:16 AM, Tvrtko Ursulin wrote:
>>>>>>>>>>>>
>>>>>>>>>>>> On 10/06/2022 00:19, Daniele Ceraolo Spurio wrote:
>>>>>>>>>>>>> On DG2, HuC loading is performed by the GSC, via a PXP 
>>>>>>>>>>>>> command. The load
>>>>>>>>>>>>> operation itself is relatively simple (just send a message 
>>>>>>>>>>>>> to the GSC
>>>>>>>>>>>>> with the physical address of the HuC in LMEM), but there 
>>>>>>>>>>>>> are timing
>>>>>>>>>>>>> changes that requires special attention. In particular, to 
>>>>>>>>>>>>> send a PXP
>>>>>>>>>>>>> command we need to first export the GSC driver and then 
>>>>>>>>>>>>> wait for the
>>>>>>>>>>>>> mei-gsc and mei-pxp modules to start, which means that HuC 
>>>>>>>>>>>>> load will
>>>>>>>>>>>>> complete after i915 load is complete. This means that 
>>>>>>>>>>>>> there is a small
>>>>>>>>>>>>> window of time after i915 is registered and before HuC is 
>>>>>>>>>>>>> loaded
>>>>>>>>>>>>> during which userspace could submit and/or checking the 
>>>>>>>>>>>>> HuC load status,
>>>>>>>>>>>>> although this is quite unlikely to happen (HuC is usually 
>>>>>>>>>>>>> loaded before
>>>>>>>>>>>>> kernel init/resume completes).
>>>>>>>>>>>>> We've consulted with the media team in regards to how to 
>>>>>>>>>>>>> handle this and
>>>>>>>>>>>>> they've asked us to do the following:
>>>>>>>>>>>>>
>>>>>>>>>>>>> 1) Report HuC as loaded in the getparam IOCTL even if load 
>>>>>>>>>>>>> is still in
>>>>>>>>>>>>> progress. The media driver uses the IOCTL as a way to 
>>>>>>>>>>>>> check if HuC is
>>>>>>>>>>>>> enabled and then includes a secondary check in the batches 
>>>>>>>>>>>>> to get the
>>>>>>>>>>>>> actual status, so doing it this way allows userspace to 
>>>>>>>>>>>>> keep working
>>>>>>>>>>>>> without changes.
>>>>>>>>>>>>>
>>>>>>>>>>>>> 2) Stall all userspace VCS submission until HuC is loaded. 
>>>>>>>>>>>>> Stalls are
>>>>>>>>>>>>> expected to be very rare (if any), due to the fact that 
>>>>>>>>>>>>> HuC is usually
>>>>>>>>>>>>> loaded before kernel init/resume is completed.
>>>>>>>>>>>>
>>>>>>>>>>>> Motivation to add these complications into i915 are not 
>>>>>>>>>>>> clear to me here. I mean there is no HuC on DG2 _yet_ is 
>>>>>>>>>>>> the premise of the series, right? So no backwards 
>>>>>>>>>>>> compatibility concerns. In this case why jump through the 
>>>>>>>>>>>> hoops and not let userspace handle all of this by just 
>>>>>>>>>>>> leaving the getparam return the true status?
>>>>>>>>>>>
>>>>>>>>>>> The main areas impacted by the fact that we can't guarantee 
>>>>>>>>>>> that HuC load is complete when i915 starts accepting 
>>>>>>>>>>> submissions are boot and suspend/resume, with the latter 
>>>>>>>>>>> being the main problem; GT reset is not a concern because 
>>>>>>>>>>> HuC now survives it. A suspend/resume can be transparent to 
>>>>>>>>>>> userspace and therefore the HuC status can temporarily flip 
>>>>>>>>>>> from loaded to not without userspace knowledge, especially 
>>>>>>>>>>> if we start going into deeper suspend states and start 
>>>>>>>>>>> causing HuC resets when we go into runtime suspend. Note 
>>>>>>>>>>> that this is different from what happens during GT reset for 
>>>>>>>>>>> older platforms, because in that scenario we guarantee that 
>>>>>>>>>>> HuC reload is complete before we restart the submission 
>>>>>>>>>>> back-end, so userspace doesn't notice that the HuC status 
>>>>>>>>>>> change. We had an internal discussion about this problem 
>>>>>>>>>>> with both media and i915 archs and the conclusion was that 
>>>>>>>>>>> the best option is for i915 to stall media submission while 
>>>>>>>>>>> HuC (re-)load is in progress.
>>>>>>>>>>
>>>>>>>>>> Resume is potentialy a good reason - I did not pick up on 
>>>>>>>>>> that from the cover letter. I read the statement about the 
>>>>>>>>>> unlikely and small window where HuC is not loaded during 
>>>>>>>>>> kernel init/resume and I guess did not pick up on the resume 
>>>>>>>>>> part.
>>>>>>>>>>
>>>>>>>>>> Waiting for GSC to load HuC from i915 resume is not an option?
>>>>>>>>>
>>>>>>>>> GSC is an aux device exported by i915, so AFAIU GSC resume 
>>>>>>>>> can't start until i915 resume completes.
>>>>>>>>
>>>>>>>> I'll dig into this in the next few days since I want to 
>>>>>>>> understand how exactly it works. Or someone can help explain.
>>>>>>>>
>>>>>>>> If in the end conclusion will be that i915 resume indeed cannot 
>>>>>>>> wait for GSC, then I think auto-blocking of queued up contexts 
>>>>>>>> on media engines indeed sounds unavoidable. Otherwise, as you 
>>>>>>>> explained, user experience post resume wouldn't be good.
>>>>>>>
>>>>>>> Even if we could implement a wait, I'm not sure we should. GSC 
>>>>>>> resume and HuC reload takes ~300ms in most cases, I don't think 
>>>>>>> we want to block within the i915 resume path for that long.
>>>>>>
>>>>>> Yeah maybe not. But entertaining the idea that it is technically 
>>>>>> possible to block - we could perhaps add uapi for userspace to 
>>>>>> mark contexts which want HuC access. Then track if there are any 
>>>>>> such contexts with outstanding submissions and only wait in 
>>>>>> resume if there are. If that would end up significantly less code 
>>>>>> on the i915 side to maintain is an open.
>>>>>>
>>>>>> What would be the end result from users point of view in case 
>>>>>> where it suspended during video playback? The proposed solution 
>>>>>> from this series sees the video stuck after resume. Maybe 
>>>>>> compositor blocks as well since I am not sure how well they 
>>>>>> handle one window not providing new data. Probably depends on the 
>>>>>> compositor.
>>>>>>
>>>>>> And then with a simpler solution definitely the whole resume 
>>>>>> would be delayed by 300ms.
>>>>>>
>>>>>> With my ChromeOS hat the stalled media engines does sound like a 
>>>>>> better solution. But with the maintainer hat I'd like all options 
>>>>>> evaluated since there is attractiveness if a good enough solution 
>>>>>> can be achieved with significantly less kernel code.
>>>>>>
>>>>>> You say 300ms is typical time for HuC load. How long it is on 
>>>>>> other platforms? If much faster then why is it so slow here?
>>>>>
>>>>> The GSC itself has to come out of suspend before it can perform 
>>>>> the load, which takes a few tens of ms I believe. AFAIU the GSC is 
>>>>> also slower in processing the HuC load and auth compared to the 
>>>>> legacy path. The GSC FW team gave a 250ms limit for the time the 
>>>>> GSC FW needs from start of the resume flow to HuC load complete, 
>>>>> so I bumped that to ~300ms to account for all other SW 
>>>>> interactions, plus a bit of buffer. Note that a bit of the SW 
>>>>> overhead is caused by the fact that we have 2 mei modules in play 
>>>>> here: mei-gsc, which manages the GSC device itself (including 
>>>>> resume), and mei-pxp, which owns the pxp messaging, including HuC 
>>>>> load.
>>>>
>>>> And how long on other platforms (not DG2) do you know? Presumably 
>>>> there the wait is on the i915 resume path?
>>>
>>> I don't have "official" expected load times at hand, but looking at 
>>> the BAT boot logs for this series for DG1 I see it takes ~10 ms to 
>>> load both GuC and HuC:
>>>
>>> <7>[    8.157838] i915 0000:03:00.0: [drm:intel_huc_init [i915]] GSC 
>>> loads huc=no
>>> <6>[    8.158632] i915 0000:03:00.0: [drm] GuC firmware 
>>> i915/dg1_guc_70.1.1.bin version 70.1
>>> <6>[    8.158634] i915 0000:03:00.0: [drm] HuC firmware 
>>> i915/dg1_huc_7.9.3.bin version 7.9
>>> <7>[    8.164255] i915 0000:03:00.0: [drm:guc_enable_communication 
>>> [i915]] GuC communication enabled
>>> <6>[    8.166111] i915 0000:03:00.0: [drm] HuC authenticated
>>>
>>> Note that we increase the GT frequency all the way to the max before 
>>> starting the FW load, which speeds things up.
>>>
>>>>
>>>>>>>> However, do we really need to lie in the getparam? How about 
>>>>>>>> extend or add a new one to separate the loading vs loaded 
>>>>>>>> states? Since userspace does not support DG2 HuC yet this 
>>>>>>>> should be doable.
>>>>>>>
>>>>>>> I don't really have a preference here. The media team asked us 
>>>>>>> to do it this way because they wouldn't have a use for the 
>>>>>>> different "in progress" and "done" states. If they're ok with 
>>>>>>> having separate flags that's fine by me.
>>>>>>> Tony, any feedback here?
>>>>>>
>>>>>> We don't even have any docs in i915_drm.h in terms of what it means:
>>>>>>
>>>>>> #define I915_PARAM_HUC_STATUS         42
>>>>>>
>>>>>> Seems to be a boolean. Status false vs true? Could you add some 
>>>>>> docs?
>>>>>
>>>>> There is documentation above intel_huc_check_status(), which is 
>>>>> also updated in this series. I can move that to i915_drm.h.
>>>>
>>>> That would be great, thanks.
>>>>
>>>> And with so rich return codes already documented and exposed via 
>>>> uapi - would we really need to add anything new for DG2 apart for 
>>>> userspace to know that if zero is returned (not a negative error 
>>>> value) it should retry? I mean is there another negative error 
>>>> missing which would prevent zero transitioning to one?
>>>
>>> I think if the auth fails we currently return 0, because the uc 
>>> state in that case would be "TRANSFERRED", i.e. DMA complete but not 
>>> fully enabled. I don't have anything against changing the FW state 
>>> to "ERROR" in this scenario and leave the 0 to mean "not done yet", 
>>> but I'd prefer the media team to comment on their needs for this 
>>> IOCTL before committing to anything.
>>
>>
>> Currently media doesn't differentiate "delayed loading is in 
>> progress" with "HuC is authenticated and running". If the HuC 
>> authentication eventually fails, the user needs to check the debugfs 
>> to know the reason. IMHO, it's not a big problem as this is what we 
>> do even when the IOCTL returns non-zero values. + Carl to comment.
>
> (Side note - debugfs can be assumed to not exist so it is not 
> interesting to users.)
>
> There isn't currently a "delayed loading is in progress" state, that's 
> the discussion in this thread, if and how to add it.
>
> Getparam it currently documents these states:
>
>  -ENODEV if HuC is not present on this platform,
>  -EOPNOTSUPP if HuC firmware is disabled,
>  -ENOPKG if HuC firmware was not installed,
>  -ENOEXEC if HuC firmware is invalid or mismatched,
>  0 if HuC firmware is not running,
>  1 if HuC firmware is authenticated and running.
>
> This patch proposed to change this to:
>
>  1 if HuC firmware is authenticated and running or if delayed load is 
> in progress,
>  0 if HuC firmware is not running and delayed load is not in progress
>
> Alternative idea is for DG2 (well in general) to add some more fine 
> grained states, so that i915 does not have to use 1 for both running 
> and loading. This may be adding a new error code for auth fails as 
> Daniele mentioned. Then UMD can know that if 0 is returned and
> platform is DG2 it needs to query it again since it will transition to 
> either 1 or error eventually. This would mean the non error states 
> would be:
>
>  0 not running (aka loading)
>  1 running (and authenticated)
>
> @Daniele - one more thing - can you make sure in the series (if you 
> haven't already) that if HuC status was in any error before suspend 
> reload is not re-tried on resume? My thinking is that the error is 
> likely to persist and we don't want to impose long delay on every 
> resume afterwards. Makes sense to you?
>
> @Tony - one more question for the UMD. Or two.
>
> How prevalent is usage of HuC on DG2 depending on what codecs need it? 
> Do you know in advance, before creating a GEM context, that HuC 
> commands will be sent to the engine or this changes at runtime?

HuC is needed for all codecs while HW bit rate control (CBR, VBR) is in 
use. It's also used by content protection. And UMD doesn't know if it 
will be used later at context creation time.

Thanks,

Tony

>
> Regards,
>
> Tvrtko
