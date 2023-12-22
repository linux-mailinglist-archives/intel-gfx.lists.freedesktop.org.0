Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 992F781CF87
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Dec 2023 22:47:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4A5E10E101;
	Fri, 22 Dec 2023 21:46:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A092910E101
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Dec 2023 21:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703281617; x=1734817617;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=GXRH6+BSAwrihmpCDc/zI8nAvQqfSrXpYQJq9aw8REg=;
 b=ih4VG340FZ5z8KUJJy2OdOrUg0N/U+h3wnWWs0F2b7SQ7UOF3PpkhGN8
 2PeHOHIoukvi1R1ba8jyLQ1WkuZ2z2tmj6GVBAKLBqpDcMZ+9VSbjvkSX
 RPIIJ58T3V4Bvonz/Cr41fTKC6J2eQ17AfZoGdg1yn9c6P8nPFqj5JZRI
 qnXyyW6rvSRX+dwO+Bmya42Zo81A3BEs/zxyl4Th3ULmGm3R2axdex8AS
 ECa/e2H5E6ykkTiFTDPU9orzyGSHxwoXNlJBxGDlH5GKPtN04JW7xgrxq
 83u9VsBCxh8Wc7Actcg3vS5t85FdpbxQlSXug7cdvILrYQSqTMAiVu7Yx g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="399987850"
X-IronPort-AV: E=Sophos;i="6.04,297,1695711600"; d="scan'208";a="399987850"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 13:46:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,297,1695711600"; d="scan'208";a="18819045"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Dec 2023 13:46:58 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 22 Dec 2023 13:46:56 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 22 Dec 2023 13:46:56 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 22 Dec 2023 13:46:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ANahUhhsvEH2a/6sk/mz/HP552RqPXWWyn7D3VOcm3fVCKL6NWDSDlFTMjT/bWf6Ycf+zTBIap6d4z2+pM3cxiqGbEWBg8t/CIN61CA7EfnfAdI2zl+x8CBPFjzYiNNaFuHYmmWyOf9yDeTcrjwmKj+7l35vdYkAN3bi5jcEjJVu3EMsAELOK9I2ONzCXZB2jwBAcxJC29ItR/SApUNZVqGT/CNg6H/VHaPFQs/ZYKCKGoaA0SZCc3L6Opy4ez/FxsRVpN8+t0gcKSPxiBjpnxbsxmx0VkEXwgy5TGHBxw+c71vAtJo5EOTiFdToP6zAjzjfGgkZ9PIos+SxkuGcfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GXRH6+BSAwrihmpCDc/zI8nAvQqfSrXpYQJq9aw8REg=;
 b=Cq7FZgRluqT9dbEM/gUiint7nSUMmoTXG9gH5b/Tiea7SScOFlLsGpGzs4db4myZnWYKmbzSi00DWX4pJOJpLCmaEfYd2GqfkcATxqocLlLeRYwN2YRiIjRchPnrM3u55MMuebJLe3nprIwF8TBnl0EJ896B/qU29uCkZEa8LBjjSPrCY/mTQrknqqVJTaBo09IkzxbXg1fQpnrrExgEFiSxFKu6L0H/qQpXsPndtNY8K6sRT2aoYGrMVHDCur9yEpA7vbAjH6TNBl983LRxcQg7Zturji5Ee3nu5dV7imV4ZTfilu9fDCnn+5hehIEX4x6cg2AlQ6mrcdkr/EYW1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DS0PR11MB7457.namprd11.prod.outlook.com (2603:10b6:8:140::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7113.21; Fri, 22 Dec 2023 21:46:54 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::e73e:dcc0:c5bb:49b9]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::e73e:dcc0:c5bb:49b9%7]) with mapi id 15.20.7113.019; Fri, 22 Dec 2023
 21:46:53 +0000
Date: Fri, 22 Dec 2023 13:46:51 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>, Ashutosh Dixit
 <ashutosh.dixit@intel.com>
Subject: Re: [PATCH] drm/i915/perf: Update handling of MMIO triggered reports
Message-ID: <ZYYDxBX0AIsX/H+g@unerlige-ril>
References: <20231219000543.1087706-1-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20231219000543.1087706-1-umesh.nerlige.ramappa@intel.com>
X-ClientProxiedBy: MW4PR03CA0189.namprd03.prod.outlook.com
 (2603:10b6:303:b8::14) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|DS0PR11MB7457:EE_
X-MS-Office365-Filtering-Correlation-Id: 26dfd01a-e468-43b1-b3ad-08dc033782dc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: H5w8OLO8tiQa0KN9xe8RJN4oJpTWhhVGcUWUY9E6khI3TeDRQrJ7tQcF26cpUjLLes/Ua7qr36sDicpBNym68GNZTCy6cZbVrcaUf4WE9tl9VD1TPEy6+gEitIkt22TIlAeZK0kL37D71yCiyrTQDTtjahf3lhXD5O5dLJX1zfdAFC+kWiM1CUmzKmNJ7BZQQZ0OCr66/ixAj1WIi8Shy4pi3gvhpcV3s0sl52nbgvdG2IkG6RI5MFs+mjiVAGzcl60PXgynAF4md0J5/7wZV9JfzMhBxCM+coffE1UGnfUkmKwJvp2xMG5MtoZYhZQHj7G0ysgOwHE5mmpB98hZkdXTwIRNgw1dWew3rwX4hW19Zq0t2LpTljHf5ozfpuhr1u1zwDoC1UZZy4ZmdE4f4JugmYK9TP7btm7pJsdgg34dnUdtKVoBWwRRH87gU/J+n2t6Tv9qBmcd639wvwoWkmQbxy126yPGhvAHk+FWyMNBXYbJUwWAsabpLCkvUEyG84MChPkYLCHNASyRG+qyWzY2WcvWV7yQhQQbnfYs57arU53R5ng6/jjRqh9NpQ4X
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(39860400002)(376002)(136003)(396003)(366004)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(9686003)(6512007)(6506007)(15650500001)(5660300002)(478600001)(6486002)(26005)(83380400001)(316002)(66476007)(66946007)(6636002)(66556008)(8676002)(8936002)(6862004)(41300700001)(33716001)(86362001)(38100700002)(4744005)(82960400001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eXd6b3J2RkJFc212RHBWbUQ2a3c5ZzdKN1c2UGpxOGl5UzJtd2JjRzl1cjB5?=
 =?utf-8?B?OUV2TW0vb1dPbVpBT2lXQThYNGdzYTI3UVNmbWFGUHdlbEZQdmJuQklxZlFG?=
 =?utf-8?B?MVBEWmVtSzl3YkFtMGY3Q3ZRcXNIZ0xGcHF3R3JzZ1lCMEo0a0V4M0cxdjF1?=
 =?utf-8?B?YjQyUVN5OTBQMjhVSmlva2VMSkhlbTNvZklRaCtxemdIQjhwRWxFQkJzRFlh?=
 =?utf-8?B?MENmVSszb0I3N3c4aEtkYlNhL2NGVllOR0Njdm9GM0FPLzhWZTZ5TkV3aHpD?=
 =?utf-8?B?amxZOUtmdldiV0ZYdlV4V2NPK1ZRc2Nwam1lZERFVXhlNTJNS3BWb0RPM1RT?=
 =?utf-8?B?SW4wUktPL1N5SjI5bFY0VTVxdlk1WUJzYXovTmZ4TG9rM2srM0Q5dGZRVVRm?=
 =?utf-8?B?QUJxcEJWY3ZvNnZKTnlmaGdReHJQbjBLMUd0MGJZaUdnQmQxOWN6MDVhYm5T?=
 =?utf-8?B?NmNGMWRsNGlqaXdObE9uY0xYQ1Bzam5DNzVkZmt5MVhZL2JIM2dQSGI1RFZV?=
 =?utf-8?B?dFVtWUQrSndZOWFCcnBReHFYSk5HY05qZllWSG1EcVpmdlEvQ0FJZUlCbnBL?=
 =?utf-8?B?WVkrYmxubUdwby90c3JMdmtPYm4rQXNKemhmNkQza0NheUlnbmlFY0RiOFEr?=
 =?utf-8?B?K0hYbzQ0OVQ4cVVIcnV2Z3cwVjAraW85SWFpQWhudHh0ZG1EcHk1OVJJcXRt?=
 =?utf-8?B?SXQwNzVZN0ovejUyUllEcHQ5UmJabjI2bmZ6M1hoVmtBTThWcExGYXlTS3pH?=
 =?utf-8?B?b1RKTDAwa0VUNXprR0tSZXo4SkdOSE9JRFlOZmVHVjg4cWExdHhUbXZ6ZkMr?=
 =?utf-8?B?MXJwMzY2V21XMTJDL1FleTJaZnJHWDU0TTdnazBvYkNFRUl3S3ZDWDBoK2pv?=
 =?utf-8?B?TEMxSDVxaGJHMUg4ZmN5anNxRm0vTVJUWjhEVnNaRFo5MnRSaGZFRkR2emVq?=
 =?utf-8?B?R2hiZ0pKaG5XSGdFemRwbXBPL0R2ejVBSldtdE81Q3F2bHpwZjRBVjZUOGN5?=
 =?utf-8?B?dElwOVhFZHZXNmdyZWVaK0k0T01VOWZua1dCL0dsVzZJblR1UENaUHVzdFVs?=
 =?utf-8?B?L2I4ZFkvQ1ZtS09nck8wTk9WR0lyeUo4VTNTek9Makt4MHhmL2lxdnRhSXJI?=
 =?utf-8?B?WnR1Tk8xK205eUlDUW8xUGJGQVh4SE9XV3Z5QWNyUkcwc1RMSld2RjRlN2hl?=
 =?utf-8?B?bHc1SnpIdmJTdzV4NGhmOE9qaGRaeEF2Z1ZIQURTdytkY2d1Qk9hRjNZYlFy?=
 =?utf-8?B?eURpVWJMdzBCV25acmpkeDlwUjdRYXVQdkJmRmRWT2t5RmNTdDJmYmJOc2hR?=
 =?utf-8?B?K0VRTzhxbENKS2E1WEp5eUlNbyt3UG5vVFZKZUJ2SWdpOE4vZWVRNTdYdmZy?=
 =?utf-8?B?SDZaWDFiZmc1aDB3bVF1ZHNaRVFTTmduSE94OXVOWEdPcml5T0N3UHhIUmov?=
 =?utf-8?B?Uk1jdjhKcWhZeU9SejFDTkpnUHA1UlRpYmpkRGw2UTFiTDZUVkdoTVNFNjVB?=
 =?utf-8?B?YTFFb1dqNlcwdk8xMUFrak4wekEwbUhiN1p6U0J6RmluZWdJRnpSV1BMcnNm?=
 =?utf-8?B?SUREbFAvZGNpUXYzZGljTVFaSmxrQm5pZGZEb2VrU1ArZ3lWdXVkeGoxYTJz?=
 =?utf-8?B?NGZEbzduS3lBK3Npb1JydlZ1bzhJd2RmTEZUcmdJYUdvZU5FRVkrTTZ3MXZR?=
 =?utf-8?B?N1B6RlhFbGRQOXY5Y0VpQkVUTUE1R1NTbkdDYld0RE9ZWVhEdklraVo0bFJN?=
 =?utf-8?B?UXdQY3hnOWl0UWdOMDRPRVhoeFVocXhtdHo4VTRoN3BTRVBnQ2xTdUNYQW9n?=
 =?utf-8?B?THZNNVdicnFRaktiVWdSdFpjLzYzVitveml5L0FnQzdwWDBTWEVNZ1hMRkpx?=
 =?utf-8?B?elZXRnFxZzgvdWxiejJCNWR2ZFcyWHQ0NDhDTFBkV2lGa3IweWY4VXc3QlZO?=
 =?utf-8?B?UHk1K3NPY0x1eG42VGVjb09XQy9NcEE0d09mbjFQeTluMGMwSzF0anlnQWJu?=
 =?utf-8?B?RXl1SEFaWjhGZy9QRVNhTzhuT253OVY4RnFpY3A4NFF4VXc0T094Ri81WHly?=
 =?utf-8?B?eDZWQVVMZTFVbkNGWmIyUG41eFFwVmxoSWNuL2VOQU1LYUljb2Zja1NhVCt3?=
 =?utf-8?B?ZUdXbk9ITXBOLzV3WExMZkZzdTBpb3BIa2pSNUlpZHYyYlNYSk5temh2di9p?=
 =?utf-8?Q?kcorjowg9/Yw+MjHCN7Pwfs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 26dfd01a-e468-43b1-b3ad-08dc033782dc
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2023 21:46:53.5144 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mVsGaAq9wQ6yH6j4munoAVS5stAU5EwakRJrMCnvjlJh1b2fQEUcnLpb03qOyQREMA+MpDCIqTSsyNno+GGV9p45hkGwA2Dsp5djkE6OffQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7457
X-OriginatorOrg: intel.com
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

On Mon, Dec 18, 2023 at 04:05:43PM -0800, Umesh Nerlige Ramappa wrote:
>On XEHP platforms user is not able to find MMIO triggered reports in the
>OA buffer since i915 squashes the context ID fields. These context ID
>fields hold the MMIO trigger markers.
>
>Update logic to not squash the context ID fields of MMIO triggered
>reports.
>
>Fixes: cba94bbcff08 ("drm/i915/perf: Determine context valid in OA reports")
>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>---

>Fi.CI.IGT failures.
>
>Possible new issues
>Here are the unknown changes that may have been introduced in Patchwork_127946v2_full:
>
>IGT changes
>Possible regressions
>igt@gem_exec_suspend@basic-s3-devices@smem:
>shard-mtlp: NOTRUN -> ABORT
>
>igt@i915_selftest@live@gt_pm:
>shard-rkl: PASS -> DMESG-FAIL

The above are unrelated and do not exercise the code path that has the fix.

Thanks,
Umesh

>
>Known issues
