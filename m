Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9C268A2DC
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 20:21:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E26D10E8B7;
	Fri,  3 Feb 2023 19:21:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B06110E18F;
 Fri,  3 Feb 2023 19:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675452104; x=1706988104;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=76C/HXL27i3qob0/EqfLj506ECom+sLrkihXDujh7/g=;
 b=fWiPrqntdx7Y4zcc4OMBfNWKIDsKv7gPT31L5WBaAqeME85klZk2RsUp
 HjGUCgqGGwbUt+agzHfO+vL3I6jzGX1xshm91QPEWtvh0IFxxAsQ7HiP6
 1+GpT96XnfAbMdRyDBm0hf0vnaBt/CucIkFLkDNz2nztlbeHcDeT+/vGQ
 7DC29XDkpWaihLlKJZmV1GEj8pW9gcj9Fd+Sdkm9QXiMD072bFkhXISHh
 tuNLvcyweQRHw65XUr7Okfepq3vpLlV6eyypUJ39Kss+UaWaz6xK0KhkS
 IDZAIywHyPfg3dMU+2YfxoFvJ2lZ8yuIpJJAuose4rlJx33KoonxoSI8+ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10610"; a="309167275"
X-IronPort-AV: E=Sophos;i="5.97,271,1669104000"; d="scan'208";a="309167275"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 11:21:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10610"; a="994610291"
X-IronPort-AV: E=Sophos;i="5.97,271,1669104000"; d="scan'208";a="994610291"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 03 Feb 2023 11:21:43 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 3 Feb 2023 11:21:43 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 3 Feb 2023 11:21:43 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 3 Feb 2023 11:21:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LFiiJnv+2GpHg2oLbszLkHntSh09xt8fsfELFn8pUDrzLrfF85yqVeqO5CrvwjoAJUCCZIfPu0ehW3ZX4rK+q/GkYRZsL1puqms7aaiBWx/dHv/Q4XRPJK+N6d4yh+6CjbThXjGY6a1y2ZRYz+qJHnwOIi/N6Y9MUJjlqGdnGP/8K0iFw0O2WEi7WOVZ+Sws+e51+Dpb6EvbFbBb6oPZsKpY/GACTFropzMH6EshP4m7K7cm7nspCEtDXtn01MtNNIKKS69DrsOw76BPjEt9wrCFeFjpRhWu/U4LrzSgZ4G4Q0Iuu2WVDzyz7UWOasAjJeXyemMawmU5qw3qQonVCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cn5He1dNi+wUnwWnkKHF3ApvRg+wh1RMU6pZELAdrGc=;
 b=kC2gB+bFs9EmW5/6I2Yzsr2MVxl/JbmCEHcx+U3qiZJjxFiMD1M+Jer4qPkVYyDqxCz9EQ8gWif+19NOVJJ/XDf3PqEcVrfnd89gfkfTuGAljRxdzVlBVUYEj1pSR5vH2vZsyHfE3Jz87sJhFCM86PmSk4tNcJDFtYmGHRoDzr15Qa3tjgCet/8TGWFkS76aMlphAPPBeZrI/94US5nbiyhRPsRYTlrV2KGWdLTFqwHIJQvq5t9XEdb9zldv/QzGJQ17QfMzbD0Zqhi3UE9JNJFI7kG50JHB6k2osg0FjUUXEokaAigJ3vqOio+iRI6HofVE8Y785P9sjfPZVzM/sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 CO1PR11MB4946.namprd11.prod.outlook.com (2603:10b6:303:9e::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6064.27; Fri, 3 Feb 2023 19:21:41 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::8b33:564a:21a2:cc8f]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::8b33:564a:21a2:cc8f%7]) with mapi id 15.20.6064.027; Fri, 3 Feb 2023
 19:21:41 +0000
Date: Fri, 3 Feb 2023 11:21:38 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <Y91ews5O6nHf+2EX@orsosgc001.jf.intel.com>
References: <20230131091731.5892-1-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230131091731.5892-1-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: SJ0PR05CA0031.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::6) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|CO1PR11MB4946:EE_
X-MS-Office365-Filtering-Correlation-Id: 3fedda8d-0579-40b0-c694-08db061be0dc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: a/zBB7Ykjg3VIf1rd0+/Ki9bb0xXqBQjfXj5lx7DW37CFtGpeZnju5WfKI2G+CDh1nmAWfw8CkHOy/A5b2q70sb5LpnUVXI79JIRliQt5mib/q571/Q7g0vbzrxxGO8MTcLPHWOhEcQs9PLUuWzhhTPe/iHAEeIwWs+ikS+IYRMl0dTEeTBtCgHXT6eYxb9JAQe05t4rOFLHHkf5bFWo6jUA1ue5mbXhFf9tDLfFeeVmqgFV+d95/Alf+AdRsIhWhWz1IDS7I21YADq160zGaauGvxDQ7dyobW2D+iF7VVVFF3zzR9+jWe3SQ4nXoG8lEFLoO1QrlM4pDUbGDP7R3xSYaAXPRuQx9SjSChiFTXI0wm7hWS876Ho7DR4+r2EUqp1FPErlXb0s6UQQWOoGgYuLxT5QeOmiSkEqs4SjDCOqpi89SadX6hnCy3brrOyp5Lbik4XD82JZ88Gk0Ov3HVPIuAED171xE521HQ590AEO555N4zQOaR2JMyFJTFuz2myrgR4N1IjvPfhdV7yPsAklOWNnuY+vUTqTz9ZqItwD6ENQxWcfikl4Jax/MphxOQ50xXKWufvm2vOIk2RuJIXml5zH6c3Fz5R9B25hEiexbicvYSpEhUOJBjnYCZycgWQG1zW/NplvZm5J7K0Y6Uo/e2IHJ1LQ6T2lBITWKh/ql8IGWMW29CDGOYrDx9Mp
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(376002)(39860400002)(136003)(366004)(346002)(451199018)(86362001)(8936002)(41300700001)(83380400001)(186003)(2906002)(38100700002)(478600001)(82960400001)(6486002)(66946007)(6916009)(6506007)(6512007)(26005)(4326008)(66476007)(66556008)(6666004)(54906003)(316002)(8676002)(5660300002)(4744005)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Sml4WEN1cnNicXIrd3ZDQURZOVZtMWdES2VHN1JzaENxaHJQcVBnN3E0R0o4?=
 =?utf-8?B?MmVKU1ovb2loZ3ZzdUY5R0ZKVk9UYktPdG04d25qOWFlSHRSb0xYZ0FlZEhq?=
 =?utf-8?B?YmVteGxrYTByOE1jZDQrcTBqQWlpSXU0NitUcGI5cHd4UnBsTlVuWmRrSThG?=
 =?utf-8?B?WTV6aU5YQUMxaWpocDd5eW5jMkV0Y043VnVCUVZmR1ArS2lEZUpTQndOWjlJ?=
 =?utf-8?B?SUhGSW4wTkRKL2ZZOFVZeTFXZ09SOUpud2x4VkNLVTZSQnJ4czduUlJ4SFV2?=
 =?utf-8?B?NHJHUUMydU0wZ1RWamtIS0ptVlNlVThDa3FMekFlejZJaC8rZnd1RFZ0YVlT?=
 =?utf-8?B?VmM0M1NabXFFbnZVdFpwMHRtMW1xcng2THBuREFRQlRCMzNGY1UrWWNjUTU5?=
 =?utf-8?B?YWNXVGRDU1hYRWZsRTBraThqb1BEZnI2NFVrcDRJV3FRRndZc0N0bHBFTFds?=
 =?utf-8?B?QWxPenVhbk9FYWZ1d2UzUFY2TG9oWGNNWERvdWM2VXFXazAzV3RkVUc2TkVa?=
 =?utf-8?B?c0x0M2JSRlJyNDkwbHF4N3hvL0hPMWU2aDBIL0hzdzd0U3lUN1J2N0swYkZH?=
 =?utf-8?B?Yjg2YVhjVnIrU3JaYjRpeHJXMFl0dkVkaXc1OExHMGVSTER6ekozdzdOTm5Z?=
 =?utf-8?B?WEdXRndQYjdHWkRoUEJIem1PdFljcDRacGRoc2tRZDhGdGZoeWhtTnk0cVh3?=
 =?utf-8?B?N1RURkVsRDVOMkRjYlhmQmNidEsvQi9QZDZxaFJrS0Izb3ZVVTdBZm9ndFlv?=
 =?utf-8?B?aGQ5dWJnSGZheWErb1ROWGVxdjZDOStTZzBGb3BtK2o4MWRPeExPc21teXNU?=
 =?utf-8?B?ZGh0eGNlT2wxelVBS0N6dlRHTlBrNm5Fem51eklKK2J3TnpDcWgrd3graGEr?=
 =?utf-8?B?dUhnb2lSUDFLc3E2eWs3S1I5N29sQk8yV3hWU2prZzU3UHBNODJzNGxXcmRu?=
 =?utf-8?B?V0U2ckQ0TDRkaGhDa2RHajJ2WmZvYk9CZXBwR3BrSzgxMjNNRWExVVFnMlZl?=
 =?utf-8?B?c2lNY3drcU9vUUpjMnZCODdyb0hwdEk0SzhFVGs2cDFUcW41bUxHa0FqVk5J?=
 =?utf-8?B?S2hrT3hPZytwWVV6MnN3VjVPTW9ISkVrdlZ1cHI4cmtBaFUyeExIWjJwYi9m?=
 =?utf-8?B?ZFA2MXREdkNERS9hamtpeFJPYTBsdmRnQ284Ni9zM3hsZ1VHUjE0L0c2a3dG?=
 =?utf-8?B?WTgzbzV1NWQwZ3A5SnV5SEZidXVxYVdjVHFDcERwSzhia0hIVkZNYXhFMzdN?=
 =?utf-8?B?YktFYVNaSmd4T09lN05CQkZ3U21Rbm1sNGlhVVdzYWNPVjFqYVBlNnh5QTN1?=
 =?utf-8?B?UU5VblJsSk5CZnFXaVAyelJGUFhKUm53VnFMMVdmeW9HYWJ3dWhvVDA1QmFx?=
 =?utf-8?B?RE9rQjAreUpPZVZrWG9JOU94dm02ZU5pbDhQYmRQUTM1aGNPWHpMWDRUYXBu?=
 =?utf-8?B?MGNDMmxuUWdITG9vQ0JnTDNVeWMzV20xOXd5bGREVXBZSEFzUExEUFMra1N6?=
 =?utf-8?B?QXhWdUpRZzVLYTRXc09tOU9KVXZQVmd4ZVpKWTR1dmxJQjZCZ01tdCt4enZG?=
 =?utf-8?B?Uzd4V0pWMHkzMkpsS25LaDBrY0hoRnNqdUpzcHpTWHdmU0o3RGdiN0dXZ01N?=
 =?utf-8?B?d2s1cDJzNFRmWWIvdll1bGkxOW1rQ1MxQjY1VEtZTkhrUklnYkVXWlBtaVpy?=
 =?utf-8?B?WXJTQjZ5ZU9IdnhXbFFYS2VicS9iOC81WjhUVHVyMjREMjFwcEVYaUJoanpy?=
 =?utf-8?B?SERMT1grS25vR3dXQWJxZVIrK1FmVjRtMENwTVBmOEVtSmhWcmxwM1NiaG9L?=
 =?utf-8?B?V1VyUWRjUklRNVhRWGptQzN2WjZhVUM2MllpejBCVlplUkN3ZEJaOTBSbGtp?=
 =?utf-8?B?SlJDOW03QTU2ZEhFQ2w5dThFS2RSRFlORk5vNXpFNUtvUkJVeUF0TGI5bTU3?=
 =?utf-8?B?RXI3NlI0K1F6NXkxWXI4NnRRYktrblhZelRQbWlHdTRVTmJodTFuRnBuWlFK?=
 =?utf-8?B?U2tDYnB5QTVXZ1FPZmRZcGxrNEpVQXJsNk1VUTdvbkR4MHlwb0UzOHl1WUhO?=
 =?utf-8?B?TVJ5cVR4MWJQeGNLSU9KUzRUbXMxVnliNW83bVFGY3JiL3E0R2FpbmUyaVU4?=
 =?utf-8?B?VUl1UWRabmo1VTlBZjhWMmtMU0tLWVhCVGFITE9qajQrK2tvMWJUQXhEUDda?=
 =?utf-8?Q?+kQmOu2hNhtsdSyHuEPzyDs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fedda8d-0579-40b0-c694-08db061be0dc
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2023 19:21:41.1224 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xVRWHz+o/vHnx/oXihfppIBYIAkVXUmWALmWGLiNXgxIMl09y2kf22h/DGxjaJiIwDe9vqPTrHr2m7TR623CqdaWeHiB1GspN2eEkbaD9wU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4946
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 0/2] tests/i915/perf: Add
 stress / race exercises
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
Cc: igt-dev@lists.freedesktop.org, Arkadiusz Hiler <arek@hiler.eu>,
 intel-gfx@lists.freedesktop.org, Petri Latvala <adrinael@adrinael.net>, Chris
 Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 31, 2023 at 10:17:29AM +0100, Janusz Krzysztofik wrote:
>Users reported oopses on list corruptions when using i915 perf with a
>number of concurrently running graphics applications.  That indicates we
>are currently missing some important tests for such scenarios.  Cover
>that gap.

Any bug ids that were filed for the issue? Also what were the parameters 
passed to perf OA when the issues were reported? This could help 
actually root cause the issue and have a test closer to the actual use 
case.

Regards,
Umesh
>
>Chris Wilson (1):
>  i915/perf: Stress opening of new perf streams against existing
>    contexts
>
>Janusz Krzysztofik (1):
>  tests/i915/perf: Exercise barrier race
>
> tests/i915/perf.c | 111 ++++++++++++++++++++++++++++++++++++++++++++++
> 1 file changed, 111 insertions(+)
>
>-- 
>2.25.1
>
