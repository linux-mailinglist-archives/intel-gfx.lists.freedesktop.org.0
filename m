Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8D04B0D99
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 13:34:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5F1D10E37F;
	Thu, 10 Feb 2022 12:34:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D22F410E37F
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 12:34:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644496468; x=1676032468;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1nAQOAM55ghHLUboNFnCwjV2Fy5I8bmDPYTduv/es/U=;
 b=V6QiE89naPpQPUZ844yfoqmgMSYbtqkEqn1IZgxeVqT/tMa8RUjzrfqw
 U6zvT2HUDXhUhLsgboy43idgBHJETV9rfeT/24K/BvAUPaFXKKLSqIJyv
 7dv4FDGrHqWry/7xWpwmyJVjtmpgY9cdr0QN6QRw4eTX5kMklJGClIJTT
 pvp0sdu5sNcKHrfGzEBz97wMaNX7I061LeaQLmfVSVfsP+GDeeSs61wU8
 ZiYmhJ+gP9MXmtwOPp8dWQYOMlmVuVuLtl9esnqsE7lPklpW+wzcODLvF
 X/Hoxwc224dK1F8wWc9yoCPYhHgGA2+n2c1sFwPDDy9/ULM3Yomybn+Q/ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="249429101"
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="249429101"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 04:34:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="622664513"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Feb 2022 04:34:28 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 10 Feb 2022 04:34:27 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 10 Feb 2022 04:34:27 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 10 Feb 2022 04:34:27 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 10 Feb 2022 04:34:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bHYdwfO2VGee8+rLZpTPhg+0xizQYStZKlnulI7b3gePwk1xObJquRivRDyIyx0hzEM2SWofkf60dZH8F5yBcN/jb1SkPQIpMLFKhFJr13pAD2KsMbTZroD92yOZyk5KbV+Px4+UsTLs4Ar4T5W13JowRSz880Pkiq5TMXQrHc2YbPwLE15tj4N+ba98mNO03CDL47uAdzQIoIwXrSZPBZHXCpBe3vB8taQrDMPU2d6WcNYQavyoHWjRF59jy3Tl3MkSOuSzqYIRgmmQBlc2GAieeEnAofu+JFexrOyUo7YEbcwQs4+cnuxdK54cfDidngLfJ76uya4/Us76raaedg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cjC0ZghLh1lwU/aWcF+p8eVmcMXjIWNEc47Cn/xIwRo=;
 b=XW2rZRj6/1JkTMsRQ1wQyOzxM3Lmn90fH240mUDsBLkR4LqKYAKCIK4KzmbSCGsThOvaj29ltSUWls6XQX31JeIbDAxlBEw7pMGqT7znm9YSMVb6Mund2mr5ukQMzCv4HsYl0/T6cBiOEERo9iDG8Yf0bXHPVfs+LDQRf204XdNMp2yLbvXvHaGlz12uC5CQF83tAPCNQklE0LCqzx2pWgNHSdexyxRu3IQDStDwFBzmiyU5caXmEs58mwDCGycfESHPPXGVTGi30v3FEPRqx57gZmeRbuqhsJ3b/rlUWD49QZ99m0+LOvJKD8StxzOA9n7+FK0mER++pw2Nk9/Baw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL0PR11MB2994.namprd11.prod.outlook.com (2603:10b6:208:78::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.17; Thu, 10 Feb
 2022 12:34:23 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::8989:c0bd:dd1f:a432]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::8989:c0bd:dd1f:a432%4]) with mapi id 15.20.4951.019; Thu, 10 Feb 2022
 12:34:23 +0000
Message-ID: <3f37846d-3982-cf11-66ee-082f3a05632f@intel.com>
Date: Thu, 10 Feb 2022 18:04:15 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.5.0
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
 <20211015133921.4609-9-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20211015133921.4609-9-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BMXPR01CA0023.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:d::33) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f8ab7f1b-fe11-4529-3dea-08d9ec91ab01
X-MS-TrafficTypeDiagnostic: BL0PR11MB2994:EE_
X-Microsoft-Antispam-PRVS: <BL0PR11MB29947EB9E406EA95ECE3191ACE2F9@BL0PR11MB2994.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: r1MhWcllEBnT9JBHjTH/3oquwtq4LjkanuF3vMigoyayuMoye4C200sKeG58FNSUXbk6RLdG9V3uACU3kgTOKI1P1DjVFquumx2rR7911bRLgt55i453ydEZJHetRL0PJweU8Prqyfz0mp8Ox9gXGV6TRRDqtMVS1Bh8NZ4UtkfowuKdvl6TKYeb0bC9xA3TKv2/QAj6CpgYDUIamDJj7suxiZxf6ksL5vP5KmD+G4qoWl+Zd1ylXQBFZObcS9F97L3Foyv0cGqwpojAZGA9y11vPfyABZN19EeXu3j3eqtjAcNzUON3vbsP7eZaEkOQuhxEufTSegYMbv/RXOGI0h8fU/+9+CQXK/mlA6TjRDeMgRKhZSd+Pe2++Fl/YojGa8KItY2Pg3XY76gcQiwANgjrfJDijDdEW1EpyfJTOfYYNm/ToU9oFbfCTDu9VcrwDQOztWqLHfFxxkyKKwq9ylOifrBsTWvA8wN9iZM7EpRKbu43pp0GQZtz3uDfbTftR8JepHvqkgHP/qrBzhiSzX4V90TNTel+XXsUEI/TU0TQ6PupcTa+STy242Bb4ZToiMhitDsJ1mkCnlYlO+MVx6h967YZcly7AyYTb0sEZVVbx8TS/ypyqaTfA3pj317vuOTuh+bq5mCL1ZMPzXkLZAnsQ6fXhfNA7I8jZpEH8ZEJzwczTse4ARRTsJIfj4xtJbOUGKqOxTC61m4D2wekO9RZNzzRcMZAc7HHEVqZ3Fc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(31686004)(5660300002)(53546011)(508600001)(82960400001)(31696002)(86362001)(55236004)(6486002)(6506007)(6666004)(6512007)(8936002)(8676002)(2906002)(66476007)(66946007)(38100700002)(316002)(83380400001)(36756003)(2616005)(66556008)(26005)(186003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R20zWUJ0UHlmQkFzYXFvUzRiZitWUmZuRFFlU212ZnB6UzUwNnBvMW41L0E3?=
 =?utf-8?B?THZCQ1Y4U20rWGlsQjVzZWVUWjlSbVF4ckdKWExyUnR4d0VoRHZUb3UwZXJ5?=
 =?utf-8?B?QkxOVTNWR0pzcUMvZ0pPeHlzMmgyVjVrOWtTWkFlNTlWMEZTZHVXMFRYbW5i?=
 =?utf-8?B?bVdscVlXbmJFelJVeGdKZG5pZHZ1UWkzR0lkL0xXMGphdkUwSEM2U05CKzNS?=
 =?utf-8?B?cVptd09QYnlXb29HdmhieGx0bjdCQWRNYnVaaEhiSEg1MGxUbFBvemxscVcz?=
 =?utf-8?B?SzhaU3UvSnBIenNTR3hwZFk1Z2NML0VpcFVLS2YxK2VZaS9TWUU1UnN6eEJL?=
 =?utf-8?B?Y0NwZmhFZnp1SzZGQW9iaVJmYjdTay9BcGFzS2dEM3BiTi9TdkNGeEtweEIz?=
 =?utf-8?B?YytKZlVTT1RzcWZrVGxUWUJzWWpEeXVjRnFIblVVVExibmlFUXpUSjNCTGtD?=
 =?utf-8?B?Q0VhV2RpM1VXajhFMCtVVzZwRWtySmtZbW80RTZhaDBieUlLd2tFYkpGY3Y2?=
 =?utf-8?B?SzJVbUwrcWRHS3V6RmEyL3NsZFUvY3JjZWhjeGxaZjhnRTF3UGp3SG1DS2d5?=
 =?utf-8?B?MmFxVU5Id3Zhang1SHI1YlYwQnNXbHYxOXhTQ083eEIxWWNGZ2dyalJ0TWQ3?=
 =?utf-8?B?eDF2UHJ4ZTE1eTEzQmZoQnZuNktOMS9KM1JLQ2xPWUpGUmsvSEhrMGFpYlBK?=
 =?utf-8?B?OUF3T2lPR3JKSThaSFlKV0Z1QUExQldmeC84RkxTejErQTFqcWtncjkzTzdY?=
 =?utf-8?B?amZxYWFSOHZhNFE0STUzaWVaYkZualdLWE0zM2ZsZE8xTzNPVDRxcThxWTVq?=
 =?utf-8?B?dEZrMU5nRGxrZDNzVXpmT2h2ZHo3YmxzWlhRWWZIZ2Z5dUE0RHJmakhCMzJW?=
 =?utf-8?B?RXVKeEYyVkdZWS9Tek82WW9uMTN0RGcxNFJ4RmU4dGVWWithMWtiby9HQXM3?=
 =?utf-8?B?UlgwUUl2ZGs1OUpiK3ZrdnNIQkYralp4Z0RwTXNXMkJyQ0RSSm9aWVRrU2d6?=
 =?utf-8?B?enc5V2RWRXdjY0lGNUVmY2c5TGpVS25DRFBJaExGaFZZOE9Rbzk2RHNlTkJO?=
 =?utf-8?B?dDRwSzlDNzA3amVYN0VpcU1aQ0ZTQ3lMUHBrK0svN1FXNEdjeW9zMlhYZWVF?=
 =?utf-8?B?NnlMUzhjT0lUV3RPU2ljREczUnV5cGFSR1RIb3NlbHU3RHE3bU8rTTI2OTJo?=
 =?utf-8?B?YTdGQ1FQSGZ1UWhuSXM0eUljRGora0FrZGk0TDVrSjJyMnV5NTFqdGNZbXpS?=
 =?utf-8?B?VnNRNi85cTBHQktLdldYRWJKcy83NFVPYzlrd0ZhNnM5YzNOL1hUaXZTTHRp?=
 =?utf-8?B?WHNVUEEyaEJRSTIrcHlmM2xtR0gvU3pNK0pSanVkbFdERHUyZStpYzFZcmRz?=
 =?utf-8?B?WmVaeFNVK3FGRG5FU3BVUHc1ZzBJTG1NNWR4ank0TzhSZXRQOTdUM1VpMHhx?=
 =?utf-8?B?UEovUlpWdi84cGNVeEt6SXorQzdSQ0Q4aWU4c1oydENqdGtBUFFTc2l0QkNx?=
 =?utf-8?B?ZDdqTklkdGsraktkZDNwcjdkaytVWTRlemY5Z3Y5c1A0c1BOYnFORDNXYnBz?=
 =?utf-8?B?dXJ0RVYxVHpERkM1TFM5MG9ETDlGM2ZMU1N3N050bkw5Y2E5VVQxQlVLRldV?=
 =?utf-8?B?Z1Nsb1AyTEZPSSsrLyt2MDhRNGJSUS9zdnBPbkduTUFHVjMzT2lqYUxuY2VM?=
 =?utf-8?B?RFdYTmpoRzlyQ0pzM2RlTWFQNWhTTXlURmI5MzB1dzYyRlhYUXBFZXhLem5C?=
 =?utf-8?B?U1RYMGRVcUNnbzFDLzlLeUk4alcwOVBBcVBQVHo2Q0o1TTB4ajVFckgyWDZ3?=
 =?utf-8?B?Q0NSSTFBRlFSeHY5S2g5RHk5RjdjamlGOXh5U0ZtV0tVcldSZ01naUdYUU9i?=
 =?utf-8?B?SFlzVUphTW1tYWkySlQzMXBleGtSb250WnBkazdaZXN2UVdTRnQrOUFhRnQw?=
 =?utf-8?B?NWJQWEZPKzU3NHppWkE1UDZtV0dVQzRQMzU5OUU1ZHV5QW04K1ViZ1RFb3hF?=
 =?utf-8?B?NkxUdzJHYlNxVXdHeEVMNk9QR1NhaEx6ZnVYRlp1ZXdJVG4vbHRHaHRVdlAv?=
 =?utf-8?B?R2RwZDE5R1JNV3drY0VPQWJCSy9IR0tqMTlLS0VQUHVKaXFuMzhkNzZxRUtu?=
 =?utf-8?B?MFNwQ2JneEJPL2NqRDdsRWR2Mm9tL1lPZTBsSUJRdkVxemxFVUx2L2dtZUt0?=
 =?utf-8?B?Yk11eG5mM3RDaEYwUVJVOVA1bDRhblBSeEVOSFE5Z3pDK0NPOG5CNzdDVTdy?=
 =?utf-8?Q?Bz24fd5z5y7oU1Xr2qz1JABvGTRQfwXjoB70u2gUWQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f8ab7f1b-fe11-4529-3dea-08d9ec91ab01
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2022 12:34:23.6158 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rfkaO6PeSFwORjSbyF1WcCGd6erHMicSkWVzqo37xPLqt7fGaIZBz0DZsa3fzFykQim4mg7oKWAzAU8bdx0rMHnlBxMRPzsUH+Br5JlOX7U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB2994
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 08/20] drm/i915/dp: Reuse
 intel_hdmi_tmds_clock()
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

LGTM

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 10/15/2021 7:09 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Reuse intel_hdmi_tmds_clock() for DP->HDMI TMDS clock calculations.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c   | 20 +++++---------------
>   drivers/gpu/drm/i915/display/intel_hdmi.c |  2 +-
>   drivers/gpu/drm/i915/display/intel_hdmi.h |  1 +
>   3 files changed, 7 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 5cc99ffc1841..45e4bf54e1de 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -814,9 +814,8 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
>   		return MODE_CLOCK_HIGH;
>   
>   	/* Assume 8bpc for the DP++/HDMI/DVI TMDS clock check */
> -	tmds_clock = target_clock;
> -	if (drm_mode_is_420_only(info, mode))
> -		tmds_clock /= 2;
> +	tmds_clock = intel_hdmi_tmds_clock(target_clock, 8,
> +					   drm_mode_is_420_only(info, mode));
>   
>   	if (intel_dp->dfp.min_tmds_clock &&
>   	    tmds_clock < intel_dp->dfp.min_tmds_clock)
> @@ -1070,21 +1069,12 @@ static bool intel_dp_hdmi_ycbcr420(struct intel_dp *intel_dp,
>   		 intel_dp->dfp.ycbcr_444_to_420);
>   }
>   
> -static int intel_dp_hdmi_tmds_clock(struct intel_dp *intel_dp,
> -				    const struct intel_crtc_state *crtc_state, int bpc)
> -{
> -	int clock = crtc_state->hw.adjusted_mode.crtc_clock * bpc / 8;
> -
> -	if (intel_dp_hdmi_ycbcr420(intel_dp, crtc_state))
> -		clock /= 2;
> -
> -	return clock;
> -}
> -
>   static bool intel_dp_hdmi_tmds_clock_valid(struct intel_dp *intel_dp,
>   					   const struct intel_crtc_state *crtc_state, int bpc)
>   {
> -	int tmds_clock = intel_dp_hdmi_tmds_clock(intel_dp, crtc_state, bpc);
> +	int clock = crtc_state->hw.adjusted_mode.crtc_clock;
> +	int tmds_clock = intel_hdmi_tmds_clock(clock, bpc,
> +					       intel_dp_hdmi_ycbcr420(intel_dp, crtc_state));
>   
>   	if (intel_dp->dfp.min_tmds_clock &&
>   	    tmds_clock < intel_dp->dfp.min_tmds_clock)
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index c6586d10a9d0..f1d42279a2df 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1868,7 +1868,7 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
>   	return MODE_OK;
>   }
>   
> -static int intel_hdmi_tmds_clock(int clock, int bpc, bool ycbcr420_output)
> +int intel_hdmi_tmds_clock(int clock, int bpc, bool ycbcr420_output)
>   {
>   	/* YCBCR420 TMDS rate requirement is half the pixel clock */
>   	if (ycbcr420_output)
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
> index ee144db67e66..d892cbff0da0 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
> @@ -47,6 +47,7 @@ bool intel_hdmi_limited_color_range(const struct intel_crtc_state *crtc_state,
>   				    const struct drm_connector_state *conn_state);
>   bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
>   			     int bpc, bool has_hdmi_sink, bool ycbcr420_output);
> +int intel_hdmi_tmds_clock(int clock, int bpc, bool ycbcr420_output);
>   int intel_hdmi_dsc_get_bpp(int src_fractional_bpp, int slice_width,
>   			   int num_slices, int output_format, bool hdmi_all_bpp,
>   			   int hdmi_max_chunk_bytes);
