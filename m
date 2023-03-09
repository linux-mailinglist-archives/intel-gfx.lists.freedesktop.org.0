Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E78596B2D0A
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 19:40:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7873710E110;
	Thu,  9 Mar 2023 18:40:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D59D910E110
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 18:40:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678387213; x=1709923213;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3DpZlqkyyiQCn0RsRewC6H1QtmvNVlbh3xWRFItLXGE=;
 b=FHVkUZ9U+MBCQXs4Nx3yFn+se7Imi8p+mRB671SydyX9Qvvo07/cAgRH
 PPqPJWhF+lgvwO/jCcO5BOwYFGK89UVghoUFmMa3duTsadKAE7Yv+RNod
 yMqI3rOlt3iJrNAWpt0J+7br7IwJZMFfWV04u7Py7CxFz5Wei+DSOBRR3
 RJ25gbQFtpIcL+sk71tolj7DIfrFhqQENALppHIwuMW+wsYIbNRxz8qPd
 Odsb8DKRjhio4bwqPiu61flNC4nVxJSBKp9bCnIAgf7zWwHAnFTAFEktb
 6iqFxHbR1nKektr5XHojBPH31vuuwxKbls/IBK++3sjCIe5N/iPLr1+Z3 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="334010873"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="334010873"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 10:40:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="709950659"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="709950659"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 09 Mar 2023 10:40:12 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 10:40:12 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 10:40:11 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 9 Mar 2023 10:40:11 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 9 Mar 2023 10:40:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BK7t9n0pHaP33Dtc+kA/2nDZ3jh1K2JM/ZADrbuKcLQPWMT8DXYJvHUy+An+DYYAiao1/iNCXnIOBKNxkL4oOeBBWqmOhrN63eEfJA2qY5QrrYOI+0O+UNbnDbO45OC6rRWVCpDc1+q3b1ij6zlc4jwZfr2Rhl6MykxcC81nHV3EaxhLVjdD6gUGOfaZiGKQO7RyCHcfS0yJdvpLDH+/hQEDBJpJ3OH9JGkIunOgquC8uTgmwHlOKE94lG16Ix6ThBg6t8tiFaY0cZHRbcHjuRBjPcgf8UibUjKnOWSc3w4zn/lhxMMYXT6bAJrJHZ+6C3dh+7MPTStKvV0tJoUH3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oQ2KsKFAJvuHnlEuUHCTsVYThkqB9fUQdUkg/RAa4Yk=;
 b=EKDNBfhHdA9e0y8YXVLei1qxA+oE44haUI6TC9cvT4lQUOhPfchiXzkobg/C3FWA/MlkvjASkmOZyCSbR0qS4RC2JRzBWluYGxC9rrHL0o5HliDWZE7SZwkrTW5xrEw/Vm26b4kc8sPLuM9O6U8DXpy8UumH5aA3fJUy8zQx7LiZPuUqiysmjBVfFVbKMXiuNGET7Mis37StrL0ZWgc1lWoQ6mqUsc/oQtYNe+VLiDpvF6l65W/RA2rbObc8eAdeiBdYvZEARzTTFJWMiPPnIL4oBKTuCXay9b4kQRKbYSxEfRoZifJRFu1ohHdCbr1SyfGGvMZ6xNA7Xv+iO6zsNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by MW4PR11MB5934.namprd11.prod.outlook.com (2603:10b6:303:189::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.19; Thu, 9 Mar
 2023 18:40:04 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::cc58:aa84:72be:b4fa]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::cc58:aa84:72be:b4fa%7]) with mapi id 15.20.6178.019; Thu, 9 Mar 2023
 18:40:03 +0000
Message-ID: <e50935d7-06f5-c872-94ec-fe0a5a5196a7@intel.com>
Date: Thu, 9 Mar 2023 19:39:59 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>
References: <20230309165852.1251-1-nirmoy.das@intel.com>
 <20230309173355.GT1543793@mdroper-desk1.amr.corp.intel.com>
From: "Das, Nirmoy" <nirmoy.das@intel.com>
In-Reply-To: <20230309173355.GT1543793@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0073.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1e::13) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|MW4PR11MB5934:EE_
X-MS-Office365-Filtering-Correlation-Id: efcf9eda-8a8f-40f2-66e1-08db20cdb24a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jEeeJmzlbYquAbGE8226BA/GsRRRsXLr1zxfmHQKBHVrmAvNge5v3VCtYQmAxBthhvaqe0xVvb+6wmqlZuFv6LB+xY/w8CRK2uvlK8e/OcEEdiY4RaxQYuW9qDBQkt2YJyXm/PRY9Nx+fFLNSdL1U28SxRG71tHdcoIXvU4XnYzD2IpRdr/6KicRJbDtABN9b7g9NIM/Ocoqd6TH4jodt4OIz/yjjX0Vm532mJuf2ukL3ole6Ki/SYqOElhD/UsvXI+sqYKul+24rJHYNd++dTFqPy+FixZDeX613S3IMtkr2EdOdyLN6flSeDY8IH50cu6SkjOuKbRZwiLVvLqxrkD9zZrhM+cXEQ7qwdEAAe4mrbY6MINp178O+W8t8s+jdAI2JOKwL5vfsPy/70zP2NPLwXj+9Xl1fSf0n1JqwLofCFjKKClUWZIzSHrQDz9mwEk7FgQp/iqChFLavJPcUnN+TpZ2BvHHqqN/lZBKsX3Af/EWIpcdWc6rVMCZX3OfqFbDHO3B6s7YfvLbQGiGP9qRp+7XZvelzpbK8YZo8gWv6fb2AQ1pV/d6w4qb6vRfVbRO9TzuGkpv5XZz7ZYx868MA8JPhAmTwjbW4okiRAYEp2mWA5bMjPyznjSP6Rz6RbObF7b39xDIPAjNwfqNqdv3xH5otjCYCMgiHowALjpJGzhlV3hwAVHsU/grQ0o8nkguqcghghP9SAefmE9u2dBDiHONIwUW74Amq5lPmU8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(376002)(346002)(39860400002)(366004)(136003)(451199018)(36756003)(478600001)(82960400001)(316002)(6486002)(83380400001)(6512007)(6506007)(186003)(41300700001)(53546011)(26005)(2906002)(66476007)(4326008)(66946007)(8676002)(15650500001)(8936002)(5660300002)(66556008)(6862004)(38100700002)(37006003)(6636002)(6666004)(86362001)(31696002)(31686004)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S3lSQWpxRXovMXRLSTdDZVV4M3hnRUJaNEx1d3BOZ05SNzdhcy9zdzNod05G?=
 =?utf-8?B?MGtwa3Zyb2hCZE9QSk1iUHZwSHd4RDBpSndwYVg1SllUUU1odGw5R3A3T3dp?=
 =?utf-8?B?M3dwYnlVZlI0TjRWT1cvc2pMWWZTbTFKMm1tc215dmJVWXZIeEpwT294S3NU?=
 =?utf-8?B?SEpVdXMzbHhPWXhsUGVSMnRDSDExeVY0WHc0akhKcHhDN1FnUDRKZGxRV1RU?=
 =?utf-8?B?cVlyN2pINWNMV0swR2NKa21iMnlSaXJnWlhOZzZhVERLN2dSdE53ZS9Cb291?=
 =?utf-8?B?WHlqVzFYS1pxSUVnaS9nUHBnYTdZeHlWdk5zbGFwZ2ZqdGkrbFhBVjZLVkJu?=
 =?utf-8?B?TVZXOTRCalRaQ1pKREpjNVFZVEhSdG5WQmpWdmhob2xqZEpqWXBlMXUzSzln?=
 =?utf-8?B?OEZac0Ruc3BDaG52UDVNKzV1OXpUT2RxRm8yOHBkbHB3V3Rud1ovTkI0aWt6?=
 =?utf-8?B?blFYaEdWZS9ENE1jdUc2Zk96Mk04UUJFUmJ6Y2lrdEZvTDVDajhRZU5JT2xF?=
 =?utf-8?B?V2lYYWhmNEdjak4wZFREQ2RVU0xRTmduTTlWdUNiRzV0ZnBhTkpPajlic0lD?=
 =?utf-8?B?dmZFS0hQQmsrc1RHZ0pvM1ZhM2JXU3BqM3dqUEZlaVdrdzZ5bTg5VExsRG4v?=
 =?utf-8?B?RmJpMEdwSk1JenFYMnVQNTRkTXlDQ1ZHQmMvOURkSUR2dHlNZElZTGIzMVBP?=
 =?utf-8?B?dW1DQVlPSXhCdTdMMDV4MVVUQjBqcDBaYVRmblhLT1hQTjc2R1hrT2taNnM2?=
 =?utf-8?B?c2g1S0l4YTJJcUEzSWZQT0M2R21lcWx0K0JZOUkyamJQTUcyemJESnJhYytD?=
 =?utf-8?B?Sk1WRXA0OVlUQUphSll1QWlUY2p0RkxaT0NEMTM0TnNKay9lWmJEWUNnUkNF?=
 =?utf-8?B?elkxRmpqUG12RkZQRWxVSEdoQUZiL1dnYm4reVVCV2M3ckh5Yk1FSy8yb0J2?=
 =?utf-8?B?clV6THRPc2tFb2ZLcTlxMUhwVk1LSTN0L2RPcnJtcTRJQVFRRVdQckI2bVUx?=
 =?utf-8?B?RGxmYk1BelpQR0dlSDZGdmtmdjZhazlicDlTZlExM0ZxZWJQRTliZmxkMmEv?=
 =?utf-8?B?OWxzb1BKSXcxSVc3UU9XaEtjK3FqNlArWmVQNkNTMmJoK3Zvalp1dkpQSUhu?=
 =?utf-8?B?MlV5bVB5YUJDeWJXRWJvTXB4VjFwdER3Lzh6RGlFdVpaRmg3WGtnSGpZTE1M?=
 =?utf-8?B?YmZ1ZUw1QTE4Um5rTXV0eTZGOHIzUk9IWlplMnJBN0dIQ2wva3c4bU1zWWIy?=
 =?utf-8?B?L3ZuQ3A3KzZUTVpvVnh0R3pUNnhLVTdaVnoreXdmOUoyK2lnY2UxcWR1RHpY?=
 =?utf-8?B?MFBvSW5JZTFQYlRpWERPd3JGUjFweHh5b2MrcC9ET2VJV3ZZQUV2UE16aGlS?=
 =?utf-8?B?bElIYlY4bzBjaDdEWldtdDgrSFhPN0dCdkQxcWFJcmJrQUhDL0JtSGdwTVNl?=
 =?utf-8?B?SmFZTml4aG1Hc2FXUzNwZmd6OTczekVYbHhWSFpwZUQvRm1IMWg3SzdheEpP?=
 =?utf-8?B?YWNmTEJiaFQ1R1VidGxUNmFxWitJZlBZSStCUEwyQTUwZXFtenB1WDZvYW0y?=
 =?utf-8?B?YlFLa1lVQklubEJZcDhaRklGOTA4OTMrL1FxNG1ROEtWQVhyM0hnSHZCbEMv?=
 =?utf-8?B?a0FoK1FGWmZPOHNneUNuRStvU2NsY29LcURDd2ZMT2JJdU83ajJpcHltMHRR?=
 =?utf-8?B?SVJrSlVxQzZsNnVKLzQxZEZsdGRPeE5jcVBHTGF0K2VpQ2U0Z2FPWTJ1dEdu?=
 =?utf-8?B?dUFSMGR0dGZBYnQ4YVJKMGZsRU1JbUdCNW1sTXJtdlg1V1Roa1hIQ3ZJdFN2?=
 =?utf-8?B?Y0hzSFZWRlRCMWI0VSs0dmJ2V0trQTZEYUFKZHlhUUxKbTY3R0g1SE9qbEpa?=
 =?utf-8?B?QUtPdnQweWdxekVueE5FcDlMdkFWR3NzekdvdjRRTmVtK3hlSTdHUkFWODRW?=
 =?utf-8?B?Syt4UGJpUklSR0pQR1plbERTaVQ4V2JRUE5vZnlBWHJQZWlxK1Z2emlpN1NW?=
 =?utf-8?B?VzJJeG1zUERBOGtpKzYrcXI3M0RBbms2aTRvOXpWWE03aHExenh2T0ZxRzJQ?=
 =?utf-8?B?V2JJcDlZNFNHYW5ROFFMNlo4aHQ3a3hEbWg2YjI2ejYvUGtoNHJyb3RmZGhi?=
 =?utf-8?Q?iAA3zSMAD4tPR3EiT7nTB6qmS?=
X-MS-Exchange-CrossTenant-Network-Message-Id: efcf9eda-8a8f-40f2-66e1-08db20cdb24a
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2023 18:40:03.7474 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CnJ1dkH2TYz1Bso/Ai+RrYOlN3bNL4LHq1nr0/hA6ZnLiGiySp+ssLLFXE3RTdY4XDIpKF2hREkbnIDjcbOqXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5934
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Update engine_init_common
 documentation
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 3/9/2023 6:33 PM, Matt Roper wrote:
> On Thu, Mar 09, 2023 at 05:58:52PM +0100, Nirmoy Das wrote:
>> Change the function doc to reflect updated name.
>>
>> Cc: Andi Shyti <andi.shyti@linux.intel.com>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_engine_cs.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> index ad3413242100..83532630b639 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> @@ -1429,7 +1429,7 @@ create_kernel_context(struct intel_engine_cs *engine)
>>   }
>>   
>>   /**
> Should we also un-kerneldoc this comment?  Generally we don't use
> kerneldoc comments for static functions.

Yes. I will resend replacing "/**" with "/*" .


Nirmoy

>
>
> Matt
>
>> - * intel_engines_init_common - initialize cengine state which might require hw access
>> + * engines_init_common - initialize engine state which might require hw access
>>    * @engine: Engine to initialize.
>>    *
>>    * Initializes @engine@ structure members shared between legacy and execlists
>> -- 
>> 2.39.0
>>
