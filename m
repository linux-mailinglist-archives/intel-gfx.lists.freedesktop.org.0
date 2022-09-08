Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 312855B2342
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 18:14:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DA2210EB4A;
	Thu,  8 Sep 2022 16:14:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 000BA10EB4A
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 16:14:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662653651; x=1694189651;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=JPemE7kRyVuoa43G+3vx2oBHtarulh6CXsdrSAC7iaE=;
 b=FhYp8M4Q/TaJc3zIi2yQgU4JopPHmeX2iVHIiPGOSfqmxkZh6ETKvnkn
 od5QeTZvYXkIg+Ipp+1p5/xcN4kgBPYOvFgzQsZUm8XnL2HgObgFhIFDf
 AszuxYWGMVUjNV+9h0cnkcBnumYfe/2OJPeFp2e/1oyEswa3w5bc9EL3s
 RX1R3p4BfyZgWnR9Ql5zSdGqLKWj8eVxtTbMuR+yVFpTbzPOU7xO8BfTW
 micVLPjLxqeyHSqu0T72O/WRBXlbqwDbhTEqlx8cCgPwCrSQwZ2LWBVRk
 I/89ZX/Ncf2MD2ai5Ot9Jt2a3H6MlXP+FO8Sv31pAPSFle+h0psM1Uco2 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="276972601"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; 
 d="scan'208,217";a="276972601"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 09:14:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; 
 d="scan'208,217";a="757259192"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 08 Sep 2022 09:14:11 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 8 Sep 2022 09:14:10 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 8 Sep 2022 09:14:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 8 Sep 2022 09:14:10 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 8 Sep 2022 09:14:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IiN2f3MVpIKDyl26WrmoBLkaKb6yJI8LUqxYzZwZvr5NgbgaCUckIir8HLKe2bLx7B7wLPMpNX122VIlMTpZf5uvTcjlQ0M9XZeMKPvYuepG4aaiMw+Jb5/CZx2+tDs8WTabOCaqp4ATalxehQ2zWTemaKzjDgNGpAoNhOasU+CRLcNtcXlOEt80EI0ijXcIO6JPNkVnQThO/TnBcyLVTMB6QnobsFOtBkHz0BaLsxgpRrVzhmZ+Ky8Ntr3STvfSVa5VTlVhdLi+1tdsIzz0/zGt8LwjAxfaIgmLSqev81x/7R3EdwZd/g7pPKRuO6ZTAwOCLqDEcD8hPLaZBJjOhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ug7s6i5VTEsSEE3cnbE6itPvYwl4w+YHlafSXSA6MIo=;
 b=WkoB76gFMtPkKgIh4RBC7iqR53NhGUDQACtrBa0G8GgbzVRbsIze717Cth6eygYcNFER0Wr13ijk+QOyJt4FqA9gTkVrsO7CCFA4gNPXoKhktQb/rFVoMG0dY9ZX0sSs/PYeTKY/MZdStzKPkd/U87BMjJ1eDCoTHFe907rrUigPr1mhDT9cIY3xxXyKO/enwuj9tqxZ5XTeQg3udrmlHW/JUy9Ou6wHOewf4ZB3PPvm8ttMyfRwlSmOOudC81osltdWgRkGPvEFk17gQP8mtswhc0vbAPlnWL1ykNF8mcRZCa9iKKccO0eAwVu/HOFdzTzGBG3XKM1PY3LBD0hgaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM6PR11MB3324.namprd11.prod.outlook.com (2603:10b6:5:59::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5612.12; Thu, 8 Sep 2022 16:13:51 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::1977:59e7:5a28:24e1]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::1977:59e7:5a28:24e1%9]) with mapi id 15.20.5588.017; Thu, 8 Sep 2022
 16:13:51 +0000
Content-Type: multipart/alternative;
 boundary="------------Rw6SX3R0HWCeTttofDE79hoX"
Message-ID: <960d9ae1-86aa-29cf-1760-a2d7a8bddfe3@intel.com>
Date: Thu, 8 Sep 2022 09:13:49 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>, Tomas Winkler <tomas.winkler@intel.com>
References: <20220907215113.1596567-1-tomas.winkler@intel.com>
 <166261687484.27232.6801570669346649600@emeril.freedesktop.org>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <166261687484.27232.6801570669346649600@emeril.freedesktop.org>
X-ClientProxiedBy: BY5PR20CA0013.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::26) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 849ad18c-f102-40cd-4aed-08da91b51e4b
X-MS-TrafficTypeDiagnostic: DM6PR11MB3324:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AbhgTtT/1MN5aGAPLtfsrtt8vL4+cY9CGFThV2guxFGY5RciIVs2xPBgRSeQWFfQxN0sv9+RMHyYwSHEforkBNBZXM//VYUuoQ8WXAWzFXCOVJVyRuVm3sVEd4c4RbTz7tpNn2huUsqGzghB+FD7KbHz0yE/LnceCiGTXmOgFX9vnl02pvcDxl7VwVCRUGmvMkUcx5MwjRe0TndS18VdlNDTr5Qw28H+/ULeQzpA5EDepqIVfT+v65eTzCIelq73Wd9NLa4y43cHKfQnAQzY45dRMH6+l7Enw9xFUjPh6uZszgv3fLG1v3+kobwuI2DHvpVncIQs4bNXFPBxIEMiBEF1hzE2sOCZ4U619qa2IFRKvPlIXjDwqMFG2mLoW72rRbjNJQaacP1/6cv3WJEW1/It4Psa8YEefhauRcOC4dhss56fpCMaFvwFp0sEhvAFVv+yYUluCCx53JaLDvCCVIuhxeQZdxeDq1JeEnqklJ64YflsTYyGtw4MeeY0A5ym3oJHcgiLS+yzc0nzJzK7R8xqXSDaUlKPczaQRGjM52Ff+JJgapW0ICm7krc7E39oy0/znaO9qXaNAXQwh40cY1PSiPjtbbW4qG6IKb5AIs8BoPUDcCR9EBoPGUVf1z5jT1BFoyNGdvA3/LTo2UGq5TmfUXP0Cp0SB0XgFeS0uO7Pa2xVmv2W4a20mRIUAduXd/j1anqf2xe5U2zUbJDs/vy/eb0ogXNn4hMZykDQwP5E/MRNLxouJi96mxXZBZNffIxMonREegKESg4LnO8N8iPpCx2uO71FxysA8FScFxYj11Kfw5MQvSZEL1/wg9haiuzIeKInQPdHuVKVsj/xIQxf2ViX4ddSuJ/NqMXbOAM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(396003)(376002)(346002)(39860400002)(366004)(186003)(316002)(36756003)(40265005)(166002)(5660300002)(41300700001)(30864003)(37006003)(31686004)(83380400001)(6636002)(6506007)(6486002)(82960400001)(478600001)(8936002)(66946007)(66476007)(38100700002)(2616005)(66556008)(6862004)(966005)(21615005)(31696002)(33964004)(86362001)(53546011)(6512007)(2906002)(26005)(43740500002)(45980500001)(559001)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WXdLanBpV0RxLytIcWF1RlZoc1ZwbXh6WTEvZkJwdUNRbkVPNURHdTdDVldY?=
 =?utf-8?B?R0JtVXVCRXpUcmkyQkx0Y1cxL2pTY1dwemJIODB5TC9rVFF2N01OUlZQK1hZ?=
 =?utf-8?B?OHlzaG0xRHhPWDBCOWNWZU5wOXBVN3VhZFRnMDN6RHFocUdOdU16SVN6YmxC?=
 =?utf-8?B?dUpRY3g5QWRFWEZBaDQrallmSTRleUFjTEpKOXg4Qi8rUGdrTnE0QWNVYUNZ?=
 =?utf-8?B?b09VZlFBaHRlaTYvSTZVa08xZE52cmN1RkNDTHNacWYwMFgveXBUbVVpUjR2?=
 =?utf-8?B?cGVJTS9qWGZvN3BHVWVXV2JjcHBBSUxoMU1TY21icVRmQ1dyelBLZGdHSTYz?=
 =?utf-8?B?cjJYdnMvblZqSXlYYjVWUnFib3BqZVg4QUdVVW9GV082UEoxVktPZzFLTmFY?=
 =?utf-8?B?S2tJRUw0ZTVWTG1tR0xqMEhyTEJpam04ZFVYM040dk9pS21Pb0d0eHd3N2dp?=
 =?utf-8?B?L0ZiTExUUE14cmtBc3FxWTVVQ2JjZkplS2RpSlRaN2RZS1RMR3FoRkx4STMv?=
 =?utf-8?B?N1BEVDM1cTU2WXZ1WGdhUDdSb3FoSlZzemkyY3RJOU5ma3NCNy9RanBCRXNL?=
 =?utf-8?B?aHNkb2U4RjZudzJCaWhNTUZnbHNYNTd3cWMwNkkvcFdDVWdpRDI4VXV2TlN5?=
 =?utf-8?B?NEh4d3NvWSt5cUVFM1ViMnlMOHhQcGF4UXFicHZtekxyK0tLL0p2Z1FXeFg2?=
 =?utf-8?B?eXZQSlc2SXJxWjZ6QnlJWEtSS0kzdXFnbHVTcnhiYjkyZyszRFhPNGQvc3Z5?=
 =?utf-8?B?R0RCUml6OUg2QjlFNnBQM3J3U28xa1BWbXN4dTVuV2ZFZjFsclNwaXhITWVF?=
 =?utf-8?B?TEpybHd1QzlFaU41MmswTSthRU40MS9UVXBCeFRkS1dDVTdZT2Q4aVlEYXlq?=
 =?utf-8?B?Q0ZtdmRLVlpQeWErbk94SlIvTFBmdnc1OFVlQ1MwdEFWUWRycG9KME1NakVF?=
 =?utf-8?B?OW5KNVNaUHI2MGFQcytOUHRrc2RTSDFNbGlCbHNHSVJpTUxjajNIWURpa200?=
 =?utf-8?B?Y3dvSE9oQ3AwVllUQzRXWE9hTjFsb2k4RGErNyt2bkNGNGJQNGFYaTlTQUNt?=
 =?utf-8?B?UVhyYkhLR2RoZExCb1dRdkFVK2kxUXhTVWVJRzMvdnZtdXRFNllsK1h0L2lq?=
 =?utf-8?B?d1BhQW45b1U4Mkh1NysxeXMxVzY1TTdvMDBzSTlzZEY5eU5yekFlVmlqOUx5?=
 =?utf-8?B?SkxTdUQvTWhmSWFHb1Y5aXNveHJGcjR3RHdvdGdXV2FjQkdNWklHN1hmdk5B?=
 =?utf-8?B?b09PM0RLZUNFNytwZzJZUVQwTGhBYnMrRnRuQlhObStrZHFuRzRrYUlKM0NV?=
 =?utf-8?B?TDFic0JWNHgwRGhWZ3V3MHVxdTdVQzZEWDkwVHN5Tm03U2hFaVM4eEhNTTN2?=
 =?utf-8?B?NGFWaDlEdTBiMHlyL250VjV4a25FeVZ1OHYvVVVRWFBrWkl4bnFYSThaYm1W?=
 =?utf-8?B?dmxaWXA2bGJpcGNGamlORUpHRFA2MVo4c2xBMENzb2k1Q0tGamxmRVllL0R2?=
 =?utf-8?B?OG44YUVLOHg4Mis5YXdYK0F1TWRFMDY0WGRQeHYrZmZ3L0xCdkpHMUdYL3Jk?=
 =?utf-8?B?MjlnTmw4K3ZTWHVRTzF4NUZ0MzRiWEVKZmxScVROZzh0WVcrMFVGWjh4ZnBN?=
 =?utf-8?B?OFRGMS9DSVZvZ29icExTaHY1MUxpTVRIQy9NRDBkTTM3Undpc2pNUkJXdFZw?=
 =?utf-8?B?MVpwL3crS3FpaWdIZUtKQzRrSWVLYksrU0ZheUJ0dlZTWC9yb0JmSjJJTms3?=
 =?utf-8?B?TVJSUUFHNGljbG05VlNEL05VSHIyQWNicUhoTWNTYTNXVjJMT250ays4Q3Y4?=
 =?utf-8?B?cGtiYVl5VXBwV3REcDRJekhUeElrM0I2bTdBY0JqTVc4Ulk4eGs5QWhhMXY3?=
 =?utf-8?B?TTFOVU1KNDNCcnJ2aTNGM2ZmYkdEMDdNTjV0NjFSM0tFMllqUGtKRUU3VFNQ?=
 =?utf-8?B?aWRjTzRDNU12NURVTzBxVFdlWWg1QllLWEZpQWVrTHRTNk9jdzJGTUZZaDI3?=
 =?utf-8?B?WXcraThnb2lMRFR4NUlRdHo1OGVxSFZOMVNtNnQza3VKVkhxK1daNkpLbjVD?=
 =?utf-8?B?ekdnWFYwRGdVaFV1c1U5aXJ2NE14clF6d20yWWVCSWFTVXlWTE91cXlHa3A4?=
 =?utf-8?B?Nk5IUktoQlYzU2lrQkVjaElVVFNJcW5qQ3B6Sm1tMTRtTjRhU3BMeFE1RXdm?=
 =?utf-8?Q?kOJlIPzXj9hn4lQBiVSEeU4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 849ad18c-f102-40cd-4aed-08da91b51e4b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2022 16:13:51.2063 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3KzMPDjD6K4qqmVRA0Ox4yCOkkwFUHqUuvEAV57v8gTcpGXO+z4qkCqVIKStrsNSdr+shwjRpDcWxJ5GZlFUhPRKX0TY7AVkRpxxewrZJSg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3324
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgR1ND?=
 =?utf-8?q?_support_for_XeHP_SDV_and_DG2_=28rev5=29?=
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

--------------Rw6SX3R0HWCeTttofDE79hoX
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit



On 9/7/2022 11:01 PM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	GSC support for XeHP SDV and DG2 (rev5)
> *URL:* 	https://patchwork.freedesktop.org/series/106638/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/index.html
>
>
>   CI Bug Log - changes from CI_DRM_12090_full -> Patchwork_106638v5_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_106638v5_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_106638v5_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (12 -> 12)
>
> No changes in participating hosts
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_106638v5_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@i915_module_load@reload-with-fault-injection:
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-tglb2/igt@i915_module_load@reload-with-fault-injection.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-tglb2/igt@i915_module_load@reload-with-fault-injection.html>
>

This is unrelated to this series. It does however look related to the 
GuC fw fetch changes that have gone in recently, so I'm going to follow 
up on this.

Series pushed to gt-next.

Daniele

>  *
>
>
>     Known issues
>
> Here are the changes found in Patchwork_106638v5_full that come from 
> known issues:
>
>
>       CI changes
>
>
>         Issues hit
>
>   * boot:
>       o shard-glk: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk1/boot.html>)
>         -> (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk1/boot.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk1/boot.html>)
>         (i915#4392 <https://gitlab.freedesktop.org/drm/intel/issues/4392>)
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@feature_discovery@display-2x:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@feature_discovery@display-2x.html>
>         (i915#1839 <https://gitlab.freedesktop.org/drm/intel/issues/1839>)
>  *
>
>     igt@gem_eio@unwedge-stress:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-tglb1/igt@gem_eio@unwedge-stress.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-tglb6/igt@gem_eio@unwedge-stress.html>
>         (i915#3063 <https://gitlab.freedesktop.org/drm/intel/issues/3063>)
>  *
>
>     igt@gem_exec_balancer@parallel-out-fence:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-iclb4/igt@gem_exec_balancer@parallel-out-fence.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb8/igt@gem_exec_balancer@parallel-out-fence.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) +1
>         similar issue
>  *
>
>     igt@gem_exec_capture@capture-recoverable:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@gem_exec_capture@capture-recoverable.html>
>         (i915#6344 <https://gitlab.freedesktop.org/drm/intel/issues/6344>)
>  *
>
>     igt@gem_exec_fair@basic-deadline:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk2/igt@gem_exec_fair@basic-deadline.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk3/igt@gem_exec_fair@basic-deadline.html>
>         (i915#2846 <https://gitlab.freedesktop.org/drm/intel/issues/2846>)
>  *
>
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>
>      o
>
>         shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +2
>         similar issues
>
>      o
>
>         shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-apl8/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>
>  *
>
>     igt@gem_exec_fair@basic-pace@vcs1:
>
>       o shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@gem_exec_fair@basic-throttle@rcs0:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +1
>         similar issue
>  *
>
>     igt@gem_lmem_swapping@verify-ccs:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@gem_lmem_swapping@verify-ccs.html>
>         (i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>  *
>
>     igt@gem_lmem_swapping@verify-random:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-apl2/igt@gem_lmem_swapping@verify-random.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +2
>         similar issues
>  *
>
>     igt@gem_pread@exhaustion:
>
>       o shard-apl: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-apl8/igt@gem_pread@exhaustion.html>
>         (i915#2658 <https://gitlab.freedesktop.org/drm/intel/issues/2658>)
>  *
>
>     igt@gem_pxp@verify-pxp-stale-ctx-execution:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@gem_pxp@verify-pxp-stale-ctx-execution.html>
>         (i915#4270 <https://gitlab.freedesktop.org/drm/intel/issues/4270>)
>  *
>
>     igt@gem_userptr_blits@vma-merge:
>
>       o shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@gem_userptr_blits@vma-merge.html>
>         (i915#3318 <https://gitlab.freedesktop.org/drm/intel/issues/3318>)
>  *
>
>     igt@gen9_exec_parse@batch-without-end:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@gen9_exec_parse@batch-without-end.html>
>         (i915#2856 <https://gitlab.freedesktop.org/drm/intel/issues/2856>)
>  *
>
>     igt@i915_selftest@live@hangcheck:
>
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-snb2/igt@i915_selftest@live@hangcheck.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-snb5/igt@i915_selftest@live@hangcheck.html>
>         (i915#3921 <https://gitlab.freedesktop.org/drm/intel/issues/3921>)
>  *
>
>     igt@kms_big_fb@4-tiled-32bpp-rotate-270:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html>
>         (i915#5286 <https://gitlab.freedesktop.org/drm/intel/issues/5286>)
>  *
>
>     igt@kms_big_fb@linear-16bpp-rotate-270:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@kms_big_fb@linear-16bpp-rotate-270.html>
>         (fdo#110725
>         <https://bugs.freedesktop.org/show_bug.cgi?id=110725> /
>         fdo#111614 <https://bugs.freedesktop.org/show_bug.cgi?id=111614>)
>  *
>
>     igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html>
>         (fdo#110723 <https://bugs.freedesktop.org/show_bug.cgi?id=110723>)
>  *
>
>     igt@kms_big_joiner@basic:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@kms_big_joiner@basic.html>
>         (i915#2705 <https://gitlab.freedesktop.org/drm/intel/issues/2705>)
>  *
>
>     igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_rc_ccs:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-apl8/igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_rc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +102
>         similar issues
>  *
>
>     igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html>
>         (fdo#109278
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109278> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +1
>         similar issue
>  *
>
>     igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-apl2/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +3
>         similar issues
>  *
>
>     igt@kms_ccs@pipe-d-random-ccs-data-4_tiled_dg2_mc_ccs:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@kms_ccs@pipe-d-random-ccs-data-4_tiled_dg2_mc_ccs.html>
>         (fdo#109278
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109278>) +4
>         similar issues
>  *
>
>     igt@kms_chamelium@dp-crc-fast:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@kms_chamelium@dp-crc-fast.html>
>         (fdo#109284
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109284> /
>         fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>  *
>
>     igt@kms_chamelium@dp-frame-dump:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-apl2/igt@kms_chamelium@dp-frame-dump.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +3
>         similar issues
>  *
>
>     igt@kms_content_protection@lic:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@kms_content_protection@lic.html>
>         (fdo#109300
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109300> /
>         fdo#111066 <https://bugs.freedesktop.org/show_bug.cgi?id=111066>)
>  *
>
>     igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html>
>         (fdo#109274 <https://bugs.freedesktop.org/show_bug.cgi?id=109274>)
>  *
>
>     igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) +1
>         similar issue
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +7
>         similar issues
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html>
>         (i915#6375 <https://gitlab.freedesktop.org/drm/intel/issues/6375>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672> /
>         i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>  *
>
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html>
>         (fdo#109280
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109280>) +3
>         similar issues
>  *
>
>     igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
>
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> /
>         i915#265 <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>  *
>
>     igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-iclb5/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html>
>         (i915#5176
>         <https://gitlab.freedesktop.org/drm/intel/issues/5176>) +2
>         similar issues
>  *
>
>     igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-edp-1:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-edp-1.html>
>         (i915#5176
>         <https://gitlab.freedesktop.org/drm/intel/issues/5176>) +2
>         similar issues
>  *
>
>     igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-iclb5/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +2
>         similar issues
>  *
>
>     igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-apl7/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) +1
>         similar issue
>  *
>
>     igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html>
>         (fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr@psr2_no_drrs:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-iclb2/igt@kms_psr@psr2_no_drrs.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb5/igt@kms_psr@psr2_no_drrs.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) +1
>         similar issue
>  *
>
>     igt@kms_psr@psr2_primary_render:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@kms_psr@psr2_primary_render.html>
>         (fdo#109441 <https://bugs.freedesktop.org/show_bug.cgi?id=109441>)
>  *
>
>     igt@prime_nv_api@i915_nv_import_vs_close:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@prime_nv_api@i915_nv_import_vs_close.html>
>         (fdo#109291 <https://bugs.freedesktop.org/show_bug.cgi?id=109291>)
>  *
>
>     igt@prime_vgem@fence-flip-hang:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@prime_vgem@fence-flip-hang.html>
>         (fdo#109295 <https://bugs.freedesktop.org/show_bug.cgi?id=109295>)
>  *
>
>     igt@sysfs_clients@fair-3:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-apl8/igt@sysfs_clients@fair-3.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994
>         <https://gitlab.freedesktop.org/drm/intel/issues/2994>) +1
>         similar issue
>  *
>
>     igt@testdisplay:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-apl2/igt@testdisplay.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-apl1/igt@testdisplay.html>
>         (i915#62 <https://gitlab.freedesktop.org/drm/intel/issues/62>)
>         +14 similar issues
>
>
>         Possible fixes
>
>  *
>
>     igt@gem_ctx_exec@basic-close-race:
>
>       o shard-iclb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-iclb1/igt@gem_ctx_exec@basic-close-race.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@gem_ctx_exec@basic-close-race.html>
>  *
>
>     igt@gem_exec_balancer@parallel:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-iclb6/igt@gem_exec_balancer@parallel.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb4/igt@gem_exec_balancer@parallel.html>
>  *
>
>     igt@gem_exec_fair@basic-flow@rcs0:
>
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html>
>  *
>
>     igt@gem_exec_fair@basic-none-solo@rcs0:
>
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>  *
>
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>
>       o {shard-tglu}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>       o shard-tglb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-tglb7/igt@gem_huc_copy@huc-copy.html>
>         (i915#2190
>         <https://gitlab.freedesktop.org/drm/intel/issues/2190>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-tglb5/igt@gem_huc_copy@huc-copy.html>
>  *
>
>     igt@gen9_exec_parse@allowed-single:
>
>       o shard-glk: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk6/igt@gen9_exec_parse@allowed-single.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/intel/issues/5566> /
>         i915#716
>         <https://gitlab.freedesktop.org/drm/intel/issues/716>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk6/igt@gen9_exec_parse@allowed-single.html>
>  *
>
>     igt@i915_pm_dc@dc6-dpms:
>
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html>
>         (i915#454
>         <https://gitlab.freedesktop.org/drm/intel/issues/454>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html>
>         +1 similar issue
>  *
>
>     igt@i915_pm_rpm@system-suspend:
>
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-rkl-5/igt@i915_pm_rpm@system-suspend.html>
>         (fdo#103375
>         <https://bugs.freedesktop.org/show_bug.cgi?id=103375>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-rkl-6/igt@i915_pm_rpm@system-suspend.html>
>  *
>
>     igt@kms_dp_aux_dev:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-rkl-5/igt@kms_dp_aux_dev.html>
>         (i915#1257
>         <https://gitlab.freedesktop.org/drm/intel/issues/1257>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-rkl-6/igt@kms_dp_aux_dev.html>
>  *
>
>     igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html>
>  *
>
>     igt@kms_flip@flip-vs-suspend@c-edp1:
>
>       o shard-iclb: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-iclb5/igt@kms_flip@flip-vs-suspend@c-edp1.html>
>         (i915#2867
>         <https://gitlab.freedesktop.org/drm/intel/issues/2867>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb6/igt@kms_flip@flip-vs-suspend@c-edp1.html>
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html>
>         +4 similar issues
>  *
>
>     igt@kms_lease@lease_get:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-rkl-5/igt@kms_lease@lease_get.html>
>         (i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-rkl-6/igt@kms_lease@lease_get.html>
>         +9 similar issues
>  *
>
>     igt@kms_plane@plane-panning-bottom-right@pipe-a-planes:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-rkl-5/igt@kms_plane@plane-panning-bottom-right@pipe-a-planes.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#3558
>         <https://gitlab.freedesktop.org/drm/intel/issues/3558>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right@pipe-a-planes.html>
>         +1 similar issue
>  *
>
>     igt@kms_properties@plane-properties-legacy:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-rkl-5/igt@kms_properties@plane-properties-legacy.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-rkl-6/igt@kms_properties@plane-properties-legacy.html>
>         +1 similar issue
>  *
>
>     igt@kms_psr@dpms:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-rkl-5/igt@kms_psr@dpms.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-rkl-6/igt@kms_psr@dpms.html>
>         +1 similar issue
>  *
>
>     igt@kms_psr@psr2_sprite_mmap_gtt:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_gtt.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html>
>         +1 similar issue
>  *
>
>     igt@kms_sequence@get-forked@edp-1-pipe-a:
>
>       o shard-iclb: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-iclb7/igt@kms_sequence@get-forked@edp-1-pipe-a.html>
>         (i915#4391
>         <https://gitlab.freedesktop.org/drm/intel/issues/4391>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb5/igt@kms_sequence@get-forked@edp-1-pipe-a.html>
>  *
>
>     igt@kms_vblank@pipe-a-ts-continuation-suspend:
>
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html>
>         +2 similar issues
>
>
>         Warnings
>
>  *
>
>     igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html>
>         (i915#2920
>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb5/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html>
>         (i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html>
>         (i915#2920
>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) +1
>         similar issue
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_12090 -> Patchwork_106638v5
>
> CI-20190529: 20190529
> CI_DRM_12090: 7710b0d1501fc279a2f0e8571a48500017b6a4d3 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6648: 3c9079c0b97445fbfc903b9c5a1d69707b80af80 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_106638v5: 7710b0d1501fc279a2f0e8571a48500017b6a4d3 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
>

--------------Rw6SX3R0HWCeTttofDE79hoX
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <br>
    <br>
    <div class=3D"moz-cite-prefix">On 9/7/2022 11:01 PM, Patchwork wrote:<b=
r>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:166261687484.27232.68015706693466=
49600@emeril.freedesktop.org">
     =20
      <title>Project List - Patchwork</title>
      <style id=3D"css-table-select" type=3D"text/css">td { padding: 2pt; }=
</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>GSC support for XeHP SDV and DG2 (rev5)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href=3D"https://patchwork.freedesktop.org/series/106638/=
" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">https://patchwor=
k.freedesktop.org/series/106638/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_106638v5/index.html" moz-do-not-send=3D"true" class=3D"moz-txt-link-free=
text">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/index.htm=
l</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_12090_full -&gt;
        Patchwork_106638v5_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_106638v5_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_106638v5_full, please notify your bug
        team to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (12 -&gt; 12)</h2>
      <p>No changes in participating hosts</p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_106638v5_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@i915_module_load@reload-with-fault-injection:
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12090/shard-tglb2/igt@i915_module_load@reload-with-fault-inject=
ion.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-tglb2/igt@i915_module_l=
oad@reload-with-fault-injection.html" moz-do-not-send=3D"true">INCOMPLETE</=
a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <br>
    This is unrelated to this series. It does however look related to
    the GuC fw fetch changes that have gone in recently, so I'm going to
    follow up on this.<br>
    <br>
    Series pushed to gt-next.<br>
    <br>
    Daniele<br>
    <br>
    <blockquote type=3D"cite" cite=3D"mid:166261687484.27232.68015706693466=
49600@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_106638v5_full that come
        from known issues:</p>
      <h3>CI changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>boot:
          <ul>
            <li>shard-glk: (<a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12090/shard-glk9/boot.html" moz-do-not-send=3D"true">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk9=
/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk9/boot.html" moz-do-not-send=
=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12090/shard-glk8/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk8/boot.h=
tml" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_12090/shard-glk8/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1209=
0/shard-glk7/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk7/boot.html" moz-=
do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/CI_DRM_12090/shard-glk7/boot.html" moz-do-not-send=3D"true">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-g=
lk6/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk6/boot.html" moz-do-not-se=
nd=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12090/shard-glk6/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk5/boot.=
html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_12090/shard-glk5/boot.html" moz-do-not-send=3D"tru=
e">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_120=
90/shard-glk5/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk3/boot.html" moz=
-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_12090/shard-glk3/boot.html" moz-do-not-send=3D"true">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-=
glk3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk2/boot.html" moz-do-not-s=
end=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12090/shard-glk2/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk2/boot=
.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12090/shard-glk2/boot.html" moz-do-not-send=3D"tr=
ue">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12=
090/shard-glk1/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk1/boot.html" mo=
z-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12090/shard-glk1/boot.html" moz-do-not-send=3D"true">PASS<=
/a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
06638v5/shard-glk1/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk1/boo=
t.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_106638v5/shard-glk2/boot.html" moz-do-not-sen=
d=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_106638v5/shard-glk2/boot.html" moz-do-not-send=3D"true">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard=
-glk2/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk3/boot.html" moz-d=
o-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_106638v5/shard-glk3/boot.html" moz-do-not-send=3D"true">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10663=
8v5/shard-glk3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk5/boot.ht=
ml" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_106638v5/shard-glk5/boot.html" moz-do-not-send=3D=
"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_106638v5/shard-glk5/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk=
6/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk6/boot.html" moz-do-no=
t-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_106638v5/shard-glk6/boot.html" moz-do-not-send=3D"true">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/=
shard-glk7/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk7/boot.html" =
moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_106638v5/shard-glk7/boot.html" moz-do-not-send=3D"tru=
e">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
106638v5/shard-glk8/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk8/=
boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk8/boot.html" moz-do-not-=
send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_106638v5/shard-glk9/boot.html" moz-do-not-send=3D"true">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/sh=
ard-glk9/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-glk9/boot.html" mo=
z-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_106638v5/shard-glk1/boot.html" moz-do-not-send=3D"true"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
6638v5/shard-glk1/boot.html" moz-do-not-send=3D"true">FAIL</a>) (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/4392" moz-do-not-send=3D"t=
rue">i915#4392</a>)</li>
          </ul>
        </li>
      </ul>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@feature_discovery@display-2x:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@feature_discovery@disp=
lay-2x.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/1839" moz-do-not-send=3D"true">i915#1839</a=
>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@unwedge-stress:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12090/shard-tglb1/igt@gem_eio@unwedge-stress.html" moz-do-not-s=
end=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_106638v5/shard-tglb6/igt@gem_eio@unwedge-stress.html" moz-do=
-not-send=3D"true">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3063" moz-do-not-send=3D"true">i915#3063</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-out-fence:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12090/shard-iclb4/igt@gem_exec_balancer@parallel-out-fence.html=
" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_106638v5/shard-iclb8/igt@gem_exec_balancer@par=
allel-out-fence.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/4525" moz-do-not-send=3D"true">i91=
5#4525</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_capture@capture-recoverable:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@gem_exec_capture@captu=
re-recoverable.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/6344" moz-do-not-send=3D"true">i915=
#6344</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-deadline:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12090/shard-glk2/igt@gem_exec_fair@basic-deadline.html" moz-do-n=
ot-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_106638v5/shard-glk3/igt@gem_exec_fair@basic-deadline.htm=
l" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2846" moz-do-not-send=3D"true">i915#2846</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
          <ul>
            <li>
              <p>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12090/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html" =
moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_106638v5/shard-glk7/igt@gem_exec_fair@basic-pace=
-share@rcs0.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#28=
42</a>) +2 similar
                issues</p>
            </li>
            <li>
              <p>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106638v5/shard-apl8/igt@gem_exec_fair@basic-pac=
e-share@rcs0.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2=
842</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace@vcs1:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106638v5/shard-iclb1/igt@gem_exec_fair@basic-pa=
ce@vcs1.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</=
a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12090/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html" m=
oz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@gem_exec_fair@basic-thro=
ttle@rcs0.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2842=
</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@verify-ccs:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@gem_lmem_swapping@veri=
fy-ccs.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/4613" moz-do-not-send=3D"true">i915#4613</a=
>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@verify-random:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_106638v5/shard-apl2/igt@gem_lmem_swapping@verify=
-random.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4613" moz=
-do-not-send=3D"true">i915#4613</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pread@exhaustion:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_106638v5/shard-apl8/igt@gem_pread@exhaustion.htm=
l" moz-do-not-send=3D"true">WARN</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2658" moz-do-not-send=3D"true">i915#2658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@gem_pxp@verify-pxp-sta=
le-ctx-execution.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/4270" moz-do-not-send=3D"true">i9=
15#4270</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@vma-merge:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@gem_userptr_blits@vma-=
merge.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/3318" moz-do-not-send=3D"true">i915#3318</a>=
)</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@batch-without-end:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@gen9_exec_parse@batch-=
without-end.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/2856" moz-do-not-send=3D"true">i915#28=
56</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@hangcheck:</p>
          <ul>
            <li>shard-snb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12090/shard-snb2/igt@i915_selftest@live@hangcheck.html" moz-do-n=
ot-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_106638v5/shard-snb5/igt@i915_selftest@live@hangcheck.htm=
l" moz-do-not-send=3D"true">INCOMPLETE</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3921" moz-do-not-send=3D"true">i915#3921</a>)</=
li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@kms_big_fb@4-tiled-32b=
pp-rotate-270.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/5286" moz-do-not-send=3D"true">i915#=
5286</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@linear-16bpp-rotate-270:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@kms_big_fb@linear-16bp=
p-rotate-270.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D110725" moz-do-not-send=3D"true">fdo#1=
10725</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11161=
4" moz-do-not-send=3D"true">fdo#111614</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-fli=
p:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@kms_big_fb@yf-tiled-ma=
x-hw-stride-64bpp-rotate-0-async-flip.html" moz-do-not-send=3D"true">SKIP</=
a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110723" moz-d=
o-not-send=3D"true">fdo#110723</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_joiner@basic:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@kms_big_joiner@basic.h=
tml" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2705" moz-do-not-send=3D"true">i915#2705</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_rc_ccs=
:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_106638v5/shard-apl8/igt@kms_ccs@pipe-a-crc-prima=
ry-rotation-180-4_tiled_dg2_rc_ccs.html" moz-do-not-send=3D"true">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-n=
ot-send=3D"true">fdo#109271</a>) +102 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_cc=
s_cc:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@kms_ccs@pipe-a-crc-spr=
ite-planes-basic-y_tiled_gen12_rc_ccs_cc.html" moz-do-not-send=3D"true">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109278" mo=
z-do-not-send=3D"true">fdo#109278</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/3886" moz-do-not-send=3D"true">i915#3886</a>) +1 si=
milar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_106638v5/shard-apl2/igt@kms_ccs@pipe-c-crc-prima=
ry-basic-y_tiled_gen12_mc_ccs.html" moz-do-not-send=3D"true">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-se=
nd=3D"true">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3886" moz-do-not-send=3D"true">i915#3886</a>) +3 similar issue=
s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-d-random-ccs-data-4_tiled_dg2_mc_ccs:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@kms_ccs@pipe-d-random-=
ccs-data-4_tiled_dg2_mc_ccs.html" moz-do-not-send=3D"true">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109278" moz-do-not-send=
=3D"true">fdo#109278</a>) +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@dp-crc-fast:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@kms_chamelium@dp-crc-f=
ast.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109284" moz-do-not-send=3D"true">fdo#109284</a>=
 / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111827" moz-do=
-not-send=3D"true">fdo#111827</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@dp-frame-dump:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_106638v5/shard-apl2/igt@kms_chamelium@dp-frame-d=
ump.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a>=
 / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111827" moz-do=
-not-send=3D"true">fdo#111827</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@lic:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@kms_content_protection=
@lic.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109300" moz-do-not-send=3D"true">fdo#109300</a=
> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111066" moz-d=
o-not-send=3D"true">fdo#111066</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@kms_flip@2x-flip-vs-ab=
solute-wf_vblank.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109274" moz-do-not-send=3D"true">f=
do#109274</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12090/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@b-dp=
1.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-apl1/igt@kms_flip@flip-vs=
-suspend-interruptible@b-dp1.html" moz-do-not-send=3D"true">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180" moz-do-not=
-send=3D"true">i915#180</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rccc=
s-downscaling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106638v5/shard-iclb4/igt@kms_flip_scaled_crc@fl=
ip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html" m=
oz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2672" moz-do-not-send=3D"true">i915#2672</a>) +7 similar =
issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-d=
ownscaling@pipe-a-default-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106638v5/shard-iclb2/igt@kms_flip_scaled_crc@fl=
ip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html" mo=
z-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/6375" moz-do-not-send=3D"true">i915#6375</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-down=
scaling@pipe-a-default-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106638v5/shard-iclb2/igt@kms_flip_scaled_crc@fl=
ip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html" moz-d=
o-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3555" moz-do-not-send=3D"true">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rc=
ccs-upscaling@pipe-a-default-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106638v5/shard-iclb2/igt@kms_flip_scaled_crc@fl=
ip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html"=
 moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2672" moz-do-not-send=3D"true">i915#2672</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555" moz-do-not-send=
=3D"true">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mm=
ap-gtt:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@kms_frontbuffer_tracki=
ng@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html" moz-do-not-send=3D"true">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109280" =
moz-do-not-send=3D"true">fdo#109280</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_106638v5/shard-apl2/igt@kms_plane_alpha_blend@pi=
pe-c-constant-alpha-max.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D=
"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145" moz-do-not-send=3D"=
true">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/265" moz-do-not-send=3D"true">i915#265</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor=
-0-5@pipe-b-edp-1:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12090/shard-iclb5/igt@kms_plane_scaling@plane-downscale-with-pi=
xel-format-factor-0-5@pipe-b-edp-1.html" moz-do-not-send=3D"true">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v=
5/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-facto=
r-0-5@pipe-b-edp-1.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/5176" moz-do-not-send=3D"true">=
i915#5176</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rota=
tion@pipe-c-edp-1:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@kms_plane_scaling@plan=
e-scaler-with-clipping-clamping-rotation@pipe-c-edp-1.html" moz-do-not-send=
=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/5176" moz-do-not-send=3D"true">i915#5176</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1=
:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12090/shard-iclb5/igt@kms_plane_scaling@planes-downscale-factor=
-0-5@pipe-a-edp-1.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb2/igt=
@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html" moz-do-no=
t-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/5235" moz-do-not-send=3D"true">i915#5235</a>) +2 similar issues</=
li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_106638v5/shard-apl7/igt@kms_psr2_sf@overlay-plan=
e-move-continuous-sf.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"tru=
e">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/658" moz-do-not-send=3D"true">i915#658</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@kms_psr2_sf@overlay-pl=
ane-update-continuous-sf.html" moz-do-not-send=3D"true">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068" moz-do-not-send=
=3D"true">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/658" moz-do-not-send=3D"true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_no_drrs:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12090/shard-iclb2/igt@kms_psr@psr2_no_drrs.html" moz-do-not-sen=
d=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_106638v5/shard-iclb5/igt@kms_psr@psr2_no_drrs.html" moz-do-not=
-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109441" moz-do-not-send=3D"true">fdo#109441</a>) +1 similar issue</=
li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_primary_render:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@kms_psr@psr2_primary_r=
ender.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109441" moz-do-not-send=3D"true">fdo#109441</=
a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_nv_api@i915_nv_import_vs_close:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@prime_nv_api@i915_nv_i=
mport_vs_close.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109291" moz-do-not-send=3D"true">fdo=
#109291</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@fence-flip-hang:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@prime_vgem@fence-flip-=
hang.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109295" moz-do-not-send=3D"true">fdo#109295</a=
>)</li>
          </ul>
        </li>
        <li>
          <p>igt@sysfs_clients@fair-3:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_106638v5/shard-apl8/igt@sysfs_clients@fair-3.htm=
l" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994" moz-do-not-sen=
d=3D"true">i915#2994</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@testdisplay:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12090/shard-apl2/igt@testdisplay.html" moz-do-not-send=3D"true">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_106638v5/shard-apl1/igt@testdisplay.html" moz-do-not-send=3D"true">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/62" mo=
z-do-not-send=3D"true">i915#62</a>) +14 similar issues</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@gem_ctx_exec@basic-close-race:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12090/shard-iclb1/igt@gem_ctx_exec@basic-close-race.html" moz-d=
o-not-send=3D"true">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_106638v5/shard-iclb3/igt@gem_ctx_exec@basic-clo=
se-race.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12090/shard-iclb6/igt@gem_exec_balancer@parallel.html" moz-do-n=
ot-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4525" moz-do-not-send=3D"true">i915#4525</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb4/igt@=
gem_exec_balancer@parallel.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-flow@rcs0:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12090/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html" moz-d=
o-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-tglb5=
/igt@gem_exec_fair@basic-flow@rcs0.html" moz-do-not-send=3D"true">PASS</a><=
/li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12090/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html" mo=
z-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-apl6=
/igt@gem_exec_fair@basic-none-solo@rcs0.html" moz-do-not-send=3D"true">PASS=
</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
          <ul>
            <li>{shard-tglu}: <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_12090/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.ht=
ml" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shar=
d-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html" moz-do-not-send=3D"t=
rue">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12090/shard-tglb7/igt@gem_huc_copy@huc-copy.html" moz-do-not-se=
nd=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2190" moz-do-not-send=3D"true">i915#2190</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-tglb5/igt@gem_h=
uc_copy@huc-copy.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@allowed-single:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12090/shard-glk6/igt@gen9_exec_parse@allowed-single.html" moz-do=
-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/5566" moz-do-not-send=3D"true">i915#5566</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/716" moz-do-not-send=3D=
"true">i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_106638v5/shard-glk6/igt@gen9_exec_parse@allowed-single.html" =
moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_dc@dc6-dpms:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12090/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html" moz-do-not-send=
=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/454" moz-do-not-send=3D"true">i915#454</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb1/igt@i915_pm_d=
c@dc6-dpms.html" moz-do-not-send=3D"true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@system-suspend:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12090/shard-rkl-5/igt@i915_pm_rpm@system-suspend.html" moz-do-=
not-send=3D"true">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D103375" moz-do-not-send=3D"true">fdo#103375</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-rkl-6=
/igt@i915_pm_rpm@system-suspend.html" moz-do-not-send=3D"true">PASS</a></li=
>
          </ul>
        </li>
        <li>
          <p>igt@kms_dp_aux_dev:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12090/shard-rkl-5/igt@kms_dp_aux_dev.html" moz-do-not-send=3D"=
true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1257" moz-do-not-send=3D"true">i915#1257</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-rkl-6/igt@kms_dp_aux_=
dev.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a=
1-hdmi-a2:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12090/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interrup=
tible@ac-hdmi-a1-hdmi-a2.html" moz-do-not-send=3D"true">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/79" moz-do-not-send=3D"=
true">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_106638v5/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-inte=
rruptible@ac-hdmi-a1-hdmi-a2.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend@c-edp1:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12090/shard-iclb5/igt@kms_flip@flip-vs-suspend@c-edp1.html" moz=
-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2867" moz-do-not-send=3D"true">i915#2867</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard=
-iclb6/igt@kms_flip@flip-vs-suspend@c-edp1.html" moz-do-not-send=3D"true">P=
ASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12090/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb101010-d=
raw-pwrite.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1849" moz-do-not-send=3D"true">i915#184=
9</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098" mo=
z-do-not-send=3D"true">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_106638v5/shard-rkl-6/igt@kms_frontbuffer_tra=
cking@fbc-rgb101010-draw-pwrite.html" moz-do-not-send=3D"true">PASS</a> +4 =
similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_lease@lease_get:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12090/shard-rkl-5/igt@kms_lease@lease_get.html" moz-do-not-sen=
d=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1845" moz-do-not-send=3D"true">i915#1845</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/4098" moz-do-not-send=3D"true">i915#409=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
106638v5/shard-rkl-6/igt@kms_lease@lease_get.html" moz-do-not-send=3D"true"=
>PASS</a> +9 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane@plane-panning-bottom-right@pipe-a-planes:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12090/shard-rkl-5/igt@kms_plane@plane-panning-bottom-right@pip=
e-a-planes.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1849" moz-do-not-send=3D"true">i915#184=
9</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3558" mo=
z-do-not-send=3D"true">i915#3558</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_106638v5/shard-rkl-6/igt@kms_plane@plane-pan=
ning-bottom-right@pipe-a-planes.html" moz-do-not-send=3D"true">PASS</a> +1 =
similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_properties@plane-properties-legacy:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12090/shard-rkl-5/igt@kms_properties@plane-properties-legacy.h=
tml" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/1849" moz-do-not-send=3D"true">i915#1849</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/sha=
rd-rkl-6/igt@kms_properties@plane-properties-legacy.html" moz-do-not-send=
=3D"true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@dpms:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12090/shard-rkl-5/igt@kms_psr@dpms.html" moz-do-not-send=3D"tr=
ue">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10=
72" moz-do-not-send=3D"true">i915#1072</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-rkl-6/igt@kms_psr@dpms.=
html" moz-do-not-send=3D"true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12090/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_gtt.html" moz-do=
-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109441" moz-do-not-send=3D"true">fdo#109441</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/shard-iclb2=
/igt@kms_psr@psr2_sprite_mmap_gtt.html" moz-do-not-send=3D"true">PASS</a> +=
1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_sequence@get-forked@edp-1-pipe-a:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12090/shard-iclb7/igt@kms_sequence@get-forked@edp-1-pipe-a.html=
" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4391" moz-do-not-send=3D"true">i915#4391</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/=
shard-iclb5/igt@kms_sequence@get-forked@edp-1-pipe-a.html" moz-do-not-send=
=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12090/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.h=
tml" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/180" moz-do-not-send=3D"true">i915#180</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5=
/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html" moz-do-not-=
send=3D"true">PASS</a> +2 similar issues</li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12090/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-=
sf.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/2920" moz-do-not-send=3D"true">i915#2920</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5=
/shard-iclb5/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html" moz-do-n=
ot-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/658" moz-do-not-send=3D"true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12090/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-a=
rea-big-fb.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/658" moz-do-not-send=3D"true">i915#658<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
6638v5/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.=
html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2920" moz-do-not-send=3D"true">i915#2920</a>) +1 s=
imilar issue</li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_12090 -&gt; Patchwork_106638v5</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_12090: 7710b0d1501fc279a2f0e8571a48500017b6a4d3 @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_6648: 3c9079c0b97445fbfc903b9c5a1d69707b80af80 @
        <a class=3D"moz-txt-link-freetext" href=3D"https://gitlab.freedeskt=
op.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-to=
ols.git</a><br>
        Patchwork_106638v5: 7710b0d1501fc279a2f0e8571a48500017b6a4d3 @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
        git://anongit.freedesktop.org/piglit</p>
    </blockquote>
    <br>
  </body>
</html>

--------------Rw6SX3R0HWCeTttofDE79hoX--
