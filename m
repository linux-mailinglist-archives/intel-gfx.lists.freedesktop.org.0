Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F90977E618
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 18:13:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B841210E388;
	Wed, 16 Aug 2023 16:13:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27BFA10E388
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 16:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692202398; x=1723738398;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ykfgGexIP8PwG5oUf3TiPYUP9gGqOsoZqQr5pYuj59Q=;
 b=BG2iyGHz4au48rcdhRjxj7sWE9she+jq0wrFBvlfnlPJQAElwKHLJCu5
 pxK5cJLvwkuNkFjec0NqtiB4SaFfoTq2m1+u7Kh4npKZQE0B9JVENe9My
 mNwneF9EpQMn9uvgj+cOsfsYJgA/AxPmuPW9gKJQOVqr/XbSMFAW4iro6
 IpeupWoEXtY7fW5h8wGda79riW6LzWNPKjMQ4jaBmUo03BE0/IgQzL3Rs
 re+1LI7XyQFSOmhyZD1THCwc2KSKy6tk5LkoddkjbfM3HzYPDKoopci2m
 EcRuXWL0WrlXDrkk/jkYB84Ki9a6lmqb+ha/gw4UAKYvAo2wvl+85V6TV A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="436474338"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="436474338"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 09:13:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="727800978"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="727800978"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 16 Aug 2023 09:12:47 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 09:12:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 09:12:46 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 09:12:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lU+46n0OqxbnODxRr+8FRQItNHzRgiz2Rh0q+zrHEVNvujhPjXjRbasLi9bQ6A8spD3p6q7MYXvWOZq7H0AW1sXJK+PzeSwALRwpYVn3HqhKWTVADgIxl5yEiUz4estjj1qi7PYCQZpaGnnLK5mNiDxB9otfGk9XiAZBNCqOOe5PP04yDKzJqUDYQUjqeRCX3oRji6APPd9QyUJCRmVM5jNHRUGhG8V7oekK1zfG6fBvvHAWUq+phyXr9Ovi1eIXVNquHuMjE/GilXF55NEXv/jG92FgwwSFqX9jrtV95COi5p8A6KlkA2+Nh3fge8z6Yk7VFia2it8pUd5AAAuW8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5YnjjfTFr5axBk1iB/XNd2h9wW6lZiUBnsf6KfCD/Fo=;
 b=fquJpxureHx46CYSvqbxA8aJTORptvdxNw8S9bUUsBXgpA7rQp5ccPgVh43ewP2ITzrhfGKneTjAiCx+dEir1vzppu4FNQ92AzA0MaZ2Kr6axvtlF32B+S9ui/3UVv2E48ksZ0E3ZzpEEPwYX6dy8vS/3QzlJyHudzJOAr5naTbR7B/2rgeyxTgpyApW7xtCkonDBKGxP+hp3enzv2irMgBNJeda2cV8cvuSSgt6quUhfE7byJkMtN6SeZSAAO0Uc1hL8WE6+gJDBUn1Rv9GuK4qXmuXmI4PdOaCkvqTseKn7e6cvCEIiMzg/Yc8E4SZe47yM/i96XVtwBceykqArg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2907.namprd11.prod.outlook.com (2603:10b6:5:64::33) by
 PH0PR11MB5593.namprd11.prod.outlook.com (2603:10b6:510:e0::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6678.30; Wed, 16 Aug 2023 16:12:44 +0000
Received: from DM6PR11MB2907.namprd11.prod.outlook.com
 ([fe80::d6dc:40dc:3857:6593]) by DM6PR11MB2907.namprd11.prod.outlook.com
 ([fe80::d6dc:40dc:3857:6593%7]) with mapi id 15.20.6678.025; Wed, 16 Aug 2023
 16:12:43 +0000
Message-ID: <04bb58dc-abab-f72d-14e6-1b6233f65d46@intel.com>
Date: Wed, 16 Aug 2023 21:42:35 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
From: "Kalvala, Haridhar" <haridhar.kalvala@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
References: <20230810234618.3738870-3-matthew.d.roper@intel.com>
 <91c298bf-e3ba-3ccd-40aa-0b7d793d0eb6@intel.com>
In-Reply-To: <91c298bf-e3ba-3ccd-40aa-0b7d793d0eb6@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0192.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e8::17) To DM6PR11MB2907.namprd11.prod.outlook.com
 (2603:10b6:5:64::33)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2907:EE_|PH0PR11MB5593:EE_
X-MS-Office365-Filtering-Correlation-Id: 10126371-c3e3-42b1-3e7f-08db9e739f6e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dj4t0LYojN1aqru5eHqIJJXZodf2VY9CJ3iDlkBXQSMJkyarzc93UChq0IFIHHZ/yxHY4P+X7aGegWxcMhjiLJUnRwfZG1qBk32FDy6QraBZwjJwAN+fvvCGqN2a2xBP5jHSfSFj9pRznKq87lTsald1j2a95375gWDEqv0kOaEh4tkKbs8kM1gFWrR3coi2z6RMVuLV4dHryPKDwMidSelEh1M9iaJdeF6rTa8SdZ84fCxZjVjLWC4hWSFCEKABNEyoWwFZijyhrPDb6vfuXaJsnKmiMd5nK8AX8Qbbvhp/LXudp6FpvDSFFfG7OJFIFxHzdCGUB8q+goVBj9QJwl1bzV4FDzo5pTJRhoOLDmbUNmx6mY97Qk2LCDXMeLVnYZHbjuLWPGWBtm4I6lwbmk7SLcBQi9Zjo1o93rTKyFdKcu63AcHfwVuM7y3qk3GWdqAIX46bmqhF95dqDWRLyvdP4w1zFfhU1kYZ+DBCLzLOMwBYjK0lkF3jnDwG9+3gtozZtLTWz1Lurv+i4ZhsD8sRd2Mrp9xCXAkOnxPx08VMIeqRFdt4s3Fkq+9/N/POrnVSOLZNUkJmuI6U6uGC561gU3hjlpjAwfutTL0WgramI1UbmjfnSCs9kjXobNPlSvjoXtaa8rttUFlMVwI9Xw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2907.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(346002)(366004)(376002)(136003)(1800799009)(451199024)(186009)(316002)(6636002)(66946007)(66476007)(66556008)(37006003)(41300700001)(5660300002)(38100700002)(31686004)(8676002)(4326008)(8936002)(6862004)(82960400001)(2906002)(83380400001)(26005)(478600001)(86362001)(31696002)(6512007)(53546011)(6506007)(36756003)(6666004)(2616005)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T2dzV0d3TDM4alFWY3BkMzRpbEJWSFVqVzdzL1RZL0ZOQVR6RDNEaEttVXYz?=
 =?utf-8?B?QklPSUZaUHVWVnFKYTJna01SbHM1R3JhRUltNHgvTStwdkJpMjdHQSt1ekQ1?=
 =?utf-8?B?c1hranZVSEJlaVBxYkFMcWZkVTBBZFRIT1ZDZ1N4TkRWdk50UWNMTzZ5Ymoy?=
 =?utf-8?B?ZUJYMEJqek1TWXJIKy9HVVlGWFFXYUJYWENxT3FxYnc1MFVBbnp0VDRPV2Fp?=
 =?utf-8?B?NzQza3p5WUtKMVA4VUxycmlKcGJHcFQwNnUyK0JoNkg3eHY1bGRYZzVrVnB2?=
 =?utf-8?B?OWN0UzNPYVNnTGNBVlJFVExYQWhQU0ZMU3F4cmcwaEJpUDgwelQ4K3c4bCtq?=
 =?utf-8?B?eXBsQ3VVOFBWcW03U3Q3L0RVZlU0VnBmN1FGc2w5L01MNHlDUmVpa1BFK0ti?=
 =?utf-8?B?Tk0vMHR1VFZabUh4NUdZTEs5dVllanByN01JUFR6K0ttaTJuUzhEL3JEcFBq?=
 =?utf-8?B?cm83VXdCWFhzNkIyVlNFRU1RbVM4V1NNYkNmR2g2SDBUVUM1K2VDTFo1RGJD?=
 =?utf-8?B?UEVxRUlFTVNENWJLbkxVQjNORGp0THJ1dFcvZVZNblUwWXA1WVJqeVZyQUFs?=
 =?utf-8?B?cThKamlXd2UxSzlmMmc2Wm5saTBkWHc5RDJPNUJDa1ZqcVhqeEova2pCQkNE?=
 =?utf-8?B?alZpS3duV3h0TGV5blZ2aXphTWcweENqWDdrY3FvZWVyU0wzUEtpTXVTUng2?=
 =?utf-8?B?Uy9PVFdkQ1VvK2F5SUZHbnJiR1IrcmJSKzVHazJJbElLWWFOOU9weUJjL3dG?=
 =?utf-8?B?OERtRHNZRzc2SFFoalpSdFo2YlkvOWE5dWh6V2hKS3UycS9GRU5HOWNXUW5y?=
 =?utf-8?B?SXpYQkRjUEdEdHdadU9HUlo1bFNGL0hHaDZ4aGdkS0tHdTV0dVRBcngvUEto?=
 =?utf-8?B?bFVnMmJhMlNFRUNZL0FydEwrL2NoVnJnRkpYbkVOQTBuL2RQSVI5V2FOZVVO?=
 =?utf-8?B?MEVWVDYzdTBVTnNPb2YzcERiMzkrNzZrYXd6LzZiSWN1MWx3N3hSelNXOTFW?=
 =?utf-8?B?R2N6eElrWVlmUTZJWnhHWE1INGlSZ2JaS3ZQSDVUTk1sREFHUGFrSWtHd1A2?=
 =?utf-8?B?eXdkVVdDM1FSdVRDZTJQS1I4aFdNbnZnK2VFOUdIcmF1clRFaEJTdjBDa0pF?=
 =?utf-8?B?TjFmWCtFUmJGUnBzZUpKMy8rR0VFbnZtYWNicUZiMEQ4eG1jY1I1ZnFpN25F?=
 =?utf-8?B?aWROYVN3NU4rL0RaaGsyUHQrMWo3S01QVEJIcWNSdVB0Z043K0dvR0dySk1m?=
 =?utf-8?B?TTlGLzU4dm9QeGdJUWZwMFNtTHRRUWFtVUNjK0twQnJKR2dnZW5yTzBrTWdS?=
 =?utf-8?B?Mk9EUWhVbmdoNERzVG8xUjQ5bWNVdDZzdlZuMEtOenRWYUE5QS8zL3ozRjVT?=
 =?utf-8?B?KzdGWUN0SWlwcExSUDh4ZHBBVUUxVzBhRXRmT2xuMi9iNlBBVnFIWGFrUUhx?=
 =?utf-8?B?T0h1QmRRSmMrV21YVjUrbXlvYXlHVUU3Mm5aMjZmSXMxV01XVXp3L2Y4b0hm?=
 =?utf-8?B?VStYTFFvMnhYdjgydUc1WDZZZEsxdTIwQTlPWlE2c0QzcW91Wlg3cjRFRU5M?=
 =?utf-8?B?eW9FNzZIelpyay90UUhMWGpxM3VpUDRiTjBkVDBoRWx3TzNqd1FQSkFWcXFj?=
 =?utf-8?B?UnNRRmV0ck9tZkR4L2RUL2dMZ3M1dzl5aXp4SVV0c2tlbG4xZE1odFVNSVhU?=
 =?utf-8?B?RmdKWHZESjVJRTRsVjljY3Q2K3dIYmcyemFyN2JsNUNkbi9iUjFZUzhwOWM2?=
 =?utf-8?B?OGFSQ2lXRGQ5ZzlZTVNRWGFtcGMrSG53RzVVbkdoNEVsQkZGa3lmMGo4U2Yw?=
 =?utf-8?B?clBwdWdoVjQxNDlsVWtIQTFJelJHZUduN3p5dUMxazYwM1M0eDh1QTR0ZGNl?=
 =?utf-8?B?aUFtaXJIZHRPY2hRTTdlRzQ5dWNaYklOaDVFOWZ0SzBVNTF0OWdWMktsTm1r?=
 =?utf-8?B?T0NwN0ZGRzNlQi8zWC91aUNONThtVThBcnNCa3Y2ajJlbkNNS0ZnL0tLNHV4?=
 =?utf-8?B?MGh0a2NYZTJYR1VwWVExN1VTOU50cUEzV3lUR0NnWEw2K3lkdS9ydHhmN05D?=
 =?utf-8?B?TldDU290UWNXZGthV2JKQkF3dXpHQWo2Zi9wUGFQekJIeTRtWUNNd3hjT3ox?=
 =?utf-8?B?bCtYaERqNUR6eTBKR3NuTUxUUW1haDN2Rjlia1RIN1FtSldhUVNpamlldTNv?=
 =?utf-8?B?Nmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 10126371-c3e3-42b1-3e7f-08db9e739f6e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2907.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2023 16:12:43.7618 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fpWwtl2rYV9XN7m12LGzwqWhON++MLKIGW8gWgWG0x+LBsvYOjzxIclYtP9HZ3EKqGGNmcBMH0GeL46HlC1hPDBspwE7FpJWboGP+CynGEM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5593
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/selftest: Simplify Y-major
 tiling in blit selftest
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


On 8/16/2023 12:10 PM, Kalvala, Haridhar wrote:
>
> On 8/11/2023 5:16 AM, Matt Roper wrote:
>> Rather than picking random tiling formats from a pool that contains both
>> TileY and Tile4 and then trying to replace one with the other depending
>> on the platform, it's simpler to just use a single enum value that
>> represents whatever the platform-appropriate Y-major tiling format is
>> (i.e., Tile4 on Xe_HP and beyond, legacy TileY on earlier platforms).
>>
Reviewed-by: Haridhar Kalvala <haridhar.kalvala@intel.com>
>> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>> ---
>>   .../i915/gem/selftests/i915_gem_client_blt.c  | 39 +++++++------------
>>   1 file changed, 15 insertions(+), 24 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c 
>> b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
>> index ff81af4c8202..10a7847f1b04 100644
>> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
>> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
>> @@ -83,8 +83,7 @@ static int linear_x_y_to_ftiled_pos(int x, int y, 
>> u32 stride, int bpp)
>>   enum client_tiling {
>>       CLIENT_TILING_LINEAR,
>>       CLIENT_TILING_X,
>> -    CLIENT_TILING_Y,
>> -    CLIENT_TILING_4,
>> +    CLIENT_TILING_Y,  /* Y-major, either Tile4 (Xe_HP and beyond) or 
>> legacy TileY */
>>       CLIENT_NUM_TILING_TYPES
>>   };
>>   @@ -165,11 +164,10 @@ static int prepare_blit(const struct 
>> tiled_blits *t,
>>                BLIT_CCTL_DST_MOCS(gt->mocs.uc_index));
>>             src_pitch = t->width; /* in dwords */
>> -        if (src->tiling == CLIENT_TILING_4) {
>> -            src_tiles = XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(YMAJOR);
>> -            src_4t = XY_FAST_COPY_BLT_D1_SRC_TILE4;
>> -        } else if (src->tiling == CLIENT_TILING_Y) {
>> +        if (src->tiling == CLIENT_TILING_Y) {
>>               src_tiles = XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(YMAJOR);
>> +            if (GRAPHICS_VER_FULL(to_i915(batch->base.dev)) >= 
>> IP_VER(12, 50))
>> +                src_4t = XY_FAST_COPY_BLT_D1_SRC_TILE4;
>>           } else if (src->tiling == CLIENT_TILING_X) {
>>               src_tiles = XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(TILE_X);
>>           } else {
>> @@ -177,11 +175,10 @@ static int prepare_blit(const struct 
>> tiled_blits *t,
>>           }
>>             dst_pitch = t->width; /* in dwords */
>> -        if (dst->tiling == CLIENT_TILING_4) {
>> -            dst_tiles = XY_FAST_COPY_BLT_D0_DST_TILE_MODE(YMAJOR);
>> -            dst_4t = XY_FAST_COPY_BLT_D1_DST_TILE4;
>> -        } else if (dst->tiling == CLIENT_TILING_Y) {
>> +        if (dst->tiling == CLIENT_TILING_Y) {
>>               dst_tiles = XY_FAST_COPY_BLT_D0_DST_TILE_MODE(YMAJOR);
>> +            if (GRAPHICS_VER_FULL(to_i915(batch->base.dev)) >= 
>> IP_VER(12, 50))
>> +                dst_4t = XY_FAST_COPY_BLT_D1_DST_TILE4;
>>           } else if (dst->tiling == CLIENT_TILING_X) {
>>               dst_tiles = XY_FAST_COPY_BLT_D0_DST_TILE_MODE(TILE_X);
>>           } else {
>> @@ -326,12 +323,6 @@ static int tiled_blits_create_buffers(struct 
>> tiled_blits *t,
>>           t->buffers[i].vma = vma;
>>           t->buffers[i].tiling =
>> i915_prandom_u32_max_state(CLIENT_NUM_TILING_TYPES, prng);
>> -
>> -        /* Platforms support either TileY or Tile4, not both */
>> -        if (HAS_4TILE(i915) && t->buffers[i].tiling == CLIENT_TILING_Y)
>> -            t->buffers[i].tiling = CLIENT_TILING_4;
>> -        else if (!HAS_4TILE(i915) && t->buffers[i].tiling == 
>> CLIENT_TILING_4)
>> -            t->buffers[i].tiling = CLIENT_TILING_Y;
>>       }
>>         return 0;
>> @@ -367,18 +358,19 @@ static u64 tiled_offset(const struct intel_gt *gt,
>>         y = div64_u64_rem(v, stride, &x);
>>   -    if (tiling == CLIENT_TILING_4) {
>> -        v = linear_x_y_to_ftiled_pos(x_pos, y_pos, stride, 32);
>> -
>> -        /* no swizzling for f-tiling */
>> -        swizzle = I915_BIT_6_SWIZZLE_NONE;
>> -    } else if (tiling == CLIENT_TILING_X) {
>> +    if (tiling == CLIENT_TILING_X) {
>>           v = div64_u64_rem(y, 8, &y) * stride * 8;
>>           v += y * 512;
>>           v += div64_u64_rem(x, 512, &x) << 12;
>>           v += x;
>>             swizzle = gt->ggtt->bit_6_swizzle_x;
>> +    } else if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 50)) {
>> +        /* Y-major tiling layout is Tile4 for Xe_HP and beyond */
>> +        v = linear_x_y_to_ftiled_pos(x_pos, y_pos, stride, 32);
>> +
>> +        /* no swizzling for f-tiling */
>> +        swizzle = I915_BIT_6_SWIZZLE_NONE;
>>       } else {
>>           const unsigned int ytile_span = 16;
>>           const unsigned int ytile_height = 512;
>> @@ -414,8 +406,7 @@ static const char *repr_tiling(enum client_tiling 
>> tiling)
>>       switch (tiling) {
>>       case CLIENT_TILING_LINEAR: return "linear";
>>       case CLIENT_TILING_X: return "X";
>> -    case CLIENT_TILING_Y: return "Y";
>> -    case CLIENT_TILING_4: return "F";
>> +    case CLIENT_TILING_Y: return "Y / 4";
>
> Hi Matt,
>
> Looks good to me.
>
> can we return "Y" or "4" instead of "Y / 4" by checking graphics 
> version ?
>
>>       default: return "unknown";
>>       }
>>   }
>
-- 
Regards,
Haridhar Kalvala

