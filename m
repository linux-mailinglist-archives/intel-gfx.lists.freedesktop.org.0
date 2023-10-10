Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4DF7C036E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 20:31:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7FF110E3B6;
	Tue, 10 Oct 2023 18:31:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BC4E10E3B6
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 18:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696962680; x=1728498680;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=X2T3QOp7HT+61vmhBygMOvbs9XfDGQhruR0MN5Q+EZg=;
 b=JdWieQQ5qeoofar5nuAiOAq+iIizYK68j5bNQnnPJvJ7fgHEzSYnnsaK
 gLizvKY1pQZssyfCuOTTfN9VVKplKH+YwKPPHXMQo7Mo9l45l44Yaz6R3
 4JDbih3gNgjPPsafR8ACxrDabMa6pfHhPXSPTBnD8csyNpCTWsyrzT0Qx
 VsK2qndb3zHKl/4TPbE80OHfmnWAdK0PCRauyDE5X4tw8vKhEKqxZVWMn
 DgIjYp8KikLzQggE2mAEDYmyjFxGrrD82W2bG8kd7H4d9U9N4kbDaEvJf
 RaFNx9RtYfjbvjD5qijoUBBoBzDiY+9PmZ+afBZHUTTlvyne02NcIs7zi w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="415507281"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; 
 d="scan'208,217";a="415507281"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 11:31:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="782973196"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; 
 d="scan'208,217";a="782973196"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 11:31:18 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 11:31:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 11:31:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 11:31:18 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 11:31:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nkJS34p/7bNXNrgiZ7+HUaXja3Z+87LP0kzv3uaPP95OwqNOoeZcV/KTjTJcA3ffJ7QOVhudG/OoNa5QTIXycrWJo4+dxqOWd+nnEoU04vSZjoAuNsRUxkTg+N8U+ZypSKfhv7NZVb6in/m4+PKC1mCAXjTR/v+WmgM0HLSqtj3s9BWEuCG70jlnCsfbV8ac/kmSHbVD1cZPTMZadludNn3ixSxv8hr8vBfRz75bEnlN5fhzYe8/bcHBBR9YRh88T5vZ5LyvLNwtGsddP/XVoVtsv8inLPh3mlTlp/XRrPZsioWT1tQpLZN82o+6blHOshyBHFsFnzC8YQKymWET8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J/ApIROveoXo8sZChqlT8mnbAVUpv1Boils+O7/5gaA=;
 b=TnU+g2/ZSIbUJvehRHujT3jNgtdISxifod3hd/K6WoC2Z/sCyv8w+6/PPttLIymHOKis0cbSaHj0WKVYidR72m2sAcRl1LIc2qrqSQudq4z/P8KA5IpTzNZ3OOuD6f/kS6GSXcosvPhFqfY0jve4x7GM9f+vmMxnGkyhwT5jLQkVxMMzV0/manHjs+YTih00XFBt0vzFSiZT9Moj4dnZMjtabxlHeudOzP/R68BTq2Q1KPqKH4CEVptxGOKJuX+nVLOew/Dd4AounhrQqpwn/dGLHxYnqdl1VPBYCxjTZN9Wpo0bQIyTM/vHQt23yLw/591WY7btNstonUyVekw07Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by PH0PR11MB5781.namprd11.prod.outlook.com (2603:10b6:510:14a::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.41; Tue, 10 Oct
 2023 18:31:00 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 18:31:00 +0000
Content-Type: multipart/alternative;
 boundary="------------q8LWsNXiMHRUTFReogylozSY"
Message-ID: <aacb58e4-067d-4196-bab4-9ea08b6e328d@intel.com>
Date: Tue, 10 Oct 2023 11:31:00 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: <intel-gfx@lists.freedesktop.org>
References: <20231009183802.673882-1-John.C.Harrison@Intel.com>
 <169690479457.28096.14055814567291560385@emeril.freedesktop.org>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <169690479457.28096.14055814567291560385@emeril.freedesktop.org>
X-ClientProxiedBy: MW4PR03CA0271.namprd03.prod.outlook.com
 (2603:10b6:303:b5::6) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|PH0PR11MB5781:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ab9dd8d-9e11-4783-a841-08dbc9bf0d9e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: v7wC3TN7apu8AocAGxNee1pvFiUvT2rgkaU8W6ckD7KllcyLwq/SqUvVtfvGO36n5lBWIbsNP2MflV41JMucQxZP8vpHDqTVDrp4zpnKAGMbvY/23icBwWy2xKqB/RxJ+a2JsWLh6kOZg6duTohHJnsvv8+NLMDs2pWgBGlfQOsjDfdG00v6twztzGeVtj2z+dhFgXgWqh0FEIuq4GbmwuW7oR5koDL1sdI4QRgOoRQTKmpVBitwjRfdwnHuqSwYAscQedyCwlPUhJp3KLKSJQY/YZknTnPr87CFi9YbXYZ9DkD7Jo/IscwRVRwmcLi8u+2dTh47z5oSVjL05YJ3HTtM5plFE+IzOTprFFDh+3NXaJzhZ72fOaBTp1BwJIPoSb42+MvMfC3r9Bmv4ccMe8JuPyzKfqsvw6miM+E48GT7ynwdTFnXWRZdzU54twPXMDEp9kJCSQjMWaI4YyB4OUxuykyKvI/RoPVK2AMfX/vDYXVSyPz2cnXFE9zDwNG1mdDlTJZU0h6PyfLNHQZ/UXB1Nn5fZoGUw0xssv4Se/uXfdk7Mzs81mXjcSSBJyADrQYnpzflHsgu0tjhGQMnIrN+3i/aHd+NFR+NcOxO0QK0vXYAaCO7OYKa0KunCT97Zmz5gWoy9q1drez6kOh7gV39nGO1q0sLfDxGd8Am3YU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(346002)(136003)(396003)(366004)(230922051799003)(186009)(64100799003)(1800799009)(451199024)(6512007)(86362001)(26005)(33964004)(53546011)(6506007)(40265005)(478600001)(966005)(6486002)(83380400001)(2906002)(38100700002)(41300700001)(5660300002)(36756003)(8936002)(66556008)(66946007)(66476007)(21615005)(6916009)(15650500001)(31696002)(166002)(316002)(82960400001)(2616005)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHdQOVd5eVY5dnEvZzByWmdRNEc2M1RuakZPTWY0QzlKUjFiUTF4TGJjSDNj?=
 =?utf-8?B?eTVuNVNCdDk4VVhCUkcvRlNYd0VJYy9mU2ZYekd0bk5DR2dpM2Zwbkp0SU5L?=
 =?utf-8?B?cWFkUERobDFabEpwb0x3Vm9jaE5mc3Z0cTkwUVN3T2lLWnM4L0RSRzc4OWlO?=
 =?utf-8?B?dko2NngwU1R2NDZxK0FacWhzdTlLUkxCS01ydStvQ3JucytEZFBreTVvbXRW?=
 =?utf-8?B?MVRSM2hPTHNSeXA5djdDOFNBSFJCSzFHTE1lb1UxR3dVbkFBRjBpY0tWY3du?=
 =?utf-8?B?bnQxNG42ZUNUaVpOMFhjcHRuTEdRc0JCK1dtMlBBeDIwMmRRNTRCa2JhN0RQ?=
 =?utf-8?B?YzhoekZMeUcyK29LWlJrTCt0enR3WlJHV0hIYlFkZTJrWFdvQS8yeVJvc2FR?=
 =?utf-8?B?a2NldWhnRUd1WDlLM0hhNHJ4YnFkcUhmcThBWko2dFJIaHFmWCtFQ3p2T2xH?=
 =?utf-8?B?ak9GMUNEY1VKdzFhamhLdXcvSHlaMXhDRkNVTkhDYk5Yb1dMZndNVzk2Lzgw?=
 =?utf-8?B?L2RYMkEwNW5PbGUvWGJsZnM2aWFVKzd1THV3eG4vR0loNE8rTUdRcU51dXNS?=
 =?utf-8?B?NldQb3RKK1NaS1dod2FUcytrelZBazNmSWxMUmo2eXNsdEJWbWtva2M0dHJz?=
 =?utf-8?B?NEFvU0JGRG9Jell6RllNZmlPbjdubHFTZkQwM3U0ZlJNbFI4S0l4NUVXNHBO?=
 =?utf-8?B?alp5QkVTYWVEcEVwbnloTDV6SUZOeVVVdWRpZVFHRXdzYTdoOHhLa3h3NkNv?=
 =?utf-8?B?blJ0QkJCV1FibWhOaUVaV2ZPd1pxMHlnTjhSQUIySzdZTXVPZjBvN3h1bzA0?=
 =?utf-8?B?TDJhRWZHeVo1OGtWRkh1UGVCL0FiMjBkL3E1ZTU3QUxSWXIrVGVpNnhMazVo?=
 =?utf-8?B?Z0p4eXhtSHdSc215VkJkeW0veWZ3cDFrK0tQeWJCbTI4UTFKNjkvdWw1VzU0?=
 =?utf-8?B?bzdUMlpYNGRzdC9WK0FrYTMxSEVMajBlbVFObjRjZzNsVTdRd09yQ1JjbG1K?=
 =?utf-8?B?QVVWZzNOSWg1SnpJVmJyOGVwNzR6SXlobjRMQzAxVDVxMDcrdHllaE51Y0R6?=
 =?utf-8?B?Y0ZrYWljUVJGSUNoeVM4YzRpdFAreEd1S1NSZVltdGk4SERwazBoc1NYQnp3?=
 =?utf-8?B?ZWRadDBNcXRzQ01lQ0s4RmVYaVMwNVcwTzZDeTJPYjA1OHdIVC9GWGRmQ3o0?=
 =?utf-8?B?RUg5L1Y5MXY5U0tzRjZMUitNeHBUVXNuYmVWN1JmRHdBZ290UGRzL3JSODYx?=
 =?utf-8?B?c0FDNC9ZelZNWCt3ZENoWGU3SzVveFZ4azZjUWFJdXdmaC9jbVVVNTNmaVBz?=
 =?utf-8?B?YThsWUtMT3lZOEpzT0NoakRFOHZ6WkpST2ZKRFM5a1lOU1NXa0tVMHd1UDhN?=
 =?utf-8?B?ZFdlZVYzMWhKMUJlZGwzN0hJYmRUZklqOEhBN2M3OGVibmE0RlgvTmVwb1Na?=
 =?utf-8?B?RmN5VzJCSWVoYkpobkpvWTYzK1l3MU4za1F0STZEbGRGWjFJY0xhSWdMaHZI?=
 =?utf-8?B?SlB0VUwzSFZKQk1PTkdXM09Ta3ZaemdzbFRrTWVhTE5KTjZqVHhwdWQ1Mm1y?=
 =?utf-8?B?eUtaNWlUTmVsVDhwTWdSNEZiQXVncHRSN2hVK1o0OVpqYnFGS2hXb09nc1Ft?=
 =?utf-8?B?YmxoRzR6cDBNeEZYRFZOWTQxemNVV2hTdzVKTHhsUVZZZkdYN1FBOUM0emZt?=
 =?utf-8?B?MWU1amp4cnNIczFHNUJrb1lKRml1UkFDWWlVQldNdHEzRUxuZ0psZ2ZzcGl5?=
 =?utf-8?B?U2VOQjh4eUE0ZjJDUFljYVlzVFFJMWVQUHZQdHdnc2F0Y0x0dFUrTlQxVGl6?=
 =?utf-8?B?dEtMY2dvN2JiTFEreWZ6SGZ6eFhyUXBOdWk0RFVoelVzWGJ2b2VDQjBWR093?=
 =?utf-8?B?b3N5RlJwczVXUDJNdHIrQ3lFQXhtTXh1QlY2SnhyOVpybDY0NVAwZnJKQUgx?=
 =?utf-8?B?WHVsOTk0a1RIcXZMc2FNZnVJNWl5UGtrVmtibk5wWE5zYm9CS2hzU2NYSmhI?=
 =?utf-8?B?QTNZaDEwclk5Ni9zZEcxY21OUS92azB5cVhKMGR4YjNwRW1lM284TnAwY1Rt?=
 =?utf-8?B?VWtab01KcWYxQytWc3ZOc1VFMVF3OHRtVlhCQWFuTWk0aE9GcnBNMzlkTGFJ?=
 =?utf-8?B?bVIxSTgrajZFRkVFU3g4c0pFNWNrSDY5Z3N3LzZGcGtsNW42MEdvTXJYdm1x?=
 =?utf-8?B?VkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ab9dd8d-9e11-4783-a841-08dbc9bf0d9e
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2023 18:31:00.8673 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NsSYT8oQuqK6UYbpYymFmlPZeDcP0KbJVsORVZzijy3FoyIamgdJ5/YkTawFbXtsoVud/+qoh9TgmG972D3EU1wYS2/HjBUS5BoY2R9PPMY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5781
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgTW9y?=
 =?utf-8?q?e_print_message_helper_updates?=
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

--------------q8LWsNXiMHRUTFReogylozSY
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 10/9/2023 19:26, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	More print message helper updates
> *URL:* 	https://patchwork.freedesktop.org/series/124853/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v1/index.html
>
>
>   CI Bug Log - changes from CI_DRM_13732 -> Patchwork_124853v1
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_124853v1 absolutely need 
> to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_124853v1, please notify your bug team 
> (lgci.bug.filing@intel.com) to allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v1/index.html
>
>
>     Participating hosts (36 -> 34)
>
> Missing (2): fi-kbl-soraka fi-snb-2520m
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_124853v1:
>
>
>       CI changes
>
>
>         Possible regressions
>
>   * boot:
>       o fi-ilk-650: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/fi-ilk-650/boot.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v1/fi-ilk-650/boot.html>
>
System failed to boot properly. Didn't even get as far as loading the 
i915 module according to the logs. So definitely not caused by tweaking 
some debug prints within the i915 module. Also, system booted and ran 
just fine on the re-test.

John.

>  *
>
>
>     Known issues
>
> Here are the changes found in Patchwork_124853v1 that come from known 
> issues:
>
>
>       CI changes
>
>
>         Issues hit
>
>   * boot:
>       o fi-skl-guc: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/fi-skl-guc/boot.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v1/fi-skl-guc/boot.html>
>         (i915#8293 <https://gitlab.freedesktop.org/drm/intel/issues/8293>)
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@gem_exec_suspend@basic-s0@lmem0:
>
>       o bat-dg2-9: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v1/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html>
>         (i915#9275 <https://gitlab.freedesktop.org/drm/intel/issues/9275>)
>  *
>
>     igt@i915_selftest@live@requests:
>
>       o bat-mtlp-8: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/bat-mtlp-8/igt@i915_selftest@live@requests.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v1/bat-mtlp-8/igt@i915_selftest@live@requests.html>
>         (i915#9414 <https://gitlab.freedesktop.org/drm/intel/issues/9414>)
>
>
>         Possible fixes
>
>   * igt@kms_hdmi_inject@inject-audio:
>       o fi-kbl-guc: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html>
>         (IGT#3
>         <https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html>
>
>
>     Build changes
>
>   * Linux: CI_DRM_13732 -> Patchwork_124853v1
>
> CI-20190529: 20190529
> CI_DRM_13732: 7c57bbfe2c6194cc4d4edf50466b057d7b191251 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7523: 361c2f92f1fe5641090f2fc59951fcaba15387f5 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_124853v1: 7c57bbfe2c6194cc4d4edf50466b057d7b191251 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
>
>
>       Linux commits
>
> 6eb131b16d85 drm/i915: More use of GT specific print helpers
> decb307d48d5 drm/i915/gt: More use of GT specific print helpers
>

--------------q8LWsNXiMHRUTFReogylozSY
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    On 10/9/2023 19:26, Patchwork wrote:<br>
    <blockquote type="cite" cite="mid:169690479457.28096.14055814567291560385@emeril.freedesktop.org">
      
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>More print message helper updates</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href="https://patchwork.freedesktop.org/series/124853/" moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/124853/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v1/index.html" moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v1/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_13732 -&gt;
        Patchwork_124853v1</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_124853v1
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_124853v1, please notify your bug team
        (<a class="moz-txt-link-abbreviated" href="mailto:lgci.bug.filing@intel.com">lgci.bug.filing@intel.com</a>) to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v1/index.html</a></p>
      <h2>Participating hosts (36 -&gt; 34)</h2>
      <p>Missing (2): fi-kbl-soraka fi-snb-2520m </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_124853v1:</p>
      <h3>CI changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>boot:
          <ul>
            <li>fi-ilk-650: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/fi-ilk-650/boot.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v1/fi-ilk-650/boot.html" moz-do-not-send="true">FAIL</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    System failed to boot properly. Didn't even get as far as loading
    the i915 module according to the logs. So definitely not caused by
    tweaking some debug prints within the i915 module. Also, system
    booted and ran just fine on the re-test.<br>
    <br>
    John.<br>
    <br>
    <blockquote type="cite" cite="mid:169690479457.28096.14055814567291560385@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_124853v1 that come from
        known issues:</p>
      <h3>CI changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>boot:
          <ul>
            <li>fi-skl-guc: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/fi-skl-guc/boot.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v1/fi-skl-guc/boot.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293" moz-do-not-send="true">i915#8293</a>)</li>
          </ul>
        </li>
      </ul>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@gem_exec_suspend@basic-s0@lmem0:</p>
          <ul>
            <li>bat-dg2-9: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v1/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9275" moz-do-not-send="true">i915#9275</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@requests:</p>
          <ul>
            <li>bat-mtlp-8: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/bat-mtlp-8/igt@i915_selftest@live@requests.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v1/bat-mtlp-8/igt@i915_selftest@live@requests.html" moz-do-not-send="true">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9414" moz-do-not-send="true">i915#9414</a>)</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>igt@kms_hdmi_inject@inject-audio:
          <ul>
            <li>fi-kbl-guc: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3" moz-do-not-send="true">IGT#3</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_13732 -&gt; Patchwork_124853v1</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_13732: 7c57bbfe2c6194cc4d4edf50466b057d7b191251 @
        <a class="moz-txt-link-freetext" href="git://anongit.freedesktop.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        IGT_7523: 361c2f92f1fe5641090f2fc59951fcaba15387f5 @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_124853v1: 7c57bbfe2c6194cc4d4edf50466b057d7b191251 @
        <a class="moz-txt-link-freetext" href="git://anongit.freedesktop.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a></p>
      <h3>Linux commits</h3>
      <p>6eb131b16d85 drm/i915: More use of GT specific print helpers<br>
        decb307d48d5 drm/i915/gt: More use of GT specific print helpers</p>
    </blockquote>
    <br>
  </body>
</html>

--------------q8LWsNXiMHRUTFReogylozSY--
