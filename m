Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ECF759F009
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 01:57:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 915C810F902;
	Tue, 23 Aug 2022 23:57:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D142D10F84A
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 23:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661299061; x=1692835061;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HUyU2+RAtsGSTXlyBI9p1LBiaaPhQD3tO6NtI+owk2k=;
 b=RyqyXHLlD1WjbKEeV2L3aE8dfSy8vtOFKagDoVCdx6fi2zQQszAwUjyd
 vn7D4urGvGu1qschuEJNTCbKWaZO5oTYqugllz5aQpwvIyljTSeMG10cO
 nR1pIik9zY9Yx5KSoCW5cAFRUQQOmni332Jj659n2v7F2zb1DJnvV2BkG
 fuheaWcB5c+iEZLyqOktstv7tu7taMANcR4CSpvug3qrjn1CdB0OjdVzc
 XEpF8YMkFCG6V1A0uw63Bqjl2kJIp8uXh1UNEKRgPaay4JR48mSIe1J1S
 WFVpTUK6RC0uppLNQK3dv8mYiQHk5qCs3FQDbVr7yC6vJuP3kS2I29/r5 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="274210741"
X-IronPort-AV: E=Sophos;i="5.93,259,1654585200"; d="scan'208";a="274210741"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 16:57:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,259,1654585200"; d="scan'208";a="670258136"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 23 Aug 2022 16:57:40 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 23 Aug 2022 16:57:38 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 23 Aug 2022 16:57:38 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 23 Aug 2022 16:57:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KwqRqKXWQAGMoP4wVsl7hzNIVToxRD6JA958d7zy6+erl22SS8xKV826UeKhQLLqC4fZoUAEu2jshzjCSTwFOWMdjP32fgZ+/mGh6TdWOfnGasRWvu9UxIySIeEXphHxfQIZTiizT+pLAJGfmQ53mOWVmFgQyoxEU2AtgXY9UILP9mqnaOj8vZj+jQJw03JDQz7wJu14K3I+p7z9yxn2m9G8CYdnl2cosgsci6NqbknLzvS9eKkxTM8TS2YHBhvF70SfEC7fLUh8D4EgdbwjLRYCbr5c8erWbj9NnFWzfOTo6Cf1v74XVb7Zx/A9UMqrLXWGRl6OUYbQ2yscp06Zwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hlYiPYJ9+HfpEOQjoo/0iC9/ZzVozbNT3SFR99GAjvY=;
 b=PFDxYzNcb1Jng58fkvV4q5WVs5fM757nZyolVDzqVj3pcaItSQRYCraG0DKG3FR/k4EveZ4aWL51nOgjMVzUetMN8J8tj9yEM2WXy/j/gzrdHRZQFbmOXxDh7WD3iurTj5VQP0PhM5t3SXjSCs3+L/UIaBNkXwXyQVcTbFtpLo1wj7n4c/HHGnvjrnp10LoSUSq5llDzOtdRrPXjyiSeCBop5++RyMXdrM9wSL4/GCJxDV4kSIP0KkBVTGhLbsuFiKCjZIw2fMwIbvJkdQ+nzQl8NR2OdvgsdvxNhmDUe+wnxOh0kAmrEUAkwDhzWSgF4Hj/vFinMJfSVHbX101HrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by DM4PR11MB6477.namprd11.prod.outlook.com (2603:10b6:8:88::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.22; Tue, 23 Aug
 2022 23:57:36 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::d078:34f1:873f:a40d]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::d078:34f1:873f:a40d%6]) with mapi id 15.20.5566.015; Tue, 23 Aug 2022
 23:57:36 +0000
Message-ID: <cf627642-c570-8d7e-071b-195e84242c4d@intel.com>
Date: Tue, 23 Aug 2022 16:57:34 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
Content-Language: en-GB
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <cover.1660910433.git.jani.nikula@intel.com>
 <b395ac4c909042f5daabf29959d8733993545aa2.1660910433.git.jani.nikula@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <b395ac4c909042f5daabf29959d8733993545aa2.1660910433.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR01CA0003.prod.exchangelabs.com (2603:10b6:a02:80::16)
 To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e92347cf-197b-4c51-6adc-08da856340d3
X-MS-TrafficTypeDiagnostic: DM4PR11MB6477:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4oQRKVcwlMfW9XeFvoPdQZ2HC5LK2CB9j5uw1w/Z2fxDMgFeUx5kE3gY3wLvXrHchXzbDOR64JcKgWeWGa8MY+FzuQIyjMm41OZ9ru9bWl5QpuNRn8BreKtK/y5/1XdewwhST5nknRukCpYQmxuAed2UBW4PSdWpzl/OJZivEgSi3ktD3h4QernVf8vocr2QkrHp5qAAugZxI3DeBKTyE7/2zCS+4F/SMiqXqgNjL8HzknduN3M7MPMka0uNHM8hghxtlyXW3H8JdPFQ3+imC2pCxA+cMJCLTH5FO0orWK6/W1CvXVB4D4Ngs+2Q+cvRPgRGugINW8szoepaQw7RG/24CJoVcUojTKCM8f28CgP7fsFrwjuAMm5q8Q4TJI9tv6DDFlToPYexznJR4xeQ2UoEuSbOtqgh4uaALa1sPgv7Er32DtXFr1IsoXqWM68xy9UV/atT2ps25eXfdfL3pGuK4wfRti7YYyOcFFI26iBiQ3qT9ZHzopGUHGUeXQleqBi1kWBQEdRmyw0p2DqcsjfYj2Ex0eV/LUm3sWIUo2goEhg9+Wdb34Q5t83cnnEwj/pk8Ea74BWz7xzJDa4y9TE8pUqx6TtjwfXZHINhfrFaI8fMsGp5RRzVbLgBw2vQnVdVozVNo10/4Z34pC7/J5/S/2SAHI8tUxYpRh1NLStzcQ/OiNYve9k3qhxbkP9eQDhlXZLUl1Ot5SJrSnmrHmuFJYyOm99x+owD3496PaPf6apZvpSd834Es9eMOwJOH1QfSE9Yj9XapglAhwn0SCX9JaxMo4WpNKpyBrIlBgk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(136003)(346002)(366004)(396003)(39860400002)(4326008)(66556008)(38100700002)(316002)(8676002)(66946007)(8936002)(5660300002)(2906002)(86362001)(31696002)(36756003)(66476007)(82960400001)(478600001)(41300700001)(6506007)(53546011)(6486002)(186003)(31686004)(6512007)(26005)(83380400001)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RlJ6MTNrVXJ6OUs1clVYbkpYTmRHcTY3dFhJOHNPQXNIdFR5eE9iN3hiM1Ur?=
 =?utf-8?B?blhhL3RGTTF2ZTAwUXdFdmtiY1huVHhUZ2hzQ3VkdExPRDBxZ1BUdkZhNEs1?=
 =?utf-8?B?OEY4K1d5KzF5YldHUVRGVHdXbG5zZjNxWXZuUndRanZvTXMyOW1lZ0drV045?=
 =?utf-8?B?ZW5SSEFTWmVCSU5TZEpuZ3NHTWVsWFpsaFR2T29Od2pObDFIL3hPYllXVXZX?=
 =?utf-8?B?YTBIa05TZ3U3YS9oZm1UQUJTVjZqdWtwZXBFUnJhMEhOeksvWjhhamc0R2tu?=
 =?utf-8?B?RjN4anFtbWM4aWVrQ25Nd0JPZTFXWXJDSDEzQmhuRWs4em91SURPYTQ0MmQ2?=
 =?utf-8?B?blBPT2pZZnpxSjRveGZnd2RjOWVVbEM4YmpDNGpkcWhrMTJRdy96YWtzSmti?=
 =?utf-8?B?cHJCU1JOcUt2YUx5YWtYTVQ5ZDkveGpDY1VJTTJTOFEwS0lqRHFjOEVEbVdx?=
 =?utf-8?B?VW95d05aWFpsaU5jQWd3SlFnQytZNkxLd21qSlhCNHVPc25HY09Ob3YvRXpx?=
 =?utf-8?B?Zm9GYUw1OW9zM0FJbjNkSUpzZjhhK3UvdDJvTUFjRlRrcFhnV3RPa1hLMFZE?=
 =?utf-8?B?WWsvV0txNmhlVXVFVTlISGpyZXBSZkh1ZlZ1ZE1OYW9kanRwMlFiM01FOXVi?=
 =?utf-8?B?QXF2aVV5YU1wQ1VTN3dJRGhUd0xxMW90MVdnU3JKditkRms5a0FHcm44YlMr?=
 =?utf-8?B?K1BVNFhRdWphRWxjVGxtbFR6NWtJNHlkUnVSVlBEVHBza0JLQlkzNU1oYUo3?=
 =?utf-8?B?OWxIeGIrL3Nkczc4RlhpN1FDZmd5NytRMkYrUlpsbE9Jd1I2VUV0Z3lvT3Y3?=
 =?utf-8?B?T2xldVd5dTY3VjFnVmEvdzdzZVZCL0U2bkVFMUpwQTZWcFdMSGtYUVo5NGRl?=
 =?utf-8?B?UWUvMDErR3Q3UjVmdm9sSkUrVHFIL1VCdVlDZlkzYmpqQzFwRzFHUDl5UDBw?=
 =?utf-8?B?cEFsemkzZFBwQkpkRllxMTRzbGVmMHZVZWJ2VWhBc3MwZUR0d0VNdHRsNVli?=
 =?utf-8?B?UUpiVmFNT3U3WGp5QXFmVmZrNmdEOGJsSmFnaG4vYnVqdit3R1ErNnRuaVVr?=
 =?utf-8?B?TVNwditnRXBxLzZ2dnF6Z05ESklDVkhXM1IxWjEwYmtJc252d2J1bG5idTV5?=
 =?utf-8?B?bTZSSGVYMGtwdTA0bklXRWtBNjQ0ck1GRXpmMExPaTRNQzVLandRQ0lUODVh?=
 =?utf-8?B?WGw2aG1OMGdPWnlZSUZ1N1BnYTJqMEcyaEpCSExHYTBldFhrTFcwUHBHbWxW?=
 =?utf-8?B?Y0ZYbTQ3TGM1Z01sclB2cE50VU13QjczSVhCUzVoTVl1emZaVW5LRy8zTW5x?=
 =?utf-8?B?UTI5czltR3llMDJ2dkNDRnVjT0FGYTRZMDlzVnUvSW56V21pVEtmU3FpZFJw?=
 =?utf-8?B?UUt1ZlZrK1FqWUVxZ0ZzaGp6WlVVTDFuSUdZckFqTFNOcUtBTm5pL2JWTjA0?=
 =?utf-8?B?VzRlbUVPRVAvT2ZjblZVZTU0cHFibkhYVjh5bStabnlheWlNWXBqQ2syR1p4?=
 =?utf-8?B?dmNraXM1Z25DRzlkbHR2aStrTzM0TitiVmR3bGw1NzNGdVJFb2ZjQjB2NFpM?=
 =?utf-8?B?WVA5bzJZSGc3Zkl3cmJlQ1FrSkZvUHFmdytBOCtITTZ2M2RSLzdnc3dHZEdu?=
 =?utf-8?B?QmxPT3g5LzRUVWQ0cmpSbG5wM3FPWVlESkdEaGMxemlDRzRVeG8yQldCNFNJ?=
 =?utf-8?B?dmo0TVpiOGxtbXdVeU1LUGZVaDdqQjZkWFNLNGl4VlBsT3FVb0Fkb3dCY1U1?=
 =?utf-8?B?TzBCa3FYTEJSU2VOa3VDUzFKZEdxSFAzR21XbEpOZHBvTVg2ZHRGcEoyVGJO?=
 =?utf-8?B?aUp5eWxRVzRnRVdYdUZtZnhsaGYrMWFWUVRBTiszU1ZnQzQzNVlGUTJKSDVm?=
 =?utf-8?B?SmJ0VFI3MFF5NWczZFZNVS9qbDAvd3Ixb0lTbUk1QW5zZXBQdlp3aW5HS0lR?=
 =?utf-8?B?dE1lNmdsVGFjY3BObnczNG1RMzI2eHc4d29KUXZiaGxXVXlyZGlXSlpoQll0?=
 =?utf-8?B?TnVmQ0s4aUh2WDdFaDRoS0cwTmVCU3Nyakk2T1A5OVZnREs3OTFCS0drV1h1?=
 =?utf-8?B?eEZRVXF0eUtGWXZPME92bksxVTNrclZOUktzZENKZlN1aXgreHRRRyticytP?=
 =?utf-8?B?Qkcrdys1RWFqNmlTalVoem02RjlsNGV4ZkVlTGViZUtVNDRPbExzZ2JVNGl3?=
 =?utf-8?B?L3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e92347cf-197b-4c51-6adc-08da856340d3
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2022 23:57:36.3450 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r1cguJHWQua3er5T5zjwH0YVp9/N2GH5TNV5Js7wwlmTGk5sJFon+dkcYiThr16BCVYizthXgSUk70DtMQwrYtR71NNZ5Hp13od3z1+Jko8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6477
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 01/14] drm/i915/guc: remove runtime info
 printing from time stamp logging
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 8/19/2022 05:02, Jani Nikula wrote:
> Commit 368d179adbac ("drm/i915/guc: Add GuC <-> kernel time stamp
> translation information") added intel_device_info_print_runtime() in the
> time info dump for no obvious reason or explanation in the commit
> message. It only logs the rawclk freq. Remove it.
>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc.c | 2 --
>   1 file changed, 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index 01f2705cb94a..24451d000a6a 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -365,8 +365,6 @@ void intel_guc_dump_time_info(struct intel_guc *guc, struct drm_printer *p)
>   	u32 stamp = 0;
>   	u64 ktime;
>   
> -	intel_device_info_print_runtime(RUNTIME_INFO(gt->i915), p);
> -
>   	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
>   		stamp = intel_uncore_read(gt->uncore, GUCPMTIMESTAMP);
>   	ktime = ktime_get_boottime_ns();

