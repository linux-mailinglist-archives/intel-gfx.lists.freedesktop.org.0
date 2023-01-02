Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC4565AE5F
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Jan 2023 09:47:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B195A10E193;
	Mon,  2 Jan 2023 08:47:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 413CD10E193
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Jan 2023 08:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672649263; x=1704185263;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=qXf6oPIxIRZT20ySvyyFZJEFsdM8pH0nJ3Ptwad6Q/E=;
 b=fMG6tU0sNrq3kUd1TVmMbLknZF3obZHn/WxGWaoJxV1SLFwu8MK6ZrcD
 yTRk7PrsxWCSXg8BznQ99atqjDOrVypK+YFkdU7lgcEMLMsVLMf0S+p19
 oiFoDlNLo0DqfK4UlBZ1o2GwZXi9ksmJmU0W0ehqapMShrJyVmAYli0QG
 46KH+mTOH/91baGTPiyF04ETuNIUaCYji3K/jdlJEqhhnaT4IhCd2g9iz
 HiWJlj0im+scusQvUT2PCA6x9tg9wMNUHb2iQzviuAEY4SiJttgB0gr9k
 QtNwp3JALAako9uUhcMiOZv0W2vSzCqnsoBSAEOEt719rEnfmTPoBgNLZ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="301139936"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; 
 d="scan'208,217";a="301139936"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2023 00:47:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="656422293"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; 
 d="scan'208,217";a="656422293"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 02 Jan 2023 00:47:42 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 2 Jan 2023 00:47:42 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 2 Jan 2023 00:47:42 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 2 Jan 2023 00:47:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KwtTqagnseV6FJiapFQhN2cmwVK5BGMzO3yB82YCebMELY93CW5qS3aVFMb0fsSwJdHiujW+dgDViPMTZzTQkI0uY+d7nou0Px4N3ksolq8CfGyQXSsoRCPnAl1WMDsXKKD4hpZmgw70fh4kdFuol5766R0VsVZb6t3G+Ww90kIfmSa4BQIIAul/pw2AIzfvalYXn6BodBQc+cEqNoaxxfsoORWSDgFsM2MuKllvRbglXGcipUKbdvaM7n8rvafS0T6owGZU+sAb2EDH1sfxsFvvfe6G9j8twIugfYV8RnSbnfhk7v/vQKTDKc+YEj1QYXyRrvHuPB2IcLVMV7Slsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Sq3u1hI1nDWmQj2QP9PtmBcrV5akjorFjLJp1qowMVE=;
 b=J22Lchb4MK1l+52kZUR2kCZorAXpS4RIzPCly0Ts0qeGujQcJ6mg3YDLAXvwJMElEaYh+9fDiWndZTVPNYN8LUuLG0/Op4hZB9HGnPs6qC66jgzDVO8FwcEt5wqWv4L+qzoKNVhjYvrRdu4/B2qLL4h3WZFLvFKXrXJgZF+l6qg/jE5wVltSMGWQlGswFTdQ1fg5vhZYwV+xL1Le8mfhgq11JN4zxjlNSElH81q9caOqHxfWeChyoeKG2YBYVlnKpAZK6qRBCvrzikIS2Q4xO3uDewuigVRnfq79cdOds2pNWH/giESIOMS/VrkUR2GgCNjVYyjiaHJG3xPgCWizpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB5034.namprd11.prod.outlook.com (2603:10b6:806:f8::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Mon, 2 Jan
 2023 08:47:36 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::6591:f625:d30c:c35e]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::6591:f625:d30c:c35e%7]) with mapi id 15.20.5944.019; Mon, 2 Jan 2023
 08:47:36 +0000
Content-Type: multipart/alternative;
 boundary="------------1HP0N0wyiLUXW3iPKu4H2HSV"
Message-ID: <88067db2-10a7-a444-d796-d33c0b4b5d16@intel.com>
Date: Mon, 2 Jan 2023 14:17:27 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: <intel-gfx@lists.freedesktop.org>, <lakshminarayana.vudum@intel.com>,
 <saix.nandan.yedireswarapu@intel.com>
References: <20221222063428.3052172-1-ankit.k.nautiyal@intel.com>
 <167172791715.14838.14437035303296869881@emeril.freedesktop.org>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <167172791715.14838.14437035303296869881@emeril.freedesktop.org>
X-ClientProxiedBy: PN3PR01CA0166.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:de::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB5034:EE_
X-MS-Office365-Filtering-Correlation-Id: 82f913bc-c1b5-48b6-5585-08daec9dfef8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IOZkl92liJUGkODl5Wj8fY0NoCyunE8SzmTJEa0v2FR09MTNws4lvQDMiRPFLgHBIwwVJfG7xvX4WXjDg0oAQ3HyjRg4KMgAkrXDQeeZzp/DMZZWdvKNF6qS+WFBrpgkgV6g/NtlKlba55nMifIPw5CpxcN+4iX5fD4vkGaM0VOVl0OBmo5PziaaWNWWRPUiAFcVrO1u9Few2UXWhNJA6r44Hk0kkGd8wAIEamrFWGw+6WHH3e79ffKP9rxMNgvuQX7pgNquUmVgHVyziaHP3pQzUpL4CB511m+vZ8B1ZDIuMxm+tWFDSegUDX/g15To0LnwO+KEGFeKEa4tzAgGZuGvQgSySEI/hvURI7nwjoihAVVQtKGnDjngR9qTfc1b55Jm3xgmxnH0CHqNhcE5mPA/hAvU8Qef/s6OCWijyW3tzo4I2YsvgBhnnTUNwu/y8DfHE23ldWxkSUp5Ol/TXsKYBezKG4I2IIyAkjY9NNw6zddJESnD8PfbBQOkz720hFoKp8Pw4yCRZxnft7adkAvvnjKuLzQ1ycTurLbe1W/0QqjH9BnENQSe9PPTRNbUxInaOCiFOsNY/HJ3fy007NJHhly4WWPBCyv1d8EaCliCL3RWMd6c8dPjIsb6of4zcuCnTROev6RBcMACOr8w3Ob0UIkcQFuL6wtJfohvPhr8D1YFB5GlhM6BT50fZyLube51t9gYPX2tt10gXLa+My/XgwEscE/eq7EN3UBqxNXnaqsAsLfakdabLze4JIJNNn85PA+qTulPIn5bdsLCG/vI28yv/Nt42COVxNxyVLvSaibbxZmasMiO1qW3h0de
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(136003)(39860400002)(346002)(366004)(451199015)(5660300002)(2906002)(21615005)(8936002)(41300700001)(316002)(66476007)(66946007)(6636002)(6486002)(966005)(478600001)(66556008)(31686004)(53546011)(33964004)(55236004)(2616005)(186003)(26005)(6512007)(40265005)(6666004)(6506007)(83380400001)(38100700002)(82960400001)(166002)(31696002)(86362001)(36756003)(22166006)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?clJFYlhGc3pPV2kwWC9hSThKV3BHYzNMOVU1NTJNaXc5djIrOEtsNWh4NUNR?=
 =?utf-8?B?TUtEdVRlc2RFdlVTU0xVTi90T2lxZVBURUZtVGh5dFdoa3lkSDN2TXNYZWNi?=
 =?utf-8?B?ZUtUaFJ1MXBPWXRncy9IWGgveEpCRkFGUU0wUlZxTkVEb3p1cC95OTZPcTBB?=
 =?utf-8?B?WUtmWmdOS1hpNHhKWkF6OWxCSWJmSXM4YW9oYWpMWWtQTnNlSlBVMnRYVkhj?=
 =?utf-8?B?Tmd3ZFE4UWQ0bmdBVEo3TmxTSm13SXMyTmpBeGhDUWpqSmtERHdVSmVkT1Vw?=
 =?utf-8?B?TjlUL1J1NkFnampmTjBkaHBSbG91Mzl0M1VSbk5zS2NOVGZqUjBJYTNPalJK?=
 =?utf-8?B?V1dDd2xPb3dSMy9NUTNMcmJSdWxKSHFreUh0U3RNeFVGMjFISXF4UEtjZFZh?=
 =?utf-8?B?NElMdndkUFI5dU1BeXV1dCtHS2paVzNwM1RIOHlnVGJGejduOXIvUWx0RDZ6?=
 =?utf-8?B?Q3BFM2xqQnRXM1JiQlN1WFpyNkx5Qy9KOTFKazY5dnhKUmF3T3dTdmJsM1Av?=
 =?utf-8?B?TXJIVGNTR0dzT3JqcnZkak9sdGNUd0xrTW9SZk5HMDJlcmxxMHIrTU4rTjNU?=
 =?utf-8?B?VE1weDVKUDFyek5oc1pBM2c4OUtqYVBlMWl2aGtML3ZZZkRtbFFBanVhaUFP?=
 =?utf-8?B?K2FDblZnZnJmRHNIWnI2RS92L3dIMVpNcEh2UjlOVkZha0hsZFFxQzBRTTNm?=
 =?utf-8?B?T0dRNmZWMlhSRUhVMU92R1NGbU5LSHY2WG9zVFUyb2R4TElVVVh0QWJzbU1H?=
 =?utf-8?B?MHJxdW91QlZSQ09pREl0WkJLRkUrN3Rpd1QzZlpvdVhjd3RlZm1CTWxETDJz?=
 =?utf-8?B?bndnRnFsZnVyV1luZE9HNzdPN3lHNWhvMFh1M3JuaFRJdjhoZHFVOS9jUWlN?=
 =?utf-8?B?T0VqMkgyY1V2RWVPYStUWk9yS1NoQWVNdTBkdUsvN2UzUUtEK2JkdmxxOGRO?=
 =?utf-8?B?NFBlZXpvY1V1L3dvMkwvOHNPb215cE5UcFNaYmRkUVQ4dU1iL1lJa0pnSzdy?=
 =?utf-8?B?SGhUZUs5eXYxK2pXVHFKWDR4cEd3dWx2YTNWTGg3RXhvSnNSWXRoNmVxMEdr?=
 =?utf-8?B?dWRvTm1RQTRQSk9DWHBiK3RZRExuMVlHdEJoQ0VwcEs5TkRacHp3TWt4QnFO?=
 =?utf-8?B?OTlGc2preXBXVHcwYU5JQkVyR0k5dHhqTWdvUnpZMGNuVHlmTllyUTlFN08v?=
 =?utf-8?B?WS90V0lhTWdSMUNDb1ZkZlZiZk5xY0dpM0pLUTNNTHlKeTBwaE9RTTQ4WXZw?=
 =?utf-8?B?L05DMlVPSGdYZGRHZ1F2UWxrcms2Z3hsRkdzREd2Um8zeEtmUzJtSjdJQWNU?=
 =?utf-8?B?RCs1aDlWUUgxNVc3Z0l5dlZwdGcwU1l4cDZBOTVzZFdsRk9UNWxXOU5aWXd3?=
 =?utf-8?B?eElVa3pnd21Wb0YxTlYrT2NJQ1ZkWjc4cHBJWlFzK0ptZ2RObXFMOTRGK3M3?=
 =?utf-8?B?N25JVVFCODk0UWpyU2JaTnlMRTg4Sm1aVTIva0NEQWo4U1VQbThnU3dZWmo5?=
 =?utf-8?B?QUFNb0c0S3FTT29rbW5MT3N6RnMrMVVueGl6dUs2endDOW9tV3Fpb3JpamFK?=
 =?utf-8?B?S3VKSk1JWUtvWnF2WnpzTWhrcjhDc3Z5SWR5NkJHVG8vN0s4c1BrVzhSb0g0?=
 =?utf-8?B?eFF4V1pscTczS1hKQ3JUMUY4TVZJUFdYSlExQTBuWXdDaGEyekdwTDdnS2dD?=
 =?utf-8?B?YjZGQ1BXYXJTTzBEc1RUa05lcUtKUitGaWdXelpNSWdoVHk1N0UwU2pqZktG?=
 =?utf-8?B?Ykl4elFDN0RMWmczdVg0R3NRQmp0aGdiOFlIdGZkTTZMNGNsZ3F1cFI3YTZ6?=
 =?utf-8?B?UE00TFNxR0g5aVhoOXVvdUJObHdTaEJGRUJMWUszY0lyK1JkUklCRHd3Yi9C?=
 =?utf-8?B?SWJEOU4rU1BuNXUwSlFwaFRXbXlCNUpsQmFBMmk3WUdjcS9JVGx2clE5WjhZ?=
 =?utf-8?B?c2FTZFJSWENBSUZpOVBoaEVNOC90ZXkwTG9NSWlsc2tQSGR0azVsdDF0elgw?=
 =?utf-8?B?SHoyVTltNXM2K2g3bDRDeVpMa1lhNnovOFRkYndqMHlvN253Y2VneU10NXBE?=
 =?utf-8?B?Sytoa0YzUVdJK3pFLy9rMlNxKzlvZjlkcEo5eG5ZL21YVnVjSHR6WGsyRzA5?=
 =?utf-8?B?Ny96akUvM0NmQkVaL053L3dFQnRYZzV2WjhjYnRxQUJGK1c1N0YwMnViNkdF?=
 =?utf-8?B?OEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 82f913bc-c1b5-48b6-5585-08daec9dfef8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jan 2023 08:47:35.9304 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FprvqGxWc63n4OCdXaiuNq3LCruTuM+ATL5H7mRpJzjpTEQLitMLQ5EWEhBiHFNj+kwSEwwYeZispoR4XRK61JoPWZkbE+BtcDza56zeoP0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5034
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dsb=3A_Remove_check_for_dsb_in_dsb=5Fcommit?=
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

--------------1HP0N0wyiLUXW3iPKu4H2HSV
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Lakshmi/Sai

The following issues are known issues, not related to the patch:

  *

    igt@i915_selftest@live@execlists:
    https://gitlab.freedesktop.org/drm/intel/-/issues/2940

    fi-bsw-n3050: PASS
    <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/fi-bsw-n3050/igt@i915_selftest@live@execlists.html>
    -> INCOMPLETE
    <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112159v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html>

  *

    igt@i915_selftest@live@guc_multi_lrc:
    https://gitlab.freedesktop.org/drm/intel/-/issues/7174

      o fi-kbl-soraka: PASS
        <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/fi-kbl-soraka/igt@i915_selftest@live@guc_multi_lrc.html>
        -> INCOMPLETE
        <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112159v1/fi-kbl-soraka/igt@i915_selftest@live@guc_multi_lrc.html>


Regards,

Ankit


On 12/22/2022 10:21 PM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915/dsb: Remove check for dsb in dsb_commit
> *URL:* 	https://patchwork.freedesktop.org/series/112159/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112159v1/index.html
>
>
>   CI Bug Log - changes from CI_DRM_12522 -> Patchwork_112159v1
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_112159v1 absolutely need 
> to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_112159v1, please notify your bug team to allow 
> them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112159v1/index.html
>
>
>     Participating hosts (44 -> 45)
>
> Additional (3): bat-adlm-1 bat-atsm-1 fi-tgl-dsi
> Missing (2): fi-hsw-4770 fi-pnv-d510
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_112159v1:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>  *
>
>     igt@i915_selftest@live@execlists:
>
>       o fi-bsw-n3050: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/fi-bsw-n3050/igt@i915_selftest@live@execlists.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112159v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html>
>  *
>
>     igt@i915_selftest@live@guc_multi_lrc:
>
>       o fi-kbl-soraka: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/fi-kbl-soraka/igt@i915_selftest@live@guc_multi_lrc.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112159v1/fi-kbl-soraka/igt@i915_selftest@live@guc_multi_lrc.html>
>
>
>     Known issues
>
> Here are the changes found in Patchwork_112159v1 that come from known 
> issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@gem_exec_suspend@basic-s3@smem:
>
>       o fi-rkl-11600: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112159v1/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html>
>         (fdo#103375 <https://bugs.freedesktop.org/show_bug.cgi?id=103375>)
>  *
>
>     igt@kms_chamelium@common-hpd-after-suspend:
>
>       o fi-rkl-11600: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112159v1/fi-rkl-11600/igt@kms_chamelium@common-hpd-after-suspend.html>
>         (fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>  *
>
>     igt@runner@aborted:
>
>       o fi-bsw-n3050: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112159v1/fi-bsw-n3050/igt@runner@aborted.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>
>
>         Possible fixes
>
>  *
>
>     igt@i915_selftest@live@execlists:
>
>       o fi-apl-guc: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/fi-apl-guc/igt@i915_selftest@live@execlists.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112159v1/fi-apl-guc/igt@i915_selftest@live@execlists.html>
>         +11 similar issues
>  *
>
>     igt@i915_selftest@live@gt_heartbeat:
>
>       o fi-apl-guc: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html>
>         (i915#5334
>         <https://gitlab.freedesktop.org/drm/intel/issues/5334>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112159v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html>
>  *
>
>     igt@i915_suspend@basic-s3-without-i915:
>
>       o fi-rkl-11600: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html>
>         (i915#4817
>         <https://gitlab.freedesktop.org/drm/intel/issues/4817>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112159v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html>
>
>
>         Warnings
>
>   * igt@kms_chamelium@common-hpd-after-suspend:
>       o fi-apl-guc: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/fi-apl-guc/igt@kms_chamelium@common-hpd-after-suspend.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112159v1/fi-apl-guc/igt@kms_chamelium@common-hpd-after-suspend.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_12522 -> Patchwork_112159v1
>
> CI-20190529: 20190529
> CI_DRM_12522: d659fc77d1fd87f314c1bf510f3fbac009c2529d @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7102: bacfdc84a9c02556c5441deb21e3a3f18a07347d @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_112159v1: d659fc77d1fd87f314c1bf510f3fbac009c2529d @ 
> git://anongit.freedesktop.org/gfx-ci/linux
>
>
>       Linux commits
>
> ebdee9911f99 drm/i915/dsb: Remove check for dsb in dsb_commit
>
--------------1HP0N0wyiLUXW3iPKu4H2HSV
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>Hi Lakshmi/Sai</p>
    <p>The following issues are known issues, not related to the patch:</p>
    <ul>
      <li>
        <p>igt@i915_selftest@live@execlists:
          <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/intel/-/issues/2940">https://gitlab.freedesktop.org/drm/intel/-/issues/2940</a><br>
        </p>
        fi-bsw-n3050: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a>
        -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112159v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a>
      </li>
      <li>
        <p>igt@i915_selftest@live@guc_multi_lrc:
          <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/intel/-/issues/7174">https://gitlab.freedesktop.org/drm/intel/-/issues/7174</a> <br>
        </p>
        <ul>
          <li>fi-kbl-soraka: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/fi-kbl-soraka/igt@i915_selftest@live@guc_multi_lrc.html">PASS</a>
            -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112159v1/fi-kbl-soraka/igt@i915_selftest@live@guc_multi_lrc.html">INCOMPLETE</a></li>
        </ul>
      </li>
    </ul>
    <p></p>
    <p><br>
    </p>
    <p>Regards,</p>
    <p>Ankit</p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 12/22/2022 10:21 PM, Patchwork
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:167172791715.14838.14437035303296869881@emeril.freedesktop.org">
      
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915/dsb: Remove check for dsb in dsb_commit</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href="https://patchwork.freedesktop.org/series/112159/" moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/112159/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112159v1/index.html" moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112159v1/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_12522 -&gt;
        Patchwork_112159v1</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_112159v1
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_112159v1, please notify your bug team to
        allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112159v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112159v1/index.html</a></p>
      <h2>Participating hosts (44 -&gt; 45)</h2>
      <p>Additional (3): bat-adlm-1 bat-atsm-1 fi-tgl-dsi <br>
        Missing (2): fi-hsw-4770 fi-pnv-d510 </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_112159v1:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>
          <p>igt@i915_selftest@live@execlists:</p>
          <ul>
            <li>fi-bsw-n3050: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/fi-bsw-n3050/igt@i915_selftest@live@execlists.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112159v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html" moz-do-not-send="true">INCOMPLETE</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@guc_multi_lrc:</p>
          <ul>
            <li>fi-kbl-soraka: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/fi-kbl-soraka/igt@i915_selftest@live@guc_multi_lrc.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112159v1/fi-kbl-soraka/igt@i915_selftest@live@guc_multi_lrc.html" moz-do-not-send="true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_112159v1 that come from
        known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@gem_exec_suspend@basic-s3@smem:</p>
          <ul>
            <li>fi-rkl-11600: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112159v1/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html" moz-do-not-send="true">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375" moz-do-not-send="true">fdo#103375</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@common-hpd-after-suspend:</p>
          <ul>
            <li>fi-rkl-11600: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112159v1/fi-rkl-11600/igt@kms_chamelium@common-hpd-after-suspend.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827" moz-do-not-send="true">fdo#111827</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@runner@aborted:</p>
          <ul>
            <li>fi-bsw-n3050: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112159v1/fi-bsw-n3050/igt@runner@aborted.html" moz-do-not-send="true">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312" moz-do-not-send="true">i915#4312</a>)</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@i915_selftest@live@execlists:</p>
          <ul>
            <li>fi-apl-guc: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/fi-apl-guc/igt@i915_selftest@live@execlists.html" moz-do-not-send="true">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112159v1/fi-apl-guc/igt@i915_selftest@live@execlists.html" moz-do-not-send="true">PASS</a> +11 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gt_heartbeat:</p>
          <ul>
            <li>fi-apl-guc: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html" moz-do-not-send="true">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334" moz-do-not-send="true">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112159v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@basic-s3-without-i915:</p>
          <ul>
            <li>fi-rkl-11600: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817" moz-do-not-send="true">i915#4817</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112159v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>igt@kms_chamelium@common-hpd-after-suspend:
          <ul>
            <li>fi-apl-guc: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12522/fi-apl-guc/igt@kms_chamelium@common-hpd-after-suspend.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112159v1/fi-apl-guc/igt@kms_chamelium@common-hpd-after-suspend.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827" moz-do-not-send="true">fdo#111827</a>)</li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_12522 -&gt; Patchwork_112159v1</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_12522: d659fc77d1fd87f314c1bf510f3fbac009c2529d @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_7102: bacfdc84a9c02556c5441deb21e3a3f18a07347d @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_112159v1: d659fc77d1fd87f314c1bf510f3fbac009c2529d @
        git://anongit.freedesktop.org/gfx-ci/linux</p>
      <h3>Linux commits</h3>
      <p>ebdee9911f99 drm/i915/dsb: Remove check for dsb in dsb_commit</p>
    </blockquote>
  </body>
</html>

--------------1HP0N0wyiLUXW3iPKu4H2HSV--
