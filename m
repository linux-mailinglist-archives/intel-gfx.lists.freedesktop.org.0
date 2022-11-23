Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D00636DFE
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Nov 2022 00:01:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 264E410E651;
	Wed, 23 Nov 2022 23:01:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35E9F10E651
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 23:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669244465; x=1700780465;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=fjLH4Yeno6E7IgdbEc9xYibOWDTXqU0Sm74Q+P7xPxs=;
 b=JizQyoAM9thGHGnTHOYvjr8ka/zgUJ3T5/r5rZahw2BeCoJCnmt8LT5I
 fCL6F9wxzLBIkcA/8Ep5pKnFR8RkViwn5JNimPXJR4Y1ikno13LwWLJAu
 fV2rB94r70ygtg1dW7OyG4+UfR49zmAtuhx7Af137TUs2cUbNRNkSwTTF
 vq7jQzhriNJVWhyH6I++k3qQfaBCP0D72KkZffMIp/G3Ci+CdzMzRzbZ4
 B9ooobtgPQyOH1c7bh+/s9jcYV1r5W7sh7F9s9zEJVFksHLcJMGMVXiNC
 WI2BDZ/mzNQozQt3eTegmGU4C78mQsk70Qr5qmYUGDxSkiIDPkHnmRXCV Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="400465690"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="400465690"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 15:01:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="705529465"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="705529465"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 23 Nov 2022 15:01:04 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 15:01:04 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 23 Nov 2022 15:01:04 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 23 Nov 2022 15:01:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bmSEVQNlmLm+irA3UqU30PBCyyg0u78jL74gEOms3z0lq1ijFVuC3XnnGGUJCcRXt/2Emnk8L1UmDEHEzVat9kOXikAzdb+iFN+ouxiS2XrPX+0rCTl11xgZeVrwuhagyxTLCV00V3RYkFlrgDsRwYGMQjWlsgg/N2kn8tGEJTIFDrfe+jNf28ZkBKdy338txygdlwkrXKQ4u/LlIyzy74tiCIv7n/Ps/p/bW0n7POPitTW+uaIH2hymKgjj8MtNX8TgXSiScKesTuj6dxcjFd9WGqk68rZGUQBcH/ETh1ayW456Phj0GHOv0giHdy2luYXte2e0zTJyvrrmo3cY5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wPVTe/DeX9omSwT/LQ00N+KJ4C0l6d/F+oTaXVvTbvM=;
 b=OJVneZ1PeKm4B14DbnlwoLM8YmFBlAOrM6zLWKVY7bIxyAdZSQgMxRNvVpjjcCpQwvFyEiEliexQKfXEZRCptZaJ1j0sXb0pBr5eE8+E1WEXt+cCmy5r+reyIgbcNP/synL3hjGVz4KdpOFGUswHRHINwT9USxhioh5GLxunfpnwyjClmBi1I6tX7R5upTWRmSr2u0S9Unm62tBYuBbdCpbbkrI/62eLYt2oDlmDOyJdXWC27oXzuUedvg/ojpJpQKy7LR6Y6ICwtRZ1WZpuspg31QYL3CK8sf+VoEyjW9qF5cTRn/CJYTUFIRUMkJ7/tCiJMURc0MJ35DdqC8gDYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2984.namprd11.prod.outlook.com (2603:10b6:a03:8b::14)
 by PH7PR11MB7121.namprd11.prod.outlook.com (2603:10b6:510:20c::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Wed, 23 Nov
 2022 23:01:02 +0000
Received: from BYAPR11MB2984.namprd11.prod.outlook.com
 ([fe80::442e:537:2534:6159]) by BYAPR11MB2984.namprd11.prod.outlook.com
 ([fe80::442e:537:2534:6159%4]) with mapi id 15.20.5857.018; Wed, 23 Nov 2022
 23:01:02 +0000
Date: Wed, 23 Nov 2022 15:01:00 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y36mLLfBgAUcsk8b@unerlige-ril>
References: <20221123020700.603256-1-umesh.nerlige.ramappa@intel.com>
 <166923137698.15572.14488679648212342000@emeril.freedesktop.org>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <166923137698.15572.14488679648212342000@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR03CA0144.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::29) To BYAPR11MB2984.namprd11.prod.outlook.com
 (2603:10b6:a03:8b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2984:EE_|PH7PR11MB7121:EE_
X-MS-Office365-Filtering-Correlation-Id: 2f43fd19-297c-4478-c412-08dacda697a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SGha/V1sPi/3UPwCKcKVNbeyDSwo4P1aNAgCma30bJwe4nnnQM7HLAdzud5U5t0X2rnby7KKNaRr3IFY14ocduvND6bYGd1VvhzYg4aAZsjZA8aO9sM0j35cWeGVXKpk1jXc/9fYh4nhnDukP4EzzylfTo36OLg6+E4DPcgvwF4gs+Vgi0gvqE6BPZ76HKNqLECoQiY7xg2j3BgyprK8mVKip3zqP0eP4Fz6Bs4wD9TF7RbEnDQ7pxQF8S26Vhq2GNOKKyTZ4IEGrqLeZr51Xufowo6Br7srbYiXbFOTupCn1RV6wSLwhemfFaWuv1iAS8e9h9WdpyV9caf4nfORWUlQAR0nzrMB9UV++xlAqo5iSCQxCc3XJKQkO52Z9+5me/ZPaVPHAonPAH2XAbcrJxug5F5TAc3tvZ2DHlHjOJvzF/kno6oh8JrBVevI9a8ontiKOPe8fjDABjftNWQAErf6eCB5Qntf0SCV5EdeewD323teUwbth2iEAxUjNGVuEQmCKCxwMu0TivQ45IB4T2Aa2rNF7+kvxCSi/C/6ndlRNhn+xJkMlnS29++3a833AYKupVqGfpvKWiuDuk9Xo8XqgMXCVr9Q6xkRQFRZX+kjbjW7FdlC36KH0y+w8s/C7fGScdyGgt1JmgNNuYaFkes0SFLO+fqUr2YFLh9A8iE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2984.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(39860400002)(366004)(346002)(396003)(376002)(136003)(451199015)(316002)(186003)(86362001)(83380400001)(6916009)(82960400001)(38100700002)(8936002)(2906002)(66946007)(33716001)(66556008)(66476007)(5660300002)(41300700001)(478600001)(6506007)(9686003)(6512007)(26005)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dWhBSFVJb3dnUHg2MmV6eVNvdkNEVVQvVzdObzZyakRSenEwQ3NXeHhBS25U?=
 =?utf-8?B?aDB4ZlZ5TURqZ3dDOUVuVWJiY3JBU2FlWFZMTDZ0S1cydEt5cmQ3NXgwMzNo?=
 =?utf-8?B?ZjdTSk1hcnVBdHNFV2J6Y3ZMQTRWYjYzbG9ZT0NzK004Q2N1SHBqSFhPbXBC?=
 =?utf-8?B?VTRtbWZPa1U3Z0Nwd2V2ZVA1ZWZ1VDB0MzFqT1I3Y3hQNlJQKzhpWEhGdWVu?=
 =?utf-8?B?NmVKYStsTlYzdmM3R204ZStkVElMMHIvVHYwTGxWZmpvZFh2eSs5MGFtTzdh?=
 =?utf-8?B?N25NRUxXZlpybUs2UjlnTHhudUppdVpKTWZFd2huUUk4R1VBUXVmbTdwMWc5?=
 =?utf-8?B?QkEvMlNERlNXMTdSUmJMSXZOZHNteUR0TTN2bzZmckdBWFN3bnZZL1VoZEg2?=
 =?utf-8?B?K1ROL2lWeFNTME44NzVHd3RmYkNqLzVzb0ZSczVBMWhuUlF2WWg4RXhPekw4?=
 =?utf-8?B?QjdONjZybXRXNEI2ODFaSmNHSTNza1FzSnZ1YUowQ0lOd3RZN0RUZE1LbWM2?=
 =?utf-8?B?TVRwTDBYVFIvZ004alhVbXJWL1NWR1lLSThreWo0Ylg2VGYxRnhPLy9Yb011?=
 =?utf-8?B?Zno4WlFSaERaNlo3VHlPZGQyZ3o0RlRaaUlqa3FDbGo0YmY2UkhBbnBKV3RM?=
 =?utf-8?B?NXJUdzU2dzhBOWxaS25BL2YwRG40d1YrcVBTYkhEZ01pZUtIbnppTHJ4RlhI?=
 =?utf-8?B?K1pPZFhpV2F3UHVSTnB3cjNUTGJybW9MMkx2enJBQWptUGFGVjloV2lKYWlO?=
 =?utf-8?B?MnJ0dXNXajRFa2pJZzVuSm9wNkJMcUVCV3NvUEY3NDZoeDNRVmhaZUNGS3NU?=
 =?utf-8?B?czVtVGZCR1AvMjVsMUJUdmUydDlCSGQwVEpTWXJpZ0RncWk0cmRCbTRhTjly?=
 =?utf-8?B?N3k0c3diR2VqUEFuV04vVUpkTHBSWEZkdFpFUmJOeHVBanZrdXFTWDBVWmpX?=
 =?utf-8?B?aEtBbnZOTmRXdGw0OTZ2blNkRjFHNW03czRmWUlJWmVqZXMyNlN1NFhzWXNz?=
 =?utf-8?B?N01TdDV2WkV6V29QT3k0ZHJ6TXdvZXZ3NzlVSHJSMEpldnVBSkJuaXB2ekF1?=
 =?utf-8?B?N0c0WjF3L1dpNFFWaUtKd2F5TkVHZm5JK0Y5NUtPcEx5RmV1eHdKUzJmZmha?=
 =?utf-8?B?eUorQ3BkT3pHSUV2S2VrVnpiWlplY05LbHloRlkvRzBTUFhFVVMxdzJFYmcw?=
 =?utf-8?B?WDdoTUlLeTEzL2tvUE5YNG5QTjRxTUlNa093YmJEK2dVMXNMdFFDdnQxMlY2?=
 =?utf-8?B?eDJIRmszQWVBQk9tWVVIbzU4Tkg1RDZOK1JaMUNyaS84UTZJcjRKb1o3bnlF?=
 =?utf-8?B?Rm5pL2NtRmVpQTE5Q3NKNm1sZWZER2U2T3lqTnJ6b3RSdWNpRG9SUWlFS3lW?=
 =?utf-8?B?bU9ydzNjSzhvSFplY0dnUCtFOGZXdG5jZmF3SkpaWXlzakM2RWp6ZmY4V1Br?=
 =?utf-8?B?SUpNT0lSZXU5RWhITFMycEU1UEM4VjFQbCs3WUo5TWpGSWJIc2s1enlUT1Bv?=
 =?utf-8?B?aXRiSlQvZ2craWNOaEJSajdLSjVPUGl2ZWxEUFVKUjlQaXFaZW80Y3EwQU5l?=
 =?utf-8?B?eFpHS0tCNWp2M1djWTRoMHJPaVRmenFaYjVBd0hhNGtMeU9VRWREb2IwUnRl?=
 =?utf-8?B?cElpS0NTc0NCaHhrd1NDdTNyOEo4bXFjQnBsZTJ4WUhER0N4MW5UcWtLdExH?=
 =?utf-8?B?dDVrNkhUUFlZbmJVR3BEcGhzKzU0L251TFpreFYrV09XRVNaMVJxRjJ4cC8r?=
 =?utf-8?B?TFdwRnZSRm9YUjRPWlphWEtmaEc0WG5YRmNGeEtHc0pIWEQ5VzhPMllTOGJq?=
 =?utf-8?B?a3ZxWWhBelJra2RBc1hMaWYwQ3d4NnM2eE5CaWF1QkI2WEdaVVlWc3R0VG5B?=
 =?utf-8?B?d3FwdkZxYkhlaUJtWjd3V1JuTnFZcEJadEVrRHB5TjFwQlV4RXVZbVNnYlJn?=
 =?utf-8?B?elB1TlhvTTd6WUhFcG9vZ044dnM3bUcrMW5qclQvc0lmMHNieUJKU0NJNjlk?=
 =?utf-8?B?emJ1dFBjMkhuWCtPdnhINGJJS2puTHBwamdWdTZBK29JQTQxK2dlK3lvM0VR?=
 =?utf-8?B?RkwydmsxVDgzWWIzd1lLdXMxNFFJdWVWRHJPK0JPc2NqRXBJVGFvSVZaMTV2?=
 =?utf-8?B?OE9CdHZoYURXeEhCbklNRGljQjU4YjlyS0FlUHFyK1RaV0YzMjZCOVd2dkdM?=
 =?utf-8?Q?YHuJBKWewkO/cxvBN+sT5fs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f43fd19-297c-4478-c412-08dacda697a0
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2984.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Nov 2022 23:01:02.0694 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q/YTeB7UV9uxdUZglP3Y0rYTns9t2jZVy3Bv7GxpM8oDH8BFajFRPKAHjWSPxGWzZhAMUhLH+Jf16VVKWOTywwy/sW3nMfMx6N1soiOJmms=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7121
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/perf=3A_Do_not_parse_context_image_for_HSW_=28rev2=29?=
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

On Wed, Nov 23, 2022 at 07:22:56PM +0000, Patchwork wrote:
>   Patch Details
>
>Series:  drm/i915/perf: Do not parse context image for HSW (rev2)
>URL:     [1]https://patchwork.freedesktop.org/series/111231/
>State:   failure
>Details: [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111231v2/index.html
>
>     CI Bug Log - changes from CI_DRM_12419_full -> Patchwork_111231v2_full
>
>Summary
>
>   FAILURE
>
>   Serious unknown changes coming with Patchwork_111231v2_full absolutely
>   need to be
>   verified manually.
>
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_111231v2_full, please notify your bug team to
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
>   Patchwork_111231v2_full:
>
>  IGT changes
>
>    Possible regressions
>
>     * igt@gem_exec_schedule@deep@vecs0:
>
>          * shard-skl: NOTRUN -> [3]INCOMPLETE +1 similar issue
>
>     * igt@kms_vblank@pipe-d-ts-continuation-modeset-hang:
>
>          * shard-tglb: [4]PASS -> [5]INCOMPLETE

This patch only touches OA code and affects only OA use cases, so the 
above failures are not related.

Thanks,
Umesh
>
>Known issues
