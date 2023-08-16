Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 586AC77E606
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 18:08:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A57310E388;
	Wed, 16 Aug 2023 16:08:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2188910E381
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 16:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692202090; x=1723738090;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fLZ+NrH0npASoF91ACm6tW79eNPcFPI+lcVrrOsPcJg=;
 b=ivxIZWK0qlKy3KxYxuJEznMGSuOugqVOGhoSGAPdMpcRBEUP0LGZo64W
 GgNHbpX88M/btvQS9/DEeuTU9/kcYi0ETw05g69dYhW57heKU8c7hgmk6
 k4FrqycbJ3Yo/kNKkRbAty+pr5SwCZcZHP+yUeNYmVblJUj2XzM3po2OF
 o3bG52mwco9CcTxtA3riRhZnWwEbHM6mbnweMTi/y5aLyh6IYdusMZ/LD
 GzBHuGXBdZ2qyJNivJ+lW6Lljp8h0fh0CRbV+iCSKIxCdfsSbLr9t/LtS
 vtpD326gmU96eFWhWY9osoWBE+BSLT2XN1eXKCEcUgKHdO69CyLZrbxaA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="376300983"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="376300983"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 09:04:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="824284976"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="824284976"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2023 09:04:36 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 09:04:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 09:04:29 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 09:04:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ok1dJhlCAMN0tt57E/OsA5L9CTqsn+hclcUOXewdJH5pLFZvWJUy2B9WT24mH1BK0suAkpc8H+pK9wT7hBhwuMzeKmfy6YS8W0H99w/u/wjbvQKvtm8I6ipiYsHGzlMFbQ5emedtpG+ZdrlWQPhHl4NZVa4GTvIg3TYZ2RiHjldYxf5tbeM2A8J6IH+wUCe7ryqu6EHBvxhvolvuLFK+ixhrJkG/pRfSNE6KKwwzXxM1p2QMwOD9dk+Uzj/OUsXWEtCTF9YrIW3PFeSIQ+HwyNLziD8reBJ30gnsPRbIvNG2Z3RsKzzKlgi9H+DsZyyXFNCjxYai1OH3f+mf+KT/9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Yz6bMjd2WsPRxQpLH6YHNX7Mp+8RdOSglyhR2CGZKok=;
 b=KKN2nuOA8eZ3mydbWeo7/Ph7XKFL91uVChPrGARxruCGfoFRZqtRuLXb9PQpmPrlXKBZplgQmwBWaKXraiGCItyVxkUgertQJqcrH2r230vqrfqU4a//v3nz3V3enwP2lNK0Hxa3fv93yJOVCiIwXpJMK4s5UcYmriolngX3mDquGLOU9XgOb0DPNoUBHtILYvWdivJcXDOhCyFHfnUg3I3XA/NIpBF3Kq8MYEpNk8Si6G0+304zcLhi7R1N+TQTLdhlDcgGx1HO3Wtv2JTxyxz66zEBbOHPRp7FnE1glzxX322mVMQU0zbP7ad7ibRxU+T4uVajEHr1CtlwnkjYqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2907.namprd11.prod.outlook.com (2603:10b6:5:64::33) by
 CY8PR11MB6890.namprd11.prod.outlook.com (2603:10b6:930:5d::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6678.29; Wed, 16 Aug 2023 16:04:16 +0000
Received: from DM6PR11MB2907.namprd11.prod.outlook.com
 ([fe80::d6dc:40dc:3857:6593]) by DM6PR11MB2907.namprd11.prod.outlook.com
 ([fe80::d6dc:40dc:3857:6593%7]) with mapi id 15.20.6678.025; Wed, 16 Aug 2023
 16:04:16 +0000
Message-ID: <6ca21583-6ada-af0e-25c1-244f6de43ee6@intel.com>
Date: Wed, 16 Aug 2023 21:34:07 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>
References: <20230810234618.3738870-3-matthew.d.roper@intel.com>
 <20230810234618.3738870-4-matthew.d.roper@intel.com>
 <b2a1b3b6-5d9f-d29f-86e2-f4fed6691f20@intel.com>
 <20230816151823.GQ209733@mdroper-desk1.amr.corp.intel.com>
From: "Kalvala, Haridhar" <haridhar.kalvala@intel.com>
In-Reply-To: <20230816151823.GQ209733@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0127.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:bf::17) To DM6PR11MB2907.namprd11.prod.outlook.com
 (2603:10b6:5:64::33)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2907:EE_|CY8PR11MB6890:EE_
X-MS-Office365-Filtering-Correlation-Id: 48896150-50bd-4ec7-0806-08db9e72711d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +kYa9EaAhSaCQIEKylO0fTM3smt6MAy7p0gnYAF4u9SakY3j3V56FKeR8wRFCwhCpUcyAhA5yc/EgxOI/cUqKzYzMAYI7MTyLCIL9EUsV3Pe0RNCIdGly5079QwMQ9p6jD3OjBYtomfP5x59IYDYGnJREbz/+qsR6wZIikr0/C6UVuMMioBsqzL7isrJdOk8bmgn0JmGH76ekyITvOLliVDZE69kbbxBoCegshYrdpcJus+H4CflcNE9NPsIg67V22VbjINeYnUCv+lLSaNUUFCHbrOrvVCiH85ZHpJx6QrsLXgROGKKJ0GgSH2OdHTFDh6Ei2GacWo8kOIkY5JaRf3IOsAY1zVF7txV2BdVQyVvudQb9b1ercScKnO8fAYHEIxJLLcvW7ar4bsxckiXvv+Mf50X/jYHynQmzKNRrFRchlujanj0owwZLFXMsw9Z0JVl73m5UbesMVYNymIxoJ/84wN2nMM5QHK3CrZKvol/sb4hker5sBGiwlAMv02dNfvlrwk4Ja+JnswEHPreCxfT1IvDeQfgU0uJRMu1dPpU7e5/IwlgS06y44zFHRGLLroLZ9s9jsRUlHm2gYma9OwZs/Y98AI0VT47j/OwKK4MGpKNQ510u85Bw9LzvD9DnBUvC/d5DTuQo/8OtCBdZw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2907.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(346002)(366004)(376002)(136003)(1800799009)(451199024)(186009)(316002)(6636002)(66946007)(66476007)(66556008)(37006003)(41300700001)(5660300002)(38100700002)(31686004)(8676002)(4326008)(8936002)(6862004)(82960400001)(2906002)(83380400001)(26005)(478600001)(86362001)(31696002)(6512007)(53546011)(6506007)(36756003)(6666004)(2616005)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cDlIYTBVV2trVnNSbjlEdmM5RTdpQkR3NGpSeGZqbUpYeXdKYkI3TGdvYXlB?=
 =?utf-8?B?QjB2RkxZWUx5aTU3Ym1JREZpcWVNdDMwWDZzbVE3VWN6L2x6Q0JZdEE4bmZS?=
 =?utf-8?B?SVV3RkFBY2lmb2h0T3owR2JNejhIMzNrRFJMKzVGM0ZKSk1la2RENzJTMC9p?=
 =?utf-8?B?SS9CU1Rqek1YNzFxbllzb0VxTEcxKzJoek5ub1RhV08zdHRCUm1aRkJpa2NQ?=
 =?utf-8?B?WnQ5aXJtS1daU3ZnUVdEUFlFekF0eUpqVXF5SXlYYnJGSmlod3YydWx0VzRU?=
 =?utf-8?B?NDZiZ3FzUm9NWXhTSTU5b3NDcjV2TVFHby9pRm1YK0pKWlB5dzVkUTk1aTEw?=
 =?utf-8?B?Q0xyRWVock5zRWpDbXRJZEV4d2VFc0IvOC9GdXR5R2VFUUxQeTBXbVZ1K2RN?=
 =?utf-8?B?eld5WlFXem9aaDdtOWhlditxNG1Wb1IvUmJaV2l6LzlvVjRJK0FvdjRFTkwy?=
 =?utf-8?B?UFpQQ0JZeDRBdU81ek1QU1pPdit3cGE2dVl6dUZnVnMzNWxhZ2haMDdrZ3Zn?=
 =?utf-8?B?bllwRTJvZDdjT1VmWlBiTjl1cFlzRXhCa3RCYWdXNmZUMlUyenRTRzdGK3pR?=
 =?utf-8?B?eVU2QkNUQ2NpR1lJMjZtRkVDS3ZaWW5Ib0JwSnQ0dEdqaVFlMCtlcStNeFhn?=
 =?utf-8?B?RHFydkU4L1JXTFg5cU1wTFNVSkYranJlYjZ3b1dnVzBVYXQ3S01WMkRsUjBi?=
 =?utf-8?B?NGhNeERSZit0NVRoMFRtK00zZ3RmbmZ4em54U0QvWTRDa01NTEFLRDFjZGFC?=
 =?utf-8?B?M2VDcS9EN1Z0RWlXNkpLSnpHMUJ5WG92SjR2VkFzWnFQMWhMdmRTVnIwOGVo?=
 =?utf-8?B?Wk5vKzRmMjcyMkkrRXlHVnZlQk8xWk1FczYxdVFsU3BwTlppN2tpVEYxbTJW?=
 =?utf-8?B?V3Q2T1ZKNkZOVmtsNzhtYml6RTJCeEhoT0MybEVzQmE2ajh5M3VJeVR4M0hD?=
 =?utf-8?B?a1V4WloyT2huMm9ubnI5WWY4RDBHTURuMnpIbkdLbnByZ1hZbCs3YmlGUGRy?=
 =?utf-8?B?ajZzZjZlTktNQjBMdmdyVG5tZ25TLytMbTJJZWFkazI4WUFtS2FNbkhNNzlT?=
 =?utf-8?B?UkVCNTF1Q2E3VjE3emZxWXQ2dGQ2UEFPbitFa1hRNDNDN0JFTHJNbm9NaEx5?=
 =?utf-8?B?aUgrMHBlZ3UySW5SOGpHcEFFTWVkU09aR1NhN0lOTWlaMENMU3pLTlN6VzMr?=
 =?utf-8?B?TkxGSnBaNHc1WWEvZUxXMUhNaTFseExyblY5UTZFdmFSVmJYWFZpRnFjTllu?=
 =?utf-8?B?NE9uSXY4cHhlWWZDWG96azRhVlNIMHQraU8rdVpYVEJZc0NVOUxWcFpNTUZR?=
 =?utf-8?B?YTFjQXJ2QXVkRVJCYno5Y0JvaVY1cmZ2VnVzd1ozTU8rNkV0Tk91ZVd3VG1r?=
 =?utf-8?B?a29XT1A1TzljaEFBQTBoUFAycnlzTXRaZzhSVkVTMVBTcVI1amY4RHBrbnNk?=
 =?utf-8?B?NFU0K3dObUpJcE5kb0tJdG0rZGZOZVVZZytDbXBkRWkyNVRlNGdaY2JVcWI5?=
 =?utf-8?B?TUdSaDM2WXdZaVMvanJUOTdSZjYreE80emxBOHhVRE9PaTk0MElOT1NvK1lh?=
 =?utf-8?B?OHNDN3cxN2h2azVhK0libGREY2E4L3ovVktKRktPMVBTNnNPUks1YXp6ZVhF?=
 =?utf-8?B?VEpqa0R5RUVoNHZRc05KbncyK3hMR3lGck1BeFhkZDJPOE40RDV0YUY1eS8r?=
 =?utf-8?B?ZWpxc2dTUFpHL29BTllFOExHcFcvYW1JODRNRnRKSWZBM00ySzl1R05vcExu?=
 =?utf-8?B?cUFFQWZpSEorWEJ3N09WMnlNM2ZuK3BCYWNtZS8zTm9IZ2VaaFcwMzJ5eitn?=
 =?utf-8?B?VlVydnRaQnIvRUNhMjJBT0lYdFRBNzNEbUNKdVQzdGZQNGgvOURrSUg2dC9Z?=
 =?utf-8?B?MGZTVGl0V01nOHlMeWNBbVBXMUYvb1o1cGZycll3V2VlaEtoMzVDTlk0T1NJ?=
 =?utf-8?B?ckt3OUxYZC9QVHNlSFprc0pZNDhUVzdJVTcxa0Jua2tnTmZsQUVxL1pvNlBr?=
 =?utf-8?B?dSthOVAyNndkV1VEcldHeXA2cHNWTkZtQ2IzZnRESGRzUlZLWnpWSWpLa3hL?=
 =?utf-8?B?a1ZoaVpqK3N0UDF5TjVEOFpYNElWbHBlZnpSL255dytsMmxYdnQvbVF1YjlI?=
 =?utf-8?B?NENOeExZSEpEaXhHbmN1c2diUDAwQ1MzaW5JRURXZEllK1FueGF3R085dnBh?=
 =?utf-8?B?R1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 48896150-50bd-4ec7-0806-08db9e72711d
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2907.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2023 16:04:16.7800 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AWG5fPM9K2YGHh7Od7Mkyc2ImmePFgaoYNBmrpur63LmhHH4eqgQDzgcLj48fFUIg4n/oZ09tKLQ5FGtgjfzWdeEmCKqS8NwkemRMBHQtJo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6890
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Eliminate has_4tile feature
 flag
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


On 8/16/2023 8:48 PM, Matt Roper wrote:
> On Wed, Aug 16, 2023 at 12:16:25PM +0530, Kalvala, Haridhar wrote:
>> On 8/11/2023 5:16 AM, Matt Roper wrote:
>>> We don't really need a feature flag for has_4tile since there's a
>>> well-defined cutover point (DG2) at which all new platforms started
>>> using Tile4 as their Y-major tiling layout.  The GT side of the code
>>> already handles Tile4 vs legacy TileY with checks on the IP version
>>> rather than looking at the feature flag, and we can simplify the display
>>> code similarly (which will also make it more self-contained for re-use
>>> in the Xe driver).
>> Hi Matt,
>>
>> Looks good to me.
Reviewed-by: Haridhar Kalvala <haridhar.kalvala@intel.com>
>>> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>>>    drivers/gpu/drm/i915/i915_drv.h                     | 1 -
>>>    drivers/gpu/drm/i915/i915_pci.c                     | 1 -
>>>    drivers/gpu/drm/i915/intel_device_info.h            | 1 -
>>>    4 files changed, 1 insertion(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>>> index 215e682bd8b7..eb630a946343 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>>> @@ -32,6 +32,7 @@ struct drm_printer;
>>>    	func(overlay_needs_physical); \
>>>    	func(supports_tv);
>>> +#define HAS_4TILE(i915)			(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)
>> is this tab space aligned with below lines ?
> Yes, it's aligned with the code below.  But if you're just reading the
> diff, the extra column added for the '+' at the beginning of the line
> throws off the spacing.
>
>
> Matt
>
>>>    #define HAS_ASYNC_FLIPS(i915)		(DISPLAY_VER(i915) >= 5)
>>>    #define HAS_CDCLK_CRAWL(i915)		(DISPLAY_INFO(i915)->has_cdclk_crawl)
>>>    #define HAS_CDCLK_SQUASH(i915)		(DISPLAY_INFO(i915)->has_cdclk_squash)
>>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>>> index 7a8ce7239bc9..4c6852f0a61c 100644
>>> --- a/drivers/gpu/drm/i915/i915_drv.h
>>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>>> @@ -737,7 +737,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>>    #define CMDPARSER_USES_GGTT(i915) (GRAPHICS_VER(i915) == 7)
>>>    #define HAS_LLC(i915)	(INTEL_INFO(i915)->has_llc)
>>> -#define HAS_4TILE(i915)	(INTEL_INFO(i915)->has_4tile)
>>>    #define HAS_SNOOP(i915)	(INTEL_INFO(i915)->has_snoop)
>>>    #define HAS_EDRAM(i915)	((i915)->edram_size_mb)
>>>    #define HAS_SECURE_BATCHES(i915) (GRAPHICS_VER(i915) < 6)
>>> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
>>> index fcacdc21643c..df7c261410f7 100644
>>> --- a/drivers/gpu/drm/i915/i915_pci.c
>>> +++ b/drivers/gpu/drm/i915/i915_pci.c
>>> @@ -713,7 +713,6 @@ static const struct intel_device_info adl_p_info = {
>>>    	.has_3d_pipeline = 1, \
>>>    	.has_64bit_reloc = 1, \
>>>    	.has_flat_ccs = 1, \
>>> -	.has_4tile = 1, \
>>>    	.has_global_mocs = 1, \
>>>    	.has_gt_uc = 1, \
>>>    	.has_llc = 1, \
>>> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
>>> index dbfe6443457b..19d120728ff1 100644
>>> --- a/drivers/gpu/drm/i915/intel_device_info.h
>>> +++ b/drivers/gpu/drm/i915/intel_device_info.h
>>> @@ -150,7 +150,6 @@ enum intel_ppgtt_type {
>>>    	func(gpu_reset_clobbers_display); \
>>>    	func(has_reset_engine); \
>>>    	func(has_3d_pipeline); \
>>> -	func(has_4tile); \
>>>    	func(has_flat_ccs); \
>>>    	func(has_global_mocs); \
>>>    	func(has_gmd_id); \
>> -- 
>> Regards,
>> Haridhar Kalvala
>>
-- 
Regards,
Haridhar Kalvala

