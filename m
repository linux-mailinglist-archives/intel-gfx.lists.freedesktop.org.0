Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E92699EA9
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Feb 2023 22:08:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFE3710E19D;
	Thu, 16 Feb 2023 21:08:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 945EE10E19D
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Feb 2023 21:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676581679; x=1708117679;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=0hTPZlMZ2CdiN5t0HMVvCSp33e8DOXEUe40aH3FqzC0=;
 b=Fj03PWiK/Fycq244lM1qdVaTv2g8Tq5bBWUmzsMOH5VNIE3megK0F1xl
 kJOiV8/1GHAhN5VNKCSYOTyDSSxp4IpxFJ99mk6fXfVx/F/aZP5et+DZw
 SMtnTdA+wkd5oZQlQ1vWuLYWbjXKIGcpiIAl6N9LkJa6GaSC7Gmn1JqKb
 pZqcfd6O6w8AevWjavZnct3bKOU0XpK/fkYxN3ceaZYBwO9txAWWvqXDz
 8heyO5OngVrkYFUOOw8whP5PvNsOiwpg79tPtM5c24mXWXDb2qERoAMRs
 Li08Qbl16ZVFlxOeZrIV7089/pn8P5RANjI0aXfpQkLVsl+AMMbFy/seM w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="334040221"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="334040221"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 13:07:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="794194542"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="794194542"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 16 Feb 2023 13:07:39 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 16 Feb 2023 13:07:39 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 16 Feb 2023 13:07:38 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 16 Feb 2023 13:07:38 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 16 Feb 2023 13:07:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PJfmtpRTWfsrK5dUGzs7oJkNqn5a8LOGPua6n7Vlu+i0qYP+0/eklWkJJolWh2SmWMN1PwIQpjNPXgK8KdBElQMDho3nZWLvI9zNsL0r59z4RrZO22ZEyoFiaiPFRqq6yK9XLKaKDC/THVXBrBSnUY/4isgRw6XA4jV/EDjbVZRPcs1mw+09GjGfi6fOEJKwYZIwRgvxTLChO4T6JpnAAvYFQ2njTEPtj3mMD5EODSILcm1iD7/XqGB/5B36HiJQaC1oLWuzWsaNYaanIJ0J7+Kkf4CGQO5ZBHHZGI/vH9ZH+xgKWR2/C33UdT2Bm4GqpLuJb2OqmxfNBIEMg5saXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w2Wn5DhlhheGupMl2oG2Mc/xlkvafHk4imIG3vcoe2I=;
 b=VEIaSt+O/ejGuQV4uVrwK6tSAGHwjzx5xf3HAoUDSERszNwsqF7pJR8rqmWMyg3zDOvZIG5e2/5mkm+lE6vEzcW6bjn4kjSmjEW+J6ipLhtRpyX0lgst4NPDciC6AuKQpW12iH5L+7NU+JQKMkdz6xcbyfG6sAysMoINjJ65AcT4pp4se9Yg9P8otz9Ao0IoXsrWUm+J4cjUVkq3k5nF6akeMdgqgKeSWrIEp2eJcxv60Jbq13Ym3f26I5fGOOg+YT7oU1T1M/3Xc8q5a1rJN8Jnyc6f0QO+ObCLT+enlp55Ojc0nmrNxG+WfZ6IITR8k4lUTxKtSmJNu/M8U+Ysmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 MW4PR11MB7150.namprd11.prod.outlook.com (2603:10b6:303:213::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6086.26; Thu, 16 Feb 2023 21:07:36 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%6]) with mapi id 15.20.6111.013; Thu, 16 Feb 2023
 21:07:36 +0000
Date: Thu, 16 Feb 2023 13:07:25 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Y+6bDd0kDN18cvod@orsosgc001.jf.intel.com>
References: <20230215005419.2100887-1-umesh.nerlige.ramappa@intel.com>
 <20230215005419.2100887-10-umesh.nerlige.ramappa@intel.com>
 <87sff5msfg.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87sff5msfg.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BYAPR06CA0014.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::27) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|MW4PR11MB7150:EE_
X-MS-Office365-Filtering-Correlation-Id: 6128c2ad-a893-4554-8b82-08db1061d3e6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: G90YpDCYRgDKmQoH3mCw5lwdeV4YN5j5AVve5QS3xxADjtxLdfQDR4vMvOMSGPxoJSMksHxX43mtXB27vpQMcHN4hSh/YO8r/hqA3viJlzPUBILr93HaLVk6hZdr3fanGTG/8s9n7U6QSOziFtQjCLgUuckUau1s/9lXXpVXT1+JzGXX4xqda66bUhawiEhYmifbdPDki/xOOwdia0fBAKxr0/1bh5s9YS6v6PeqL5LhzNzY2ywVX1c+gCfYO8zaon2bG1HraFK+OguhxPZBxG9zjZL6AC/u4bqEhttf3Hmr8BlSpfIpuCoqoca2C7QIEjrt5E2Af8DeXLqlfW3eWiUbSKltW7VQYbvBhCfM3h5/2rS9qScKQ1K8gTRTGSiuVyFmgeEbKsICu+BTOZ0Yn5dCKDMSKF6dnfxF9O5sFNPA5KlV8mGu0786Ppm9xDr/x9MZ/aaTLzroEZuoB7cMUox+zaZ7oHedOX8ftqCkKcMqIGC8yMAfue5gpDldM+1aVvtri0GE2BThD/Q1HlFQGp2/spuiDF1SUF62HfS0QLI6aDV++zCW8uH0Bsx6Capm2pd+sG434WRkNO5YWC+1AEkx2/rXDrYjiOKosTWwuM/Kn4Iirnx41T6e0QPmPJJHCxoJ7B2t9mw1IBji3Fix0KEt6dgE01UJUCmukNC/Wqca/gbJUOOq/JjsQ3KHGgBQ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(396003)(376002)(136003)(39860400002)(366004)(451199018)(6666004)(6512007)(478600001)(38100700002)(26005)(186003)(6506007)(82960400001)(6486002)(66556008)(66946007)(66476007)(4326008)(8676002)(8936002)(316002)(4744005)(6862004)(5660300002)(6636002)(41300700001)(2906002)(86362001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TnIvY09WRjQyOVo1ZlJxQ2dCMEsvWnlTMEFIRXZIenVReVVyWmkzQmdYMkhj?=
 =?utf-8?B?VENLa1g3WVZ0QkU4MThVT052eUFtcE5EVXBJUTdPdXB4RExMcGtNSy9kYTBM?=
 =?utf-8?B?ZGJwcGl0N3pnRlRJWmtUbXRwTUdqWDhLNndRVmQ5YzJ4S0s5Y0FhU0RVbDV4?=
 =?utf-8?B?bTVtL0xzVVhnNjhFUytzVi9tcGFLejhOdU9zQWwrUmd0SjhmZkRZZjZZMXk0?=
 =?utf-8?B?YjJiK0VvVXlYTXdmRWVDR1lLTHNYY2QybWovb29oUURhVG9jTmVMSm5LeVAx?=
 =?utf-8?B?RWFDUy9QU29sLzRpRS9PR3NzM2xFcmFmMFAwRmphTGpYbm5vWnJkM0xkKzA1?=
 =?utf-8?B?VWhITjZVdnhibGhiajJlUFFmMUc3RHo2aFZDOEw5Ly9BQ1cxSnUwVHBUWUZB?=
 =?utf-8?B?bCtaSXprbXhMTFRsanQvWkpmNVdONmNmT1pQa01rcXo2dmRWOUVwYzUzUk9n?=
 =?utf-8?B?dWR6YUVMZ0pLQy9sYWtvTk1acXZzZjlUb3NDd3pVNFByelZYZFJwQUhuV1Nv?=
 =?utf-8?B?eFM5ZXl4Wml2L3BQcEhkem9iMitBRUJtM3NOYTBldnlxcElxekNYbEp4WVhr?=
 =?utf-8?B?SVFZRGdQeXlEV0FEQ1BRSUExY0NJQ0RxWSsvRm9mbnR0bjBWdUxydnZrZE1Q?=
 =?utf-8?B?V2g5S25vR3RpUWo3dlhvcG9qL29uVHZRRHd6YUJTNVFxbEEvNGsvb2lZVjM1?=
 =?utf-8?B?RlpMYmpINzR0bWpqQjNuWUtEZ1FOMFlGckpVMjFtWEhWbkpWeEdVQ01hS1Ex?=
 =?utf-8?B?eHBuelNkSUNhcWx4MG55YklRdHY4SXo4TG81NVVONGdjcjFMWFNjQXpidm0w?=
 =?utf-8?B?ck55ZGM0WXNYMXFUL09uWUJ3TEgyalBpL3BVRkxraDdNWGJ0eU9mVXVoajBT?=
 =?utf-8?B?YVhqVW9KVlJLS2FOQWE3Zm4vbVFvbWRPRm1iaGxaSmxDL0QxbS9XcnpCUFl6?=
 =?utf-8?B?Zk1mSHFFbG1Hc3pORVpFdUs0LzlCb25sV09sMjFjNGRzVkczSWJJa1dZUDFr?=
 =?utf-8?B?M3BHUG44M2ZMRlJYRmRYSkZmSWNicVZxOUZmUUx1UlpQaFl1S3U4OGsvZ3FI?=
 =?utf-8?B?dldLWUUyaEhpYzh2dnVRVnYyUGtMS21wWDZITVM3SVRZWVhBZXErZlZOS1RW?=
 =?utf-8?B?eGJTa3phS01sU3dnbVgyVzVwQ1BxR0FVbHYxanVYbnNBRnA4ZGxya1hzOGZm?=
 =?utf-8?B?VTg5WHhJdGFQWUk4VmsyQnhhd1I1MCtLWnBJK3lEN0JmSm04RE15dGV4U2E5?=
 =?utf-8?B?Uk5qdittYTdVcFN4QzdueGkzNE1XVnl2a2t1amF3NnNxbkQyNWpIU3FpZ3JW?=
 =?utf-8?B?dGI2MXRKK0NBQkV0Yy80L05lczNjd3VSc2pRY005dE5GaFF2MmFRemNSSjMz?=
 =?utf-8?B?V3RIeCtaTFo0elFzcjNWZEZyQkdJY3NLOGFsN3htUUMvTVpCejVVZGN0bThY?=
 =?utf-8?B?NGxTWGNzL3BWaVBuWGZNdUhHemJaTmFRZTFuTXE4czhidUZoQ2Y0NUoxYVZs?=
 =?utf-8?B?T3F3MjloWVdFUmdtNzM1U0VuVU5hUWtEOUVpWjZCaUtBdTFNRWVrNm5lQU1a?=
 =?utf-8?B?TzdNVld0YUtEemNCMTNBeWR3eUFMRno0VzdoMWVTakRyOFYxSm9JeGlZSkdB?=
 =?utf-8?B?UmtESzBCcC9MWWd0QzJIVjVqWmphblVmbk1SZWRJV1NEb21RU3B4aVlyYU15?=
 =?utf-8?B?bzZXc2ZyOWtlYWxiWUpvV1RQeGJ2VFY3TFphbFNZVDhTRnVWVlNWczJBSHNB?=
 =?utf-8?B?cTdkMjJxd0tIM3BYWExvNzkrWEV4UmlkQUVEbUZWRFJlbERpb0ZpQ3NDNUNF?=
 =?utf-8?B?UzdhbFRHQXFiQXV0MVE3b3ByekNwckxsTFc1NWU0MHh6bk92blVVSGgrVmtX?=
 =?utf-8?B?REVyQzg3K0ZVK2RxOTN4QnA3U1RUc002bStHclA5SkZqRW1VZGg5Rjl2Wkp1?=
 =?utf-8?B?K2tCczBZUStVLzlKUkMwTm9OOHRJVFErOS9Za3F1NHBVN0VBc2hDZHpNczhs?=
 =?utf-8?B?MG5Pb0dYR3IxSnFabC80L3h4cEtqMEs1WDBNZEJsRllWczVKWFM0V3VzVkp5?=
 =?utf-8?B?RmtBbDVsRG1HMDEwOUVtTlcxUnlvT01NUTZYODlrNVdpSldJQ2prbzMwT01u?=
 =?utf-8?B?dWQrSG8vWHUzWVhXQTQ1bjkzQXA5TUdxc01pSHExMkNJVzROdmJCYVA2M3M3?=
 =?utf-8?Q?x60cB5Ls8jvKUMXvYzpSjwc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6128c2ad-a893-4554-8b82-08db1061d3e6
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2023 21:07:35.8530 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IlahmVscXJeqLjmPqGsmowSzpxQEFuBW3pkblJHZrLsbcwtqK5mTlYh7jJPqTCsCeUlIpx/ym7T8STJMmgIaUp/PMTVs4+zvSpLt4Cyedjo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7150
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915/perf: Add support for OA media
 units
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
Cc: Lionel G Landwerlin <lionel.g.landwerlin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 16, 2023 at 09:27:47AM -0800, Dixit, Ashutosh wrote:
>On Tue, 14 Feb 2023 16:54:19 -0800, Umesh Nerlige Ramappa wrote:
>>
>> MTL introduces additional OA units dedicated to media use cases. Add
>> support for programming these OA units.
>
>This patch is several patches squashed into a single patch. Sorry for
>creating addition work but can we please split this up into smaller
>patches. Thanks.

I don't recall squashing this, it is still similar to internal repo.

I will however try to see if I can break it down into smaller functional 
pieces so that it is easier to review.

Thanks,
Umesh
