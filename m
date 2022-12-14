Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B3364C8B7
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 13:08:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4991B10E3C4;
	Wed, 14 Dec 2022 12:08:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A65EC10E3C4
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 12:07:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671019673; x=1702555673;
 h=message-id:date:from:subject:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zVKPxNXiH92tnhZrh/CXxPSJtuBisDe2gn0CeI+Vlf0=;
 b=Y8v0yneSXspPNY+wmLDixhfmnqLrM1tJ1cB9GJ4kbb1oZ3+PeLjzd/W/
 lFrT+Y1iZZ+EtBv2VHAYrxTnxUKVlGLUiMXC4qNC2UCZ6fykEQaKRzNYj
 caSKLC29UHUlk0HJT+CvHzUZa/fKdG12AlrgVInLFQ9Ecq4Ssf25qNpBl
 CLex1AqkDEhMk3vcZDIc4eL9DVefftW9F2qzkXk8y+9g4MuQaZw+CtD7Y
 oTR2DYIvka+c5EFYCI9bTm/2mX1/kaMgR+DwCxquVMGFf/lBp+lpZWxe/
 ey+nwuGM8sqNyuOn+gf3ya5eE/8o4dQEMVCEYlgx8cnejCklzC3pv0RcD w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="317087475"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="317087475"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 04:07:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="791286635"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="791286635"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 14 Dec 2022 04:07:52 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 14 Dec 2022 04:07:52 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 14 Dec 2022 04:07:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 14 Dec 2022 04:07:51 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 14 Dec 2022 04:07:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oQad1flDP11m3oX+wmVeDcpWHi9IcZLCuBZldpKshunDetR16k08vp7xR+widXt2yR4ZZLUCi1ltfduBW+MqDbhkVfKcmFYeTg+Eiv/dVrnQYmPA+HL3ekqa2Iko/aC51I9o6qDP5+1BIEMCNWREjgbggDSniytGpkIq5g4koNS7fTrMU2mSBaT9YrxxaEHqCQS8U6FXoEHBQAuuRV1Oavbc4mmG+MvQu2Fqr9xF82KdTjRGIV+yZYTHWisfqbVgStqXseBs3C6Wdr182z/mvhN9wc1yq2tDii9Ur9JBv9s3/qh66ADAaWcXNgMleXtGADI0Oii9QxmSOdBFpQ4kYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NKm6mSER0zFXLoVmOnDp2LdU+MfA7w7YuOQ4SpvIMws=;
 b=QmDu3JRKc3+y4pEdm5jlQz7Z47tHE2IjTZSU9iBdzsMuOL2RjBs43oQrlx0aOlfrsKkB0kVlV1Ya53mLsy6TFzGrXJlc1sWTx+2/BTIrEgJJzyFhRUgjQ6kWP/i2S0uO4MptQCO2Nl3/UuLxgUxEqJi7IPN7icmuiKlgMpoJ2AeAnd+P1HFXfh/s1YNFTYNE6slZ5fDVBnIjWTeEYe6rARSJ6fQUMOFxUHo2DnbnI5hBvBfY/CGA+YvoZ/9n8Iol1D5otOBVxTaR+G6Lsa0eepgRnXKYqjwkmvC4e6AC6UDGdV40yjmomnIVDcQt/dJCagr0+DrIRKp19vLGHh8khw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5474.namprd11.prod.outlook.com (2603:10b6:610:d5::8)
 by PH0PR11MB7421.namprd11.prod.outlook.com (2603:10b6:510:281::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.11; Wed, 14 Dec
 2022 12:07:48 +0000
Received: from CH0PR11MB5474.namprd11.prod.outlook.com
 ([fe80::ef2e:ffc8:a4c7:7d64]) by CH0PR11MB5474.namprd11.prod.outlook.com
 ([fe80::ef2e:ffc8:a4c7:7d64%8]) with mapi id 15.20.5880.019; Wed, 14 Dec 2022
 12:07:48 +0000
Message-ID: <3f9dce6f-b8dc-3ce3-c6b8-52467d445dc3@intel.com>
Date: Wed, 14 Dec 2022 17:37:38 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.1
From: "Iddamsetty, Aravind" <aravind.iddamsetty@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <matthew.auld@intel.com>
References: <97b42ba0ae91b1ed6feb6e5c090bff2445719bf7.1670311877.git.aravind.iddamsetty@intel.com>
 <6f0bec943061dfa4604e3c479f44e98169ebd082.1670311877.git.aravind.iddamsetty@intel.com>
 <Y4/SwfKbvCT/ANdp@mdroper-desk1.amr.corp.intel.com>
 <60152f3b-93f4-c0fe-d309-04c17ff25c45@intel.com>
 <Y5DXP27pd5B7EcKo@mdroper-desk1.amr.corp.intel.com>
Content-Language: en-US
In-Reply-To: <Y5DXP27pd5B7EcKo@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0077.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:23::22) To CH0PR11MB5474.namprd11.prod.outlook.com
 (2603:10b6:610:d5::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5474:EE_|PH0PR11MB7421:EE_
X-MS-Office365-Filtering-Correlation-Id: c0437a28-d4d5-48b3-0dc4-08daddcbd072
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SD0yO5lptkTCWMHRIR9g75PbyNys5pmZa8Ldqd6GoSgRV68HFjFCmvLvtrRCRsFipJLXi6HH3VNBKpFFl4Gfhbae+fDag96JBu+dwXf3J8OKNeKghTtw1QwDX1h5WqAqIWF5UNke6CwyK+2hy9etxSejMdFaNEE897QmiJJEbXtAjfLfROAU8qQjwHxpJ7fDX1ZdpDHGsFOhLpSbdUr89JHCsUL3aDRBcPORoKCJcs3FURGGpxlv3oQ5xDKVoKOHO5nkyU56nAzvmPe0mYB2ImXFTiODe9Xda7idxHh4cLyPXqW+AkDN8eMQ6T6tlutOHIET0L0SBvnKU9ZeN0ZXLcU4EXgUK/Z/nRhVBs6SlLBvVZ4KqxZ/O4AWDePRGx1eb4+pR8z5/YXoPF6tGa/f30bg9QQMtpvxNrjmYh8dtISN6t7fdt5j9Dr5GwqGB3aU8efPsiCXr7pqTX1DpV96eUMQ5HzECeTkXaaDt29WBt+OJSxvzbuZ2lrsx9MoJQGxAsC2Ui7M8oxo87Ypy5Ei67PfRVh0NfZe3HsZHdz+bPxfp1DjThEMSI3d9K0R0ATVggAEgceX5BhqrHn7GaLQZfiU7zkcKIPV+Q05aLm5pHS+RJRWv06OK33PiNsTWl1/LJSMR6VGL+Z759wcNPO4cqFIN0baqQlv4bXrQVoDp5tTjhwhrFgXJyxl6x/d11uM3u+B+2ubRCVqJQWkzRZHmBhPSry3Bsxa9fEqm1egv6Q=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5474.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(396003)(346002)(376002)(136003)(451199015)(36756003)(31686004)(2906002)(5660300002)(8936002)(83380400001)(86362001)(31696002)(2616005)(38100700002)(82960400001)(316002)(54906003)(6636002)(478600001)(6512007)(6666004)(6486002)(107886003)(186003)(41300700001)(26005)(66476007)(8676002)(66556008)(4326008)(6506007)(53546011)(66946007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c2Z1ZTNYVnFScEcyckJtM0tYK1dVa3JxUzZDaW9Nb1lWampXRDVRR1JoUmt3?=
 =?utf-8?B?VUFIMG5mZGRnakR2YVF5ZXd0VHI5UmZxcU1xV082YmF5YkdoMVdWT1FjSkxO?=
 =?utf-8?B?eTJXV3I3VTV1VEwzaUlWMyt6SUUvN3c2M0VNaWJXZWk2RzlsZjVmUHEyR09C?=
 =?utf-8?B?R2QwbVdHclhQemdpS2pEUUpPVUNDaWR4cWkxR09ON3hCRTY5RGJmbHNxazhp?=
 =?utf-8?B?M2dNMjk5Mk1iUlBnSllEMVhieUdPMHZQTjQ0QlIza3c2d1UzdHJiZDVDdHdK?=
 =?utf-8?B?TVhKY3lZS1V0WjNhUXhCb3F4NlJ2NTZVcGFua0poZHk1RnczZXJSZlNBQ1Vt?=
 =?utf-8?B?cjFOZ0tXcTlmOG9TZmJMODRlSzhpcnAzYVdQbTRlQTVDUmdtVE01Y0JMaXdo?=
 =?utf-8?B?aDhKVE1rMjFKc0QwN1g2aDZ1SWd5OW5mOHlVa1lBSkt6Y25tcGxiWjBzbWZ0?=
 =?utf-8?B?UkJVQjVKK2JUaVhuMHpLUkZOWWNabStTdXJBbUQyVHlnZ1hHRWlDb04wMDZu?=
 =?utf-8?B?NDBpakNLMTNLTUNhenJHd1VJS2laTXJidlJockZVajlKYUU5RFJTVXFqWVdJ?=
 =?utf-8?B?MXo5RUNTNit0UjdWTWY2TW9qaDZjVm9UaDhBWmJBQnltSG1HbU1qYXlnS2FP?=
 =?utf-8?B?QU92ZFNlZFhReGQ4bjEwVjlKRmtKLzBkUS9aelNnNHZGT0oyQXE3dXluTEpZ?=
 =?utf-8?B?V0dGeFFUTXBnRS9jb2FxZkNQL0xRM0dna09CYmY3YmJCYjJFMGl6cVRsSXAw?=
 =?utf-8?B?OEVTaWN6cFB6Y0s5NDVBRUozdnZsdEFCejM2aWJzbzduSDhRYUJZRkVrTEZV?=
 =?utf-8?B?c29EREJVYjJnYzRScTdBY09YZHZWMjBhNTRPdFN2Z1hkSTBlWDBaNFBKTll1?=
 =?utf-8?B?RHJkaUgyUjIwSTU0Y1hYR1FuNUZDQU5ZR0tZQ1VRZDFRQ0k0WTAzYU8wU1h2?=
 =?utf-8?B?RktYb2tYL2NReFUwV1BtNXZpYXF4eVFmci9NNS8xeHY2Q0pVR2kxSnZ6ZzZ6?=
 =?utf-8?B?VFBmUkhDRnZTU3lyV1dLNnIyck40RHpVc3NzYmdFLzZwNTNEQkJkdDZjUWIy?=
 =?utf-8?B?bUJLVytaUkx6UHMzWG1FVGpmVk1JbHpwWTVsSlBzN0dNMnlRbEhoS295cktB?=
 =?utf-8?B?TW1GL2dXVVQ4blBQUDRwL29FaXEzdlFIQy84aUEyVHZOWEJGZjRmUncrR1JH?=
 =?utf-8?B?NXUxVk1vNTVKWGs4THNtaDNZRGxQNDB3VGgrNjRuUXNsU0RvM2orQXE0ck9p?=
 =?utf-8?B?Z0xjR1BGK0p5dVZnWXMyV1JhYmxod1A4a3RCK3hIWTlXakNIYmdnazVnTWU3?=
 =?utf-8?B?RzFnWFM0MEs5YUpKenVkS2tMeFVSTVRIS1h1SW8wZFM1L2d1ZGtUU2s0KzBU?=
 =?utf-8?B?RlFwRi9acGFCeDVjcHl4S2d1a1FjVng1U05KdUVZb28vTlJnOGJmcENRSkVp?=
 =?utf-8?B?K2xEYnFCc3lEVDA3MmlDQVZ0V3ZTN0lBaTRqVHJ1MVM5MDVoMldrbUs1Vk5m?=
 =?utf-8?B?S3Fmc0xiMCtQcGsraGthbE5UK0JEeTgrNWRmeHMxVXhlQnhDZzBENWo5SGJS?=
 =?utf-8?B?c3pLS0lNK2NEalRGSk1mbWdWd0piQ21CMG5tdWo5VEpscUpscWRkcmd0dVYr?=
 =?utf-8?B?RnN5QmhmWjBWUnVYVnI3RTBNYm1BRy9FbGhjSHRMLzRaQlA2RUE4Y0t2Ymht?=
 =?utf-8?B?WGlrMUxPUXJxaXBlcFdBRTRBb2xrajBTNVQycWZpOXVEdktJcWo0Yms3NUNU?=
 =?utf-8?B?M244cGFQVGJGSVpIS09uTnYwUHhSUkZaeklrd2ZTRVZSUVFFQ3BMWXpwNEVN?=
 =?utf-8?B?N2N0c1l1a2p3dmU3RURqSjIySlRHMkVPbUhUWEJjdUsvY2ZMTlJhYVdBYUUy?=
 =?utf-8?B?cnk3SitGWlZLc09CQTZPbjhKR3duQWlBRkcrVDdVOW9QVEJMUmNqM3BRQnNW?=
 =?utf-8?B?ZlNmQjFNYjJVNVBtM0FMbWVDNlJ2bEF2dW5GY3lFUjlvYkRxR2JwMXZhQXIw?=
 =?utf-8?B?NDhmMk0wL2pJd1hPTDFHd1kycENOOWxZVTNtVWRjLzRMdmZ4WTNtdHhvQ0k5?=
 =?utf-8?B?RnJtcjQ4UWhTY0d6MXpaT1ltYzFUSkJpRVRDT0p4NDlGTHJ6cXNWOE0xN1BS?=
 =?utf-8?B?ZVBDOVBCUG0vOVlQWUlVVjk4cjJHd2d6ZVQ3Q1VhbXZuM0JWckNOcFNBbDQ2?=
 =?utf-8?Q?a8hxFbUmYDpWs7EpCrwzaas=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c0437a28-d4d5-48b3-0dc4-08daddcbd072
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5474.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2022 12:07:48.4404 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AbX6aKLa5tlljKiYc8RrBrqtzuBRosKM1ispCrH4N6L2I4E24l6j6qeX3XkztUYkYebMqIEMcyLbbKMLjOXo7htEl1LbMZ+lZ6Di4taovgs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7421
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/mtl: Define new PTE encode for
 MTL
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 07-12-2022 23:41, Matt Roper wrote:
> On Wed, Dec 07, 2022 at 12:56:44PM +0530, Iddamsetty, Aravind wrote:
>>
>>
>> On 07-12-2022 05:09, Matt Roper wrote:
>>> On Tue, Dec 06, 2022 at 01:07:28PM +0530, Aravind Iddamsetty wrote:
>>>> Add a separate PTE encode function for MTL. The number of PAT registers
>>>> have increased to 16 on MTL. All 16 PAT registers are available for
>>>> PPGTT mapped pages, but only the lower 4 are available for GGTT mapped
>>>> pages.
>>>>
>>>> BSPEC: 63884
>>>
>>> I think you'll also want to include pages like 45015 (ggtt) and its
>>> various equivalents for ppgtt since that's where the important layout
>>> information is given.  And likely 63019 as well.
>>>
>>>>
>>>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>>> Cc: Matt Roper <matthew.d.roper@intel.com>
>>>> Co-developed-by: Fei Yang <fei.yang@intel.com>
>>>> Signed-off-by: Fei Yang <fei.yang@intel.com>
>>>> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
>>>> ---
>>>>  drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 33 +++++++++++++++++++++++++++-
>>>>  drivers/gpu/drm/i915/gt/gen8_ppgtt.h |  4 ++++
>>>>  drivers/gpu/drm/i915/gt/intel_ggtt.c | 32 ++++++++++++++++++++++++++-
>>>>  drivers/gpu/drm/i915/gt/intel_gtt.h  | 13 +++++++++--
>>>>  4 files changed, 78 insertions(+), 4 deletions(-)
>>>>
>>
>> <snip>
>>>> +
>>>> +	switch (level) {
>>>> +	case I915_CACHE_NONE:
>>>> +		pte |= GEN12_PPGTT_PTE_PAT1;
>>>> +		break;
>>>> +	case I915_CACHE_LLC:
>>>> +	case I915_CACHE_L3_LLC:
>>>> +		pte |= GEN12_PPGTT_PTE_PAT0 | GEN12_PPGTT_PTE_PAT1;
>>>> +		break;
>>>> +	case I915_CACHE_WT:
>>>> +		pte |= GEN12_PPGTT_PTE_PAT0;
>>>> +		break;
>>>> +	}
>>>
>>> I forget what the plan was...are we going to move away from 'enum
>>> i915_cache_level' and start working with PAT indices directly soon
>>> (especially since the set_caching/get_caching ioctls are getting axed
>>> and vm_bind is supposed to start taking platform-specific indicies
>>> directly)?  If we're still using cache_level, then it's not clear to me
>>> how the current platform-agnostic enum values (which talk about L3 and
>>> LLC) are supposed to encode the L4 behavior we want on MTL.  It seems
>>> like we'd need to extend the enum to also somehow reflect L4 behavior if
>>> we were going to keep using it?  But given the continuing expansion of
>>> caching functionality and complexity, I thought that was one of the
>>> reasons why we wanted to get away from these platform-agnostic enums;
>>> the userspace that actually cares about this stuff has the same PAT/MOCS
>>> tables we do and knows the exact index it wants to use for an object
>>> mapping, so eliminating the PAT idx -> cache_level -> PAT idx dance
>>> would cut out a bunch of confusion.
>>
>> The current plan is not to expose PAT index setting via VM_BIND but go
>> with the defaults. Hence using the i915_cache_level till we decide on
>> enabling PAT index setting via VM_BIND.
>>
>> Also, IIUC the cache level we have in i915 apply to L4 as well (BSPEC 45101)
>>
>> I915_CACHE_NONE -> UC
>> I915_CACHE_LLC/I915_CACHE_L3_LLC -> WB
>> I915_CACHE_WT-> WT
>>
>> But I do not see a means why which we'll know that L4 cache is present
>> on the platform to select the appropriate cache level.
> 
> I may be misunderstanding since the caching isn't an area I've
> worked with much in the past, from reading the kerneldoc descriptions on
> this enum, it sounds like I915_CACHE_LLC would be be COH_2W?  And
> I915_CACHE_L3_LLC COH_1W?  It looks like you're programming both as PAT
> index 3 (i.e., 1W coherency) right now, which confuses me.

Rereading the descriptions makes me feel what you mentioned is right.
Also for I915_CACHE_L3_LLC i see a note it is considered only uptil
gen7 so i believe this needn't be considered for MTL.

@Matt Auld, could you please confirm on this.

Thanks,
Aravind.
> 
>>
>>>
>>> It's also hard to follow these functions right now because it looks like
>>> you're doing an implicit cache_level -> PAT index conversion, but also
>>> mapping the PAT index bits into their placement in the PTE as part of
>>> the same operation.  The behavior might turn out to be correct, but it's
>>> really hard to follow the process, even with all the bspec docs at hand.
>>> So if we do keep using cache_level for now, I think it would be better
>>> to split out a MTL function to translate cache level into PAT index
>>> (which we can review independently) and then let these pte_encode
>>> functions handle the next step of figuring out where those index bits
>>> should land in the PTE.  If the bits are contiguous, you can also just
>>> define a mask and use REG_FIELD_PREP too.
>>
>> sure i'll translate cache_level to  PAT index and then program the PTE
>> using those.
>>
>>>
>>>> +
>>>> +	return pte;
>>>> +}
>>>> +
>>>>  static void gen8_ppgtt_notify_vgt(struct i915_ppgtt *ppgtt, bool create)
>>>>  {
>>>>  	struct drm_i915_private *i915 = ppgtt->vm.i915;
>>>> @@ -963,7 +991,10 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt,
>>>>  	 */
>>>>  	ppgtt->vm.alloc_scratch_dma = alloc_pt_dma;
>>>>  
>>>> -	ppgtt->vm.pte_encode = gen8_pte_encode;
>>>> +	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
>>>> +		ppgtt->vm.pte_encode = mtl_pte_encode;
>>>> +	else
>>>> +		ppgtt->vm.pte_encode = gen8_pte_encode;
>>>>  
>>>>  	ppgtt->vm.bind_async_flags = I915_VMA_LOCAL_BIND;
>>>>  	ppgtt->vm.insert_entries = gen8_ppgtt_insert;
>>>> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.h b/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
>>>> index f541d19264b4..c48f1fc32909 100644
>>>> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
>>>> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
>>>> @@ -19,4 +19,8 @@ u64 gen8_ggtt_pte_encode(dma_addr_t addr,
>>>>  			 enum i915_cache_level level,
>>>>  			 u32 flags);
>>>>  
>>>> +u64 mtl_ggtt_pte_encode(dma_addr_t addr,
>>>> +			enum i915_cache_level level,
>>>> +			u32 flags);
>>>> +
>>>>  #endif
>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>>>> index 82203ad85b0e..3b6f1f6f780a 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>>>> @@ -246,6 +246,33 @@ static void guc_ggtt_invalidate(struct i915_ggtt *ggtt)
>>>>  	}
>>>>  }
>>>>  
>>>> +u64 mtl_ggtt_pte_encode(dma_addr_t addr,
>>>> +			enum i915_cache_level level,
>>>> +			u32 flags)
>>>> +{
>>>> +	gen8_pte_t pte = addr | GEN8_PAGE_PRESENT;
>>>> +
>>>> +	GEM_BUG_ON(addr & ~GEN12_GGTT_PTE_ADDR_MASK);
>>>> +
>>>> +	if (flags & PTE_LM)
>>>> +		pte |= GEN12_GGTT_PTE_LM;
>>>> +
>>>> +	switch (level) {
>>>> +	case I915_CACHE_NONE:
>>>> +		pte |= MTL_GGTT_PTE_PAT1;
>>>> +		break;
>>>> +	case I915_CACHE_LLC:
>>>> +	case I915_CACHE_L3_LLC:
>>>> +		pte |= MTL_GGTT_PTE_PAT0 | MTL_GGTT_PTE_PAT1;
>>>> +		break;
>>>> +	case I915_CACHE_WT:
>>>> +		pte |= MTL_GGTT_PTE_PAT0;
>>>> +		break;
>>>> +	}
>>>> +
>>>> +	return pte;
>>>> +}
>>>> +
>>>>  u64 gen8_ggtt_pte_encode(dma_addr_t addr,
>>>>  			 enum i915_cache_level level,
>>>>  			 u32 flags)
>>>> @@ -993,7 +1020,10 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>>>>  	ggtt->vm.vma_ops.bind_vma    = intel_ggtt_bind_vma;
>>>>  	ggtt->vm.vma_ops.unbind_vma  = intel_ggtt_unbind_vma;
>>>>  
>>>> -	ggtt->vm.pte_encode = gen8_ggtt_pte_encode;
>>>> +	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
>>>> +		ggtt->vm.pte_encode = mtl_ggtt_pte_encode;
>>>> +	else
>>>> +		ggtt->vm.pte_encode = gen8_ggtt_pte_encode;
>>>>  
>>>>  	return ggtt_probe_common(ggtt, size);
>>>>  }
>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
>>>> index 8a3e0a6793dd..4bb7a4005452 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
>>>> @@ -88,9 +88,18 @@ typedef u64 gen8_pte_t;
>>>>  #define BYT_PTE_SNOOPED_BY_CPU_CACHES	REG_BIT(2)
>>>>  #define BYT_PTE_WRITEABLE		REG_BIT(1)
>>>>  
>>>> +#define GEN12_PPGTT_PTE_PAT3    BIT_ULL(62)
>>>>  #define GEN12_PPGTT_PTE_LM	BIT_ULL(11)
>>>> -
>>>> -#define GEN12_GGTT_PTE_LM	BIT_ULL(1)
>>>> +#define GEN12_PPGTT_PTE_PAT2    BIT_ULL(7)
>>>
>>> This bit is never used anywhere in the patch.
>> correct the default cache level we have will map uptil PAT index 3 hence
>> didn't use it and since platform supports it and in future when we have
>> PAT index setting this will be used.
>>>
>>>> +#define GEN12_PPGTT_PTE_NC      BIT_ULL(5)
>>>
>>> As noted above, 
>>>
>>>> +#define GEN12_PPGTT_PTE_PAT1    BIT_ULL(4)
>>>> +#define GEN12_PPGTT_PTE_PAT0    BIT_ULL(3)
>>>
>>> It sounds like these bits have been around since gen12; why didn't we
>>> ever have to program them in the past?  Is there something that causes
>>> the PAT index to never get used on the pre-MTL platforms?
>> these are mapped to _PAGE_PWT, _PAGE_PCD and being programmed in
>> gen8_pte_encode. On the MTL we have new PAT bits in PTE and since the
>> way these bits are programmed is different redefined for better
>> understanding.
> 
> In that case why does it still have a GEN12_ prefix?  We should use
> "MTL_" instead since this doesn't apply to any of the platforms that
> used to be known as "gen12."
> 
> 
> Matt
> 
>>
>> Thanks.
>> Aravind.
>>
>> <snip>
> 
