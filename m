Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F1163F7B1
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 19:44:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D064610E670;
	Thu,  1 Dec 2022 18:44:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9D2E10E670
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 18:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669920238; x=1701456238;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=QQiD5npgs44wcbprRZzgrEXnVOu8TgA0tFUM7yNCLRk=;
 b=eUDYnApQNDuVGPvc/oMQvOmLDsXrXYdnD+JMGgDyXUwbCeQ8tb9WbYCR
 AXw2IUI2pjiJ8vdy57DoNz7hrUUxWkYbB5/OiURu420ojSDCwBLfjTjFJ
 VjLQs1ka5CFKIZoChzw76mhMqEYYQCvmSWOR7RhTcz5vvseXddoBqLynJ
 c9JXN7uoswqw71OAHzQv0WkiEPBTyZK6spvfU+iTLMgbRzzMKcdQdXT3L
 hVtR6fDO0pZeSpmklzlpPjm/9TmZBAy4rSIOE2EWyayhkkRtv9nL1nRLR
 ALztrG8siFWfz2mDMcpC9Nt7I0ZbWgeuSTM7ssJ/sH7pUIB8jdIW0b69x Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="303372763"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="303372763"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 10:43:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="786997160"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="786997160"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 01 Dec 2022 10:43:57 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 1 Dec 2022 10:43:57 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 1 Dec 2022 10:43:57 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 1 Dec 2022 10:43:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EXeIk445z5k063QsUsI9KXO3szWIQHhRiMfHQ7OjLnv9O1UCeJKIbgB+MphOsdPrbldFTQrFmPtdR1xkIGuAYZkLdaRKPTgs9RkfNTollu/V4Ev9hsQcfl5CbbQ63YHmXzaB32mO/Xmcx5Z1+dpBNO9YmWjhDWFFb/qr3nU+WZtgrCaB0eCSywsdHbMu0gtiwj3SWuAx3N1EBZKgGKSGBpBxrkJsUQyib8lXagHiDPQfSEj/VuHBDy/EzUdSsZ75S/dMv/ZEw6zgvayiWn5IH7sOps3lq1D7l2farK3M5sx0Au7KAB96+J3bUw0Wxzn9kk4R4v9SCTFBIn8f/rZjiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p7UQpWM6uqsiqe+AlBpygZboXaRXsZ8kTRcMbiUoJjc=;
 b=k1sRWApXnqJ09pvIWnPxnBE6/p2t9QAFBGJIbdCeJgLWH3JRZs8wreCXiHJZ0794H7ok2hIsgkJL38ErImyrucVreOERFFBq00J9t1jpzaUH4raqD5XNmXp4/IZi187mhWyIy7eHOYHVqIkMxL8X53aoKn3MVFkiJXn2RKFcoAD+uZyDdUSUg9JTuqLAh3h57jVLI+W1zxYKRj4abV3pLpVR02yO4vm+pLyvHPYxesxUY19Jfa4k59KxLsvCwYYKeG12rOEgt9sThjJbqNc2+aXAKvVxG3vQ+eKBU/CpvZenbQEaX0tmUifEovz0YgL9dJsv/jfsEtYF0el1GjMcgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2984.namprd11.prod.outlook.com (2603:10b6:a03:8b::14)
 by BN9PR11MB5354.namprd11.prod.outlook.com (2603:10b6:408:11b::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.8; Thu, 1 Dec
 2022 18:43:55 +0000
Received: from BYAPR11MB2984.namprd11.prod.outlook.com
 ([fe80::442e:537:2534:6159]) by BYAPR11MB2984.namprd11.prod.outlook.com
 ([fe80::442e:537:2534:6159%7]) with mapi id 15.20.5857.023; Thu, 1 Dec 2022
 18:43:55 +0000
Date: Thu, 1 Dec 2022 10:43:44 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y4j14GCbSVRmCnvC@unerlige-ril>
References: <20221201010535.1097741-1-umesh.nerlige.ramappa@intel.com>
 <166990368314.14638.60543957873940899@emeril.freedesktop.org>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <166990368314.14638.60543957873940899@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR13CA0081.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::26) To BYAPR11MB2984.namprd11.prod.outlook.com
 (2603:10b6:a03:8b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2984:EE_|BN9PR11MB5354:EE_
X-MS-Office365-Filtering-Correlation-Id: c8ab7dd7-c34e-48d6-5cf2-08dad3cbffaf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZHCVRtO6E1vNLx3bTfb8Ndil7IXwZIK5MKe7AthmkIaUiUeI6h6bR7mWf3lOuJ/qDskxdl4ybq93+XAdImEjmR6UMTjPbHhDUjnn8YkLTPW0IgNZGTn7vlomv/x36Vj89AZkq/rKWUgyFeHgxBzV9GdyFSls0WwGYfP8HMTy7PMnvSAtCBolw67r+BwEM/Oru9wvQPbaXc6gqo+P9fOrQJ8AD4VymWHKF0Iyz8RhuTEnpQgMyYf7azs1syQrWs+yFcKu+Fj0n3UrvabqFk2nnoOdOv9YJlUlfyynaOZF2J3qbM4yrA5LbjSEuUHqIcDDkFFkp09suWOsDiKz5q5QYyVsaPQsZZVPznjF6juAgUL7SZ0pDG5zYfZGNfh1K5gexXd0z+MtnMI5c7IIJg5yQ933upb0iYXS52Dpca6beqZwqGc9PsoOcU3CZhBmO6Bu7eMJHrrJ4Mv/lk7MU+yiOV3oXvO+AGD4rT/qkTpnvDQ5RGXk2t+FTeyeiNT+qDRyQSu7CuKriWCj7DxZ5ET6NpYWAqEFPJQaw70f+H5X72xKjQm5r6Qct50dfoI5MGDHRY6ent6qKFx83k1SrYwHKuscCL5T7NhH9XsYR9kyxsgk7pC/Xb3qSXNxzzalzuobFlkcYHADURQC1JOaCkdDZJf8Vfc3rI07VKuuGIQQA8c=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2984.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(39860400002)(346002)(366004)(136003)(376002)(396003)(451199015)(2906002)(5660300002)(41300700001)(8936002)(6916009)(66946007)(66476007)(66556008)(316002)(6666004)(33716001)(6486002)(478600001)(6512007)(86362001)(9686003)(26005)(186003)(82960400001)(83380400001)(6506007)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VDRjZythb2ZaV0l1UnhEbXFtakNqNWFiYklNTmtTQmJuRWxOUCtPa1FCVXZB?=
 =?utf-8?B?WEhCdU5ONWF1ZnNvUG40S2dqVkpSb2t4a1U4N0NDNWRTaDQ4SXFvT2Frb1or?=
 =?utf-8?B?ZFdhdk96dDdPSS9rdUIrWFBTdEpPdWdRQ1paaDVyQ2M5ZWlHTWE5OWxuK0JE?=
 =?utf-8?B?a0l3Z0JGK1VCY0x3OFlTSGl3K21OVk5ER05ML2lSZG5rNkdPbGQ2M0hDamt1?=
 =?utf-8?B?UVdSdnI2WktYT0k0U0NHNWsrNTRLLy9jR2loVDdlaHZ5Q1hnYTlQMTNyNk9i?=
 =?utf-8?B?a1lGcHNmOGhLb2lDQ2l6c2E2VUZYSUVOMVdDbk1QNUdVVnBtY1IxTFpvK2VE?=
 =?utf-8?B?OGwwd1I0OTJqaGZSWFJNZ1VMdmQ5T2xwNEo0NWFDdlkyWDZ3L3Z5TDhuMDUv?=
 =?utf-8?B?elVGMXBaSjBLcjJ3Sy90dXdhT0Y0S3ErT1RsekJDS3UxK1RBRDYxQXZQQm9B?=
 =?utf-8?B?cWM1bDd6aGdNVTJlVW1WR25jd3Q2L0FGRGdlTm13c0NNdTJ6eGxxR1YzQXNw?=
 =?utf-8?B?eEw4elcyVGErMEhiTlhBR2FLZ05qQ2RHNllFU1BIMVlNWVhodGxnZTZ3NTA1?=
 =?utf-8?B?TXc1QmFJUWowQ3UzdUo5ak5wZm9Rc1RNTWNmSzZNV0FnOGhUOXpjZjRJUVNu?=
 =?utf-8?B?VlhGWGluZmFRdUtBOWc0MmlzdE1pdmpNTjZGQlI4NU1aNVVVTjhIREZxcGdj?=
 =?utf-8?B?MWNxaE9pMGtmQlM4cG1rS0hEMG1BRXZ2U3FSV3R5Wlhzc3A3anUwb1V2RE9N?=
 =?utf-8?B?dWdFWS84eW5nMVV4WjZUYkg1T2Y4cnJaK0JPb0JhZVVYR2JFL05CejRWekJR?=
 =?utf-8?B?UFZ3MFd4M1VYMzdua0s1Qm1tdEVWaXYwR01FNHhQeHRYeURFRGxPK24vS01o?=
 =?utf-8?B?UHN1UWhJUWwwV1Q4UFU3a3RySEdLbW5OWkdUNXBqbU9tenZramgyT3RpRk1l?=
 =?utf-8?B?eWtJUFpXZy9WNjJTbUR6RXFKdHJLeGZoemV1M2dONiszeTd2UWphM0FrRFI4?=
 =?utf-8?B?MXluVm9iZThzVVpHSmg5b0hrQmZORGtFZm0vanBIUUk0UitXMXA4RmxqV0dD?=
 =?utf-8?B?R3RKR2hpaTUrU2JkWFkwV0c5Rk5uN0FDS1FJNFFEd1VMWlZXZEtrL2g1bjlF?=
 =?utf-8?B?ZkxVbythR3pjTE9ZVVR5YnZCRmZrV1Rqejg5VTNraU0rUXNacEluS0R0RFJE?=
 =?utf-8?B?SktIYlR1dWhMWUl4THZmRHpjOUVVVmZZZ0dFUDlwMU42VFZ2ZXlXeEZQRGl6?=
 =?utf-8?B?Q1BMNkFWQmlZUWhkZHBpaTFWT25zYzRTSkZLbkNJWEYyRG8vOUhyRjRydHM4?=
 =?utf-8?B?K3VBcXQ3R1ArWW1PTVRHT3k1MHFkbEtKRy9ZWTl5Y25BU05IdWNyTHZSQWk0?=
 =?utf-8?B?QUdzODRuM2ltZ25Ed3hCd3BzUGRpZUJaWWlTTmoyQ0JhN3g3VGpmcytScUhH?=
 =?utf-8?B?YllIb3dSUlpaVG5FSkNDcHgwRyszMm0rQ1FVR081cTlNQW9WY1luRWJGQ2kv?=
 =?utf-8?B?RWJVZGRVYktNK1RFLzBTaGd6eG1yMG51OUhmRTZHQTNrd2loZE1WcFNMVXZa?=
 =?utf-8?B?TEhNZ1pQdERucmxQMEFnUWgzUUdRMEpDVmNFMEs5N1dJZmpPaDJzVndWd2pi?=
 =?utf-8?B?SmM4emlERFNCUXZXUTN1OENMcUlFVVFPb1c0RE5YTEljRFJ6TUVSdmdVSklz?=
 =?utf-8?B?UXh1cHliMk8xRkFNUUFVYjVOQW1lTFpsbEthR3paSEM2NjUwM09HRlU2SlVs?=
 =?utf-8?B?R2hGSmJtNVhjaFlyMkJXWnBxdFE2aXFMRTJBcXA0ZG5jbXhGWHZHVWRNdDl2?=
 =?utf-8?B?S25PRXRhakIxNFZSZjZkY3JBdWZnazY0cTFMc1FVbnBQRFZOaWloTWFNa2lJ?=
 =?utf-8?B?Vlo4NnFoVTRDVFNHMi9Rcm00b0NQaG12TDdWTzBxeG1mK1I1WEIvNjE4R0R0?=
 =?utf-8?B?cW5IUGszZ0g5QmF2SnRUelZidzM3YjBwcFF5RE1pUlNFMVEreTAzTmxBbUxK?=
 =?utf-8?B?dlFSWHFVNlBXd0Z4N0xLbUhPM1NxR1FWUlhCc3hvQTBGRW5jLzFRNk5GdkFY?=
 =?utf-8?B?UGpCUUVwY1lzOU05VGtzQmxjaHJOcjRTRzExV1FCUDFTWHVhY1g1ckh6dGNh?=
 =?utf-8?B?Umw3UHU0WjZkTDBNdldVdUx1MlBrNk9iTUtJQ1RwN1Y4aHVBSFZlR3NZSG5z?=
 =?utf-8?Q?zooslH9cLDbA3zetyPMxtBE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c8ab7dd7-c34e-48d6-5cf2-08dad3cbffaf
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2984.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 18:43:55.4725 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ht5w6+GIAQtKJGkNhe8fcQUPREEQV7klalfI4jKNO/ykcQCadSJ04fL5qG4EGk31vp9Nzc9YdG5rSPkvsKRHIk0o0ADvpM+QyC7KhgAjoMI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5354
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Add_OAG_32_bit_format_support_for_MTL_=28rev2=29?=
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

On Thu, Dec 01, 2022 at 02:08:03PM +0000, Patchwork wrote:
>   Patch Details
>
>Series:  drm/i915/mtl: Add OAG 32 bit format support for MTL (rev2)
>URL:     [1]https://patchwork.freedesktop.org/series/111512/
>State:   failure
>Details: [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111512v2/index.html
>
>     CI Bug Log - changes from CI_DRM_12457_full -> Patchwork_111512v2_full
>
>Summary
>
>   FAILURE
>
>   Serious unknown changes coming with Patchwork_111512v2_full absolutely
>   need to be
>   verified manually.
>
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_111512v2_full, please notify your bug team to
>   allow them
>   to document this new failure mode, which will reduce false positives in
>   CI.
>
>Participating hosts (11 -> 11)
>
>   No changes in participating hosts
>
>Possible new issues
>
>   Here are the unknown changes that may have been introduced in
>   Patchwork_111512v2_full:
>
>  IGT changes
>
>    Possible regressions
>
>     * igt@gem_exec_capture@pi@vecs0:
>
>          * shard-skl: [3]PASS -> [4]INCOMPLETE

Looks like a test issue where a vecs0 case is failing. Not much info in 
the dmesg log, but looks reset related.

Unrelated to this patch series.

Umesh
>
>Known issues
