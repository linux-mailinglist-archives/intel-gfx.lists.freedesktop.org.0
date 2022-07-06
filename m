Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4665E569318
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jul 2022 22:11:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81F9B11B1CD;
	Wed,  6 Jul 2022 20:11:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B12F11B1CD
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jul 2022 20:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657138310; x=1688674310;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pE+G3zPAoK6gU56CA7TOT1MO3CAd2ZcAhwkxqHFolAI=;
 b=igyOatQgid2JypKBqYDNuOEIu9ySraLqWloJivHKp79UGMAJ8YcnNk76
 zyeJOyxTl8MRElV3kUGtRI8osSrAEt8Cq9FHHXPtDRTGpwMJALCUCimFX
 LzHIc8uHs+evwPfkCZEiuqzgO7gjoFYuvObUBrVWcNsj9MAo7jb9g3Vgm
 usbh5ls2W5OZpY3fDc3v1RZbE3uDaLjo7a0EAWBaiQAbX19WmrUrC8Nqr
 94zB+epHGV4M4FmpnpJjczZl0vgnhHxGdSgh/79nbPn69zLosq7jN3LA6
 5/Qw6gnFGIzhMTLxx0ywFB4gXqLu3nf0O/BjEf2gp5lEioe3iAiCyJkhm w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10400"; a="266888302"
X-IronPort-AV: E=Sophos;i="5.92,250,1650956400"; d="scan'208";a="266888302"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 13:11:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,250,1650956400"; d="scan'208";a="568216797"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 06 Jul 2022 13:11:49 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 6 Jul 2022 13:11:49 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 6 Jul 2022 13:11:48 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 6 Jul 2022 13:11:48 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 6 Jul 2022 13:11:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d8hPUNz9HXrLShHCYjlc+ZxoDT+aHt8A4a7WkuH6i6xcMlqjn7Uhy9RK+WjU7dslTLgx1ofTv40NIHC0kX21oG/vMhyyFRedGimTXA8BSYEAQoORqQE227v0FUcNgBrHk9YDpIueGEtVe8c7Mhu/s7amIiLOfb//h+itI6mRm/tDynyZeohcJQDMrmW2YcbfUedARtwqaW3fS66ZtBTKS+OKHOs+PMPKC+xdAXEx2MOSLAe7TLLuFvgdjzGbTkmEqNLr9/8YanGnOAnSFQvGFm3Sv5D2k1kVoiaY/ycyl1ozm35bAD8sFKXE9kthgpIZmNr4b+BWmdptRQEqTgsnrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3YfbMw0RBUOO6iOKSkcesdoxXKkA7gc1Ui8aPdwm60o=;
 b=GsRjEYw9CaxuccXpa43WBksOu3ppXwdg0rtagYHPKJp2do3mQghexyawOz2POO88Il9vinxL1+nO9Qp67s2VbxAE7GT7ihPCBySkabDDoTvb6tSazODwiXh7f2s7FrSxpzMwzPAaGB/s/2CW+0j/VTV3K+NI2tXNqPwjYcRQAT2i9gCYp7520wPfci2OHmxGU7gw98FW0Rew/33JCy+IeRJie7AXDCa1WO7VOiPqiQhqD+IftH/3emnuGd8iZHkJb113r6vBZy4mcDXl/rWmniEnzwQeoOGTmgYfHd3QuXc2kuYQB5rA3JccQzJt1o2MQe/WonWdCvuxQHnEhfVthw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB4514.namprd11.prod.outlook.com (2603:10b6:5:2a3::17)
 by IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.21; Wed, 6 Jul
 2022 20:11:46 +0000
Received: from DM6PR11MB4514.namprd11.prod.outlook.com
 ([fe80::427:3e51:a2cb:fb00]) by DM6PR11MB4514.namprd11.prod.outlook.com
 ([fe80::427:3e51:a2cb:fb00%6]) with mapi id 15.20.5417.016; Wed, 6 Jul 2022
 20:11:46 +0000
Message-ID: <08b23fff-b110-9f44-b6e5-7bc9f9500f59@intel.com>
Date: Wed, 6 Jul 2022 13:11:42 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>, "Zhang, Carl"
 <carl.zhang@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
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
 <913becb5-7ffe-ca7b-7acd-71c2ee3ade23@intel.com>
 <PH0PR11MB557934FC60F660B9ABB96CA987AC9@PH0PR11MB5579.namprd11.prod.outlook.com>
 <a120b625-4042-f616-b314-aed2013f324b@intel.com>
 <a1560fac-71ac-7d97-1c1f-afe330b27a11@intel.com>
 <7e166f02-db00-9b18-dad0-7e04c348a920@intel.com>
From: "Ye, Tony" <tony.ye@intel.com>
In-Reply-To: <7e166f02-db00-9b18-dad0-7e04c348a920@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR13CA0227.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::22) To DM6PR11MB4514.namprd11.prod.outlook.com
 (2603:10b6:5:2a3::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 249fc315-5a79-4172-0aa0-08da5f8bc064
X-MS-TrafficTypeDiagnostic: IA1PR11MB6266:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /rkPhfVIUHyCoZffhyVLEXB6NPQedJg4XjKcHSK8CcHcs1lu+T7iEJg1FuKHB3TZ7kRRponCfCuYc/uQYWGQRFBeOhNm4tHJEtn7aqIpQiJeNEN/jYF2QCg62n1jNJvQ4O8OAZi6gE/rlJWuQ71Opgv3D71buil2rXicLnmfgt/x/SJ4U2PC3jGMdrdUWI1EaFkehSxqi5BNgrgmz+XlSwz2yIo0OQMZtGchZF7AuhTCc/3vJYQaWpEpX2YTfle7dRltyy7sPPLYGX2GgCD4tjJYdIHoj/CwfRX8otzYeQozAfYru65Fem24Od2Y4Fg2D4Fn7hoemsyip3ZNHmTaEpOQn2Cw98MbH+/XMXeo2T63BoRCn4/LfO+1ADijwIgab9gg+NpYBFHC5cd0IB6CsJRpZULkiKP8aQjzGPgm+z3F/KLdi7kadJUsbmRwgm9kpRQzxEqWAGaYRjuFm0Z9WnzUXkJlVtMlr3nnVYZ2q6BDogZfMQ7ohEnbm+mX4oqp2iFZApnnNuE/+/KiUDl+we/gE9ZQbUIE6RQFFO/gV2BWJuyyIXDUgCVMZYkHzsG0w2n0i+5Rl9kPVujJlzXWLoSvU7fqiR5337ELl1uGCt/VXre1rnMSWPvxumPWHurWFEVPLi4SEts7A+MsO6kSOGnIn2PdJfz27E7OcnKbyv4P43vht/zLjv8FITcS0HjkHUogEARDzIxDB7L7rAMdqIR6X1ojXbZPkRbd4VEJWILy+53ANO/Aqmr0rXg4ogspdXaesflSpQuGKchFnl7Xb6ZerqvG7mMb2+cifFHBImsvhH547F+DVjBfyzKtw0sF
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4514.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(346002)(39860400002)(396003)(136003)(366004)(83380400001)(186003)(2616005)(66946007)(66476007)(8676002)(66556008)(31686004)(316002)(36756003)(110136005)(4326008)(54906003)(6486002)(478600001)(6506007)(86362001)(2906002)(26005)(8936002)(31696002)(5660300002)(38100700002)(30864003)(6666004)(53546011)(41300700001)(6512007)(82960400001)(966005)(60764002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZytheTBhMkRUNkFTZFFTYjJrR0NSQVZidE03elhWQWN4NFFBMzZmYU55TlZ2?=
 =?utf-8?B?aGYyYTdpNUVLUzdpb1NRNzVwMFlFMnFmNlRqWmtxVEwzSEFRc1l4TThpYThQ?=
 =?utf-8?B?LzNDOFAxakI0dGVFR1VmeDcyWmc0QXdQdkNTS1d5cWE4bkZQN0xOdkU5ZHAv?=
 =?utf-8?B?Wm9DY05LbnYwcXF6YTJ5Z1lVaG5jTHJXQXZRY3N6TkR0VmU5OEZvV2NKUkdM?=
 =?utf-8?B?R2dwR3c1NHI0Y05OWlRZVEY3UUJ0VkQyKzFYc0pEQ1pUNmZDbEp0T0x1UlZn?=
 =?utf-8?B?b2NjVnZmcG1QVS9wWHJIbTV2WStOL0wrWFhQUXVwejVGUWZzOUtKUXFhZUNO?=
 =?utf-8?B?ckxJYmNMN0dDUDRJbjFFYkgyWUR0M3pmcjRuUVlYaEVPRUxBdVhlS2dzWjF0?=
 =?utf-8?B?Y0hJaytzVWs1WWllN2wrc25INEhuYnN5ZGxxMmJxbVEwbWZ5NEoxM0hPZVJJ?=
 =?utf-8?B?Sm1xVDBmMWFyMU5nVHhReDA4UU9IQkxEcFpyM2ZSV3JmRTRoZW9aOURrRENR?=
 =?utf-8?B?NDZGNW1jVVd3Z21paFVibnk5a3RPYUxUdHljU1BuRm1HaE54d1A3Z2RONVpT?=
 =?utf-8?B?Z1J1K0xVS3ZISWRTdkxtTmc3Z3FVZmRjMWtIMHdGU2Fmc0tNSXhaR0N1c0xl?=
 =?utf-8?B?MDBYKzdrRGdMdmhndUlYT3BmSkJMb1N2WDBOd3FUNitYN2pvd0lPUzhLZ3Aw?=
 =?utf-8?B?RWtraWRHS1J2N3VZdWZka3d2UUJqRUNwSlhJWlVTR3hreXlUTGtnZmdLVEQ0?=
 =?utf-8?B?Q0hLaHV0azBONDNVUXJUK3l6ZW5VKzJ2dmdISVU5UGpBdnNZRERZTTNXeHI1?=
 =?utf-8?B?eldha1NyTWFzQld0TkFrOHoxS01HNUgwU3ZUaVpqUDJsVmJsV2R1MWYzYzJI?=
 =?utf-8?B?UWpnZmpFSVU0dXlmZVZLRXlMK1R5Q2ZCRCtZRkVsb2E0RDVIZE9ncU5CVlJm?=
 =?utf-8?B?Umd2MEUxZzREZUwxK1k2L1pjS3FlVnFXSUNFMG5wRVlnTDNBT3UyYUJaVDhs?=
 =?utf-8?B?Q3kreWp3bWVuY3gzd3Z1c25vWng0TUNWNVJhSkZMak1vUmlpZVdabXpCSDlX?=
 =?utf-8?B?b3pnaEhzaXl4T24veU0va3ovWGQySGRtV2NaUU9rL0xwTnp6Z2dYZ1haUXlv?=
 =?utf-8?B?YkNMN3habzE3MU1meW5DUlFZU1BPakNPTCt0Rm5HSmdpaWNOTmJER05zSlhm?=
 =?utf-8?B?aEFBQmZKaW5PNGZiSkNiTkFPanZTTEsvV0NXZjdyS3pPWHA4ZFFxYWtKaXZk?=
 =?utf-8?B?bVlWc1ZuV3lWaHlGRkdLVjdTcUcyQzNBR0NSM0ZwempqdGsrSW9SOGc5aENY?=
 =?utf-8?B?ZGxSQk03WXBKM0dkOSs5RHNvMjJwRnJLb2ZlRnBXRWhsUmp5aFRNYlRIbk5o?=
 =?utf-8?B?WkR4VTg5cE9xbHdIS1dESmlCK3FVWjhyc2l4Uy9odWZsVnJObzgvcFp1QXVI?=
 =?utf-8?B?ckRRTDhYSnJzNXgrMXpONWxRNmhCZS9QY2l4VVBBZkEwTVdZYjBEVEdMeXAr?=
 =?utf-8?B?dnllSlJ3aU54SjQ2Ykgrem5YRHJQTTNkSzRqeUpCTWVFVVpKV0VKNGpXYmdP?=
 =?utf-8?B?ajluOFR5L1R1Z0RPdXhObGd4U3ZscFJmb0dXazh3U3E5ejFpY3lubjVJcmtD?=
 =?utf-8?B?SDhYZkQ0Nlc2YVBCUnNURXJMeFRuU2xMOXdSd1R4SFV0Z3M2QlYyS2dCbXVp?=
 =?utf-8?B?M1cwVzJZejEwNlR1c1hETnNwNURrT0E5VVpuNXN4Vk5lQ2l6UVF3Rzd6VHI5?=
 =?utf-8?B?eUQ1WDYrMkI5QzhZREFISm9PSFdEU2REUnF5RXlKV2U1VEJGNndaMUIxL0R3?=
 =?utf-8?B?amJjZE5kR2RkNklrT2dHUGJ1bkl5OXhNZm5WL1pVbXV3Q21yb0NKN3hHVFVP?=
 =?utf-8?B?WWw4RzRjRU1YWWlZUll0U3BkWU9DYkxJcVRId0JhSGJsZktoVTM4RjhjYWhi?=
 =?utf-8?B?T21VYmJLQTlPZnBzcmdlZmhzRit3Wi8rY2FYTkF5RG4xcFZ1empseWEzTHpB?=
 =?utf-8?B?Z2lPUy95cCtka3ZtNUdrRERWd0F6NU1TUDliUGJZOWhUdll5R2R0M0h0bEpx?=
 =?utf-8?B?Znk1YnZSM1Vwby96dmdRdXB2R0NlejFwVVRCdXB4S1hyNUlYVkxpMmZjQnNy?=
 =?utf-8?Q?rmTNf2dZIO1k9l+9D+y+tW/Ow?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 249fc315-5a79-4172-0aa0-08da5f8bc064
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4514.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2022 20:11:46.0627 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +v2ggC4BqRuy0Su92rcwKU+kaFxD7NP8XwYFDQ+1fTxHZiLgI9H1aigycuNuJsyLWxBQcvSdNAV+C/y9jjKqTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6266
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
Cc: "Usyskin, Alexander" <alexander.usyskin@intel.com>, "Teres Alexis, Alan
 Previn" <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 7/6/2022 12:29 PM, Ceraolo Spurio, Daniele wrote:
>
>
> On 7/6/2022 10:26 AM, Ye, Tony wrote:
>>
>> On 7/5/2022 4:30 PM, Ceraolo Spurio, Daniele wrote:
>>>
>>>
>>> On 6/15/2022 7:28 PM, Zhang, Carl wrote:
>>>>> On From: Ye, Tony <tony.ye@intel.com>
>>>>> Sent: Thursday, June 16, 2022 12:15 AM
>>>>>
>>>>>
>>>>> On 6/15/2022 3:13 AM, Tvrtko Ursulin wrote:
>>>>>> On 15/06/2022 00:15, Ye, Tony wrote:
>>>>>>> On 6/14/2022 8:30 AM, Ceraolo Spurio, Daniele wrote:
>>>>>>>> On 6/14/2022 12:44 AM, Tvrtko Ursulin wrote:
>>>>>>>>> On 13/06/2022 19:13, Ceraolo Spurio, Daniele wrote:
>>>>>>>>>> On 6/13/2022 10:39 AM, Tvrtko Ursulin wrote:
>>>>>>>>>>> On 13/06/2022 18:06, Ceraolo Spurio, Daniele wrote:
>>>>>>>>>>>> On 6/13/2022 9:56 AM, Tvrtko Ursulin wrote:
>>>>>>>>>>>>> On 13/06/2022 17:41, Ceraolo Spurio, Daniele wrote:
>>>>>>>>>>>>>> On 6/13/2022 9:31 AM, Tvrtko Ursulin wrote:
>>>>>>>>>>>>>>> On 13/06/2022 16:39, Ceraolo Spurio, Daniele wrote:
>>>>>>>>>>>>>>>> On 6/13/2022 1:16 AM, Tvrtko Ursulin wrote:
>>>>>>>>>>>>>>>>> On 10/06/2022 00:19, Daniele Ceraolo Spurio wrote:
>>>>>>>>>>>>>>>>>> On DG2, HuC loading is performed by the GSC, via a PXP
>>>>>>>>>>>>>>>>>> command. The load operation itself is relatively simple
>>>>>>>>>>>>>>>>>> (just send a message to the GSC with the physical 
>>>>>>>>>>>>>>>>>> address
>>>>>>>>>>>>>>>>>> of the HuC in LMEM), but there are timing changes that
>>>>>>>>>>>>>>>>>> requires special attention. In particular, to send a PXP
>>>>>>>>>>>>>>>>>> command we need to first export the GSC driver and then
>>>>>>>>>>>>>>>>>> wait for the mei-gsc and mei-pxp modules to start, which
>>>>>>>>>>>>>>>>>> means that HuC load will complete after i915 load is
>>>>>>>>>>>>>>>>>> complete. This means that there is a small window of 
>>>>>>>>>>>>>>>>>> time
>>>>>>>>>>>>>>>>>> after i915 is registered and before HuC is loaded during
>>>>>>>>>>>>>>>>>> which userspace could submit and/or checking the HuC 
>>>>>>>>>>>>>>>>>> load
>>>>>>>>>>>>>>>>>> status, although this is quite unlikely to happen 
>>>>>>>>>>>>>>>>>> (HuC is
>>>>>>>>>>>>>>>>>> usually loaded before kernel init/resume completes).
>>>>>>>>>>>>>>>>>> We've consulted with the media team in regards to how to
>>>>>>>>>>>>>>>>>> handle this and they've asked us to do the following:
>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>> 1) Report HuC as loaded in the getparam IOCTL even if 
>>>>>>>>>>>>>>>>>> load
>>>>>>>>>>>>>>>>>> is still in progress. The media driver uses the IOCTL 
>>>>>>>>>>>>>>>>>> as a
>>>>>>>>>>>>>>>>>> way to check if HuC is enabled and then includes a
>>>>>>>>>>>>>>>>>> secondary check in the batches to get the actual status,
>>>>>>>>>>>>>>>>>> so doing it this way allows userspace to keep working
>>>>>>>>>>>>>>>>>> without changes.
>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>> 2) Stall all userspace VCS submission until HuC is 
>>>>>>>>>>>>>>>>>> loaded.
>>>>>>>>>>>>>>>>>> Stalls are
>>>>>>>>>>>>>>>>>> expected to be very rare (if any), due to the fact that
>>>>>>>>>>>>>>>>>> HuC is usually loaded before kernel init/resume is
>>>>>>>>>>>>>>>>>> completed.
>>>>>>>>>>>>>>>>> Motivation to add these complications into i915 are not
>>>>>>>>>>>>>>>>> clear to me here. I mean there is no HuC on DG2 _yet_ is
>>>>>>>>>>>>>>>>> the premise of the series, right? So no backwards
>>>>>>>>>>>>>>>>> compatibility concerns. In this case why jump through the
>>>>>>>>>>>>>>>>> hoops and not let userspace handle all of this by just
>>>>>>>>>>>>>>>>> leaving the getparam return the true status?
>>>>>>>>>>>>>>>> The main areas impacted by the fact that we can't 
>>>>>>>>>>>>>>>> guarantee
>>>>>>>>>>>>>>>> that HuC load is complete when i915 starts accepting
>>>>>>>>>>>>>>>> submissions are boot and suspend/resume, with the latter
>>>>>>>>>>>>>>>> being the main problem; GT reset is not a concern because
>>>>>>>>>>>>>>>> HuC now survives it. A suspend/resume can be 
>>>>>>>>>>>>>>>> transparent to
>>>>>>>>>>>>>>>> userspace and therefore the HuC status can temporarily 
>>>>>>>>>>>>>>>> flip
>>>>>>>>>>>>>>>> from loaded to not without userspace knowledge, especially
>>>>>>>>>>>>>>>> if we start going into deeper suspend states and start
>>>>>>>>>>>>>>>> causing HuC resets when we go into runtime suspend. Note
>>>>>>>>>>>>>>>> that this is different from what happens during GT 
>>>>>>>>>>>>>>>> reset for
>>>>>>>>>>>>>>>> older platforms, because in that scenario we guarantee 
>>>>>>>>>>>>>>>> that
>>>>>>>>>>>>>>>> HuC reload is complete before we restart the submission
>>>>>>>>>>>>>>>> back-end, so userspace doesn't notice that the HuC status
>>>>>>>>>>>>>>>> change. We had an internal discussion about this problem
>>>>>>>>>>>>>>>> with both media and i915 archs and the conclusion was that
>>>>>>>>>>>>>>>> the best option is for i915 to stall media submission 
>>>>>>>>>>>>>>>> while
>>>>>>>>>>>>>>>> HuC (re-)load is in progress.
>>>>>>>>>>>>>>> Resume is potentialy a good reason - I did not pick up on
>>>>>>>>>>>>>>> that from the cover letter. I read the statement about the
>>>>>>>>>>>>>>> unlikely and small window where HuC is not loaded during
>>>>>>>>>>>>>>> kernel init/resume and I guess did not pick up on the 
>>>>>>>>>>>>>>> resume
>>>>>>>>>>>>>>> part.
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> Waiting for GSC to load HuC from i915 resume is not an 
>>>>>>>>>>>>>>> option?
>>>>>>>>>>>>>> GSC is an aux device exported by i915, so AFAIU GSC resume
>>>>>>>>>>>>>> can't start until i915 resume completes.
>>>>>>>>>>>>> I'll dig into this in the next few days since I want to
>>>>>>>>>>>>> understand how exactly it works. Or someone can help explain.
>>>>>>>>>>>>>
>>>>>>>>>>>>> If in the end conclusion will be that i915 resume indeed 
>>>>>>>>>>>>> cannot
>>>>>>>>>>>>> wait for GSC, then I think auto-blocking of queued up 
>>>>>>>>>>>>> contexts
>>>>>>>>>>>>> on media engines indeed sounds unavoidable. Otherwise, as you
>>>>>>>>>>>>> explained, user experience post resume wouldn't be good.
>>>>>>>>>>>> Even if we could implement a wait, I'm not sure we should. GSC
>>>>>>>>>>>> resume and HuC reload takes ~300ms in most cases, I don't 
>>>>>>>>>>>> think
>>>>>>>>>>>> we want to block within the i915 resume path for that long.
>>>>>>>>>>> Yeah maybe not. But entertaining the idea that it is 
>>>>>>>>>>> technically
>>>>>>>>>>> possible to block - we could perhaps add uapi for userspace to
>>>>>>>>>>> mark contexts which want HuC access. Then track if there are 
>>>>>>>>>>> any
>>>>>>>>>>> such contexts with outstanding submissions and only wait in
>>>>>>>>>>> resume if there are. If that would end up significantly less 
>>>>>>>>>>> code
>>>>>>>>>>> on the i915 side to maintain is an open.
>>>>>>>>>>>
>>>>>>>>>>> What would be the end result from users point of view in case
>>>>>>>>>>> where it suspended during video playback? The proposed solution
>>>>>>>>>>> from this series sees the video stuck after resume. Maybe
>>>>>>>>>>> compositor blocks as well since I am not sure how well they
>>>>>>>>>>> handle one window not providing new data. Probably depends on
>>>>> the
>>>>>>>>>>> compositor.
>>>>>>>>>>>
>>>>>>>>>>> And then with a simpler solution definitely the whole resume
>>>>>>>>>>> would be delayed by 300ms.
>>>>>>>>>>>
>>>>>>>>>>> With my ChromeOS hat the stalled media engines does sound 
>>>>>>>>>>> like a
>>>>>>>>>>> better solution. But with the maintainer hat I'd like all 
>>>>>>>>>>> options
>>>>>>>>>>> evaluated since there is attractiveness if a good enough 
>>>>>>>>>>> solution
>>>>>>>>>>> can be achieved with significantly less kernel code.
>>>>>>>>>>>
>>>>>>>>>>> You say 300ms is typical time for HuC load. How long it is on
>>>>>>>>>>> other platforms? If much faster then why is it so slow here?
>>>>>>>>>> The GSC itself has to come out of suspend before it can perform
>>>>>>>>>> the load, which takes a few tens of ms I believe. AFAIU the 
>>>>>>>>>> GSC is
>>>>>>>>>> also slower in processing the HuC load and auth compared to the
>>>>>>>>>> legacy path. The GSC FW team gave a 250ms limit for the time the
>>>>>>>>>> GSC FW needs from start of the resume flow to HuC load complete,
>>>>>>>>>> so I bumped that to ~300ms to account for all other SW
>>>>>>>>>> interactions, plus a bit of buffer. Note that a bit of the SW
>>>>>>>>>> overhead is caused by the fact that we have 2 mei modules in 
>>>>>>>>>> play
>>>>>>>>>> here: mei-gsc, which manages the GSC device itself (including
>>>>>>>>>> resume), and mei-pxp, which owns the pxp messaging, including 
>>>>>>>>>> HuC
>>>>>>>>>> load.
>>>>>>>>> And how long on other platforms (not DG2) do you know? Presumably
>>>>>>>>> there the wait is on the i915 resume path?
>>>>>>>> I don't have "official" expected load times at hand, but 
>>>>>>>> looking at
>>>>>>>> the BAT boot logs for this series for DG1 I see it takes ~10 ms to
>>>>>>>> load both GuC and HuC:
>>>>>>>>
>>>>>>>> <7>[    8.157838] i915 0000:03:00.0: [drm:intel_huc_init 
>>>>>>>> [i915]] GSC
>>>>>>>> loads huc=no <6>[    8.158632] i915 0000:03:00.0: [drm] GuC 
>>>>>>>> firmware
>>>>>>>> i915/dg1_guc_70.1.1.bin version 70.1 <6>[ 8.158634] i915
>>>>>>>> 0000:03:00.0: [drm] HuC firmware i915/dg1_huc_7.9.3.bin version 
>>>>>>>> 7.9
>>>>>>>> <7>[    8.164255] i915 0000:03:00.0: [drm:guc_enable_communication
>>>>>>>> [i915]] GuC communication enabled <6>[ 8.166111] i915
>>>>>>>> 0000:03:00.0: [drm] HuC authenticated
>>>>>>>>
>>>>>>>> Note that we increase the GT frequency all the way to the max 
>>>>>>>> before
>>>>>>>> starting the FW load, which speeds things up.
>>>>>>>>
>>>>>>>>>>>>> However, do we really need to lie in the getparam? How about
>>>>>>>>>>>>> extend or add a new one to separate the loading vs loaded
>>>>>>>>>>>>> states? Since userspace does not support DG2 HuC yet this
>>>>>>>>>>>>> should be doable.
>>>>>>>>>>>> I don't really have a preference here. The media team asked us
>>>>>>>>>>>> to do it this way because they wouldn't have a use for the
>>>>>>>>>>>> different "in progress" and "done" states. If they're ok with
>>>>>>>>>>>> having separate flags that's fine by me.
>>>>>>>>>>>> Tony, any feedback here?
>>>>>>>>>>> We don't even have any docs in i915_drm.h in terms of what it
>>>>> means:
>>>>>>>>>>> #define I915_PARAM_HUC_STATUS         42
>>>>>>>>>>>
>>>>>>>>>>> Seems to be a boolean. Status false vs true? Could you add some
>>>>>>>>>>> docs?
>>>>>>>>>> There is documentation above intel_huc_check_status(), which is
>>>>>>>>>> also updated in this series. I can move that to i915_drm.h.
>>>>>>>>> That would be great, thanks.
>>>>>>>>>
>>>>>>>>> And with so rich return codes already documented and exposed via
>>>>>>>>> uapi - would we really need to add anything new for DG2 apart for
>>>>>>>>> userspace to know that if zero is returned (not a negative error
>>>>>>>>> value) it should retry? I mean is there another negative error
>>>>>>>>> missing which would prevent zero transitioning to one?
>>>>>>>> I think if the auth fails we currently return 0, because the uc
>>>>>>>> state in that case would be "TRANSFERRED", i.e. DMA complete 
>>>>>>>> but not
>>>>>>>> fully enabled. I don't have anything against changing the FW state
>>>>>>>> to "ERROR" in this scenario and leave the 0 to mean "not done 
>>>>>>>> yet",
>>>>>>>> but I'd prefer the media team to comment on their needs for this
>>>>>>>> IOCTL before committing to anything.
>>>>>>>
>>>>>>> Currently media doesn't differentiate "delayed loading is in
>>>>>>> progress" with "HuC is authenticated and running". If the HuC
>>>>>>> authentication eventually fails, the user needs to check the 
>>>>>>> debugfs
>>>>>>> to know the reason. IMHO, it's not a big problem as this is what we
>>>>>>> do even when the IOCTL returns non-zero values. + Carl to comment.
>>>>>> (Side note - debugfs can be assumed to not exist so it is not
>>>>>> interesting to users.)
>>>>>>
>>>>>> There isn't currently a "delayed loading is in progress" state, 
>>>>>> that's
>>>>>> the discussion in this thread, if and how to add it.
>>>>>>
>>>>>> Getparam it currently documents these states:
>>>>>>
>>>>>>   -ENODEV if HuC is not present on this platform,
>>>>>>   -EOPNOTSUPP if HuC firmware is disabled,
>>>>>>   -ENOPKG if HuC firmware was not installed,
>>>>>>   -ENOEXEC if HuC firmware is invalid or mismatched,
>>>>>>   0 if HuC firmware is not running,
>>>>>>   1 if HuC firmware is authenticated and running.
>>>>>>
>>>>>> This patch proposed to change this to:
>>>>>>
>>>>>>   1 if HuC firmware is authenticated and running or if delayed 
>>>>>> load is
>>>>>> in progress,
>>>>>>   0 if HuC firmware is not running and delayed load is not in 
>>>>>> progress
>>>>>>
>>>>>> Alternative idea is for DG2 (well in general) to add some more fine
>>>>>> grained states, so that i915 does not have to use 1 for both running
>>>>>> and loading. This may be adding a new error code for auth fails as
>>>>>> Daniele mentioned. Then UMD can know that if 0 is returned and
>>>>>> platform is DG2 it needs to query it again since it will 
>>>>>> transition to
>>>>>> either 1 or error eventually. This would mean the non error states
>>>>>> would be:
>>>>>>
>>>>>>   0 not running (aka loading)
>>>>>>   1 running (and authenticated)
>>>>>>
>>>>>> @Daniele - one more thing - can you make sure in the series (if you
>>>>>> haven't already) that if HuC status was in any error before suspend
>>>>>> reload is not re-tried on resume? My thinking is that the error is
>>>>>> likely to persist and we don't want to impose long delay on every
>>>>>> resume afterwards. Makes sense to you?
>>>>>>
>>>>>> @Tony - one more question for the UMD. Or two.
>>>>>>
>>>>>> How prevalent is usage of HuC on DG2 depending on what codecs 
>>>>>> need it?
>>>>>> Do you know in advance, before creating a GEM context, that HuC
>>>>>> commands will be sent to the engine or this changes at runtime?
>>>>> HuC is needed for all codecs while HW bit rate control (CBR, VBR) 
>>>>> is in use.
>>>>> It's also used by content protection. And UMD doesn't know if it 
>>>>> will be used
>>>>> later at context creation time.
>>>>>
>>>> from UMD perspective, We don’t care much on the normal 
>>>> initialization process
>>>> because, I could not image that a system is boot up, and user 
>>>> select a crypted content
>>>> to playback, and huc is still not ready.
>>>> of course, We are  also ok to query the huc status twice, and wait 
>>>> if the status is "0 not running"
>>>> to avoid potential issue.
>>>>
>>>> I suppose the main possible issue will happen in the 
>>>> hibernation/awake process, it is transparent to UMD.
>>>> UMD will not call ioctrl  to query huc status in this process, and 
>>>> will continue to send command buffer to KMD.
>>>
>>> I think there is an agreement that it is ok to return 0 to mark the 
>>> load still in progress and 1 for load & auth complete. However, 
>>> double checking the code it turns out that we currently return 0 on 
>>> load failure, even if that's not particularly clear from the 
>>> comment. I can easily change that to be an error code, but not sure 
>>> if that's considered an API breakage considering it's not a well 
>>> documented behavior. I believe that on pre-DG2 userspace considers 1 
>>> as ok and everything else as failure, so changing the ioctl to 
>>> return an error code on failure and 0 for load pending (with the 
>>> latter being a DG2-esclusive code for now) should be safe, but I'd 
>>> like confirmation that I'm not breaking API before sending the 
>>> relevant code.
>>
>> The UMD code is like this:
>>
>>     struct drm_i915_getparam gp;
>>     int32_t value;
>>     gp.param = I915_PARAM_HUC_STATUS;
>>     gp.value = &value;
>>     ret = ioctl(fd, DRM_IOCTL_I915_GETPARAM, &gp);
>>     if (ret != 0)
>>         hasHuC = 0
>>     else
>>         if (value == 0)
>>             hasHuC = 0;
>>         else
>>             hasHuC = 1;
>>
>> Currently the behavior of i915 is:
>>
>>     if there is an error, ioctl returns -1, and set errno as 
>> ENODEV/EOPNOTSUPP/ENOPKG/ENOEXEC;
>
> Not exactly. The current map of FW states to ioctl behavior is:
>
> FIRMWARE_NOT_SUPPORTED -> return -ENODEV;
> FIRMWARE_DISABLED -> return -EOPNOTSUPP;
> FIRMWARE_MISSING ->  return -ENOPKG;
> FIRMWARE_ERROR -> return -ENOEXEC

For these 4 errors, ioctl is returning -1 and setting the errno as one 
of the error values above.

ioctl is not returning the error values. It only returns -1.

This is exactly the behavior of i915 observed from the user space. You 
can verify it with the code snippet.

The igt huc_copy test is also checking the errno instead of the ret value:

https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/blob/master/tests/i915/gem_huc_copy.c#L66

> FIRMWARE_INIT_FAIL -> return 0, value 0
> FIRMWARE_LOAD_FAIL -> return 0, value 0

If you change these two conditions to return -EIO, then what the user 
space actually gets is going to be:

     ioctl returns -1, and errno==EIO.

It's not going to break the current UMD as you said below.

Thanks,

Tony


> FIRMWARE_RUNNING -> return 0, value 1
>
> So we do have 2 error state in which the ioctl succeeds.
>
>>
>>     otherwise, set *(gp.value) as 0 if HuC is not running, or 1 if 
>> HuC is authenticated.
>>
>> Hi Daniele, which value are you going to change - the "ret" or the 
>> "value"?
>
> The idea is to change the 2 FAIL states above to return an error 
> (probably -EIO) instead of setting value to 0. This would be 
> compatible with your code snippet, because it'll hit the ret != 0 
> condition. Value 0 can then be re-purposed for DG2 to indicate "load 
> pending", which would not be compatible with your current code, but 
> being a new addition for a new platform does not necessarily need to be.
>
> This said, I'm not sure if changing the return behavior of INIT_FAIL 
> and LOAD_FAIL is API breakage or not, given that it won't impact 
> userspace expectations. Tvrtko, any feedback here?
>
> Thanks,
> Daniele
>
>>
>>
>> Thanks,
>>
>> Tony
>>
>>>
>>> Thanks,
>>> Daniele
>>>
>>>>
>>>>> Thanks,
>>>>>
>>>>> Tony
>>>>>
>>>>>> Regards,
>>>>>>
>>>>>> Tvrtko
>>>
>
