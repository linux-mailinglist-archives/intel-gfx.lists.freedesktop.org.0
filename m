Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7327C6E727D
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 07:00:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A892210E08A;
	Wed, 19 Apr 2023 05:00:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 021DC10E08A
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 04:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681880400; x=1713416400;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=swdSiJ0nfqKhOObNY4RhweEVeVNABKNqdheOJP6k60s=;
 b=DG8EQYGn6EQPpCxuMD4cwHsFI9xi5M9B1M5/Tl9M8vLnLofgtkS1CsFt
 aZcBVIlTwXUV9mDhk5oYt1lqk03e/LcTU7BldgUZyZmeOz01Abm4JPFep
 X9x0im18ITT4vDZCWPWLIh9W8UE0wqL+QzPn6svhUCb+K/9wo/T6ipBnP
 9Gn6WWdmhduJUeoOxLAblwjxA6RVSIUEHAX0OnigD7s7g4B+dydtjhJds
 8rQe6inMfGCYSSYpRQYMHByy4EMYRXqZiobl/OzO3onW89FoHE8fM2wbC
 gH1uth0furoMWQptz8nyjWDCL/nyAToio1ho0A4/54eJDGsanrLysMEor w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="329527129"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="329527129"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 21:59:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="755950912"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="755950912"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 18 Apr 2023 21:59:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 18 Apr 2023 21:59:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 18 Apr 2023 21:59:58 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 18 Apr 2023 21:59:58 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 18 Apr 2023 21:59:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OlNjEn7Rh7b/mutX7qVLeKlQr/8evOtwHJIYelGo5xPc00kf6ohh+aaiHnSIoG44I3MngX4shHQdyXqZLO4NU/5jUZBRlnx9pcwuu3FZ7g9sr75MWfWpYsGYRMPqW+GXeCcF5WUpOkY81haIMgh7YxY+mWAQOhdevSXy2KS75yUovN8VwQbWM/Cn3TYPVwoEooD81eFv/HZ8ZlNWkmjrws3nhgH8Qij8/BQ3OAhnTPh0FpRRkp8jIHfXh2MnD28YLHgzPj/UUZoWgEd2hAEZ6s8TRQ7GSTcQodOTWYNy/FygBh8SXINNDHV290upFYeLU4vIggWxifr38NLi78ZvDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t8kZgqoou86MYYpfuzC+LxDOM6cW+iKZmxvnzi2lhZ0=;
 b=iTNpD/7EIVTmZplzLIDsrmDxbh9YCb91lAPBJQ60NmUEfOOgO5g6mEVWH8gU294+kJu7iux5FzgcQ5g9kSwlPAlmGMivRxL8u43uDEl8VAhfhAluqEQnp/Z/EQWSWv794yPClDHK7LKM1d9dPEaNPub6d+cMuio6eh7RL1vQGjkJI21LRTca9eQDr2PV4aPDIE3AqGkDqOMTicMbbhp5AZz4PyYHeb2xPLrBCZ4xFqmWEkXwJA/LQQcnyiuySPvqP1sBN1m11ZpeEzKg6mTBm2qd6TulAOAI/UT803+rlFSwMyvYuT49jSiZRBENmPDtXqkCZX0/89JsIlBpQhhuXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB7171.namprd11.prod.outlook.com (2603:10b6:930:92::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Wed, 19 Apr
 2023 04:59:56 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%8]) with mapi id 15.20.6298.045; Wed, 19 Apr 2023
 04:59:56 +0000
Message-ID: <347b307a-9f35-81a9-aba7-b2e425d9b28a@intel.com>
Date: Wed, 19 Apr 2023 10:29:46 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: Manasi Navare <navaremanasi@chromium.org>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230411173408.1945921-1-navaremanasi@chromium.org>
 <ZDWcDhmJyMhQpQBa@intel.com>
 <CAE72mNkzD4fpXeTVyFaP+xQqDbSFm+yiQ8sBvGoD+beequfeaQ@mail.gmail.com>
 <ZDZAHj4PPaDD9HHj@intel.com>
 <CAE72mNmd2wAdLFQFLgKeDazyn+Qogd1h4N75hfJrtBsOndB2Vg@mail.gmail.com>
 <CAE72mNmy9Lm2vZz9S1q18-yAGWXsBkjhFkYDzoHZFQY6LqvOyw@mail.gmail.com>
 <ZD6RKS972byO+Fpa@intel.com> <fc47b7d8-0a93-716d-337b-405c601f2a6d@intel.com>
 <ZD6vHkhvyqzHra2X@intel.com>
 <CAE72mNmHzOthzY_EURJW6BQYXAFmqmKyYes=ccTefuo1Y0VJ7Q@mail.gmail.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <CAE72mNmHzOthzY_EURJW6BQYXAFmqmKyYes=ccTefuo1Y0VJ7Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0178.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:26::33) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB7171:EE_
X-MS-Office365-Filtering-Correlation-Id: 6473afd4-4d18-48a9-e3e0-08db4092eb36
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ih4nO2uM0oBQOt2LXB3Wt9SsZHVcFw+ZWeP0TB/ypgk6IzeICapl1HMfPf4OdLALqcJ9ncmHN2duVg4j/SGPa8qv5BWNozDyvxJHo5z+VJ4hhl0F1zWnRKxo1rRRUF/7zLD6ZflPgD7fV3VhKiyhUAcqof1PNBr4qMlf+qgYbySks0zEw9m857VVXCGONMsiKsEHmihdGLMbH15fZkvozlhTQe/5bJDcSTJb95enHQE3UHewjYkaRExqZXpKf5oxdkOC33PI6QW14wpoMrf/BRvchbb/VKtqD1A3etaLxW3MlQzWpMOpeUT6h4puMz2Ubc3mH+4ikbakf6rAFY/a6G7oeCPOVmcvAQVep/S14Owyskpg9Ziy1njbgW5Gglf+oqICT1Ipv//MId0OPqQFHb4EmXTi2L/EEQUGTeaE++o9lAS9LSXp/2SlosrupZmrxoCIVnaUgVLlIHEV49QBjhfIeEj+xtOroWAKqoSlUvetCtloY5GXBxncT4zBr7cXEqqwDqzx1r7XZrEnQRLj+105zVayj1HWdEE+P/8UvX5u44pYKKW8Cp0GBet2yu8gSs/n4IUyZXrTpBBVeBcL6Gg7nvL3n9r5nakRil/Uuoc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(376002)(346002)(39860400002)(396003)(451199021)(4326008)(316002)(38100700002)(82960400001)(66946007)(66556008)(66476007)(86362001)(5660300002)(66574015)(2616005)(6666004)(31686004)(36756003)(31696002)(6486002)(966005)(41300700001)(55236004)(53546011)(6506007)(26005)(6512007)(186003)(2906002)(8936002)(83380400001)(8676002)(478600001)(110136005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d2g1UWkvT3J2ZlpDSzB4OHJWWDcxeTg4TXJTYlFUZVA2T3AzL1pkdjNyUXo5?=
 =?utf-8?B?SWZ3NjRCcGFnNkNIS0szdWpXdnVLM3B3NDJXMTJpajBjdkJ3enpXTytYTG9S?=
 =?utf-8?B?L1N1M3dOYjJZc01YZk9VWDN4T0xtQnB1ZUErMkNtRnFhUmNBc214RzdFZ1Bt?=
 =?utf-8?B?U0VMVjVMVHBqd1d6T2xoWnBtYUxObHVVWWxEMXc2RXhLUkk4K2pwdURFcE5G?=
 =?utf-8?B?OGQ2bk45eXlGc0FUL3hjTjNxMWZMTFBlRStIZU91Uk54Y3dpUHZVb2dZRkYx?=
 =?utf-8?B?d21peUU1U1Jva3F1cTFHdU5OMVNMSXJvYXhxY2RjaDc2YU82cHYvdGhvR1Fx?=
 =?utf-8?B?L3F1bHo5eWlqcjdvZzhtRXdrZG5oZjFxb1hOMElyZHJ6eWtDeU1CMW1uR1VX?=
 =?utf-8?B?dlZGeEp1QlRpMDRRR1RpUzBtOFE1RlRzUlVndllURC9TaWFMYWV4czQxT3Bw?=
 =?utf-8?B?dGd4MDVMT1U4b1ZmaFBTdm56WVNjYVV0T2xxWHA5WnpIS2ttaElPMEMzSDZQ?=
 =?utf-8?B?Z1JrRndJT1kvWnB1cnc4R2wrNCt4RHR0bjQvd0swQm9ZYVFPQ0VGRTloTmJH?=
 =?utf-8?B?cW52Wk1IZXllMDNjWVB0KzIrSDE0d0JweUpFNnlkMlBkRDgzdmwyR3pwT3pl?=
 =?utf-8?B?WWx4aWY5K0Q4N25TMDNPTkpReUlHM0ZFVHA3NmFMRXBYd1FBdEdVUTdzakpJ?=
 =?utf-8?B?RkRoV0VnUVdObW5PZmNaSE41MjNLL0FIKzJpVG1EYjZwa3FFRTlMOXgwY3hs?=
 =?utf-8?B?WUxDblZUc0NBOHdiVzFXKzJyUFUxdmRKQkJlY1F1L2g3TitobnkzQ1BGV3p5?=
 =?utf-8?B?ODFSVnR2Q2kvaUV5eVlnVzFXRmQ0VTBybEhVU1llZnJ0VXNZUCtxUmx5TTdE?=
 =?utf-8?B?U24zbWVJOHZqc1c2UnNWekFKY01YZzRMNGFkQ0U2dTJIQ2RFQWZZbGRPeHBW?=
 =?utf-8?B?b2ZGUE5vamVBelJzZ1Jya2MvbkxwYlgyR05wR213bVFUS3FzRExlOXJPaE5W?=
 =?utf-8?B?S3RCbkhFYUNROC8wQWdmUHppYnRlTzA2ZmJiRHZwYzdHRDF5WTdvUXFPNEk1?=
 =?utf-8?B?aDh1UTVPeTNwZUxicmNRU1hqU0R2eWMzVVJnaFVxanZ2bDdFNXJrZkw2M1RV?=
 =?utf-8?B?bjZ2K3FwSGc2TkFCYmxlb1NvcGt4NVJQNGxacGhOK3FtOENvMksyQjVXQkdW?=
 =?utf-8?B?RFNKbG1mWm0zWCtDaERxdmtLaG4xTHBzanpoc2UrT3hSNi9HczliWXFyeTg3?=
 =?utf-8?B?YUJ0dkgzNmdhakRnS21LdldKaUJHVm10eFhSRms2MWdqWTRlbTd2RHVNaGJj?=
 =?utf-8?B?WWF4MXNiUHJIY1JOWmNCbTJtUktDQUhTTzBNSGpEOVZ5K1laa29xTXVSVGRX?=
 =?utf-8?B?Y1FXUnlMUkNXam8wQUJqNWdnNWxwa3hISUJsb3BieThYL2hMMFhDdUJDRTJK?=
 =?utf-8?B?MElzL3RzVGtzdkRrSXJVTDE1WXhmMnl6R0ZXUzM5dHJiWk5oSlJWaWw3Q2ho?=
 =?utf-8?B?V2FHeWY0MWRMQlMxNC9hcDdick9BRWl2ZlREdDBDdjIwL0hFYnFNd0hKUjdW?=
 =?utf-8?B?N0h4VDU0YnBxb2VmZXVGcjBDYW53ZVZaWHg3ZDhPU3gzanhqSEpwSWdxWHg0?=
 =?utf-8?B?SE9RL3NvYlhhWmh5VzBqeGN0Wk9SSDRua25obGRwZ3pZZlNzSUtncys5U04x?=
 =?utf-8?B?d1JGcHN2QUdqQitxRXNwQnlueU5NaUU0NFgveDc2L2dMbjVvVVBKNldTTlFF?=
 =?utf-8?B?MzgrbUp4NnI5N0VZREM0Y011aEdwK0NYQjBRZUJHZGNtODdOTDlqc1l2azRw?=
 =?utf-8?B?VmVXSys3bG1qa1I3bGZZS0pPSWt5NllZWHJ0cERHcDZ5WFFuTWo2cTZSUmpK?=
 =?utf-8?B?UUdmZityM0VxaVV4ZmFEeVdBTWd5aFBnOU9pNWxQbEdvOVNCSFNWaHg0endK?=
 =?utf-8?B?TXIyY3lOYXVRWmhHZkNEMjNvaG5DZTZjTG9ucVAwaHBTODc2c0FqQ29EeHBE?=
 =?utf-8?B?dlZVbVpCaFMzNDVnVHRpR21hd2taZVZScVFnOXdkODdVSklFdVh5elorYlE5?=
 =?utf-8?B?SUVFa1RzTWVXb1ZSK05JVmMxVUJ3NTJ1VFFrOTNudXEvRW5mRlFtK21jUWVX?=
 =?utf-8?B?TCtGK2Z4UjdUdCtLbVhwclExa296MzhwVWYzNlVnMkE0VWd4OUhNK0g0ZTZm?=
 =?utf-8?B?enc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6473afd4-4d18-48a9-e3e0-08db4092eb36
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2023 04:59:56.3784 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hdreaM4X2hi2UA5SdkrPAJNBeXnOH2WhQIqvhxdAX9RWh9fZDVygPXemwPJgKB2Nv4hjAYW+t559Vu7GBeDsAbvD9+xqwDg4Z1Gu3jpg1qE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7171
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Return correct err code
 for bpc < 0
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


On 4/19/2023 4:12 AM, Manasi Navare wrote:
> Hi Ville and Ankit,
>
> I actually do not think this is a problem with the DSC logic, but it
> is a problem with the intel_dp_link_compute_config() where we should
> do something if max_bpp is 0 instead of just returning a -EINVAL
> directly.
> My question here:
> - In case of PCON, yuv format, is it a valid case to have max bpp set to 0?
> - This is where I am seeing it as set to 0
> - If it isnt then the problem is probably where it computes max bpp
> for hdmi case for yuv format

I got your point. if limits.max_bpp is set to 0 (as given by 
intel_dp_max_bpp)

and we cannot discard it as mentioned by Ville, then even with DSC we 
cant do anything.

In such a case perhaps it makes sense to check if limit.max_bpp is 0 and 
return -EINVAL from intel_dp_compute_link_config.

Regards,

Ankit

>
> Manasi
>
> On Tue, Apr 18, 2023 at 7:54 AM Ville Syrjälä
> <ville.syrjala@linux.intel.com> wrote:
>> On Tue, Apr 18, 2023 at 08:09:16PM +0530, Nautiyal, Ankit K wrote:
>>> On 4/18/2023 6:16 PM, Ville Syrjälä wrote:
>>>> On Mon, Apr 17, 2023 at 03:48:12PM -0700, Manasi Navare wrote:
>>>>> Hi Ville,
>>>>>
>>>>> Could you suggest how to handle the intel_dp_link_compute_config()
>>>>> when the max_bpp is returned as 0, currently
>>>>> it just exits the loop and returns a -EINVAL and this triggers the DSC path.
>>>>> While we should be completely failing the modeset and encoder_config
>>>>> in this case instead of trying DSC, correct?
>>>> The DSC path needs to handle the bpp limits correctly:
>>>> 1. Take the baseline limits already computed
>>>> 2. Further restrict them based on sink/source DSC capabilities/etc.
>>>> 3. Make sure the uncompressed bpp value chosen is between the min/max
>>> I have some older patch to try similar thing [1]. We try to iterate over
>>> bpc to find pipe_bpp in the limits, then try to find out compressed_bpp.
>>>
>>> But if intel_dp_max_bpp returns 0, limits.max_bpp is set to 0, so we
>>> discard this for dsc case and re-calculate the limits.max_bpp?
>> You shouldn't discard anything. DSC should take the already computed
>> limits and potentially just shrink them further based on DSC specific
>> constraints.
>>
>> Or is there some weird case where DSC would allow lower/higher bpp
>> than what our uncompressed bpp limits declare?
>>
>>>
>>> [1] https://patchwork.freedesktop.org/patch/519346/?series=111391&rev=3
>>>
>>>>> Manasi
>>>>>
>>>>> On Thu, Apr 13, 2023 at 8:23 AM Manasi Navare <navaremanasi@chromium.org> wrote:
>>>>>> On Tue, Apr 11, 2023 at 10:22 PM Ville Syrjälä
>>>>>> <ville.syrjala@linux.intel.com> wrote:
>>>>>>> On Tue, Apr 11, 2023 at 05:07:01PM -0700, Manasi Navare wrote:
>>>>>>>> On Tue, Apr 11, 2023 at 10:42 AM Ville Syrjälä
>>>>>>>> <ville.syrjala@linux.intel.com> wrote:
>>>>>>>>> On Tue, Apr 11, 2023 at 05:34:08PM +0000, Manasi Navare wrote:
>>>>>>>>>> In the function intel_dp_max_bpp(), currently if bpc < 0 in case of error,
>>>>>>>>>> we return 0 instead of returning an err code of -EINVAL.
>>>>>>>>>> This throws off the logic in the calling function.
>>>>>>>>> What logic? The caller doesn't expect to get an error.
>>>>>>>> If this returns a 0, we end up using limits.max_bpp = 0 and in
>>>>>>>> intel_dp_compute_link_config_wide(),
>>>>>>>> since max_bpp is 0, it exits this for loop:
>>>>>>>>
>>>>>>>> for (bpp = limits->max_bpp; bpp >= limits->min_bpp; bpp -= 2 * 3) and returns
>>>>>>>> -EINVAL which then wrongly goes to enable DSC even when link BW is
>>>>>>>> sufficient without DSC.
>>>>>>> And how woud max_bpp<0 prevent that?
>>>>>>>
>>>>>>> The real problem seems to be that the DSC code totally
>>>>>>> ignores bpp limits.
>>>>>> Hi Ville,
>>>>>>
>>>>>> So I see a few concerns/questions:
>>>>>> - Why is the Max bpp value 0 in intel_dp_max_bpp, is that a valid case
>>>>>> and how should our link configurations handle that case when max_bpp
>>>>>> is 0?
>>>>>> - This is happening in a bug I am looking at with HDMI PCON, @Ankit
>>>>>> Nautiyal  have we ever seen something similar where max_bpp for HDMi
>>>>>> PCON
>>>>>> is returned 0?
>>>>>> - I dont think its a problem with DSC code, but rather
>>>>>> intel_dp_compute_link_config() outer for loop where we vary
>>>>>> from max_bpp to min_bpp and see if any bpp works with available link
>>>>>> bw, how should we handle this when max_bpp = 0 if you are saying thats
>>>>>> a valid case?
>>>>>> - In this patch if I return -EINVAL instead of 0, then atleast the
>>>>>> entire encoder_config will fail and that will fail the modeset, since
>>>>>> it assumes max_bpp cannot be 0
>>>>>>
>>>>>> Could you please help answer above concerns and how to handle max bpp
>>>>>> = 0 case if that is valid? This patch is simply making that invalid
>>>>>> resulting into modeset failure
>>>>>>
>>>>>> Manasi
>>>>>>> --
>>>>>>> Ville Syrjälä
>>>>>>> Intel
>> --
>> Ville Syrjälä
>> Intel
