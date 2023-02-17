Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 810D269A32C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 01:53:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB80E10E138;
	Fri, 17 Feb 2023 00:53:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A63610E138
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Feb 2023 00:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676595223; x=1708131223;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=FNEzzFr7wDpCIYJOCUhJenOr1m09hwx19wyoPnSLypA=;
 b=UXLegBIJGl4v/gD85Jf/YQ7sPUnZZvhGETTvR1eJAYY3qOJqOIFOY0r4
 6a3tY9hQITn5L8jSak8z00jGFPfygPMESS8euDLxr+jeVR+uandmgeGHI
 on+NwGDwqBKlM7sc+I0j9NVx6XRnY7UmrgSzDBLIzQX1Ryoa+i1WCGUh6
 b7e/CLIEC/CG2rArVegt3bXz1AmGL5ObMP88+ldnfJF0YPONEJuATbLK5
 zI+KznmqSP+fa1ABGuNppyVYLRJgh+hM4RJ91CWLjkKcd8Z+U+2m02D3M
 Jp+lRDYdIYnX+V3xlCuGDHLI7bO1Ra0b9rDMSMIFT4OddDWimfrgkhx1r w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="359322456"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="359322456"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 16:53:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="999269430"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="999269430"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 16 Feb 2023 16:53:42 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 16 Feb 2023 16:53:42 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 16 Feb 2023 16:53:41 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 16 Feb 2023 16:53:41 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 16 Feb 2023 16:53:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ex5FZUr62jlxFQvxHMY0UVGFu3muaoCU+zgoUt3o1nKXS2/0qUJPqJgGSjBD/dc2Bhlo4VGAFCefiLMM1dfAQ5sOfz3x3SUwpVhjuaB1LBfIePFDNG9cLvlVAeWT3CvmeqxcxRMbQxldvscdLyxQ800lqnoSSas4M2JJ+C4Vc/+V4YD1qU9XZV1+/a/mzMKZYAwwSfDgJv2mxI4USZoGCY43gx8e/TILmnd9US16iNtwpWXqEBBoqkqUxkFLNE36SLSmAgkYKPp3/HGNvQjpkOGPj7RCkA4siQGHV4Wq62PNFHNGoe1Q2DZTcEW6K6l9OA/m1Qoc6ZpbsN4015QhRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=spuhX5xbiDgi9R/ycMF7ucHSaSQQwuqJfIa84Gxf+Bg=;
 b=Kw2Fd4xAo2nnUeVpoR8ibhsIDgIp0ypghuT/DUVwgcJjCaqQ0k8oKyNhjKTiexP+X6flesgT+j0vbnu3Z2MuURR56e+qhbSy6zswwEuGgMkpQSTncMwUxbQdICiBcplrC3yDxpNspNqW3bO34tXyTGnyK83SP6YifG73GE3pvtx4bVXj9eufQkS+zP1vhIWilzGoTEL8Oa0M0stsbyEDF3UQRpVGOmP6xH3L7F8lFNW3mE5O2VIh3AXpUWX70kO+yauf/q00s1sEZ54Q7oU1yFZnFf0G982FhcqjupuyCSAkUbLZpVQbmJPGf1z4ZOG7NQMb8MmGqMEjG+gC/Mx6gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 BL3PR11MB5700.namprd11.prod.outlook.com (2603:10b6:208:33f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.13; Fri, 17 Feb
 2023 00:53:40 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%6]) with mapi id 15.20.6111.013; Fri, 17 Feb 2023
 00:53:40 +0000
Date: Thu, 16 Feb 2023 16:53:29 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Y+7QCQy0quJa6Nle@orsosgc001.jf.intel.com>
References: <20230215005419.2100887-1-umesh.nerlige.ramappa@intel.com>
 <20230215005419.2100887-3-umesh.nerlige.ramappa@intel.com>
 <871qmqntx1.wl-ashutosh.dixit@intel.com>
 <Y+5oUVso8T0MYaOa@orsosgc001.jf.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <Y+5oUVso8T0MYaOa@orsosgc001.jf.intel.com>
X-ClientProxiedBy: BYAPR07CA0016.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::29) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|BL3PR11MB5700:EE_
X-MS-Office365-Filtering-Correlation-Id: 869c47a2-37ad-46f2-241a-08db1081689d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: p3QxMNVCBxSra1/ay5TOm0qrJ/FThd1yAsveFceCkfVA7LwyD/pOKRVmQ36ZUUiwSFiIgi1DnUgcByj+HfnaNxyyedbavzaG10hjNfvL2+7SPKR52ONAhvIIo1g+wg86Dl49oMqm8N1XowzOIKi6GHgy1cQuaROshPJRk4Duvl9cxI2oCUsfeepem0ijCZa2QyJBAoctZZ49ngl20w9TN65aXTvWdKyKdguGgsRBFZXSon3h0yRBl8S+TBjQqH5sJqHPeFFMMwi/t3IiR5krXsB1UQvK97RyeQpmL1LzvHtbt5ZwQLwK5vJDEzAHMyi1Ak1BOe7pXScItm3T2ghWRUtryXaf65t2oiaV0hw7BNkrnk8EH5H8nzRdxU9WzWQlzMG+7bCWNQTnJgKVooY8DMx2aYGf0Kk8dRfMIaqGitDU4+TtekV+pg5wg594FHmqRPrGAFsd8coMW/tC80ZExapX7u7oaksfh2A2M/xAaHVbZwlo49VeroXDJj9eIa8IAoxEogagRZS08euhaM6g2yJAfqYP/h9NCvbD8MqBcPVq59ubNsfgft4Og2rOhSEg817mk2WCdprR40C8KjmxLViZOgtIHxCDyfAgy+jyKixozx7QYYN+OdDyC0GvsV4vG1vDmk8BNm5QPyPkSNyFg6ck4hqdYGaVOo0SPl2WlsmuJikr8Ip0mrQ306vwGvU6
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(346002)(39860400002)(376002)(136003)(366004)(451199018)(2906002)(86362001)(83380400001)(38100700002)(82960400001)(66556008)(66946007)(8676002)(66476007)(6636002)(316002)(8936002)(6862004)(41300700001)(4326008)(5660300002)(6512007)(6506007)(6666004)(26005)(186003)(478600001)(6486002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q25kekJXTStpVjlKVXk2eVBFL3JFUll2MjB0YWpzeTU3ZGxObnBpZGUzQzNM?=
 =?utf-8?B?Z2NGTFVBbmZWcDQ0SnluZzYrVHJSbUtreDdvY3pDMC9ZOGk0NkxzSnczVDVp?=
 =?utf-8?B?WkxGRjBMVlVLOGV0VHpJSk53cFREWjJtdk4rWDhRSDUrbldtcXhKYUxzSHUz?=
 =?utf-8?B?VEVaOU8va3ZTeUxUa3NzTTV4MUlYbVdXNUg4UVUzcFExQXpvOHliMmRZMTkv?=
 =?utf-8?B?K1N5RStHY1VoM0pkUDNjYytvdVZwYjJwT0FXQ2Y4OVVpTDhuV2pkS25IWVYy?=
 =?utf-8?B?TFZCZmJFamZLK042OGF4TnkwZzRiMXpkYmYwOTJYWWpDMXdjT0twQ3RnL1Nu?=
 =?utf-8?B?RlFEMm5YanRmTkFuaWZHZTV4aEdZdGhtYVZLNFE1dXdadnJhTXY2U0FXTUVP?=
 =?utf-8?B?UmhMNFRCSGFoaUFiUUtKdkZZcEV3YWlzdDVhdy91V0NUemVLN1piQlBhMXdB?=
 =?utf-8?B?S3FLNEhVaHJtSmVFY0kvb0M0NjJYTDQ0YXk3SlEvSEp6MDRja0MzcE1MTTUv?=
 =?utf-8?B?b3psdFFxMlJmdklsK0cwVDZubDByMjROK3pXejcvclRQS2hoNTEyeW9LN2RE?=
 =?utf-8?B?bThqZjVHZ28xbzZTWFBaRVp4VldlV210T2lBUnZJOGxMT01HbFg5QTBCUkN3?=
 =?utf-8?B?dWpYVnpqQndrVGZUR09hZTQ2NWFYSjJ2czRnMDB3MW9UWEx0bHV5Y0o5VkhB?=
 =?utf-8?B?Q1JpMDJFanA2RmZ2NDZHZ1RWK3BmQlRETE9zZjZ2RjFkRUV3enlKMDNxcFJx?=
 =?utf-8?B?NFlxQlphZHJBMlNNdnN1NSsrK1B4c2dOdklJL05nUjhva2Q4N08zajE5bTdp?=
 =?utf-8?B?am5XVHpUSm4wbXR3WDhFVTVnaStLMWp0T1ozRko3SExjYldZWnBwOHk2aHU5?=
 =?utf-8?B?aGhlSWNrbllHQnMzL0l3aERWQ1JDSit1aEkveG9nN3lEN0RYL3dXMk52MlhI?=
 =?utf-8?B?dnRkUHVTNjZ3YWdZZmNDSDZ6RHV4SkxOVjVQSUZYWWNuaDlRdklhNE5LUHpG?=
 =?utf-8?B?SEpyNTREbEJtWW92c2dUUDk5N1p2ZTJaNUNJSFY3VTZTUTliY1V5NVo4QVNZ?=
 =?utf-8?B?anIzb1JVc1gwKzlSQ241VUlrdEdkRk9HNUZBTGVxSUt6YWpGeEpRc0RIOUR1?=
 =?utf-8?B?Z2d1Wjc4NG9SWlpnMW9PaG9sSnR3amxrN3crMTdhZXRSQVgzVnZmUWZ0aVAy?=
 =?utf-8?B?VTQyam5tTERjUHRwMXlZZkpWaS9yQVlBeGY4NTBvUExWSlNXcnV2YTVETUFU?=
 =?utf-8?B?VGw0RDBKM1ZzQ1VrTXI5cm9taTRJOHVPMXlWQ2M2bkxSYmNqdUNQZURhemNo?=
 =?utf-8?B?aThEcFA1UkVOdExqZ2NDZ3FVdFd6Q0tKQlRmNWRiLzQ1RnluYnF2bFA1bU1L?=
 =?utf-8?B?OGN3dWNINGJQT3Q4WDNCU3pGV2szQkdERThPbHp2V3RQQXpwQjBCdERxZWts?=
 =?utf-8?B?azN1SFZHK3pLUGJabUFGQ1poRTQyQkpxRnN1QVVIcmF3ZFdyQUl3VG9jVkU2?=
 =?utf-8?B?bVFLemh0YWg3UXVVemhDYzQ4Z2xPT0RrRVVrUFZ0bTVScklnMUltUERXQVNI?=
 =?utf-8?B?UjF1QjFWazBYMmxDWStUUUQ2UzBmWGlFUWlYd05zQVlpN3NVd2JkakFBT1Zt?=
 =?utf-8?B?YWZ1NlJpTjQ4UERWMnhuSHMzTEdGL2d0UFlMcVpzMzVMNFRpeTA4V25wdEZz?=
 =?utf-8?B?Qlo5ajE2c2dFM1BMUWJUU3ozNDVINWkzZHNoNUJYb2g4N1NJdjdxYjZueDdh?=
 =?utf-8?B?bFJGK3Q2NE9KdzVqdnZFOVBHa0dMalFYVUY4RjNwNGF5UGhBTXNtelRrVmwz?=
 =?utf-8?B?ZEFwTy9EWE1ZbFF4SWd1RDlLYUd1UEhlK210WjlMVFFBL3BWZDdlYWxsSSt1?=
 =?utf-8?B?Y1czaVo3QklrWENzM21hanJzejc4SG5OcUNZVkJzWHltM1k2VXlTbTljNVhM?=
 =?utf-8?B?YmJ4YjhSRUprMENBTVpFR3NPcUZFRi9yTGdFSkFpSVR0bW5TNUNBWXc5eFdG?=
 =?utf-8?B?bkdNZ0tIQ0VIajRSZUpzZ2tKMTYwQUo1OXdxNit2OHlydk0vUEFkeHpzWGVh?=
 =?utf-8?B?bnlNRWJvUW9IaHRsR2lLQmUya21YSnZ5bVRxMnB1WnVvRSt4Ny9tcmdld2Y2?=
 =?utf-8?B?UXBLcm4rUE5aS2h3NFlmamYzaHNuaHEzZjhVQVZrY1hWZE9yNlpqOHhyUUVW?=
 =?utf-8?Q?iAod/vu2zDZGFAsomXhaQLs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 869c47a2-37ad-46f2-241a-08db1081689d
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2023 00:53:39.7042 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Sd4coe9W5W4WZaOJoldKmBuG8nlC90YKCLutIZj4xg1CcZdG0/ppVmUSft6l8rscHmyDJwEL8H/SleCsTohRLu39jsQqeqELrhyHMS3UYUg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB5700
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915/perf: Add helper to check
 supported OA engines
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

On Thu, Feb 16, 2023 at 09:30:57AM -0800, Umesh Nerlige Ramappa wrote:
>On Wed, Feb 15, 2023 at 07:58:02PM -0800, Dixit, Ashutosh wrote:
>>On Tue, 14 Feb 2023 16:54:12 -0800, Umesh Nerlige Ramappa wrote:
>>>
>>>Add helper to check for supported OA engines.
>>>
>>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>>---
>>> drivers/gpu/drm/i915/i915_perf.c | 19 ++++++++++++++++---
>>> 1 file changed, 16 insertions(+), 3 deletions(-)
>>>
>>>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>>>index 393a0da8b7c8..a879ae4bf8d7 100644
>>>--- a/drivers/gpu/drm/i915/i915_perf.c
>>>+++ b/drivers/gpu/drm/i915/i915_perf.c
>>>@@ -1570,6 +1570,19 @@ free_noa_wait(struct i915_perf_stream *stream)
>>>	i915_vma_unpin_and_release(&stream->noa_wait, 0);
>>> }
>>>
>>>+static bool engine_supports_oa(const struct intel_engine_cs *engine)
>>>+{
>>>+	enum intel_platform platform = INTEL_INFO(engine->i915)->platform;
>>>+
>>>+	if (intel_engine_is_virtual(engine))
>>>+		return false;
>>
>>Let's move this check to a different (or a separate) patch (with
>>explanation about OA and virtual engines in case of separate patch). It is
>>strange to see this check in this patch since previously we have only
>>supported render (I think there is only a single render engine so no
>>virtual render engines are possible, correct?).
>
>will do.
>
>>
>>With the changes above this is:
>>
>>Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>>
>>Is there anything intrinsically wrong with virtual engines that we cannot
>>get OA data for them? Since we get OA data from an OA unit not engines so
>>wondering why this restriction. So if I have a virtual engine consisting of
>>two VDBOX engines attached to a single OAM unit we cannot get OA data for
>>this virtual engine?
>>
>>Or is just that we haven't handled such cases? In that case it is fine to
>>disallow virtual engines till we can support them. Sorry just trying to
>>understand the restriction.
>
>iirc, we cannot modify the context image for the virtual engine.  
>Something to do with lrc state for such engines. Also OA supports only 
>a concept of one engine instance passed to it, so a virtual engine 
>does not fit the interface definition.

Actually, it's not the lrc state, but getting engine_pm wakeref for 
virtual engine was failing, so we had to use this check, but at this 
moment the check is not required in OA like you said - there's just one 
render.

Thanks,
Umesh
>
>Thanks,
>Umesh
