Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86DBD4CA817
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Mar 2022 15:29:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64F7710E3FE;
	Wed,  2 Mar 2022 14:29:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F49D10E49D
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Mar 2022 14:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646231367; x=1677767367;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0wqKWMn6V3B5Ihyh2t/32ClrSp3Ys0hzKGEHuU9O6is=;
 b=MlqVH2xLg1b2QvBfDPufHcvBnhF4MeNxxb4S8OYobRM3kFa0RsRwdj8h
 Jb0FStkX4Xpz/l6yXwTpdwO6m28IGA73KtaTrbUODBEbMLFVV+MXCKr5N
 tDBGFrIRgEoQR2v4nMheoHsyrujR270PVoutY+TZxIZkCwH/Tdgu//0Cm
 ZlYgev7B7THOTr2TVcvhkElrlVqNoln/XfLFQPkbrO1okaDwlxh6KPGCu
 zicreDRRxZ/hgoI3rsBr7/+uf0uIvHbfYv652+dNci+M+XfDMR9Qz/esi
 GWSbq9kWnHtj9u0zBLBhlh52EOoROMjH4s+CHD+Qbj1FiK8cAg/dNxiB7 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="253336661"
X-IronPort-AV: E=Sophos;i="5.90,149,1643702400"; d="scan'208";a="253336661"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 06:29:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,149,1643702400"; d="scan'208";a="778885650"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 02 Mar 2022 06:29:26 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 06:29:25 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 06:29:25 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Mar 2022 06:29:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AqOOcSbBJgtFb5KYxtvvbjgGWQAleIM/bMGuqMseSx+wVpsiGSCRwFZWY5ocC4qKqDJh4PEE8t2rs5oiArWRJW44Ue35lAcNJb0ahUY40iALo5fFoyXOmdZkrrAo8HfIz3nceggJUDFsZQ32OBvVnki8tkiSsZ6IQRqJRubuJZv3fK5qGG4i422TcY+121ho8/Z9YLy+bafbirQ+W/BFBfU9vtrbLtS9xfrBmRC1XPDw6G/FTccz51+snJGtj4gPzKLFiy4HrBrPuaUmwE63+z8MobtGDqtYFZykHqtZQWU/Ka4ivbq3eh/3ZyNkNVw+U71ysZSZqaqX0CLn/EjJNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RaSPpTXftPlTxBKWs1/SMAv5rQyhqYEkigcR4nH4ePY=;
 b=G0jRC+VgQKuof3vzeBe5b6En391hZ58ZVwsuuqpNfP+PGBdWsE0rwchn93QA46JY9JJ0uFtfxJVVBa2/40xPzvJX8DmmjehuN6jXo7QNLgRffKxwOAEbiCm5LPPPJLVZCbigkZQjsSgpjLW39sra6sXSnXfHHzf+9fKRjS5hBb641GC23v9UZRatbDhoS4TQWKBiWTslk1ZPIEtBHY6X419Ep1Y/jHF0hsQNyzhoEKC/Ri7dGnVVeMNCh0STsAr6t6d9z/V0XfCCFNV6wZ6Uxs68Fn9z2gjRQl0qZXaZkOO2MIiQpRA80UxUTWSlnwLaEWd61lp1Rg8R40+vvstnAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by BL0PR11MB3106.namprd11.prod.outlook.com (2603:10b6:208:7a::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Wed, 2 Mar
 2022 14:29:22 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::bdb4:e295:fb07:5335]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::bdb4:e295:fb07:5335%4]) with mapi id 15.20.5038.014; Wed, 2 Mar 2022
 14:29:22 +0000
Message-ID: <f6dd8155-a19d-3f7d-befc-cb750ea09e3e@intel.com>
Date: Wed, 2 Mar 2022 16:29:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <20220225131316.1433515-1-gwan-gyeong.mun@intel.com>
 <164607270504.6629.17881152607871208906@emeril.freedesktop.org>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
In-Reply-To: <164607270504.6629.17881152607871208906@emeril.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO4P123CA0064.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:153::15) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1997925e-a378-4378-3d65-08d9fc590b1f
X-MS-TrafficTypeDiagnostic: BL0PR11MB3106:EE_
X-Microsoft-Antispam-PRVS: <BL0PR11MB3106CEC43517A3B1855E8D9DB8039@BL0PR11MB3106.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VGEopVhNyZ/7niQzVLQeGiC9mLL2bNiBUV5mNfOBfaVpjZHF7rBnpGzpnv4lfoeCpmGNPNlpqMq5DG1Qt7f3cylJluUpi/ADmJBx/u+cCqF8xQHCU4gc/H67/yURkn3nKeM24ZTBHFtEkeuYAW0jyz297vAVsmxMP4w8ZbOdUfLCYAkmWUGFpplrtzaM4YOStPqLD4BLDlfBq/sRHRA70G4CE0ap9fhLN57Zfc9+zM6qEwLia4+v2sJHOr+KxQxxvR3ZliCKkuq8JkrMAdRzmXtUM3NB4kd860bfSMLVOWrqsaDXk8KMpSwFD+HnqZkcDZusu8Lsr5i+tNzK4NL5U5XkhW9PocJ/cqvPmxT2VqslQ/BbwGhxx/mCzD/lCSLAFZ/cJJJa28lcCm0Pr1sWYvEK1GNEewrmGrtAXD8eXCqpcI4Q+5vrm6Cm6JT71U9P5FWcL8ndoWe0OGoinhnAkD7gDYcJc1s2Lwu5lODji2eKW9dLer5eRF9meDoXkQ5TUMeBlQt014BZhdAKDCYQvtwIrgiNolUjVjtbPVX3b2N/BxI5ZfIzvBs8RhMP2qR8urkCwNZeV0jCWbW+DxK+xW7Pc62hz9ZNsG+bmil6kilhGt60bsWFfxbb0WxgXXSU+A748/q/2UZVSqPCKr9Ldkf5Jz5lG0wKWn1D8yYxeg324q97IIdg0INYUvrmFOp4v0/NVAG1JUd+7Bfpl6Dp3HtsPDzI/quWfxiNj8b/OGG/3nMiA/Zie/M2yLCZ5srbp+swY61BCLJuYadaNHNd5Rila4XVkcVVThYL7abTVSDlNckXPtX9iVgeXNbJHuCiWeZLe4o7N4YYZFxtmv6OBTlkTiqt90Q2nhXpRiQfrszsdJCYzpw+g12CJF8i+Gen
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(966005)(31696002)(508600001)(86362001)(6486002)(83380400001)(30864003)(6916009)(38100700002)(8936002)(6512007)(316002)(186003)(26005)(36756003)(2616005)(31686004)(66476007)(82960400001)(53546011)(66556008)(6666004)(6506007)(5660300002)(2906002)(66946007)(13750500001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NVoyNmN3djJUc1dmcUlzWUY1Q1J6UVlySERDdTBEYW4zVU9kZmJiZzlnRTFV?=
 =?utf-8?B?RWNqZXVraEFkOGNxYzNSUFlpWDRUWnBLTEs3V1NnMktBNy9SSklSbGtPTUdK?=
 =?utf-8?B?YVYxdVNNUUZXTGF5Ujl4Mk1hakYxaWhiakhOeC9PZUU2Q3lxUmxQV29RckUw?=
 =?utf-8?B?UEwwM01yc29VeElnTUNXY3NCT3VjV2o0aW91UUwrOCtPY3UzSWN6VmlTU0tH?=
 =?utf-8?B?THFZM2szblJ3NlpYRFhEMzJYbGhBb3diTzgzbTF6ZDk5ekNEZ0ZPSm1EMWVU?=
 =?utf-8?B?TEFYMW1lQzEvbHk2OXNMMXVoU3NKU2Q5bXAvekI3NmFEcU15Q1lDT2JudGpx?=
 =?utf-8?B?SHY1Z2NabXF2OG55Q3p1bTN5SEt3T2VRZkVRbGpPZ3FMM2IrUTZRd2pQRlRC?=
 =?utf-8?B?Z0JKTktWcDZnTEdBcXdES2NIZ2o2elNyYWpHZzBLWlZnRnhNVFdkVENrV0JM?=
 =?utf-8?B?bHNFZlRST3VuWi9sa0RSSUxkcTMySXZNT3ZGWU9XZVdURURtc2RlNnNjUFNP?=
 =?utf-8?B?emxtVHVzNE02ZFl1RzdiVitJdlgrK0taMjAwRHFEVStnY0dDY1FWV1lyaWp1?=
 =?utf-8?B?djVSMHIvbXgvZ3E4WGxtQ0pRd1UyWGRaMnVDNkx5c2c5a1dxQUtjYVJWMjNR?=
 =?utf-8?B?Q0lqV0d5OFlLM2RPWmNEb2pRejNkdENBYk4vZmRBOWdjbTBaZWdCUnE3cHZO?=
 =?utf-8?B?VTZIWXlzVTY1VlY4cUxiRDBCSGdBWXNURDh3R24yb2N6eWdIblZ6TExnQng4?=
 =?utf-8?B?dnlMWWxXSWFSNGpOQmdPWDRIT1lkVDk3SjdmaWNQeWIvcTVHdnFMaWRmVFhQ?=
 =?utf-8?B?eDYrd2lITTdYc2svSTdGZzRuam1ONkFibTd0S3g2ZHE5NXFrc0k3WGZXZmFM?=
 =?utf-8?B?ai92anJaaERUZUtNOFhMYkd1SzBSSzBwMU5TZ0swd2pIdUIzQ1JkK2o2YldT?=
 =?utf-8?B?WkJXTHM3ZEY0ZXFlbU0zc0dsUTM2MjJWdG5iN0NhK25yN3M0UERUd1JXZzYz?=
 =?utf-8?B?WTdIWWNNQ0pNK3IyYnJma2VGd2haU1Bybk42R3I5TStBbU55cnpXUys1VWx5?=
 =?utf-8?B?M2dtK0VOVlRMeGdHMGF1cURnQ0h2cThzZUpRVllBRlE4cy9xcEdhclZGS2po?=
 =?utf-8?B?M2Y2dEtlMThaUExGNmgvckJFUkJmbDF2UlBDRWthZXFsSUFzdktEanRvdUhZ?=
 =?utf-8?B?VG9TbnFja0wrWVF6clZOaElkOWxpU2dwZ3FxL0lJbVJtMktFeUFsSmR6Q29C?=
 =?utf-8?B?cnVaS1haNHd3MUlTMTQ1VXRvWVJydlFHNkhSd3p0ak9DY2xmV3U2WVp3dzh6?=
 =?utf-8?B?aDVOSGthUUNCU0ljR2tqamw0cEhGNWU3a3N4TkNmYVJveFI2MG5BOWsxbTQz?=
 =?utf-8?B?ODN2SnhjR2M1VlcwWmhxd1BqSCtmL2F0VkpDSDJpVTBhaW16Rm8xblhYZk1Y?=
 =?utf-8?B?NDEya1BYc0tNOWZsUjRBZXFtcmpzWmJBcU1XV2locEw2UXR5S0ZZeGRvQmlu?=
 =?utf-8?B?ajNWbCswY3RkVFBVRml1TjdpOWcxV1ZDcWF5SFZMVis2TE5BczVGNmFjL09U?=
 =?utf-8?B?cHAzY2ZEYTNQNG1JOW9MaE1qVjNXTkNXR1R6MllNYUFPWUlIWGVTd09LVlpD?=
 =?utf-8?B?dlVYRFhLNGtScjZ6RFNBWm9IVjFDa2JRSzFjaXJ2cW55eXlSanF5NTB1RENi?=
 =?utf-8?B?WXQxZkFnS3NCTkhXZWNDd1RpcW5rcHYwTGlhYTFkVWc0T3E0ejVFMzdZMjZv?=
 =?utf-8?B?Q3dYbHNZM3lvSHlFNzR0Q1lnbjQ4ajc2RlR6ZFhVQXo5RnZDUERSU1FZbE5K?=
 =?utf-8?B?b3VpckFFZnB1RjRFVTBndE5laGFGS2FadVBmcFFPUHR5NWU0VnozSDgyU2Mx?=
 =?utf-8?B?T0hVaUtSd1kzdVlvZGlvcEU0TjdlRDRHTElFSGd5V01CYXdHWElsYTZ5VzJE?=
 =?utf-8?B?eG93a3lDbEM1eHBreS9MWmNaSWtvc3lDUnp6TElRblhIOFpNU1VEUFZCVjFp?=
 =?utf-8?B?cWpMc050WElTUytqR1l5VGJnYXhEZkNVOUwrVDVLeWhSZHVCeGJnL2tqbWto?=
 =?utf-8?B?aTNBeUpDTVZ4RFF1YnQ3cUxqeDRGYldieHMvd2R3dWIwN2VjWUZwMnFoZXpw?=
 =?utf-8?B?TXhKMUVwbGt3VWRXdndsc09WUS9TQnM2R0pxYmJwV0NQSCtLZ3MvZTZrbFp2?=
 =?utf-8?B?UEFWdER2aXZxbU80NDlvYWkxdWJUbEQwZHJEVlovNG1ORHJQSisyTUhHNy9i?=
 =?utf-8?B?UnNUV1lnd3FVRkp3dnBjRSszTUxRPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1997925e-a378-4378-3d65-08d9fc590b1f
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2022 14:29:22.1190 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ID2e2uwQpn15ddgOELa2RLJpTP4lsloVt6qoBka84XBOXpElOYiUeCJqMr+uAUINV8OUFwl5HzgSgsCqzcFpOy8UPEfvy43esxZnkBlCm40=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3106
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRml4?=
 =?utf-8?q?_prime=5Fmmap_to_work_when_using_LMEM_=28rev2=29?=
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

The regression reported below is not related to this patch.
On TGL platforms that do not use local memory, this patch has no logic 
changes.
This patch relates to the results of the mmap_prime test on dg1 using 
local memory.
(mmap_prime is a different test from mmap_prime_coherency.)


 >         Possible regressions
 >
 >   * igt@kms_vblank@pipe-b-query-forked:
 >       o shard-tglb: PASS
 > 
<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-tglb6/igt@kms_vblank@pipe-b-query-forked.html>
 >         -> INCOMPLETE
 > 
<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-tglb7/igt@kms_vblank@pipe-b-query-forked.html>
 >
This issue is not related to this patch.
 >
 >         Suppressed
 >
 > The following results come from untrusted machines, tests, or statuses.
 > They do not affect the overall result.
 >
 >   * igt@prime_mmap_coherency@ioctl-errors:
 >       o {shard-dg1}: FAIL
 > 
<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-dg1-15/igt@prime_mmap_coherency@ioctl-errors.html>
 >         ([i915#4899]) -> FAIL
 > 
<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-dg1-13/igt@prime_mmap_coherency@ioctl-errors.html>
 >
This problem in dg1 will be fixed when this patch series of igt 
(https://patchwork.freedesktop.org/series/100819/#rev3) is applied.

Br,
G.G.

On 2/28/22 8:25 PM, Patchwork wrote:
> *Patch Details*
> *Series:*	Fix prime_mmap to work when using LMEM (rev2)
> *URL:*	https://patchwork.freedesktop.org/series/100737/ 
> <https://patchwork.freedesktop.org/series/100737/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_11297_full -> Patchwork_22432_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_22432_full absolutely need 
> to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_22432_full, please notify your bug team to allow 
> them
> to document this new failure mode, which will reduce false positives in CI.
> 
> 
>     Participating hosts (13 -> 13)
> 
> No changes in participating hosts
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_22432_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@kms_vblank@pipe-b-query-forked:
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-tglb6/igt@kms_vblank@pipe-b-query-forked.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-tglb7/igt@kms_vblank@pipe-b-query-forked.html>
> 
> 
>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   * igt@prime_mmap_coherency@ioctl-errors:
>       o {shard-dg1}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-dg1-15/igt@prime_mmap_coherency@ioctl-errors.html>
>         ([i915#4899]) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-dg1-13/igt@prime_mmap_coherency@ioctl-errors.html>
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_22432_full that come from known 
> issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@feature_discovery@display-3x:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb7/igt@feature_discovery@display-3x.html>
>         ([i915#1839])
>   *
> 
>     igt@gem_create@create-massive:
> 
>       o shard-iclb: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb7/igt@gem_create@create-massive.html>
>         ([i915#4991])
>   *
> 
>     igt@gem_eio@unwedge-stress:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-tglb7/igt@gem_eio@unwedge-stress.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-tglb2/igt@gem_eio@unwedge-stress.html>
>         ([i915#232])
>   *
> 
>     igt@gem_exec_capture@pi@rcs0:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-skl8/igt@gem_exec_capture@pi@rcs0.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-skl9/igt@gem_exec_capture@pi@rcs0.html>
>         ([i915#4547])
>   *
> 
>     igt@gem_exec_fair@basic-deadline:
> 
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-apl4/igt@gem_exec_fair@basic-deadline.html>
>         ([i915#2846])
>   *
> 
>     igt@gem_exec_fair@basic-none-solo@rcs0:
> 
>       o shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb7/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_exec_fair@basic-throttle@rcs0:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         ([i915#2849])
>   *
> 
>     igt@gem_exec_params@rsvd2-dirt:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb7/igt@gem_exec_params@rsvd2-dirt.html>
>         ([fdo#109283])
>   *
> 
>     igt@gem_lmem_swapping@parallel-random-engines:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-skl8/igt@gem_lmem_swapping@parallel-random-engines.html>
>         ([fdo#109271] / [i915#4613])
>   *
> 
>     igt@gem_lmem_swapping@verify:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb3/igt@gem_lmem_swapping@verify.html>
>         ([i915#4613])
>   *
> 
>     igt@gem_pwrite@basic-exhaustion:
> 
>       o shard-tglb: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-tglb3/igt@gem_pwrite@basic-exhaustion.html>
>         ([i915#2658])
>   *
> 
>     igt@gem_pxp@create-protected-buffer:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb7/igt@gem_pxp@create-protected-buffer.html>
>         ([i915#4270]) +2 similar issues
>   *
> 
>     igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb3/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs.html>
>         ([i915#768]) +1 similar issue
>   *
> 
>     igt@gem_userptr_blits@input-checking:
> 
>       o shard-skl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-skl6/igt@gem_userptr_blits@input-checking.html>
>         ([i915#4991])
>   *
> 
>     igt@gem_workarounds@suspend-resume-fd:
> 
>       o shard-kbl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html>
>         ([i915#180])
>   *
> 
>     igt@gen9_exec_parse@batch-zero-length:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb7/igt@gen9_exec_parse@batch-zero-length.html>
>         ([i915#2856]) +1 similar issue
>   *
> 
>     igt@i915_pm_dc@dc3co-vpb-simulation:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html>
>         ([i915#658])
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-fence:
> 
>       o shard-iclb: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html>
>         ([i915#1804] / [i915#2684])
>   *
> 
>     igt@i915_pm_rpm@gem-execbuf-stress-pc8:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb7/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html>
>         ([fdo#109293] / [fdo#109506]) +1 similar issue
>   *
> 
>     igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html>
>         ([i915#1769])
>   *
> 
>     igt@kms_big_fb@x-tiled-16bpp-rotate-270:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb3/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html>
>         ([fdo#110725] / [fdo#111614])
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-glk2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html>
>         ([fdo#109271] / [i915#3777])
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-apl8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>         ([fdo#109271] / [i915#3777]) +3 similar issues
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html>
>         ([fdo#110723])
>   *
> 
>     igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
> 
>       o
> 
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-apl7/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +5 similar issues
> 
>       o
> 
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-kbl4/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +2 similar issues
> 
>   *
> 
>     igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-skl6/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +1 similar issue
>   *
> 
>     igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb7/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109278] / [i915#3886]) +3 similar issues
>   *
> 
>     igt@kms_chamelium@dp-hpd-storm:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb7/igt@kms_chamelium@dp-hpd-storm.html>
>         ([fdo#109284] / [fdo#111827]) +5 similar issues
>   *
> 
>     igt@kms_chamelium@hdmi-crc-multiple:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-skl7/igt@kms_chamelium@hdmi-crc-multiple.html>
>         ([fdo#109271] / [fdo#111827]) +2 similar issues
>   *
> 
>     igt@kms_chamelium@hdmi-edid-change-during-suspend:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-apl1/igt@kms_chamelium@hdmi-edid-change-during-suspend.html>
>         ([fdo#109271] / [fdo#111827]) +10 similar issues
>   *
> 
>     igt@kms_color@pipe-d-invalid-ctm-matrix-sizes:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb3/igt@kms_color@pipe-d-invalid-ctm-matrix-sizes.html>
>         ([fdo#109278]) +16 similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-b-ctm-0-75:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-tglb3/igt@kms_color_chamelium@pipe-b-ctm-0-75.html>
>         ([fdo#109284] / [fdo#111827])
>   *
> 
>     igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-kbl4/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html>
>         ([fdo#109271] / [fdo#111827]) +1 similar issue
>   *
> 
>     igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb7/igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding.html>
>         ([fdo#109278] / [fdo#109279]) +1 similar issue
>   *
> 
>     igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-skl7/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html>
>         ([fdo#109271]) +54 similar issues
>   *
> 
>     igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html>
>         ([fdo#109274] / [fdo#109278]) +2 similar issues
>   *
> 
>     igt@kms_cursor_legacy@pipe-d-torture-bo:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-skl7/igt@kms_cursor_legacy@pipe-d-torture-bo.html>
>         ([fdo#109271] / [i915#533])
>   *
> 
>     igt@kms_flip@2x-flip-vs-rmfb:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb7/igt@kms_flip@2x-flip-vs-rmfb.html>
>         ([fdo#109274]) +2 similar issues
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html>
>         ([i915#79])
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html>
>         ([i915#79])
>   *
> 
>     igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html>
>         ([i915#180]) +3 similar issues
>   *
> 
>     igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html>
>         ([i915#2122])
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-glk6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html>
>         ([i915#4911])
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-kbl4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html>
>         ([fdo#109271]) +28 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render.html>
>         ([fdo#109280]) +18 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-tglb3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render.html>
>         ([fdo#109280] / [fdo#111825])
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-suspend:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-skl9/igt@kms_frontbuffer_tracking@psr-suspend.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-skl9/igt@kms_frontbuffer_tracking@psr-suspend.html>
>         ([i915#123])
>   *
> 
>     igt@kms_hdr@bpc-switch:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-skl6/igt@kms_hdr@bpc-switch.html>
>         ([i915#1188])
>   *
> 
>     igt@kms_hdr@static-toggle:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb7/igt@kms_hdr@static-toggle.html>
>         ([i915#1187])
>   *
> 
>     igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-apl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html>
>         ([fdo#109271] / [i915#533])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
> 
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html>
>         ([fdo#108145] / [i915#265]) +1 similar issue
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html>
>         ([i915#265])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html>
>         ([fdo#108145] / [i915#265])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html>
>         ([fdo#108145] / [i915#265])
>   *
> 
>     igt@kms_psr2_sf@cursor-plane-update-sf:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb7/igt@kms_psr2_sf@cursor-plane-update-sf.html>
>         ([fdo#111068] / [i915#658])
>   *
> 
>     igt@kms_psr@psr2_cursor_render:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb7/igt@kms_psr@psr2_cursor_render.html>
>         ([fdo#109441]) +1 similar issue
>   *
> 
>     igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-skl1/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-skl4/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html>
>         ([i915#4939])
>   *
> 
>     igt@kms_writeback@writeback-pixel-formats:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb3/igt@kms_writeback@writeback-pixel-formats.html>
>         ([i915#2437]) +1 similar issue
>   *
> 
>     igt@nouveau_crc@pipe-b-source-outp-complete:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb7/igt@nouveau_crc@pipe-b-source-outp-complete.html>
>         ([i915#2530]) +1 similar issue
>   *
> 
>     igt@nouveau_crc@pipe-d-source-rg:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-tglb3/igt@nouveau_crc@pipe-d-source-rg.html>
>         ([i915#2530])
>   *
> 
>     igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-apl1/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html>
>         ([fdo#109271]) +102 similar issues
>   *
> 
>     igt@prime_nv_pcopy@test1_micro:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb7/igt@prime_nv_pcopy@test1_micro.html>
>         ([fdo#109291]) +2 similar issues
>   *
> 
>     igt@syncobj_timeline@transfer-timeline-point:
> 
>       o shard-apl: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-apl8/igt@syncobj_timeline@transfer-timeline-point.html>
>         ([i915#5098])
>   *
> 
>     igt@sysfs_clients@fair-7:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb7/igt@sysfs_clients@fair-7.html>
>         ([i915#2994]) +1 similar issue
>   *
> 
>     igt@sysfs_clients@sema-10:
> 
>       o
> 
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-kbl4/igt@sysfs_clients@sema-10.html>
>         ([fdo#109271] / [i915#2994])
> 
>       o
> 
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-apl7/igt@sysfs_clients@sema-10.html>
>         ([fdo#109271] / [i915#2994])
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@gem_ctx_isolation@preservation-s3@vcs0:
> 
>       o shard-kbl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html>
>         ([i915#180]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html>
>   *
> 
>     igt@gem_eio@kms:
> 
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-tglb5/igt@gem_eio@kms.html>
>         ([i915#232]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-tglb6/igt@gem_eio@kms.html>
>   *
> 
>     igt@gem_exec_balancer@parallel-balancer:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html>
>         ([i915#4525]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-iclb4/igt@gem_exec_balancer@parallel-balancer.html>
>   *
> 
>     igt@gem_exec_fair@basic-deadline:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-glk2/igt@gem_exec_fair@basic-deadline.html>
>         ([i915#2846]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-glk2/igt@gem_exec_fair@basic-deadline.html>
>   *
> 
>     igt@gem_exec_fair@basic-flow@rcs0:
> 
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html>
>         +1 similar issue
>   *
> 
>     igt@gem_exec_fair@basic-none-solo@rcs0:
> 
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         +1 similar issue
>   *
> 
>     igt@gem_exec_fair@basic-none@vcs0:
> 
>       o shard-kbl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html>
>         +5 similar issues
>   *
> 
>     igt@gem_lmem_swapping@smem-oom@lmem0:
> 
>       o {shard-dg1}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html>
>         ([i915#4936]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html>
>   *
> 
>     igt@gem_mmap_offset@open-flood:
> 
>       o {shard-rkl}: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-rkl-5/igt@gem_mmap_offset@open-flood.html>
>         ([i915#5080]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-rkl-5/igt@gem_mmap_offset@open-flood.html>
>   *
> 
>     igt@gem_softpin@noreloc:
> 
>       o {shard-rkl}: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-rkl-5/igt@gem_softpin@noreloc.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-rkl-1/igt@gem_softpin@noreloc.html>
>   *
> 
>     igt@gen9_exec_parse@allowed-all:
> 
>       o shard-skl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-skl9/igt@gen9_exec_parse@allowed-all.html>
>         ([i915#1436] / [i915#716]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-skl6/igt@gen9_exec_parse@allowed-all.html>
>         +1 similar issue
>   *
> 
>     igt@i915_pm_dc@dc9-dpms:
> 
>       o {shard-tglu}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-tglu-1/igt@i915_pm_dc@dc9-dpms.html>
>         ([i915#4281]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-tglu-2/igt@i915_pm_dc@dc9-dpms.html>
>   *
> 
>     igt@i915_selftest@live@gt_pm:
> 
>       o {shard-tglu}: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-tglu-1/igt@i915_selftest@live@gt_pm.html>
>         ([i915#3987]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-tglu-2/igt@i915_selftest@live@gt_pm.html>
>   *
> 
>     igt@i915_selftest@live@hangcheck:
> 
>       o {shard-rkl}: (INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-rkl-5/igt@i915_selftest@live@hangcheck.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-rkl-4/igt@i915_selftest@live@hangcheck.html>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-rkl-1/igt@i915_selftest@live@hangcheck.html>
>   *
> 
>     igt@i915_suspend@fence-restore-tiled2untiled:
> 
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html>
>         ([i915#180]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html>
>         +5 similar issues
>   *
> 
>     igt@kms_big_fb@linear-16bpp-rotate-0:
> 
>       o {shard-tglu}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-tglu-6/igt@kms_big_fb@linear-16bpp-rotate-0.html>
>         ([i915#402]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-tglu-5/igt@kms_big_fb@linear-16bpp-rotate-0.html>
>   *
> 
>     igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-rkl-4/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs.html>
>         ([i915#1845]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-rkl-6/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs.html>
>         +3 similar issues
>   *
> 
>     igt@kms_cursor_crc@pipe-a-cursor-256x85-random:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html>
>         ([fdo#112022]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html>
>   *
> 
>     igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:
> 
>       o {shard-rkl}: (SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html>,
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html>)
>         ([fdo#112022] / [i915#4070]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html>
>   *
> 
>     igt@kms_cursor_crc@pipe-a-cursor-suspend:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html>
>         ([fdo#112022] / [i915#4070]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html>
>   *
> 
>     igt@kms_cursor_legacy@cursor-vs-flip-atomic:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-rkl-1/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html>
>         ([fdo#111825] / [i915#4070]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-rkl-6/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html>
>   *
> 
>     igt@kms_cursor_legacy@pipe-c-torture-move:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-rkl-2/igt@kms_cursor_legacy@pipe-c-torture-move.html>
>         ([i915#4070]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-rkl-4/igt@kms_cursor_legacy@pipe-c-torture-move.html>
>         +1 similar issue
>   *
> 
>     igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html>
>         ([i915#4098]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html>
>         +1 similar issue
>   *
> 
>     igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled.html>
>         ([fdo#111314]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled.html>
>   *
> 
>     igt@kms_fbcon_fbt@psr-suspend:
> 
>       o shard-skl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-skl4/igt@kms_fbcon_fbt@psr-suspend.html>
>         ([i915#4939]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-skl7/igt@kms_fbcon_fbt@psr-suspend.html>
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html>
>         ([i915#79]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22432/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html>
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11297/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html>
>         ([i915#1849]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchw> +2 similar issues
> 
