Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C48606D86
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 04:20:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0662110E0F8;
	Fri, 21 Oct 2022 02:20:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1C7C10E0F8
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 02:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666318838; x=1697854838;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=y99AIj24ucFqPrsTUzhQyxLUkziLgimI7zj9VgZrlIk=;
 b=VbCwPsnKAO08RubsWaKmx2vlFBCd4rhngvxRfr36z2HR3Uyc1OoRmYE0
 J7izaS5KXAMFUUJ6039XY3r1r0KK4ni+zjNaT/MXP05Tk3nT9cTrXw9Ft
 FNAJMaPU9MSVpY2HQ3jBQgII7QCFZYMXfH20RMgJGTMB9VMqt4g17IrqF
 rQS0oqk4/Wqf/dWrmaz2xtez0NZilN/AGA7/0l1C1tUbcHY6oNoTyTRjN
 Tt3vZzjrh0oyo/X9oMQIp/dNJSv3rgx1wcfuCqiym+/8S0+m4w1WmtvjH
 jFqGOtOOxCmhD1NFaM8cisqblm6xYd5AzFsPbccQjHN0TPvTEkijG3oIG w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="368938285"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="368938285"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 19:20:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="663448382"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="663448382"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 20 Oct 2022 19:20:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 19:20:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 20 Oct 2022 19:20:30 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 20 Oct 2022 19:20:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G36VC4BKwqVMDDU3BmXv8Ksc6iiqATmMKvmHsLFK2xecq9biAKfpcErjeBWoaGkj8kc3MkinoEobyYpgVsgwqXe5ZmMz23ytjXkzFDtMAS/FRuMdmJzPQdEuxCHO8+ywZB5a8HlNcAHvEkH7cCe5cD5Nb4qyyySOFJLDttRqJ3YxAhlI0sb/hjXeD2tdvfhXy5K1v1oI6amS2Wf+5xogBFVFKy5WFD/Lo3aYy3jt2a+AecHuDrrZ6D9Sr287beD/VrYqb6QOVoaGIU1W7xanxAk9OWI7qOmHM4xyqxSUJHdyK+2ExBhZxG8qmVBnxjNsS6Qyey3SSWKZ7IoJ1wrX3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WnXtyTWbGgVbuvROVa1gAP/s/WMtyOkHiSH4t653LAc=;
 b=P/h2Zm5Cc+TcOiFgAsTygSLadqPJuaSiEzxPmADAzi6zu2RzExepLt5AkAbxYSU/eBc3M3mZdATqOlY3tfOv2sTKGLqcWBzqg9ohBqLtKOvsLQPYEN14h+EKegN+IVu0r0h21Kye/iGcT2W/ykzkfjf2a5tQ94tR1Kvn75jCzhadrzeYwDQ+YvfYl076R9ULUzjHM37y3JvAGdgBSyaWM3b1th9WMhRNF78/OkBuB/V3c2+TXg5KPq54VswlwO8D1EY/pkkKhznj6P9+CFJxTpK3o9Hc3NMUFTQnMfthnr0N+JuimXXLZ10oNy3EBXtEo4JYgf6olm4NGIHx/deGpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN6PR11MB1619.namprd11.prod.outlook.com (2603:10b6:405:10::20)
 by DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.35; Fri, 21 Oct
 2022 02:20:28 +0000
Received: from BN6PR11MB1619.namprd11.prod.outlook.com
 ([fe80::c07f:1362:ad37:8fc4]) by BN6PR11MB1619.namprd11.prod.outlook.com
 ([fe80::c07f:1362:ad37:8fc4%6]) with mapi id 15.20.5723.035; Fri, 21 Oct 2022
 02:20:27 +0000
Date: Thu, 20 Oct 2022 19:20:24 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y1IB6L/Sl5qhRMtc@mdroper-desk1.amr.corp.intel.com>
References: <20221019222437.3035182-1-matthew.d.roper@intel.com>
 <166631217037.18266.4007163671635904652@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166631217037.18266.4007163671635904652@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR08CA0013.namprd08.prod.outlook.com
 (2603:10b6:a03:100::26) To BN6PR11MB1619.namprd11.prod.outlook.com
 (2603:10b6:405:10::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN6PR11MB1619:EE_|DM8PR11MB5621:EE_
X-MS-Office365-Filtering-Correlation-Id: 4882d06d-ae5a-4768-cd2f-08dab30ad180
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NQ2pniEEtbeQzOV8nhxVBGmi+bRvq1/8gRASmjpcLHzhMwIB4Kteu5Nwdnf36pKYU0W/dlCpSr2TIpISIesiyh/V73LxC1UBT1Sc0oqXKs6dc2iiwV0Xrw/MbhP9gYfaQKz9aD97yVJWzM/x0i6J2lZphnIx+MlpDyzqGi12JWnVhV4eN50dETbqJW+ygecBFgmvYQVmRDCoK7tIPf5rzmzHk7tgv8xux3Q+WCRgWJ6EWb5b2HvNZIJE9fiz/ytGeq/fdAO9Im1QnKxBoEpUZlb3I0tJFVVo2scGrwHKDL53wZKDOtAcB8c6Ve4lOAOttCEzdsMzHnk2HXLczX5HKUX3pkQrEGaK5Bne33Hr7IV/ZJfbbP1rAnTtHClbaDZRGSrEz/wpks6iuYtAmt1u6JG9bHxWOjaU+y2gG+5XESvhrVElkSoLntKaFgxXBy6BxGQUP1lzYnKV1OJwPtbpoqUgCsO8cPJwo2YJos7kb6Wlt9NuCdgdG+BMM0Hh0d0M824rnXPvyP9OTdSwjCD1jTBqmlpLji0iYN0EDiLfvc7eZ5lSxKd9ayfvyLVeVo3q9h8H2u002Enaxp9+JCORIdAiIPrjcugf0CE1bvlQTZjNWwoxs8R+vMo50OYVUIJ7/YWITXs3ImG7zPlGDxKLwYY/KFbAIjszU5flG5TlLx6IZ/+swzIx6u8Jjo6mgucdkI1sUm2jEpfysPwpjChQgDLb3vWBXF72a0gYnvlXE8B23Qo3IkAjZQvOKLCt27eeIJEswvkqFIYEqEpLZtPInbP9CD+496S8YJ7IKv6CN1vM3P5EwK46+UaURKx4zD/6
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR11MB1619.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(376002)(346002)(39860400002)(366004)(451199015)(4326008)(66946007)(66476007)(66556008)(6666004)(107886003)(26005)(6512007)(6506007)(8936002)(41300700001)(6916009)(316002)(5660300002)(83380400001)(86362001)(2906002)(186003)(30864003)(82960400001)(38100700002)(478600001)(6486002)(966005)(461764006)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RsrXcB5uA2i8SVlxTp48mgJvUwIaDuguloQEA7wz0x3ZcDy/P6g7ZRywPG1L?=
 =?us-ascii?Q?yL7vqsDoC9nTb8hSM5SS7PQcAm0QuW5m6slBNBbTzFhdqS8Vz/p7S1oM0VRG?=
 =?us-ascii?Q?TYPl+GHcxlHmUR1AW0KJOtAYJn9GFme5xjdIxfUVmIQ5OzhBXd1a0jsdi/eX?=
 =?us-ascii?Q?/WuivPMLrbW1GBDNU4KL/xb2UIzHcVvV9Qd6ZCp3UwmXoSWU92M1iQz5a6xo?=
 =?us-ascii?Q?0qs+Tqex+v6GBkB49jBhECaOwYT0BVpOMgXVB9Ns5XU4dtYxUcO9tq6VOg0C?=
 =?us-ascii?Q?VPgvkBWGZT/THE0kD9HkDFB0yqAJGx3EabTiY8oo3PV0p0YKLrIH/nr4iSAs?=
 =?us-ascii?Q?cfp0CzbVeUlg7mOrdKKjjW9LtmYKEpEcHJQk1XNOSf7NUKplXOvqn8mz9sZi?=
 =?us-ascii?Q?9MLIOyCO6Edsk1S4U+1Vz+KQ42lG/mY0s4drsOCPNwNNQcWFFlNo9Rc3Vb73?=
 =?us-ascii?Q?yyz1f9GrJZsva6zwZi3lbU8N9G0AZOXsRZotZgqiMbSuEoXSMkzvo2rup2e4?=
 =?us-ascii?Q?hllLOhpYrHVuClNCzOi1HNtoHX3brdOoaYtgRP3lK/9H/gdqWeLNa5hDa50u?=
 =?us-ascii?Q?R0Bwn0CX35/oPrmfWRkS47y2S3fehUbnhx5Fa2AHMtRdj7w7inT8BfnRip/o?=
 =?us-ascii?Q?X8ZHtSZ3pCIHajNT+/4wMw1cyP0gHp2RMLlop/hYqdHpuIBd+honlFfpBLs0?=
 =?us-ascii?Q?N8Fm1UGcZYdtZbI8JBRrgiL1m2H6FKxEhf/NAE0/sim46IDrx8E8LGFhvKt5?=
 =?us-ascii?Q?Z6SkElZCtZvlcwaSnwm9gvyKOpJPWZjbsYZFTrJbrjIzKiC7/rWTAFWAR3q0?=
 =?us-ascii?Q?bmGIc/6/g9bpHLjihvxcbRPktMIueTPITfrC5isyvzs1nKSPCLJHW41Q702i?=
 =?us-ascii?Q?M8vVgNC8e0fd8baNPCD6hx8hKqP7TP9zNBkw+y0i7G9ODPJtDTTuxl4zIxHM?=
 =?us-ascii?Q?msQYx3eGrRVKUby4z7VtDXgAdzSHyIjcUXXOO/6ym8koSj+bog9KY1jTpffg?=
 =?us-ascii?Q?Z0pgdo3FK7YJ4KdDGh8sAZjDcgILIFUurcA/r+4sBtXF5bsIIrb5tPh7bmuO?=
 =?us-ascii?Q?jPTOC6Pxy/SrUr4cjJbQWIuVyW5sJ71VIeHNWrRqRlGC/sXS07rYMKoXV8QO?=
 =?us-ascii?Q?Gfzc0cQQ5J8EG5BsAytLWR24d0ZGKHaEnv5orjUWXdDLt6yvPwLYQT/U//Sa?=
 =?us-ascii?Q?sDkERl3L5ebhM4A+uuewfFAoxRkEQ3d0k/HKip/d79gHZCBgjfePQg8CpmQl?=
 =?us-ascii?Q?ifxkzPuciLIALxZ8PdM/zfTeruOfIn4A/HtwegTPAgjsDhjwD6JNvT77q43f?=
 =?us-ascii?Q?G78AQ50Bra/Mwbvr5rClGkpPssunXtMmSaQfmwoAmIU6+6lvhL0vVeuMQyly?=
 =?us-ascii?Q?CRvnHzdeFsZ1XuuA28v+aCuvv1nMULPPoh+EoPYDNZrT3M5EotU4eCLE++0+?=
 =?us-ascii?Q?VFkJG8RPyaeZ67MXj1yKDvKEL9C9V1uD+LJr6DBMN/KCTOde/UHMQG/R7lZP?=
 =?us-ascii?Q?HRNUHPC1LEQrdfpIG/LpQkR6OdDJaUKTcXCanJ4qYRtjoj6gPiPL+O0NZP/W?=
 =?us-ascii?Q?fM3QYOY/ucgNJBztstsUqb7o48VHLPfFAUfqfxvW10YXTRJhxH8/pmk9WfI2?=
 =?us-ascii?Q?NQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4882d06d-ae5a-4768-cd2f-08dab30ad180
X-MS-Exchange-CrossTenant-AuthSource: BN6PR11MB1619.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2022 02:20:27.4457 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u135+wwzvI2DaydVyw36geqfWMhnAJku4V7q3870oGdgGPMtmZhRuIHY4uqfX3Qq5ca8rDh3yoLlDUpiPwJxMoayaaSsFTL9u6fV7EbEPLM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5621
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/xelpg=3A_Fix_write_to_MTL=5FMCR=5FSELECTOR?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 21, 2022 at 12:29:30AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/xelpg: Fix write to MTL_MCR_SELECTOR
> URL   : https://patchwork.freedesktop.org/series/109912/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12261_full -> Patchwork_109912v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_109912v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_109912v1_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (9 -> 11)
> ------------------------------
> 
>   Additional (2): shard-rkl shard-dg1 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_109912v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip@atomic:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl4/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html

Random incomplete with no errors in the logs.  There seem to be a lot of
gitlab issues open for incompletes on various kms_cursor_legacy
subtests, but I don't see an existing ticket for this specific subtest.

Regardless, a MTL-specific steering change would not have an impact on a
gen9 display test, so it's not caused by this patch.

Patch applied to drm-intel-gt-next.  Thanks Arun for the review.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_cursor_legacy@single-move@pipe-c:
>     - {shard-rkl}:        NOTRUN -> [INCOMPLETE][2]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-rkl-5/igt@kms_cursor_legacy@single-move@pipe-c.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_109912v1_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-skl:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [FAIL][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19]) ([i915#5032]) -> ([PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl9/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl9/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl7/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl7/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl6/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl6/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl6/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl5/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl5/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl5/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl4/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl4/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl2/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl1/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl1/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl10/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl10/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl1/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl1/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl1/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl1/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl10/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl10/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl10/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl9/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl9/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl9/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl7/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl7/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl7/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl7/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl6/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl6/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl6/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl6/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl4/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl4/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl4/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl2/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl2/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@drm_buddy@all:
>     - shard-iclb:         NOTRUN -> [SKIP][43] ([i915#6433]) +1 similar issue
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb1/igt@drm_buddy@all.html
> 
>   * igt@feature_discovery@display-4x:
>     - shard-iclb:         NOTRUN -> [SKIP][44] ([i915#1839])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb1/igt@feature_discovery@display-4x.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         NOTRUN -> [FAIL][45] ([i915#2842])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_params@no-bsd:
>     - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109283])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb1/igt@gem_exec_params@no-bsd.html
> 
>   * igt@gem_exec_suspend@basic-s3@smem:
>     - shard-apl:          [PASS][47] -> [DMESG-WARN][48] ([i915#180]) +1 similar issue
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-apl3/igt@gem_exec_suspend@basic-s3@smem.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-apl1/igt@gem_exec_suspend@basic-s3@smem.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-skl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#2190])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl7/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi:
>     - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#4613]) +7 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl10/igt@gem_lmem_swapping@heavy-verify-multi.html
> 
>   * igt@gem_mmap_gtt@coherency:
>     - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109292])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb1/igt@gem_mmap_gtt@coherency.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-apl:          NOTRUN -> [WARN][52] ([i915#2658])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-apl7/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
>     - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271]) +17 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-apl7/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html
> 
>   * igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][54] ([i915#768])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb1/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-iclb:         NOTRUN -> [SKIP][55] ([i915#3297])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb1/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][56] ([i915#4991])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl10/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_userptr_blits@probe:
>     - shard-iclb:         NOTRUN -> [FAIL][57] ([i915#7224])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb1/igt@gem_userptr_blits@probe.html
> 
>   * igt@gen7_exec_parse@bitmasks:
>     - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109289])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb1/igt@gen7_exec_parse@bitmasks.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-iclb:         NOTRUN -> [SKIP][59] ([i915#2856])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb1/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@i915_module_load@load:
>     - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#6227])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl7/igt@i915_module_load@load.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         NOTRUN -> [SKIP][61] ([i915#658])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [PASS][62] -> [SKIP][63] ([i915#4281])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb7/igt@i915_pm_dc@dc9-dpms.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_rps@engine-order:
>     - shard-apl:          [PASS][64] -> [FAIL][65] ([i915#6537])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-apl1/igt@i915_pm_rps@engine-order.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-apl1/igt@i915_pm_rps@engine-order.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-skl:          NOTRUN -> [FAIL][66] ([i915#6991])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl2/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - shard-glk:          [PASS][67] -> [DMESG-FAIL][68] ([i915#5334])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk1/igt@i915_selftest@live@gt_heartbeat.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-glk9/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - shard-skl:          NOTRUN -> [DMESG-FAIL][69] ([i915#1886])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl7/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-apl:          [PASS][70] -> [INCOMPLETE][71] ([i915#4817] / [i915#7233])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-apl8/igt@i915_suspend@debugfs-reader.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-apl7/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
>     - shard-iclb:         NOTRUN -> [SKIP][72] ([i915#5286])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb1/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#110725] / [fdo#111614])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb1/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#3886]) +14 similar issues
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl2/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#109278]) +7 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb1/igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][76] ([fdo#109278] / [i915#3886]) +2 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb1/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-apl1/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-iclb:         NOTRUN -> [SKIP][78] ([i915#3742])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb1/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_chamelium@dp-hpd:
>     - shard-iclb:         NOTRUN -> [SKIP][79] ([fdo#109284] / [fdo#111827])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb1/igt@kms_chamelium@dp-hpd.html
> 
>   * igt@kms_chamelium@dp-hpd-enable-disable-mode:
>     - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [fdo#111827]) +17 similar issues
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl2/igt@kms_chamelium@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x10:
>     - shard-iclb:         NOTRUN -> [SKIP][81] ([i915#3555])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb1/igt@kms_cursor_crc@cursor-offscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-iclb:         NOTRUN -> [SKIP][82] ([i915#3359])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb1/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip@toggle:
>     - shard-skl:          NOTRUN -> [FAIL][83] ([i915#5072])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl4/igt@kms_cursor_legacy@cursor-vs-flip@toggle.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic:
>     - shard-skl:          [PASS][84] -> [FAIL][85] ([i915#2346])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor@atomic.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor@atomic.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor:
>     - shard-iclb:         NOTRUN -> [SKIP][86] ([i915#4103])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb1/igt@kms_cursor_legacy@short-busy-flip-before-cursor.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#7205])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-apl7/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check:
>     - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#109274]) +1 similar issue
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb1/igt@kms_flip@2x-wf_vblank-ts-check.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1:
>     - shard-skl:          NOTRUN -> [FAIL][89] ([i915#2122])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl4/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-skl:          [PASS][90] -> [FAIL][91] ([i915#79]) +1 similar issue
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][92] ([i915#2672] / [i915#3555]) +2 similar issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][93] ([i915#2672]) +3 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][94] ([i915#2587] / [i915#2672]) +1 similar issue
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-iclb:         NOTRUN -> [SKIP][95] ([fdo#109280]) +7 similar issues
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-edp-1:
>     - shard-skl:          NOTRUN -> [FAIL][96] ([i915#4573]) +2 similar issues
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl2/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-edp-1.html
> 
>   * igt@kms_plane_lowres@tiling-none@pipe-a-edp-1:
>     - shard-iclb:         NOTRUN -> [SKIP][97] ([i915#3536]) +2 similar issues
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb1/igt@kms_plane_lowres@tiling-none@pipe-a-edp-1.html
> 
>   * igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers:
>     - shard-skl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#5776]) +2 similar issues
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl4/igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1:
>     - shard-skl:          NOTRUN -> [SKIP][99] ([fdo#109271]) +353 similar issues
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-iclb:         NOTRUN -> [SKIP][100] ([fdo#111068] / [i915#658])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-skl:          NOTRUN -> [SKIP][101] ([fdo#109271] / [i915#658]) +2 similar issues
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-iclb:         NOTRUN -> [SKIP][102] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb6/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][103] ([fdo#109441])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-iclb:         [PASS][104] -> [SKIP][105] ([fdo#109441]) +1 similar issue
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2:
>     - shard-glk:          [PASS][106] -> [DMESG-WARN][107] ([i915#118])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk8/igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-glk8/igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-skl:          NOTRUN -> [SKIP][108] ([fdo#109271] / [i915#2437])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl10/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-iclb:         NOTRUN -> [SKIP][109] ([i915#2437])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb1/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@non-zero-reason:
>     - shard-skl:          NOTRUN -> [TIMEOUT][110] ([i915#6943] / [i915#7065])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl6/igt@perf@non-zero-reason.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          NOTRUN -> [FAIL][111] ([i915#1722])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl2/igt@perf@polling-small-buf.html
> 
>   * igt@perf_pmu@event-wait@rcs0:
>     - shard-iclb:         NOTRUN -> [SKIP][112] ([fdo#112283])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb1/igt@perf_pmu@event-wait@rcs0.html
> 
>   * igt@sysfs_clients@busy:
>     - shard-skl:          NOTRUN -> [SKIP][113] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl4/igt@sysfs_clients@busy.html
> 
>   * igt@sysfs_clients@split-50:
>     - shard-iclb:         NOTRUN -> [SKIP][114] ([i915#2994])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb1/igt@sysfs_clients@split-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglb:         [FAIL][115] ([i915#6268]) -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-tglb3/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-iclb:         [SKIP][117] ([i915#4525]) -> [PASS][118]
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb6/igt@gem_exec_balancer@parallel-balancer.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-glk:          [FAIL][119] ([i915#2842]) -> [PASS][120]
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk9/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-glk8/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - shard-apl:          [DMESG-FAIL][121] ([i915#5334]) -> [PASS][122]
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-apl2/igt@i915_selftest@live@gt_heartbeat.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-apl7/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1:
>     - shard-apl:          [DMESG-WARN][123] ([i915#180]) -> [PASS][124] +1 similar issue
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-apl1/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-apl1/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [FAIL][125] ([i915#79]) -> [PASS][126]
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-dp1:
>     - shard-apl:          [FAIL][127] ([i915#79]) -> [PASS][128]
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-apl7/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-apl2/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html
> 
>   * igt@kms_plane_lowres@tiling-none@pipe-a-hdmi-a-1:
>     - shard-glk:          [DMESG-FAIL][129] ([i915#118]) -> [PASS][130]
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk9/igt@kms_plane_lowres@tiling-none@pipe-a-hdmi-a-1.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-glk8/igt@kms_plane_lowres@tiling-none@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
>     - shard-iclb:         [SKIP][131] ([i915#5235]) -> [PASS][132] +2 similar issues
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb4/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_psr@psr2_basic:
>     - shard-iclb:         [SKIP][133] ([fdo#109441]) -> [PASS][134] +1 similar issue
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb6/igt@kms_psr@psr2_basic.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb2/igt@kms_psr@psr2_basic.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [FAIL][135] ([i915#5639]) -> [PASS][136]
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl7/igt@perf@polling-parameterized.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl9/igt@perf@polling-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_userptr_blits@probe:
>     - shard-skl:          [FAIL][137] ([i915#7224]) -> [FAIL][138] ([i915#7224] / [i915#7247])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl9/igt@gem_userptr_blits@probe.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-skl9/igt@gem_userptr_blits@probe.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-iclb:         [SKIP][139] ([i915#658]) -> [SKIP][140] ([i915#2920])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb6/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][141] ([fdo#111068] / [i915#658]) -> [SKIP][142] ([i915#2920])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-iclb:         [SKIP][143] ([i915#2920]) -> [SKIP][144] ([i915#658]) +1 similar issue
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@runner@aborted:
>     - shard-iclb:         ([FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153]) ([i915#3002] / [i915#4312] / [i915#7300]) -> ([FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161]) ([i915#3002] / [i915#4312])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb2/igt@runner@aborted.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb1/igt@runner@aborted.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb3/igt@runner@aborted.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb5/igt@runner@aborted.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb3/igt@runner@aborted.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb5/igt@runner@aborted.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb1/igt@runner@aborted.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb8/igt@runner@aborted.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb6/igt@runner@aborted.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb2/igt@runner@aborted.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb8/igt@runner@aborted.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb4/igt@runner@aborted.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb2/igt@runner@aborted.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb3/igt@runner@aborted.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb8/igt@runner@aborted.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb7/igt@runner@aborted.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/shard-iclb6/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109292]: https://bugs.freedesktop.org/show_bug.cgi?id=109292
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
>   [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
>   [i915#4874]: https://gitlab.freedesktop.org/drm/intel/issues/4874
>   [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
>   [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5030]: https://gitlab.freedesktop.org/drm/intel/issues/5030
>   [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
>   [i915#5072]: https://gitlab.freedesktop.org/drm/intel/issues/5072
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5776]: https://gitlab.freedesktop.org/drm/intel/issues/5776
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
>   [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6251]: https://gitlab.freedesktop.org/drm/intel/issues/6251
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
>   [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6463]: https://gitlab.freedesktop.org/drm/intel/issues/6463
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6943]: https://gitlab.freedesktop.org/drm/intel/issues/6943
>   [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
>   [i915#6991]: https://gitlab.freedesktop.org/drm/intel/issues/6991
>   [i915#7065]: https://gitlab.freedesktop.org/drm/intel/issues/7065
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7178]: https://gitlab.freedesktop.org/drm/intel/issues/7178
>   [i915#7205]: https://gitlab.freedesktop.org/drm/intel/issues/7205
>   [i915#7224]: https://gitlab.freedesktop.org/drm/intel/issues/7224
>   [i915#7233]: https://gitlab.freedesktop.org/drm/intel/issues/7233
>   [i915#7247]: https://gitlab.freedesktop.org/drm/intel/issues/7247
>   [i915#7267]: https://gitlab.freedesktop.org/drm/intel/issues/7267
>   [i915#7300]: https://gitlab.freedesktop.org/drm/intel/issues/7300
>   [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12261 -> Patchwork_109912v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12261: 41447224fdfbfbfd1e9ffa5fabc9d277f9c02f8a @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7019: fdbafce2b74e84739bb1d81223ae6f01fb442980 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_109912v1: 41447224fdfbfbfd1e9ffa5fabc9d277f9c02f8a @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109912v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
