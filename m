Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CB54955A4
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 21:49:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8FBA10E589;
	Thu, 20 Jan 2022 20:49:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A4AD10E589
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 20:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642711755; x=1674247755;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=vKVfKs2jxCKpuADzHgwTsezgY/omkGM7lPhDbyVwHtk=;
 b=QsgqZ65WCgAQzibZvgQsnQ4mrFzEBumCdKU3Jv5m3vutmkh1/R2zLnO0
 Bym+nBNxFkkOQvgw7s9Um+x6UoxQj9DM4PQyciQjX5yVxiShBDjJwmb5G
 wcJOkHGgjEOJZ3VjJyRThpMqv6BWM2Os9SXewKFdIONPJngpMk+P9uItI
 PHWm9wUdO5Dzc3Q4ghLPCHEpOaa6UIRyafPwDARSKLVwLSCTqKWJpgNb5
 3pJaY/hMHiCyYGdjme2zeekD0FAfpXOq1rffZfxvqjy+zm7d1cdjzHb2Q
 e/HMf3h72AzZteivZlvdzVE7IQeozFdG9+T8IOuIczj+Cd+QWnzkE9mF1 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="269883121"
X-IronPort-AV: E=Sophos;i="5.88,303,1635231600"; 
 d="scan'208,217";a="269883121"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 12:49:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,303,1635231600"; 
 d="scan'208,217";a="765463420"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 20 Jan 2022 12:49:03 -0800
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 20 Jan 2022 12:49:02 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 20 Jan 2022 12:49:02 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 20 Jan 2022 12:49:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mDOObrQf1VL0OozUBshccqQ5KGA5tmTbe2WZ8hGUZASx+OajQaqPinSZSEy2ss5ve59Znn7i+d/tJFxoVqBzBcj7InirYgMzbXEKkWNgRgQypGq41lQ0mDt7yh9tUpzuI80UrctQO8XN+53f+IOgY01AGcmFKpr/z1Dw5N8nhttSimPfAX2iNJAd9WTGQD9VXcKG+r5UQiE6T4tLqOraSUo/tFZHXdA9LNcdfaxJCSiOGHGik7xc/cL+cRY4TMataTNGVDt4m9L1w2Wp6dUaL2HTbZGfLTMErY0uNqssm6po2ZYbMaQoZEMdbztSEykIhjNC8/M3iZJ0rWchfsn7VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q8LAxaGQfoILGkas1RAk4scIcEEVGo5nE6vm4ptzBxI=;
 b=EfCVVGsl+PS25fyf7hFtUEk9R76FMva5A3rurjtvh1ALiDmoqs/GBLjC6qgKozibeH4cXtJdUYF76gUiC4RV9G7LXRNUnlpmrmAWVBW3ItjxQrz5yvHsM+SepV/c0T7WZaIcuZiE3ERTKp1Qf1Zlm6aVFa4qgcr4IcGzLIBNgSIlq+rBcvGq198vShB0mZy3g8sFSGsCk5/mhmlJ6uZFO+7v+EVvB4ANBjGOmVByZyrJkIOPkbe5A4IbM24ixv1EbASrApCAeNYBu9ThZs88J1v/FEtTyNLamo6EYmUl/6D2N5xRY4D5RM2BnYyArMZKES7ATzqInXjwPfMYeYf72w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by MWHPR11MB1933.namprd11.prod.outlook.com (2603:10b6:300:110::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.10; Thu, 20 Jan
 2022 20:49:00 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::396c:391f:397f:8906]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::396c:391f:397f:8906%5]) with mapi id 15.20.4909.010; Thu, 20 Jan 2022
 20:49:00 +0000
Content-Type: multipart/alternative;
 boundary="------------2gvH9Pl6DxYOVWRtloPCFqCZ"
Message-ID: <cc9af72c-5e31-6a6e-4afe-6eab65749e89@intel.com>
Date: Thu, 20 Jan 2022 12:48:58 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <20220120174243.13726-1-vinay.belgaumkar@intel.com>
 <164270762289.22531.15297114658625013709@emeril.freedesktop.org>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <164270762289.22531.15297114658625013709@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR13CA0048.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::23) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0fef4ad3-b90a-4b2a-651a-08d9dc564922
X-MS-TrafficTypeDiagnostic: MWHPR11MB1933:EE_
X-Microsoft-Antispam-PRVS: <MWHPR11MB1933D091FF6ED98BDB5367FC855A9@MWHPR11MB1933.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: K0B5kiLpGqVNv5KQcK4mnVDhdjcI4L28vxI4jLWlq/W7wIFH2wwwDq1AE6EoHc+lFE11HV/3qK6+S8efg3kL4B3eZlUNQhH9u/+6ZUO3dBcEVcxarirgr1iO5qHv+StzINvjIeLD3Nc8xVM7Dd+Q6vqOFtvdNll83QDmPRq8xM7l/rSumJGJZhFJcMZtv5LXwsGENmXUgtHra0A8rnUzQic32yF5wwgXPI8A6GElfPRusCIM38gTAzH8WlDgV6YfXEKCUaoeM5PAbF6VvCG7G5W3UTfY9HgyitXpSFr/qdE/5r0VZMUz8Dx5L6XmZdh9V7+d7Kjv2uvlq7+zKuf0JfFhbTZC/mB5XL0xzTiNzQ1a/jOMnRytutRjESwjSZZs/LThchBRASpvD4t48LolUJd9ShR2awpdKXBRKEVjSQjb3jYDr2k1nQKYQ8wXxzfqr7XKo2BLe/yetX+m+8Obqx3nwFjCeYgC3uLCrA7Cu6YSfnF/UHp2ataaYEA/ZUddKbNkElz36HCcBFmT03tsC0dCi9kRkwo2FdRnOJj/aP9n3lSW+50dSOrmxfezzc0RUfB55M0ZBgPIeVPnY4HEpPo1JabWeKyJSK86nUJKYM+9D9ghw5P2MWam/P9NcWtEr6jLTT2vcZVs+gSDowu6g2l4Ujd0QNgQdWuqwyw6lD97p4YNMhi0eATA08g5y5zz/MFWF6odQDPYfSYZse6g9vYohyagXPnYY8wimihqAMAV4eaAjhPP2YZTqx1wdBImjH9xtUv1D/WS+OZdMBppJ8p8apsAgTPBHYpCGXY03qnsWENcwRwfiaitDY1F8BUyrTIHnp0Oftp8r3vzo7E0H8eRUUAP4GXARq8GwIgyzmQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(82960400001)(38100700002)(166002)(83380400001)(6512007)(6486002)(2616005)(2906002)(316002)(508600001)(966005)(36756003)(86362001)(21615005)(31686004)(31696002)(8936002)(40265005)(33964004)(26005)(5660300002)(66556008)(66476007)(66946007)(30864003)(186003)(6506007)(53546011)(6916009)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N1puNTlSOFpud1FmZFI2SzRPTU5SSEJQdlV2ejJYbmFubzZQSWZsNzlNOU5F?=
 =?utf-8?B?aGpVTWJtWVZ2Nit6VVA1NlhDT1hkQXpMbTlKR1hVVWtzV1JRMEQwcW1rTkNO?=
 =?utf-8?B?MC9zVnpJMExFN3YxNFp3TzR1ZG44NW5GS0Z2QUZ6SGUzeE5MalBMVlBQdFFW?=
 =?utf-8?B?cmdSZkxOY2tuWGsyWXZ0bVorVUJIemkxRndLeHVqRzF1cFBlN0dSeWdqRUpt?=
 =?utf-8?B?Vm80djVzMlMrYVFlcmVOUWZ4RWYzSFBaSDd2dlhqNXJPcStCNDcxSndsNGNm?=
 =?utf-8?B?WnlUWWFXd2JpRzNubFhFVUY5ODJHUkhkOUhMc2dMQnk2RjBCYS8vYTVBL0kv?=
 =?utf-8?B?MHpGNEpKVHdycTJsVzg0VHk2VVhta0l5THUwRkYvZ3VaNUJlN0FteXV6dmp4?=
 =?utf-8?B?cWZneFZhbVZBMks4RnZ1elY4Zy9JMkRBQTBQYXl1Z0dTVCs5TEIzTmxweDdV?=
 =?utf-8?B?dGROM3hxMU5wNWpjc25DT3ZCdk1vY2F3RXhoUXUyeXMyQUdvRDVDcnF0M0tn?=
 =?utf-8?B?SkdkNDZnUStvNHMvZElLU2JQWTFyTFkzdHN4YzdKb2JSa3lrUVFBYzVLK1Nh?=
 =?utf-8?B?R0gzVGJGbzhOWU9WQTBVMTJnOVoxUk1GT0NHVGNwME81OVRZQU50N2p5ejBy?=
 =?utf-8?B?SDc1eW9nWjZ5aXFlUldPSG5CM2x5ZEdsa3R5WDBreUp5eFkyMUw1b2Irekhr?=
 =?utf-8?B?M3k3NkFpZEdtV2FYMzFQSFBqS3F6bkhhWXBmcWpIbGlYbml6dkUzRmZrT1Jz?=
 =?utf-8?B?SjFDZXFkK0lIQ2ErR1gycUpwTjRzOWhDeW5KeTNrTFVLeGtWdWFPbDRLTWM3?=
 =?utf-8?B?NmdXWS9FSWd4aVM2My9Yd1ozVHo4YWlUbDJEWXhSenhZdWNhZW1GeEhkS0ZL?=
 =?utf-8?B?RzNtb21McWl0L280aTdGc3ltU0R6MUpvcURLRnRjYjJqSnVvcXlhRktBNFY3?=
 =?utf-8?B?NGxHZUtUcjhEeFpWYk1XSGY2Qk5YTEJLYXpvUGNxeVh1cXRBL1NWQ2FYZWJs?=
 =?utf-8?B?MStxUFVMUlJXZzNmVE8yeDB1a0RvV05WM0RUbnZ2TGhvYzJnN0NoOHdOWUNS?=
 =?utf-8?B?bG4yZ0Q4WnVPZ2lsekZVRXVVRTNqT1o0a0dVcWk2TTV5SkVKMXRML0d1SkpS?=
 =?utf-8?B?OTJFZzN2SUkxdFhMR0NUeTFrTW9lSjNBNWJ0eWYzdDhqWURIcFhaL1dSRzhP?=
 =?utf-8?B?N25sNmE4K01VTUxLU0RncXI1bnUwd0ppWEo3d3VZb0JFOVBhb0NBZGkwczlz?=
 =?utf-8?B?VFcxa2RITGdvNHlCalNJZlpjTkFpazZqeUZUYnF2UHJlejUxa0Y1c0Z0RCtE?=
 =?utf-8?B?blNLcnkxcnZxeEhrd1l5YTk4cFQrd0drb004MFBlTzBGOEdQakFFVXdTSGNG?=
 =?utf-8?B?d1FsQ3NvdU9pMWgzM1Y4N2U2NXhySmJiWDR0OEhCVTN3TVNXMlczem82T3lx?=
 =?utf-8?B?ZnZvM05VOUR2M0lHVE1TV2VFaW80ODY5N2poWm1uSkxTRkdJWnE3a24xTFBw?=
 =?utf-8?B?MHpTL3dCVlFKbzRDYzBibE9abjFZVmNYeFdjMHVIR0JzYmRHM2ZIbXgvbVV3?=
 =?utf-8?B?YUIybTlUcDFQaWVYV1ZZVU82NHpUcmNpZUMyYVBNdkhDYWhyamIzeENCeDEx?=
 =?utf-8?B?dkFWNzFxbmxGYVFkUHZnWEdIaVNVQU9IUHI2VzBxdXdaN3pLcWppQldqYnZj?=
 =?utf-8?B?T3E0UHNHeUJWZlc3MTVtQ1NIRUZkeWxCcHdxUmRBQmZPUGpJNG9kYW1vdFZw?=
 =?utf-8?B?TWtPMkNvZmx5OFdtcmQwdTh4VmdNeTdDbkpxQVhrZHE2eGJEMlRYelVSbExM?=
 =?utf-8?B?Tjl6UmE4MDZwNjgya0VwandrMHlGNXYrTWFWWkJyWUcyZllBaDd6S09RaVZC?=
 =?utf-8?B?ekpNelA1RjVyNXZXaXNVOE82WEpBUmdDNmVvRkFwNzhCdnVkR2ZocTNWWTNs?=
 =?utf-8?B?YU9wT1lLSVFtbzl6UVI4MzErQnhyRHZrMUZlbTFRUzl1bzRVTCtlWWlRdWE4?=
 =?utf-8?B?QU1hVWZPNzlpWHNJemZ1Y2tFa1VqTXVvSVh0am90VFVyNkpkVWc5eUY1OUZH?=
 =?utf-8?B?SERQTUdmaXRaNk55ZERWaS9BSmRjc1h6czIvOFFQbS92TXNIK1AvK0ZXZDZt?=
 =?utf-8?B?RGNJRGRPY0NIMDJ5VHVvL1ZjQVpFaW9DeGlyN2RObzQxRG80RGE3UjhRaFJk?=
 =?utf-8?B?TDlYUEtlcm9uQjBHWm5vd1poU3RKOXZuN3VNakh5Z3ZrVXJkTHZlM3NINGtY?=
 =?utf-8?B?YnRkTFZpR2Radjlha01UUG02bXJBPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fef4ad3-b90a-4b2a-651a-08d9dc564922
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2022 20:49:00.3799 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PIB9VexYXEkENFSibIkmMaZYdvVdVsyVx/PDdmiNsNCRTDaADHWKY2nr7U1Vx80pNldkTI7e00liETks/D68eAqm2uZFIXhxwbi6byuLW0w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1933
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Don=27t_restart_WL_for_every_frequency_step?=
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

--------------2gvH9Pl6DxYOVWRtloPCFqCZ
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 1/20/2022 11:40 AM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915/selftests: Don't restart WL for every frequency step
> *URL:* 	https://patchwork.freedesktop.org/series/99109/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/index.html
>
>
>   CI Bug Log - changes from CI_DRM_11113 -> Patchwork_22043
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_22043 absolutely need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_22043, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/index.html
>
>
>     Participating hosts (43 -> 35)
>
> Additional (3): fi-kbl-soraka fi-kbl-guc fi-apl-guc
> Missing (11): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-6 bat-adlp-4 
> fi-kbl-8809g fi-pnv-d510 bat-rpls-1 fi-bdw-samus bat-jsl-2 bat-jsl-1
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_22043:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@i915_selftest@live@gt_engines:
>       o fi-rkl-guc: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11113/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html>
>
This failure is not related to the patch. It only changes a selftest, so 
shouldn't affect any other test.

Thanks,

Vinay.

>  *
>
>
>     Known issues
>
> Here are the changes found in Patchwork_22043 that come from known issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@debugfs_test@read_all_entries:
>
>       o fi-apl-guc: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-apl-guc/igt@debugfs_test@read_all_entries.html>
>         (i915#1610 <https://gitlab.freedesktop.org/drm/intel/issues/1610>)
>  *
>
>     igt@gem_exec_fence@basic-busy@bcs0:
>
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +8
>         similar issues
>  *
>
>     igt@gem_exec_suspend@basic-s3@smem:
>
>       o fi-skl-6600u: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11113/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html>
>         (i915#4547 <https://gitlab.freedesktop.org/drm/intel/issues/4547>)
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>  *
>
>     igt@gem_lmem_swapping@basic:
>
>      o
>
>         fi-kbl-guc: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-kbl-guc/igt@gem_lmem_swapping@basic.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>         similar issues
>
>      o
>
>         fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>         similar issues
>
>  *
>
>     igt@i915_selftest@live@gt_pm:
>
>       o fi-kbl-soraka: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html>
>         (i915#1886
>         <https://gitlab.freedesktop.org/drm/intel/issues/1886> /
>         i915#2291 <https://gitlab.freedesktop.org/drm/intel/issues/2291>)
>  *
>
>     igt@i915_selftest@live@hangcheck:
>
>       o fi-snb-2600: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11113/fi-snb-2600/igt@i915_selftest@live@hangcheck.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-snb-2600/igt@i915_selftest@live@hangcheck.html>
>         (i915#3921 <https://gitlab.freedesktop.org/drm/intel/issues/3921>)
>  *
>
>     igt@kms_busy@basic:
>
>       o fi-kbl-guc: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-kbl-guc/igt@kms_busy@basic.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845>)
>  *
>
>     igt@kms_chamelium@common-hpd-after-suspend:
>
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8
>         similar issues
>  *
>
>     igt@kms_chamelium@vga-hpd-fast:
>
>       o fi-kbl-guc: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-kbl-guc/igt@kms_chamelium@vga-hpd-fast.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8
>         similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@basic:
>
>       o fi-cml-u2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11113/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html>
>         (i915#4269 <https://gitlab.freedesktop.org/drm/intel/issues/4269>)
>  *
>
>     igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>
>      o
>
>         fi-kbl-guc: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-kbl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#533 <https://gitlab.freedesktop.org/drm/intel/issues/533>)
>
>      o
>
>         fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#533 <https://gitlab.freedesktop.org/drm/intel/issues/533>)
>
>  *
>
>     igt@kms_pipe_crc_basic@read-crc-pipe-c:
>
>       o fi-kbl-guc: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-kbl-guc/igt@kms_pipe_crc_basic@read-crc-pipe-c.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +40
>         similar issues
>  *
>
>     igt@runner@aborted:
>
>      o
>
>         fi-apl-guc: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-apl-guc/igt@runner@aborted.html>
>         (i915#2426
>         <https://gitlab.freedesktop.org/drm/intel/issues/2426> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>
>      o
>
>         fi-rkl-guc: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-rkl-guc/igt@runner@aborted.html>
>         (i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>
>
>         Possible fixes
>
>   * igt@gem_exec_suspend@basic-s0@smem:
>       o fi-tgl-1115g4: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11113/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0@smem.html>
>         (i915#1888
>         <https://gitlab.freedesktop.org/drm/intel/issues/1888>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0@smem.html>
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_11113 -> Patchwork_22043
>
> CI-20190529: 20190529
> CI_DRM_11113: 57f2665c86d2a07d1376495039e73cc06fe3a517 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6329: 38f656fdd61119105ecfa2c4dac157cd7dcad204 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_22043: d8a9b640c217628068101921ce0a1baf5d32d2a8 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
>
> == Linux commits ==
>
> d8a9b640c217 drm/i915/selftests: Don't restart WL for every frequency step
>
--------------2gvH9Pl6DxYOVWRtloPCFqCZ
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 1/20/2022 11:40 AM, Patchwork wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:164270762289.22531.15297114658625013709@emeril.freedesktop.org">
      
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915/selftests: Don't restart WL for every frequency
              step</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href="https://patchwork.freedesktop.org/series/99109/" moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/99109/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/index.html" moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_11113 -&gt; Patchwork_22043</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_22043 absolutely
        need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_22043, please notify your bug team to
        allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/index.html</a></p>
      <h2>Participating hosts (43 -&gt; 35)</h2>
      <p>Additional (3): fi-kbl-soraka fi-kbl-guc fi-apl-guc <br>
        Missing (11): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-6
        bat-adlp-4 fi-kbl-8809g fi-pnv-d510 bat-rpls-1 fi-bdw-samus
        bat-jsl-2 bat-jsl-1 </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_22043:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@i915_selftest@live@gt_engines:
          <ul>
            <li>fi-rkl-guc: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11113/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html" moz-do-not-send="true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <p>This failure is not related to the patch. It only changes a
      selftest, so shouldn't affect any other test.<br>
    </p>
    <p>Thanks,</p>
    <p>Vinay.<br>
    </p>
    <blockquote type="cite" cite="mid:164270762289.22531.15297114658625013709@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_22043 that come from
        known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@debugfs_test@read_all_entries:</p>
          <ul>
            <li>fi-apl-guc: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-apl-guc/igt@debugfs_test@read_all_entries.html" moz-do-not-send="true">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610" moz-do-not-send="true">i915#1610</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fence@basic-busy@bcs0:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a>) +8 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_suspend@basic-s3@smem:</p>
          <ul>
            <li>fi-skl-6600u: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11113/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547" moz-do-not-send="true">i915#4547</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190" moz-do-not-send="true">i915#2190</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@basic:</p>
          <ul>
            <li>
              <p>fi-kbl-guc: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-kbl-guc/igt@gem_lmem_swapping@basic.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613" moz-do-not-send="true">i915#4613</a>) +3 similar
                issues</p>
            </li>
            <li>
              <p>fi-kbl-soraka: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613" moz-do-not-send="true">i915#4613</a>) +3 similar
                issues</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gt_pm:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html" moz-do-not-send="true">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886" moz-do-not-send="true">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2291" moz-do-not-send="true">i915#2291</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@hangcheck:</p>
          <ul>
            <li>fi-snb-2600: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11113/fi-snb-2600/igt@i915_selftest@live@hangcheck.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-snb-2600/igt@i915_selftest@live@hangcheck.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921" moz-do-not-send="true">i915#3921</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_busy@basic:</p>
          <ul>
            <li>fi-kbl-guc: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-kbl-guc/igt@kms_busy@basic.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845" moz-do-not-send="true">i915#1845</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@common-hpd-after-suspend:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827" moz-do-not-send="true">fdo#111827</a>) +8 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@vga-hpd-fast:</p>
          <ul>
            <li>fi-kbl-guc: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-kbl-guc/igt@kms_chamelium@vga-hpd-fast.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827" moz-do-not-send="true">fdo#111827</a>) +8 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@basic:</p>
          <ul>
            <li>fi-cml-u2: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11113/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html" moz-do-not-send="true">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269" moz-do-not-send="true">i915#4269</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
          <ul>
            <li>
              <p>fi-kbl-guc: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-kbl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533" moz-do-not-send="true">i915#533</a>)</p>
            </li>
            <li>
              <p>fi-kbl-soraka: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533" moz-do-not-send="true">i915#533</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@read-crc-pipe-c:</p>
          <ul>
            <li>fi-kbl-guc: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-kbl-guc/igt@kms_pipe_crc_basic@read-crc-pipe-c.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a>) +40 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@runner@aborted:</p>
          <ul>
            <li>
              <p>fi-apl-guc: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-apl-guc/igt@runner@aborted.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426" moz-do-not-send="true">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312" moz-do-not-send="true">i915#4312</a>)</p>
            </li>
            <li>
              <p>fi-rkl-guc: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-rkl-guc/igt@runner@aborted.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312" moz-do-not-send="true">i915#4312</a>)</p>
            </li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>igt@gem_exec_suspend@basic-s0@smem:
          <ul>
            <li>fi-tgl-1115g4: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11113/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0@smem.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888" moz-do-not-send="true">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22043/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0@smem.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_11113 -&gt; Patchwork_22043</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_11113: 57f2665c86d2a07d1376495039e73cc06fe3a517 @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_6329: 38f656fdd61119105ecfa2c4dac157cd7dcad204 @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_22043: d8a9b640c217628068101921ce0a1baf5d32d2a8 @
        git://anongit.freedesktop.org/gfx-ci/linux</p>
      <p>== Linux commits ==</p>
      <p>d8a9b640c217 drm/i915/selftests: Don't restart WL for every
        frequency step</p>
    </blockquote>
  </body>
</html>

--------------2gvH9Pl6DxYOVWRtloPCFqCZ--
