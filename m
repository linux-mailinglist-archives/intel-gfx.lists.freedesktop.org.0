Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 422DF7A23B5
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 18:40:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94CA810E64B;
	Fri, 15 Sep 2023 16:40:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B639010E64B
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 16:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694795999; x=1726331999;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Z4PWXLc9wG89BbTb/cpY2Ura5d8u8FNyE6VSsZiBRTE=;
 b=MAxdeLLRKHnrbW0uPplm02eb45e+xfEoJk0GZb0qemVasRF8WljEQcFA
 pTSncRSJXCIi/QSQGZ9paK8KPa+oepUbWay1rWJDXtI+JC/yK8tosfbe2
 L7fz9deGAYQH8liW4at1k1Cj+KJ58PzPxrCKIa+shqCS6QT/kFq9gNE57
 Is9MNg7ptq5V+yU1vGcXD/JCNRKP5ViTmhxVtvDnGxTakDYuGYjNrz/MY
 eoogHsiPARBq/u12+FVdbKEccn2BMjiHZupxhctI0EuooF4ix+chXo347
 iWbySkxdYb0u/jZ4/nFKu3ya99rz3YcazxaPrPxvYMKJpCOnFsRaUJmwp A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="383117397"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="383117397"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 09:39:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="721751923"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="721751923"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Sep 2023 09:39:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 09:39:58 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 15 Sep 2023 09:39:58 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 15 Sep 2023 09:39:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iaA6UrgtoR3xw/g6Gd208BcU/rRRQr3ouEehSX3YZ11hQe3TYJSg86/MQHFhAjLhHcUZXQPTKXlQwLPZP+B3s34ZOKcDS2SLDORPK5qVoXPMXzkuF3P2lxVF3B2BNzzjYsZK2udxc1+/psqqr/zvv12hjM75zRKjWSJZRyvQnV3E1oukhe2oFTeFP2u329prgfG7bR9lW5NJpTOSwIh5PA8sGGmIMcJdNZPcqQjWC0rsjNBO+qxHZTc+ZWlr6UQqdC3Jka8yp0IGKYv2ruNfdC57oRY8kqFNDZdoIHtmh39O24D3P54lEgO346RjNqA0bfAp+btT8TXKOVm6EesUJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dEFyOk6S9mZul/J5SJB75NmVwKSNBa7kzM6Fs3p3EoQ=;
 b=DxGi85wZsRPEH/AQg3JTK9Lv51srco34Ms8Vo7Uz0rwOtaeBrysesTlZlHPlw+9WWQYPWqNdDMqB1zMj/Eqkk+gZSNIsfddjacP8GjjYqRI4k9LqBBMtUbfGe8Yqd6TUBaLgCBDVgyMxvVE/iHcH7Doyx9BfH/Yb+Hul6mbdnNUKEiOz4dsoBg/Ki+9zP167lFFjRwX5/uurpWJF9t2w1V+rIQGNN8LcpraKU9it1/j5pgC/UHcy9JXEyHy48Tkl7hSQas+v6KJN7hHNeYiqVJ9mdTmcf2u8MN2ML+Ww1ube3val8xUbQOEzpg24KTxF1LnzvGLQuVkycx+IqEzINQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 PH8PR11MB7991.namprd11.prod.outlook.com (2603:10b6:510:25a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.21; Fri, 15 Sep
 2023 16:39:56 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::a51e:7713:dd10:97da]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::a51e:7713:dd10:97da%3]) with mapi id 15.20.6792.021; Fri, 15 Sep 2023
 16:39:56 +0000
Date: Fri, 15 Sep 2023 09:39:54 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <ZQSI2iu/Zx6/7MWu@unerlige-ril>
References: <20230912212247.1828681-1-umesh.nerlige.ramappa@intel.com>
 <169466511430.29164.10915444125829854058@emeril.freedesktop.org>
 <ZQR//dkXOLpVcdZC@unerlige-ril>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZQR//dkXOLpVcdZC@unerlige-ril>
X-ClientProxiedBy: MW4PR03CA0082.namprd03.prod.outlook.com
 (2603:10b6:303:b6::27) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|PH8PR11MB7991:EE_
X-MS-Office365-Filtering-Correlation-Id: 171d6177-2024-4e93-696b-08dbb60a64bc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: S9aH+iAign09e0naKSIGW4M+CCIhg+U7IrgfSgT2VnAlhu9M7xZg+OqCvL2A9SeUPoEdnfmpOcvPogmAmqvm59Yz6NcLMBKTxbxkP742oBLbHJYjS9ppjQTjQFT9cheWsIQfJZNugX5hw80N/uf0MYWGnYG3QaMydoVOIVuXK03YQXKP8sUPwIZGMsFk6JaILg5/ZRa2gvXXNssAglkv40vRJ+i79hO730hExRSRTcs+YcKrzCDZIgdo7HZb59Rncl8uqFW6F0b9+SGQJDCkccB+naQi1Lnr+ACquC1pfLUhQzWdMutA2pSk71tdO8HNl4ApbaqQo05kNrbsme0uy9NHLj/qXuW+58bPeqI7Jj4Ahvje1ps5CL9YShCdLAXkWznKhae0fHhItVuZ6wKgVYGVfNiXCrCS/Rzj5sAsR9NPZpKytaSJd1nl05hP4eI7Pb+hq9rogPmJc6RNpIUZzfE1LEsRaoQcKBBzijK+yLvkSgYIIB23KZ76DgV1ht2GzUeZwod9Jo4RepwYAwO9xRh46vD3Q82f4AviM88vCev2LVzSgoVH7SHS7czhrrQSkoQt+XUc9hKVy701bo7Ehg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(346002)(39860400002)(136003)(366004)(396003)(186009)(451199024)(1800799009)(6486002)(6506007)(9686003)(966005)(6512007)(478600001)(83380400001)(26005)(2906002)(33716001)(66946007)(66476007)(66556008)(316002)(5660300002)(41300700001)(6916009)(8936002)(82960400001)(86362001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y2xQdFhhWUZJTThaZThlZDMvcUpIL2FjTmtERHQzSWs5TVc0aWg0QXlsV2V0?=
 =?utf-8?B?NzZRU0crSnFaY1BaL0E1U1ZoNnhFbE1FZ014QXFWVlBlcVdERElGSTgzdnRR?=
 =?utf-8?B?eHl5azhGMXdaSldxZ1hHaDFGT0tpSnhGZlVwOTE0ZTF1K09MUVpCbmdXd2hS?=
 =?utf-8?B?OWg0VVJtNXJsam5OMkNpSlVNYUJNU0thRVkrdzRtZUNzK1I3Y1hLbExHZVo3?=
 =?utf-8?B?VGRxaG5UOGJnRjdkQlZ3RXZwV21iY3pjQ1p3QS9nS3pGd1BTcWdTMEp2d1Vq?=
 =?utf-8?B?WTBwNlBsUzF1K2VBL2liaVQrSDU3cHJrWmZGQTkzV3NKRHRwRTc0c3ZmL2dP?=
 =?utf-8?B?T2VtV2FYeUlHeEFHcnlzb2VSaUh6VTYyL0hmRGxlV3IyS0tpS3dmWG04Q2hl?=
 =?utf-8?B?THJyWHJNRklkemxCUVdaRHRVeHp2R3JtV3Zkblc0ZGpDVElDU21qMjRJMlVs?=
 =?utf-8?B?M3V4N29LWkRlRzFBMjVucWVzdHUrMWlNS0l3aXJYKzJvWHA0NTJGZ3pTbXc3?=
 =?utf-8?B?cXJtVkE2cGxWbTlKajJ1Rk83ZzZzejRJVnNTQnFlQTZlSFNTNnVuN1k5NTVv?=
 =?utf-8?B?Y2hDTFA5c0ZFdGF6VmsrOVk2TkYwT0RCbG0xL0dHZVlUcTBnUm94WFRYbnJR?=
 =?utf-8?B?VDgrdjFtN3JIS3VWQ29wNmdOV2JicmNiM3JYeUNQajRTM0M5L0c2ZUZ4MkhB?=
 =?utf-8?B?Qmd4Ukw3TkduNFZBbG5QWWIwSVFpWEtZMy95aGFUZ3dxU0VLT3dXbW5PL2FD?=
 =?utf-8?B?R25qa2oydDZ5ME9DSGZCZEpvQWFMamh5SVhsQjJhblQxL3dncFpJRFB5UW1N?=
 =?utf-8?B?cDlNOUM1YXM5N0dsOGVadVRVcGw0OWplU3NUL0R6SEdQU2x6dzc1QllRbGda?=
 =?utf-8?B?YTdsTU16K1ZwNEFyaU9xeHY4eHg1SWhDNGFQcXB3Nm9xZnpCWHY2Z0puY1Qr?=
 =?utf-8?B?RGlvdGVVRUtocHdRWVZ1UkN5elNoQTd0a2FOVldzdmVucnVINGlxYmpPaTM2?=
 =?utf-8?B?Z3N2RXNsR25tSDVnV1pSUFZYc2d5am1xU1RRcCttaU5GRlVjRzZjemwydUtS?=
 =?utf-8?B?TkFHVjlTYmQxWjlvT2FvV3BIVkNOamYxbmZ1M05MVnQrTFhnNWx0K3cwbjc5?=
 =?utf-8?B?VmF2UktMQlpQRVo4ejZsNFpzMWFscFFiUzFEU3ROdGZjRS9tNmR0aEd2cmph?=
 =?utf-8?B?WVB2V0duOUJKcVRaUHA4SE5EZTB0eXplU3lod1N3TDhkQ1djYitaQWFaTGRn?=
 =?utf-8?B?dTlKM3Q4MzRKNU5rdEExaTZlcmVOTHhtck1BS21xYmZrS2JFb0VSa0lZN1Uy?=
 =?utf-8?B?Ym9zMDdmUFNqWWFnVWM0Vy9UWHM2OEhpWlhyclVTTHJSODJ2cms0Q2hkb2Y3?=
 =?utf-8?B?UnQ3cEZ5Qmt3YXFSd0h6SFNzZ25wZFFRT2JCV1VUMVdYcHZabUc5aHJXR3FO?=
 =?utf-8?B?cWFqUHFXdVV5TEVOR0ZhQWlVTTZmR0hXMDV3UHZhNkJOaGRKNHAwdDZpSFNI?=
 =?utf-8?B?SmttdWdyZ3VhNmdBZjZHZ3B4OUdPUWlYZ1d1Ny9yczc4Z2I0MlV1NEg3dkNh?=
 =?utf-8?B?WDE4Z21MLzMySVR5MkxQckE2OHZSQStZTUNkZVhEaGczWnZFcklzQzNGZjhl?=
 =?utf-8?B?RWFiSUZHZFhxRTdiSEtuWkl3VGR2S2loNmZoSUhuam9Jbkp2Z0xvVkhPYlFE?=
 =?utf-8?B?MWxMMXNXTlcwRUlacWNlTXBiR2VaTTFEbUZLcTVUMjcwOGk4RzRGZVhOWU9Y?=
 =?utf-8?B?OUFQYUlwQXdJVE1ZN05aOEh5c1kvRU11TXBqRDJvazZkVHpUZ2lrc2VlOWRt?=
 =?utf-8?B?VlJkL0NhRkx4L0Z6akVYMlZIbGdFZWc5eVZDalJhbDkrWXJIN3VQcXZ2a3c4?=
 =?utf-8?B?Q1VUN2RBU0NLU01FN20zUjJheDBxcHZxNEViZklGdGVHdWtFWTU4VUNqTnpG?=
 =?utf-8?B?SE5weVF4RUdtK1k1Y01PSm9abmxyd1I1Q2xKWDlhU0RYalB3Y1VoT0xhN1NL?=
 =?utf-8?B?Ym9Hd2VBWmtWV0FxeVl2cmxxMUk1NUN2RWw2NGJOU1N1TnRSMHVDdHlwMWcr?=
 =?utf-8?B?SUVvenlyMTFBQXZKUmVHOFhyWmpkc2pXaUtiU0xuMTNybEhsdzdTT3c2Vkwx?=
 =?utf-8?B?dGlLa3NITmxuZ3BxRjVGRzFkK09RSUowUjl3M0piL2d6L09yMmRMdEpYSCtH?=
 =?utf-8?Q?E7shITLCQOcJG6HmE/QloOQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 171d6177-2024-4e93-696b-08dbb60a64bc
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2023 16:39:56.0123 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p3fyELK4fp9QBwnnDOPw1ZZ1JkFNGgTQYiidMXtYlXSg+Cq7SBTQRj8jGwkDEDK0LIcaG0P0SddFwe2wjfTKjJq1gXiDzplr023g0myFJ4w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7991
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5/pmu=3A_Move_execlist_stats_initialization_to_execlist_specifi?=
 =?utf-8?q?c_setup_=28rev2=29?=
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

On Fri, Sep 15, 2023 at 09:02:05AM -0700, Umesh Nerlige Ramappa wrote:
>On Thu, Sep 14, 2023 at 04:18:34AM +0000, Patchwork wrote:
>>  Patch Details
>>
>>Series:  i915/pmu: Move execlist stats initialization to execlist specific setup
>>        (rev2)
>>URL:     [1]https://patchwork.freedesktop.org/series/123616/
>>State:   failure
>>Details: [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123616v2/index.html
>>
>>    CI Bug Log - changes from CI_DRM_13627_full -> Patchwork_123616v2_full
>>
>>Summary
>>
>>  FAILURE
>>
>>  Serious unknown changes coming with Patchwork_123616v2_full absolutely
>>  need to be
>>  verified manually.
>>
>>  If you think the reported changes have nothing to do with the changes
>>  introduced in Patchwork_123616v2_full, please notify your bug team
>>  (lgci.bug.filing@intel.com) to allow them
>>  to document this new failure mode, which will reduce false positives in
>>  CI.
>>
>>Participating hosts (9 -> 10)
>>
>>  Additional (1): shard-tglu0
>>
>>Possible new issues
>>
>>  Here are the unknown changes that may have been introduced in
>>  Patchwork_123616v2_full:
>>
>> IGT changes
>>
>>   Possible regressions
>>
>>    * igt@perf_pmu@rc6-all-gts:
>>
>>         * shard-mtlp: NOTRUN -> [3]ABORT
>
>This is an existing bug and not related to this patch:
>
>https://patchwork.freedesktop.org/series/123616/#rev2

Bug link: https://gitlab.freedesktop.org/drm/intel/issues/9335
>
>Thanks,
>Umesh
>>
>>   Suppressed
>>
>>  The following results come from untrusted machines, tests, or statuses.
>>  They do not affect the overall result.
>>
>>    * {igt@kms_feature_discovery@display-4x}:
>>
>>         * shard-mtlp: NOTRUN -> [4]SKIP
>>
>>New tests
>>
>>  New tests have been introduced between CI_DRM_13627_full and
>>  Patchwork_123616v2_full:
>>
>> New IGT tests (4)
>>
>>    * igt@kms_atomic_transition@plane-all-transition-nonblocking@pipe-a-hdmi-a-4:
>>
>>         * Statuses : 1 pass(s)
>>         * Exec time: [0.0] s
>>
>>    * igt@kms_atomic_transition@plane-all-transition-nonblocking@pipe-b-hdmi-a-4:
>>
>>         * Statuses : 1 pass(s)
>>         * Exec time: [0.0] s
>>
>>    * igt@kms_cursor_crc@cursor-onscreen-128x128@pipe-a-hdmi-a-4:
>>
>>         * Statuses : 1 pass(s)
>>         * Exec time: [0.0] s
>>
>>    * igt@kms_cursor_crc@cursor-onscreen-128x128@pipe-d-hdmi-a-4:
>>
>>         * Statuses : 1 pass(s)
>>         * Exec time: [0.0] s
>>
>>Known issues
>>
>...
