Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 915FB549933
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jun 2022 18:41:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D047510F2A7;
	Mon, 13 Jun 2022 16:41:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3E5910F2A7
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jun 2022 16:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655138475; x=1686674475;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=j7RCEqtoz2lph1LEvSrpmCtgBQy5u//92Ug4oj1QyY0=;
 b=nNpHaM+XRozUCrinnc5LJzhyB2QwD30G5uHWDHqsDJA/fXlEQNSfyCCE
 e34pEqHwUQujwCbiioSDOdqJkuGSybTvZsuLGNZHOl2uslDrCrgn5SBC1
 C9idGG0giWUGQ0/RSbU7nlDWMl3cdSnQnw9cmvSiaDm6QqV9X1ytGbiaS
 obGuDKqNivKFz/YDfLWA+ftP+5OGZS4qVWn2Nq6HhZievSvj5O25kRP2L
 zrKayo8M6lstAsYAQmWkh+OMIXwE9J6qLQkZBUlK8BtjPhioAhJS1lBYz
 eZG5v6f/P2lU1wyZ23qwtwmxmZlZyWzMC/MFBL4OL+brx4QT/o1bgouzb g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="258785832"
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; d="scan'208";a="258785832"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2022 09:41:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; d="scan'208";a="587883739"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga007.fm.intel.com with ESMTP; 13 Jun 2022 09:41:15 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 13 Jun 2022 09:41:14 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 13 Jun 2022 09:41:14 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 13 Jun 2022 09:41:14 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 13 Jun 2022 09:41:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TfMp0bN7MWgeYOg0bp39pWWoNzX7kcfb7et+qywF9NypInQtwpAkZowVOdx5R6L/PjwMehzmPHSWvRyESpcYQtCmkVxOEcbdtWe7cPTmDMe5zbbN9mSAY31Kl2NR4QKOXXn4e9UzwuuNgJ+L8NPHPql/dTKwe9sImGUJSdlhbaYKXwa/Go+rdoEtddWXSv5K/Bu4XdvZjkmRimyZ0CFQer5eZNFNd7Wb0ejwRLUlhBZ23qaiiOmMPZxqa/ctKX3CVy8T0bVPIT+LsJSPxil0gufC5ECJ/vTrUlTQ9eWTi67nnAbdHtQ4o0e65SxXAW6CSsubxCf8a5nRpMo3tGq2iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MEBCg30XeyDVpMJBn3INuVdP78vRU0HvuzOAri4zKbw=;
 b=Ntm+eT+H2Tw5Mh8JISrFqQhQdVrb0kq1mOn3Nx9jt0oyyCG2g1S0z7JNq3LxgC+EVtawwBkIiAunKhzIQq/WFXSJMuQaAwp9Fnx9gnJHk/wg0kGk1vU+Y7B4XRUu7gzA/9ddyFO8jcRbcKAZs3EM9aClBhNJmKBpM62NcdFd6FCHJQILDvxffJK42uS5RRqJkTdkecFkyy2RMqqd+3qUh2rat4WLy5wQz3tJxZ+dvGG4EeoO4P46ymVgSflnnynbGx1tFtCpyrIqRdH2521gg1llg2DQP97yZiJAulnGPrGKHzmUaaOXXwEZSO1zsIbZ6tx/teH0tBlDDLxJe7rn6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 CO6PR11MB5601.namprd11.prod.outlook.com (2603:10b6:303:13d::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5332.13; Mon, 13 Jun 2022 16:41:12 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b907:4e16:92da:b2cf]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b907:4e16:92da:b2cf%2]) with mapi id 15.20.5332.020; Mon, 13 Jun 2022
 16:41:12 +0000
Message-ID: <d6bc42f5-86c1-3bc9-d731-2bd0a978ece5@intel.com>
Date: Mon, 13 Jun 2022 09:41:09 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
 <dbc2ad75-1248-8d53-281d-f0a308733972@linux.intel.com>
 <7ede8090-bfbf-17a7-31f6-24e844a70673@intel.com>
 <a0860c06-4aba-deff-9101-aecdd8c14a02@linux.intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <a0860c06-4aba-deff-9101-aecdd8c14a02@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR02CA0023.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::36) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5e65d795-bd71-45b1-33c8-08da4d5b86a6
X-MS-TrafficTypeDiagnostic: CO6PR11MB5601:EE_
X-Microsoft-Antispam-PRVS: <CO6PR11MB5601F2B5C9BE43F6355D2129F4AB9@CO6PR11MB5601.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fpmOHn8++ozq6Jtd3xxUNpG6m/kMAz9fI3/eRwEjP+o/kiJM/X93atkT3YhSKT45dabhpNF2WShFE1SULR9guf3IR4a6gUd4+xXFamAzyM+0EGYTLaHgzH6NKy1ub4RHVUmLHelHBhnu+ilHLbdtOkAZ04CBLd9SjPhj1Z41UhXxtwGlj2/BmlRTL3CBSC9gE1ygmdV3xMXvbf6VZIgC2p3r6PVhv7ThrXb9wyhprFXPi2Ym5eAbALyN+ZEUFCjLJ68wP4wm9P6xD1az0AB5Vp6Q5Iyhex7nXjES4QcIGZBGsX1S1vJBu0+Su4/p2NUWI3r/OhskCo+fxXl1Ptrkp5k9CWoTD9/3uGSOBqnTAxKDd0Kh+nXVSznmRFJ+ip7FA73nG3iVLaf4u03Z6RQepk3nRH+7th3UHPS3dqIZdqj/CLnfaS9O7Zwiz3+XdQ+0S1wWjs21cQLsJBvIPGgceaCnG5Zju5VqdZrl/JN2K++h3AlPb/9mHbHqJub5afO0Dsod+jiZ+kAW6cMUHh9jCuuvq3zJHd7gxgQ0pajQAhTk4tbNgtqa+tx0nlTChDL3IPtkz18+Z/1q+9Z3tsneK2saIYKFiiRjYzND+tRlH5kVYSEQ22EyQh/el93eEQTVdUQypnQTWI/Rdvf+JQyUDK3EQ7/QhSatCQSXtHjTwMhzw3LRiEp4EYiYmtoDCnoEb58L+lmJXxVHraAVqkXxCIMuEYyFobtGgGm/AU8On1qy2MnKFwr/NzbOLMXawz+PSoTIvy30qoqItntfW/5Eag==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(66946007)(66556008)(31696002)(8676002)(8936002)(4326008)(6666004)(6506007)(2616005)(5660300002)(966005)(82960400001)(66476007)(86362001)(186003)(53546011)(6486002)(508600001)(31686004)(36756003)(6512007)(26005)(316002)(38100700002)(2906002)(54906003)(83380400001)(60764002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aU5Ec2xrZDZPNEU0Yk9kOG5XczlHcTA4eWFUOFFKMjZrMzE2ZkRZN0R1UExp?=
 =?utf-8?B?cEYydVFHMnlCNzNUb00xMVdNSjVnTmtHSFo5VjAyYXZVeHVSZTBMSW1sYW95?=
 =?utf-8?B?MlI2T2JKSUZHai9PQXlscXBQR2hBYU96T0hSZExPb0xCdCtOdGRyY3NlQzV3?=
 =?utf-8?B?dkJib09JSGFLbWdNOUFCYm5DaW5kTDVVNUI1OVRFQlFEUEpBYXNaR0xxWlha?=
 =?utf-8?B?WmlocWZ5b3A3WW1sSG1iTnJlRlc2OVpIb2kxOTkzMStxTEhmZjIzU2haNnlQ?=
 =?utf-8?B?eDlub011NWtoa054TlNWQUtlS3JqS3VNUy95d1JNUk1GMWNSNit2WFFTMU5l?=
 =?utf-8?B?LzVBRUNadEJGSTJZVzJ3RzIraSs1V2MvbU9oZ1kyVll0dmNNUFN1UmNSYklC?=
 =?utf-8?B?L2QzL0ZGK1BZdUcxWHNJaUJaS081SzB5NzRFNXd1dnA1UFEwUElMNjFiTnRh?=
 =?utf-8?B?djI0Vis1UTVFVWRVMXhLMmZoNERWSkE0RmxPU2huVGxZb2pvc0ZHZmliaUlD?=
 =?utf-8?B?RWtMcUpCWmc5Z1Z5K1hlWlhiL1drWmRGdCtNQjVvTkY2bUFUREQycGJMNGFm?=
 =?utf-8?B?dFIrYUw3NkhvN1RSWDJXRWtsa2lxWkZoMnlycVhHcmxRa01UVm5kcStZQlov?=
 =?utf-8?B?SEFaZ0I0eGdFM0pKK21lYWk5ZE5kMXRzaEhNclJFTy9vOW5ncW5ISlNNVWJF?=
 =?utf-8?B?M1oyN3IzSklYekVad1AwUXRvKzJickk3clF0S0NkMk1lY1ZYSjJxb2pSZWVG?=
 =?utf-8?B?Q1J2NDJ4UUhkSk5jYllDWlpZb2p5SlRLTXRpTFVDSlk3bkliVlBjUklKc25r?=
 =?utf-8?B?R01GRFgwRzJ1cG1TSjVtOXZtd2RPWnJkMFBUc25PZ0xXUEMyRGxNWE9zdzdk?=
 =?utf-8?B?S29GZUhJMlJSaG1BS3MwNXhrZmJaZGt0RG9uc0FPNzJGVU5WWTlacUFMcWFn?=
 =?utf-8?B?QXFWRXcyVnlHdDZmbGVMWkJNZ1BkTjJGNkNVY05ObzJ3VkZyMjl4Mm1peFJP?=
 =?utf-8?B?WVpYTXRiZ2V0MlVaaWRMbzRiVWxWUHg1OXp1WTg1VVNVOVUvdXIvWXhjam5M?=
 =?utf-8?B?OXZSNmpMeS9KRU51UHFiUUZTVGZPaEhCZ1JnTDdOa1Z3djU3NlliWm5zN0cx?=
 =?utf-8?B?aHFwSUlzZjF5RnNKdnFjV3J6NXkwU2ZuRWxUQUgrdGpJWE14OU9XTzZzTDZW?=
 =?utf-8?B?N1lqMHZKZEJrTGxUUHJiYk4wUXJVaERtMExlRHhrNngvZUMrRmYvN25xSnVK?=
 =?utf-8?B?S2ZMdXkzNW5aOXBsRk8zTHJSZlJsN2xGZGZPV3J3aVppdjI3eStGaVVzMHhI?=
 =?utf-8?B?UUNEM2ZDMjlkS1RKS2NvcEMvcFhjR2N0TUJsNHN0VDBkajlYRmNZd1hjdVlQ?=
 =?utf-8?B?dUErdGJOcU9JUmp0SyttWGtQcThhTUUzWVVaMlFBdEFXYm9oY04zaWlFVGtw?=
 =?utf-8?B?SUxtdnNlbDNiUFFuT2FnaWd3cDlOQ0RIRk9EbS80RUo2TnZEWSs4aU81MkZH?=
 =?utf-8?B?eGJkaFZOWnhCL3dONURRbVhzNUc3a0RoM2JZUVFaMWQ3WGQ4VHNWQ0l2V1RE?=
 =?utf-8?B?eUhHMDdkY0thWXIyV3hXaVB4Yzd5MnMzNWcvMHdYWldRSXZZeEJMcTlZT2hQ?=
 =?utf-8?B?L05XZjROS1V1NGUzQzlmWjB5UDR3VStuNDZDbzB2S2xrUXBYWnR5My82aDUy?=
 =?utf-8?B?YkJ1WDhab3VFN0drS1FINkoxSjlvL1l1T0Y4bmZNZFB3UzlMd3lOdnBmS2Jq?=
 =?utf-8?B?R0xPdHFSTncrMzJCVXJvU2RyT3lVTnc4cWM2TlB3ZEdPcU01c0gxVEFkTlIx?=
 =?utf-8?B?SFYwQTZoanlRdVI1dGFVWGhTQ0lBNThjRUlYZ3R0Vk1VQk9rYTlWQUVFcXJr?=
 =?utf-8?B?WmFzZEU5cHgvaFZqUE1PWDVDdGtBcnZOMVBBMHlOMW5yQjFjbVJzZHVqUzUw?=
 =?utf-8?B?YUFjZ3NzRXpIQS9CUHk2NFdZREI0aUh3TVFDdGFXcFp3eXNFLzh4Y1U3ejNv?=
 =?utf-8?B?WFRNYmZERFdsSXFkQVBaMTBqNnpLUkhQMnBscGZrZm9lanAvV2ZFNlJiNVR6?=
 =?utf-8?B?QkZDQmxFazNEWWtaT2hvWFFtaU1OM0hmSHN5WEZDa2lzOGVqeFJMc2ZXY205?=
 =?utf-8?B?bGdUOHBJMXkrcXRQcG5GR1hrZWE4aEtXeURxSE5KQlNaTEpnc3FNaUVNYzBY?=
 =?utf-8?B?UGtDWUJCT1gxd25sR1FVM0xXL0ZaQmNxOWdNeGcrVWlJNzArUzg5WWxIcVVL?=
 =?utf-8?B?dnE5WUxIM08wVk1BMnB0Z0haeE1JbUg4aXRMVHAwZDI3c2JXWGZGUFZLczJR?=
 =?utf-8?B?Q0RHbGljZlQ3cFpSekpRbWxvZFpkbDdwaXdaU3dFanl4RUlhM09DSDVlQnU5?=
 =?utf-8?Q?3Gc2jye5dBlYkGYmVcMLRgh6R/+G5lY8wNTqO?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e65d795-bd71-45b1-33c8-08da4d5b86a6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2022 16:41:12.4935 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hgxaDMlrDEdtQYRGvRa1JjtVvbAjstWc+aJMvqX5pAqHrxekYmJO4XXtgIx9NSba3xvUTgJ3ztX6WXAGW0/glDrYsUD/vs0AzGAHPC0DzfE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5601
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



On 6/13/2022 9:31 AM, Tvrtko Ursulin wrote:
>
> On 13/06/2022 16:39, Ceraolo Spurio, Daniele wrote:
>> On 6/13/2022 1:16 AM, Tvrtko Ursulin wrote:
>>>
>>> On 10/06/2022 00:19, Daniele Ceraolo Spurio wrote:
>>>> On DG2, HuC loading is performed by the GSC, via a PXP command. The 
>>>> load
>>>> operation itself is relatively simple (just send a message to the GSC
>>>> with the physical address of the HuC in LMEM), but there are timing
>>>> changes that requires special attention. In particular, to send a PXP
>>>> command we need to first export the GSC driver and then wait for the
>>>> mei-gsc and mei-pxp modules to start, which means that HuC load will
>>>> complete after i915 load is complete. This means that there is a small
>>>> window of time after i915 is registered and before HuC is loaded
>>>> during which userspace could submit and/or checking the HuC load 
>>>> status,
>>>> although this is quite unlikely to happen (HuC is usually loaded 
>>>> before
>>>> kernel init/resume completes).
>>>> We've consulted with the media team in regards to how to handle 
>>>> this and
>>>> they've asked us to do the following:
>>>>
>>>> 1) Report HuC as loaded in the getparam IOCTL even if load is still in
>>>> progress. The media driver uses the IOCTL as a way to check if HuC is
>>>> enabled and then includes a secondary check in the batches to get the
>>>> actual status, so doing it this way allows userspace to keep working
>>>> without changes.
>>>>
>>>> 2) Stall all userspace VCS submission until HuC is loaded. Stalls are
>>>> expected to be very rare (if any), due to the fact that HuC is usually
>>>> loaded before kernel init/resume is completed.
>>>
>>> Motivation to add these complications into i915 are not clear to me 
>>> here. I mean there is no HuC on DG2 _yet_ is the premise of the 
>>> series, right? So no backwards compatibility concerns. In this case 
>>> why jump through the hoops and not let userspace handle all of this 
>>> by just leaving the getparam return the true status?
>>
>> The main areas impacted by the fact that we can't guarantee that HuC 
>> load is complete when i915 starts accepting submissions are boot and 
>> suspend/resume, with the latter being the main problem; GT reset is 
>> not a concern because HuC now survives it. A suspend/resume can be 
>> transparent to userspace and therefore the HuC status can temporarily 
>> flip from loaded to not without userspace knowledge, especially if we 
>> start going into deeper suspend states and start causing HuC resets 
>> when we go into runtime suspend. Note that this is different from 
>> what happens during GT reset for older platforms, because in that 
>> scenario we guarantee that HuC reload is complete before we restart 
>> the submission back-end, so userspace doesn't notice that the HuC 
>> status change. We had an internal discussion about this problem with 
>> both media and i915 archs and the conclusion was that the best option 
>> is for i915 to stall media submission while HuC (re-)load is in 
>> progress.
>
> Resume is potentialy a good reason - I did not pick up on that from 
> the cover letter. I read the statement about the unlikely and small 
> window where HuC is not loaded during kernel init/resume and I guess 
> did not pick up on the resume part.
>
> Waiting for GSC to load HuC from i915 resume is not an option?

GSC is an aux device exported by i915, so AFAIU GSC resume can't start 
until i915 resume completes.

>
> Will there be runtime suspend happening on the GSC device behind 
> i915's back, or i915 and GSC will always be able to transition the 
> states in tandem?

They're always in sync. The GSC is part of the same HW PCI device as the 
rest of the GPU, so they change HW state together.

Daniele

>
> Regards,
>
> Tvrtko
>
>> Implementation-wise, this turned out a bit more complicated than 
>> expected due to the required tracking of the mei-gsc status to 
>> enforce the timeouts. When I discussed this with the mei team they 
>> suggested using the notifier for that, which is what I went with. 
>> Another option I considered was to start a timer when the first media 
>> submission comes in while HuC load is in progress and stall for the 
>> maximum expected HuC load time; this would be more error prone, hence 
>> why I preferred the notifier option, but would be simpler. I'm open 
>> to other options here if you have any better ideas.
>>
>> Thanks,
>> Daniele
>>
>>>
>>> Regards,
>>>
>>> Tvrtko
>>>
>>>> Timeouts are in place to ensure all submissions are unlocked in case
>>>> something goes wrong. Since we need to monitor the status of the mei
>>>> driver to know what's happening and when to time out, a notifier has
>>>> been added so we get a callback when the status of the mei driver
>>>> changes.
>>>>
>>>> Note that this series depends on the GSC support for DG2 [1], which 
>>>> has
>>>> been included squashed in a single patch.
>>>>
>>>> [1]: https://patchwork.freedesktop.org/series/102339/
>>>>
>>>> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
>>>> Cc: Tony Ye <tony.ye@intel.com>
>>>> Cc: Alexander Usyskin <alexander.usyskin@intel.com>
>>>>
>>>> Daniele Ceraolo Spurio (8):
>>>>    HAX: mei: GSC support for XeHP SDV and DG2 platform
>>>>    drm/i915/pxp: load the pxp module when we have a gsc-loaded huc
>>>>    drm/i915/dg2: setup HuC loading via GSC
>>>>    drm/i915/huc: track delayed HuC load with a fence
>>>>    drm/i915/huc: stall media submission until HuC is loaded
>>>>    drm/i915/huc: report HuC as loaded even if load still in progress
>>>>    drm/i915/huc: define gsc-compatible HuC fw for DG2
>>>>    HAX: drm/i915: force INTEL_MEI_GSC and INTEL_MEI_PXP on for CI
>>>>
>>>> Tomas Winkler (4):
>>>>    mei: add support to GSC extended header
>>>>    mei: bus: enable sending gsc commands
>>>>    mei: pxp: support matching with a gfx discrete card
>>>>    drm/i915/pxp: add huc authentication and loading command
>>>>
>>>> Vitaly Lubart (3):
>>>>    mei: bus: extend bus API to support command streamer API
>>>>    mei: pxp: add command streamer API to the PXP driver
>>>>    drm/i915/pxp: implement function for sending tee stream command
>>>>
>>>>   drivers/gpu/drm/i915/Kconfig.debug            |   2 +
>>>>   drivers/gpu/drm/i915/Makefile                 |  11 +-
>>>>   drivers/gpu/drm/i915/gt/intel_gsc.c           | 141 +++++++++-
>>>>   drivers/gpu/drm/i915/gt/intel_gsc.h           |   3 +
>>>>   drivers/gpu/drm/i915/gt/uc/intel_huc.c        | 244 
>>>> ++++++++++++++++--
>>>>   drivers/gpu/drm/i915/gt/uc/intel_huc.h        |  27 ++
>>>>   drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c     |  34 +++
>>>>   drivers/gpu/drm/i915/gt/uc/intel_huc_fw.h     |   1 +
>>>>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  64 +++--
>>>>   drivers/gpu/drm/i915/i915_request.c           |  24 ++
>>>>   drivers/gpu/drm/i915/pxp/intel_pxp.c          |  32 ++-
>>>>   drivers/gpu/drm/i915/pxp/intel_pxp.h          |  32 ---
>>>>   drivers/gpu/drm/i915/pxp/intel_pxp_huc.c      |  69 +++++
>>>>   drivers/gpu/drm/i915/pxp/intel_pxp_huc.h      |  15 ++
>>>>   drivers/gpu/drm/i915/pxp/intel_pxp_irq.h      |   8 +
>>>>   drivers/gpu/drm/i915/pxp/intel_pxp_session.c  |   8 +-
>>>>   drivers/gpu/drm/i915/pxp/intel_pxp_session.h  |  11 +-
>>>>   drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 138 +++++++++-
>>>>   drivers/gpu/drm/i915/pxp/intel_pxp_tee.h      |   5 +
>>>>   .../drm/i915/pxp/intel_pxp_tee_interface.h    |  21 ++
>>>>   drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |   6 +
>>>>   drivers/misc/mei/bus-fixup.c                  | 105 +++++---
>>>>   drivers/misc/mei/bus.c                        | 145 ++++++++++-
>>>>   drivers/misc/mei/client.c                     |  69 +++--
>>>>   drivers/misc/mei/debugfs.c                    |  17 ++
>>>>   drivers/misc/mei/gsc-me.c                     |  77 +++++-
>>>>   drivers/misc/mei/hbm.c                        |  25 +-
>>>>   drivers/misc/mei/hw-me-regs.h                 |   7 +
>>>>   drivers/misc/mei/hw-me.c                      | 123 +++++++--
>>>>   drivers/misc/mei/hw-me.h                      |  14 +-
>>>>   drivers/misc/mei/hw-txe.c                     |   2 +-
>>>>   drivers/misc/mei/hw.h                         |  62 +++++
>>>>   drivers/misc/mei/init.c                       |  21 +-
>>>>   drivers/misc/mei/interrupt.c                  |  47 +++-
>>>>   drivers/misc/mei/main.c                       |   2 +-
>>>>   drivers/misc/mei/mei_dev.h                    |  33 +++
>>>>   drivers/misc/mei/mkhi.h                       |  57 ++++
>>>>   drivers/misc/mei/pci-me.c                     |   2 +-
>>>>   drivers/misc/mei/pxp/mei_pxp.c                |  40 ++-
>>>>   include/drm/i915_pxp_tee_interface.h          |   5 +
>>>>   include/linux/mei_aux.h                       |   2 +
>>>>   include/linux/mei_cl_bus.h                    |   6 +
>>>>   42 files changed, 1537 insertions(+), 220 deletions(-)
>>>>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
>>>>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_huc.h
>>>>   create mode 100644 drivers/misc/mei/mkhi.h
>>>>
>>

