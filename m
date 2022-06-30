Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07AED560DE9
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 02:23:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5E4F10F155;
	Thu, 30 Jun 2022 00:23:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 245F210F155
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 00:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656548593; x=1688084593;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ZbZ9Mq1B6oGNW34XaTj42gmBCZkr7lR+yOzwMB30p4Y=;
 b=dRlLR2QfV8u65dGbZcC2APCPGAYDbLLDkHxPKpFfH9tGmDFY1fnNjckf
 /br9KMF61mFlh3AWA77qd2XpRFCTAiRl3ZNPLd8p4cTy1BHfsvD/BXM5a
 0S+zOlkVI3Oi23UQyYIZ6TSioosWj0IDC15VYD0VQVMaZTMk8OIbfc0tK
 7WJQPnTkt6uVJIjzITfRrSP49TY3bSK51j3vG4k24fuCS15EQjFLKnuRz
 QS3tYMRKrlePZzFtwE2DJVP3iMiA0WftGkYnWU3dE1Q1FifB7aBPXnk6L
 QiodNG4PuuV3cgeXNz5oDLd6ICbsqiRXY0pHn1l5qFseyWqhM95PFKWUS g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="282934250"
X-IronPort-AV: E=Sophos;i="5.92,232,1650956400"; d="scan'208";a="282934250"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 17:23:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,232,1650956400"; d="scan'208";a="693816163"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga002.fm.intel.com with ESMTP; 29 Jun 2022 17:23:11 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 29 Jun 2022 17:23:11 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 29 Jun 2022 17:23:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 29 Jun 2022 17:23:10 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 29 Jun 2022 17:23:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FEfn+CJ05mduUvfaKdTT6R+ioXS2QxUyJEHgsBBo0XdrQoiG3hRa2xahL27x0QztjgF4MejLxYa9LDbCFLVuGX1zLUylekdto8DeusunAMlX682Q8WbiCYZzVyZqivaOM5YEckqFY75gWS45l39ENAtH/o9piUpCjpXkO5SF7Ir74jUzai3lhb2G3HjI8wK1wKh8Y8NQy6gqfBC6mmZ7+b6SjwFQNm+lh/TKb/h93zG337uG9NK+7DkO9kmYuq/NnVIuQRYFn657nGotbcoCSWl+VJu98CmnGPj5GEK8RetJN/lV0etHQP1FjCPP6k9W9nPI3gxDZ7aPKaU9Csu6Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bnpf97pSkp4w9vRTRKqynt4D1sNYT2ThXcJ98e2k/fo=;
 b=N74CSkNB2RhrYbtiPXGMpbG3e7caUJonPpEMVPaOV/LX7EsaNXTZR7yvO2z22CviCuBseahYGVt1HjWpI93TONE1b7gBWaBe4sGnthH2V7ivlx3nSpv1a/QcAz9RJ9tGg1E/3jCg7W0gNPQOCCgccIGt1I3QyHJNWazXHfk94KqSd2If0X+z1ITQnAroMV039PstCz218D3DjE+o3N2XjqBBfCLq9q+yOqUxcIP03PpDKvTJFCVzVl2ZXftTUybwsCQkacfLRRM+wcQnUaKSXLWGCAyrBKgHOXjmpZvfAGpW92DoLFj4BZ6KsLzDabDlRwNP4QwdGLZdd8/wUmAY9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6135.namprd11.prod.outlook.com (2603:10b6:208:3c9::9)
 by BY5PR11MB4484.namprd11.prod.outlook.com (2603:10b6:a03:1c3::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.16; Thu, 30 Jun
 2022 00:23:01 +0000
Received: from MN0PR11MB6135.namprd11.prod.outlook.com
 ([fe80::e95d:773a:c84c:e3f4]) by MN0PR11MB6135.namprd11.prod.outlook.com
 ([fe80::e95d:773a:c84c:e3f4%9]) with mapi id 15.20.5373.018; Thu, 30 Jun 2022
 00:23:01 +0000
Date: Wed, 29 Jun 2022 17:22:58 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20220630002258.hhriungfx76j4lhn@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220628191016.3899428-1-lucas.demarchi@intel.com>
 <165653764642.23233.3847944643663335494@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <165653764642.23233.3847944643663335494@emeril.freedesktop.org>
X-ClientProxiedBy: MWHPR04CA0050.namprd04.prod.outlook.com
 (2603:10b6:300:6c::12) To MN0PR11MB6135.namprd11.prod.outlook.com
 (2603:10b6:208:3c9::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b9dfeeee-ea54-4405-0c7a-08da5a2eb0bc
X-MS-TrafficTypeDiagnostic: BY5PR11MB4484:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yH6J/S4bsDfVErp1lf/1zSoDSWFR/4qOW1m54wVwprFg4Dp0cIGdhAHFqBEDQ8/g4lL7pT9gpjCWaqLQHV+b+B3vgvqZNi4PKk8i1GKU/YSVqNmv7stVkc2NPS+pXBopW/dOF0sQoAAEaZmdPaV25JkQzc1+xQkp9LrcQ00n9ZLKxJ3hfgOF2zzuegMuap5dbTgQk9c6hn/pn5nM+zT4zyTnkzOYADNDc3XXDCfStrSPAefKzCLVCw/AcOMA/ARfc+o/WkOxsbPu2W0I1R7AiexpDDBx8ifCZQzQmsTtH7T0Qy/JmrbobFTAe0QtIn49/9gC8X83nW39TZNNgcki0DbXdF8Mw+9heHSJzYT2UQqa44j0JDe8nFRJyvzsGtxN7g2paH4mJN5+08P3sfZFrPsr9xZq+QPSUQsZm+vP7VUQzExMCKm3M3PAzqrTx/2OYIif5tfbQ6/zX0aJVKKU+RFEXnVlnvI3wFS5rCiWGrk24bB2wCOwkWHL1DHNQow46eRPZu7QXKP5JYe53TYvvAICzWWGPy9Y+Q/0p7Us8BAq2vPKxFtsmdEGPwLw9qOjZtYEZuLIvv4AsINc+tsRg++PBSLgipCCCC01nB80lkeKGDVpSwO3rkw4XHo/MfG+6cAs3Z9t9BUCFEtPo/KYo4OiAoWJq3LT0cOtZMSNOwT1RdvKFX72L1E1SBI77chD74kttU6lYQAWzHj+0av7LaGE9R8Kn7lB6qLFbS7pJfNTBJ/kOpEA2PdnFfRC0+gO4o8sD5ma0zY5+9R8ohPg7Bg4pcWWp9uiJBG98jpW3oU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6135.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(346002)(39860400002)(136003)(396003)(376002)(366004)(30864003)(5660300002)(6512007)(8936002)(966005)(478600001)(9686003)(6506007)(6486002)(26005)(86362001)(41300700001)(2906002)(6666004)(82960400001)(33716001)(66946007)(66476007)(38100700002)(186003)(107886003)(1076003)(83380400001)(6916009)(4326008)(316002)(66556008)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?X/S5XSOhiW+EKzg7Pl7pnv0pF8aPJoqSwE923DdS3YEFvlaGX/uHTXWotVuX?=
 =?us-ascii?Q?XE3L86nxq1Y4lfCJ64PfIMrB0Ey1Yk8FENBEPWgAN7PZMXmDaPtGWCfRYPTr?=
 =?us-ascii?Q?bfffd1/z7aXAyz2grqKjt2kmYGIexq6gvT3PWTX0qDv0RTZDJwuMFGNuPE8o?=
 =?us-ascii?Q?KF8HqiFMC2800GsGqZz3uMyWTzbRks49lOzDJB2CBVJ8P3KL/V7pEcUO7zHg?=
 =?us-ascii?Q?VHPGq89kwIYk/h8KrfZeu/f0z3N4pjUls4KQJxDwlIZRlgEDnIfVnmENDU3G?=
 =?us-ascii?Q?26nIvcioUnqIrkwckS8pIRXfV5T2i8vmp8oPeBgHunQz7i8My57WRk9Fhw5B?=
 =?us-ascii?Q?5qo4XAnwBNpmEt5ksnPDZsZ7KXT27HPzD4jauUDACjm8hI+O9xybguo1gaLU?=
 =?us-ascii?Q?Ei7yfgeQBBdwq/Ghg7ZuEVp8SAgqOwUqaXbYQE51oysFWpkXDns3EV2E9t/U?=
 =?us-ascii?Q?9fTh9tJnnUjizTE19KErLB/K0tyK34m5AU/cb4qOiLRq7suG7QiU1WCnAFUU?=
 =?us-ascii?Q?5R7vB59kmlgqVFa43qyhavLhuldHRsFuxiyi4+gRGSMriwW+e0gYhtcYqFhC?=
 =?us-ascii?Q?5wUrQrjV40tUNqASJFSbXjqZagoMTutlkoGKw7StJ9NULTzJaMWIHTVlJy9s?=
 =?us-ascii?Q?HAFJZwrw2wWrtk0o7pTmneeFJoBZEU/pjxx/jORVwvp010lEtUHqrijRjfa4?=
 =?us-ascii?Q?a+AN/jWKYLNJ/AvrLggGyhVU1hX7i/3+jJhGFRzMHeSA5M88s03wKbcKODcS?=
 =?us-ascii?Q?sdKmzPBpNQgZMg73xq1jcPSB0CHMqWjUizCfYO9Ks1i6FMFyGOkLah9a7y7g?=
 =?us-ascii?Q?FWAMg5t/SjswVdSdCxnvFlh4rE1iJEyGQiI9MDK0qRakWP2GocFdCYEOIJ7n?=
 =?us-ascii?Q?+OUBLWWdUKFATinj10UhY/8RZZsi1jTDRrCU/jkW96dsLMCrjZRmOK9lyytJ?=
 =?us-ascii?Q?EoWOlYtuZPO+jjVkrBAD2HMoZVk4AIZt01LwpROC0M0oH0UyW69pNA3yoBLp?=
 =?us-ascii?Q?+ThI2YSg3pTgHkfr4EHSXFARkJcs5T/Qwd0pUTXvQDJfghrFPhCqMlLlBMQg?=
 =?us-ascii?Q?R+MXajFr/iMggRftr2UJHcwvydziT2dLaMOynhPrIS1K/wEVE3xambsVEyY7?=
 =?us-ascii?Q?kA+/Vf7hCM0CjuxSGvA2EFQ6D5u86mib5s4TWCbMFbrO2ZxlRejHib3HAIxQ?=
 =?us-ascii?Q?Vm/8q6sv9LdH85+RcD6QWOH9UhAt+zZagf7KQQ7Mstk3mfacm4kxyaqKTI6M?=
 =?us-ascii?Q?MSvtaXwe+MFS8zcXIB9w5x1dP1mXE1DXXzp4f/+tY0SgWQf2BpXB9w1jXm2L?=
 =?us-ascii?Q?Y3vAjzX6rg5TAn+je4RbZ1j0ok6Gge1tQy0NryWGTNLK1WQcWOa6AzzZBQKW?=
 =?us-ascii?Q?wr7nU8Wyv8gJqGOcGj2/YWYB9VFzOfCeah2IjsiU2gcwzuWYOO2mqTNulCau?=
 =?us-ascii?Q?hnvyDHow6F55LUx5oew/hUCu2gOWIrfZBTP12nuozOYVKiWp7w4BWi/QNJoe?=
 =?us-ascii?Q?RRXOL+wNGhoUCHWdmitvlhPjmagjvXqaUpQLzR2htbHw8msfS4l9z2Kjj13E?=
 =?us-ascii?Q?4DiO5qioAWK/DCLVuJqR/I6CNFC2BUco+4d13AAODlLsSWNkqvkbmrFcXhaA?=
 =?us-ascii?Q?2w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b9dfeeee-ea54-4405-0c7a-08da5a2eb0bc
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6135.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2022 00:23:01.7078 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tSXapa9mlZ1slKto5wWdjXfB8zThzwbPrD6pwlx/4G/2Kh8b5N19MUzDm5xnCnYKlNAxS5lKBoTl65s5UMBecmN+LcCMi44MU0zG5T7fWig=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4484
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_iosys-map=3A_Add_per-word_read?=
 =?utf-8?q?_=28rev2=29?=
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
Cc: Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 29, 2022 at 09:20:46PM +0000, Patchwork wrote:
>== Series Details ==
>
>Series: series starting with [CI,1/2] iosys-map: Add per-word read (rev2)
>URL   : https://patchwork.freedesktop.org/series/105746/
>State : failure
>
>== Summary ==
>
>CI Bug Log - changes from CI_DRM_11823_full -> Patchwork_105746v2_full
>====================================================
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_105746v2_full absolutely need to be
>  verified manually.
>
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_105746v2_full, please notify your bug team to allow them
>  to document this new failure mode, which will reduce false positives in CI.
>
>
>
>Participating hosts (13 -> 13)
>------------------------------
>
>  No changes in participating hosts
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_105746v2_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size:
>    - shard-iclb:         [PASS][1] -> [FAIL][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb1/igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size.html
>
>  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>    - shard-tglb:         [PASS][3] -> [FAIL][4] +1 similar issue
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglb1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

none of these are related with the iosys-map changes. Outside of guc,
iosys_map is currently only used in i915 by i915_gem_prime_export which
is not exercised by these display tests.

Lucas De Marchi

>
>
>
>### Piglit changes ###
>
>#### Possible regressions ####
>
>  * spec@!opengl 1.1@teximage-colors gl_rgba32f:
>    - pig-skl-6260u:      NOTRUN -> [INCOMPLETE][5]
>   [5]: None
>
>  * spec@glsl-1.10@execution@variable-indexing@vs-varying-mat2-rd:
>    - pig-glk-j5005:      NOTRUN -> [INCOMPLETE][6]
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/pig-glk-j5005/spec@glsl-1.10@execution@variable-indexing@vs-varying-mat2-rd.html
>
>
>Known issues
>------------
>
>  Here are the changes found in Patchwork_105746v2_full that come from known issues:
>
>### CI changes ###
>
>#### Possible fixes ####
>
>  * boot:
>    - shard-glk:          ([PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [FAIL][28], [PASS][29], [PASS][30], [PASS][31]) ([i915#4392]) -> ([PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56])
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk5/boot.html
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk5/boot.html
>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk6/boot.html
>   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk5/boot.html
>   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk6/boot.html
>   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk6/boot.html
>   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk7/boot.html
>   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk7/boot.html
>   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk3/boot.html
>   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk8/boot.html
>   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk8/boot.html
>   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk8/boot.html
>   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk3/boot.html
>   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk3/boot.html
>   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk9/boot.html
>   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk9/boot.html
>   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk9/boot.html
>   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk2/boot.html
>   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk2/boot.html
>   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk2/boot.html
>   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk2/boot.html
>   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk2/boot.html
>   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk1/boot.html
>   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk1/boot.html
>   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk1/boot.html
>   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk1/boot.html
>   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk1/boot.html
>   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk1/boot.html
>   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk1/boot.html
>   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk2/boot.html
>   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk2/boot.html
>   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk2/boot.html
>   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk3/boot.html
>   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk3/boot.html
>   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk3/boot.html
>   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk5/boot.html
>   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk5/boot.html
>   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk5/boot.html
>   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk6/boot.html
>   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk6/boot.html
>   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk6/boot.html
>   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk7/boot.html
>   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk7/boot.html
>   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk7/boot.html
>   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk8/boot.html
>   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk8/boot.html
>   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk8/boot.html
>   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk9/boot.html
>   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk9/boot.html
>   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk9/boot.html
>
>
>
>### IGT changes ###
>
>#### Issues hit ####
>
>  * igt@drm_buddy@all@buddy_alloc_smoke:
>    - shard-skl:          [PASS][57] -> [INCOMPLETE][58] ([i915#5800])
>   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-skl1/igt@drm_buddy@all@buddy_alloc_smoke.html
>   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl3/igt@drm_buddy@all@buddy_alloc_smoke.html
>
>  * igt@feature_discovery@psr2:
>    - shard-iclb:         [PASS][59] -> [SKIP][60] ([i915#658])
>   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb2/igt@feature_discovery@psr2.html
>   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb8/igt@feature_discovery@psr2.html
>
>  * igt@gem_ctx_exec@basic-nohangcheck:
>    - shard-tglb:         [PASS][61] -> [FAIL][62] ([i915#6268])
>   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html
>   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html
>
>  * igt@gem_ctx_persistence@smoketest:
>    - shard-kbl:          NOTRUN -> [INCOMPLETE][63] ([i915#6310])
>   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl3/igt@gem_ctx_persistence@smoketest.html
>    - shard-skl:          [PASS][64] -> [INCOMPLETE][65] ([i915#6310])
>   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-skl1/igt@gem_ctx_persistence@smoketest.html
>   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl10/igt@gem_ctx_persistence@smoketest.html
>
>  * igt@gem_eio@hibernate:
>    - shard-glk:          [PASS][66] -> [DMESG-WARN][67] ([i915#118])
>   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk8/igt@gem_eio@hibernate.html
>   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk8/igt@gem_eio@hibernate.html
>
>  * igt@gem_exec_balancer@parallel-keep-in-fence:
>    - shard-iclb:         [PASS][68] -> [SKIP][69] ([i915#4525])
>   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html
>   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in-fence.html
>
>  * igt@gem_exec_fair@basic-none-share@rcs0:
>    - shard-tglb:         [PASS][70] -> [FAIL][71] ([i915#2842]) +1 similar issue
>   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html
>   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html
>
>  * igt@gem_exec_fair@basic-none-solo@rcs0:
>    - shard-kbl:          NOTRUN -> [FAIL][72] ([i915#2842])
>   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html
>
>  * igt@gem_exec_fair@basic-none-vip@rcs0:
>    - shard-kbl:          [PASS][73] -> [FAIL][74] ([i915#2842])
>   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl3/igt@gem_exec_fair@basic-none-vip@rcs0.html
>   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl4/igt@gem_exec_fair@basic-none-vip@rcs0.html
>
>  * igt@gem_exec_fair@basic-pace-share@rcs0:
>    - shard-glk:          [PASS][75] -> [FAIL][76] ([i915#2842])
>   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>
>  * igt@gem_lmem_swapping@heavy-multi:
>    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#4613])
>   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-apl2/igt@gem_lmem_swapping@heavy-multi.html
>    - shard-kbl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#4613])
>   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl7/igt@gem_lmem_swapping@heavy-multi.html
>    - shard-skl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#4613])
>   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl9/igt@gem_lmem_swapping@heavy-multi.html
>
>  * igt@gem_lmem_swapping@smem-oom:
>    - shard-glk:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#4613])
>   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk1/igt@gem_lmem_swapping@smem-oom.html
>
>  * igt@gem_pxp@reject-modify-context-protection-off-3:
>    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271]) +28 similar issues
>   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-apl2/igt@gem_pxp@reject-modify-context-protection-off-3.html
>
>  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs:
>    - shard-glk:          NOTRUN -> [SKIP][82] ([fdo#109271]) +46 similar issues
>   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk1/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs.html
>
>  * igt@gem_userptr_blits@dmabuf-sync:
>    - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#3323])
>   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl7/igt@gem_userptr_blits@dmabuf-sync.html
>
>  * igt@gen7_exec_parse@basic-allocation:
>    - shard-skl:          NOTRUN -> [SKIP][84] ([fdo#109271]) +167 similar issues
>   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl1/igt@gen7_exec_parse@basic-allocation.html
>
>  * igt@i915_pm_rpm@system-suspend-modeset:
>    - shard-iclb:         [PASS][85] -> [INCOMPLETE][86] ([i915#2910] / [i915#5096] / [i915#5420])
>   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb4/igt@i915_pm_rpm@system-suspend-modeset.html
>   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb4/igt@i915_pm_rpm@system-suspend-modeset.html
>
>  * igt@i915_suspend@fence-restore-untiled:
>    - shard-kbl:          [PASS][87] -> [DMESG-WARN][88] ([i915#180]) +1 similar issue
>   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl6/igt@i915_suspend@fence-restore-untiled.html
>   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html
>
>  * igt@kms_3d:
>    - shard-skl:          [PASS][89] -> [DMESG-WARN][90] ([i915#1982])
>   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-skl7/igt@kms_3d.html
>   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl4/igt@kms_3d.html
>
>  * igt@kms_big_fb@linear-16bpp-rotate-90:
>    - shard-tglb:         NOTRUN -> [SKIP][91] ([fdo#111614])
>   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglb5/igt@kms_big_fb@linear-16bpp-rotate-90.html
>
>  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>    - shard-tglb:         [PASS][92] -> [FAIL][93] ([i915#3743])
>   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-tglb3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
>   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglb1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
>
>  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>    - shard-skl:          NOTRUN -> [FAIL][94] ([i915#3743]) +2 similar issues
>   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>
>  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>    - shard-kbl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#3886]) +9 similar issues
>   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl4/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
>
>  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
>    - shard-skl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#3886]) +9 similar issues
>   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl6/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html
>
>  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>    - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#3886]) +2 similar issues
>   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-apl2/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
>
>  * igt@kms_ccs@pipe-c-random-ccs-data-yf_tiled_ccs:
>    - shard-kbl:          NOTRUN -> [SKIP][98] ([fdo#109271]) +113 similar issues
>   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl3/igt@kms_ccs@pipe-c-random-ccs-data-yf_tiled_ccs.html
>
>  * igt@kms_chamelium@dp-crc-multiple:
>    - shard-apl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [fdo#111827])
>   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-apl2/igt@kms_chamelium@dp-crc-multiple.html
>
>  * igt@kms_chamelium@vga-hpd:
>    - shard-glk:          NOTRUN -> [SKIP][100] ([fdo#109271] / [fdo#111827]) +3 similar issues
>   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk1/igt@kms_chamelium@vga-hpd.html
>
>  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>    - shard-tglb:         NOTRUN -> [SKIP][101] ([fdo#109284] / [fdo#111827])
>   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglb5/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html
>
>  * igt@kms_color_chamelium@pipe-a-gamma:
>    - shard-kbl:          NOTRUN -> [SKIP][102] ([fdo#109271] / [fdo#111827]) +8 similar issues
>   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl4/igt@kms_color_chamelium@pipe-a-gamma.html
>
>  * igt@kms_color_chamelium@pipe-b-ctm-green-to-red:
>    - shard-skl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [fdo#111827]) +10 similar issues
>   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl6/igt@kms_color_chamelium@pipe-b-ctm-green-to-red.html
>
>  * igt@kms_content_protection@lic:
>    - shard-kbl:          NOTRUN -> [TIMEOUT][104] ([i915#1319])
>   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl4/igt@kms_content_protection@lic.html
>
>  * igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1:
>    - shard-apl:          [PASS][105] -> [DMESG-WARN][106] ([i915#180]) +1 similar issue
>   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-apl2/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
>   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-apl1/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
>
>  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>    - shard-glk:          [PASS][107] -> [FAIL][108] ([i915#2346])
>   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
>   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
>
>  * igt@kms_fbcon_fbt@fbc-suspend:
>    - shard-kbl:          NOTRUN -> [FAIL][109] ([i915#4767])
>   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
>
>  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:
>    - shard-glk:          [PASS][110] -> [FAIL][111] ([i915#2122])
>   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
>   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
>
>  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
>    - shard-glk:          [PASS][112] -> [FAIL][113] ([i915#79])
>   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
>   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
>
>  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>    - shard-iclb:         [PASS][114] -> [SKIP][115] ([i915#3701])
>   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
>   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
>
>  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
>    - shard-glk:          [PASS][116] -> [FAIL][117] ([i915#1888] / [i915#2546])
>   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html
>   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html
>
>  * igt@kms_frontbuffer_tracking@fbc-suspend:
>    - shard-apl:          NOTRUN -> [DMESG-WARN][118] ([i915#180])
>   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-apl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
>
>  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt:
>    - shard-tglb:         NOTRUN -> [SKIP][119] ([fdo#109280] / [fdo#111825])
>   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt.html
>
>  * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
>    - shard-kbl:          [PASS][120] -> [FAIL][121] ([i915#1188])
>   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl7/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
>   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl3/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
>
>  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>    - shard-kbl:          NOTRUN -> [FAIL][122] ([fdo#108145] / [i915#265])
>   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
>    - shard-skl:          NOTRUN -> [FAIL][123] ([fdo#108145] / [i915#265]) +2 similar issues
>   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
>    - shard-apl:          NOTRUN -> [FAIL][124] ([fdo#108145] / [i915#265])
>   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
>
>  * igt@kms_plane_scaling@plane-scaler-with-rotation-unity-scaling:
>    - shard-snb:          NOTRUN -> [SKIP][125] ([fdo#109271])
>   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-snb6/igt@kms_plane_scaling@plane-scaler-with-rotation-unity-scaling.html
>
>  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
>    - shard-iclb:         [PASS][126] -> [SKIP][127] ([i915#5235]) +2 similar issues
>   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb8/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
>   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
>
>  * igt@kms_psr2_su@frontbuffer-xrgb8888:
>    - shard-iclb:         [PASS][128] -> [SKIP][129] ([fdo#109642] / [fdo#111068] / [i915#658])
>   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb7/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>
>  * igt@kms_psr2_su@page_flip-nv12:
>    - shard-kbl:          NOTRUN -> [SKIP][130] ([fdo#109271] / [i915#658])
>   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl7/igt@kms_psr2_su@page_flip-nv12.html
>    - shard-skl:          NOTRUN -> [SKIP][131] ([fdo#109271] / [i915#658])
>   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl9/igt@kms_psr2_su@page_flip-nv12.html
>    - shard-apl:          NOTRUN -> [SKIP][132] ([fdo#109271] / [i915#658])
>   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-apl2/igt@kms_psr2_su@page_flip-nv12.html
>
>  * igt@kms_psr@psr2_sprite_mmap_gtt:
>    - shard-iclb:         [PASS][133] -> [SKIP][134] ([fdo#109441]) +3 similar issues
>   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
>   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html
>
>  * igt@nouveau_crc@pipe-a-source-rg:
>    - shard-tglb:         NOTRUN -> [SKIP][135] ([i915#2530])
>   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglb5/igt@nouveau_crc@pipe-a-source-rg.html
>
>  * igt@perf@polling-small-buf:
>    - shard-skl:          NOTRUN -> [FAIL][136] ([i915#1722])
>   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl6/igt@perf@polling-small-buf.html
>
>  * igt@sysfs_clients@recycle-many:
>    - shard-apl:          NOTRUN -> [SKIP][137] ([fdo#109271] / [i915#2994])
>   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-apl2/igt@sysfs_clients@recycle-many.html
>    - shard-skl:          NOTRUN -> [SKIP][138] ([fdo#109271] / [i915#2994])
>   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl9/igt@sysfs_clients@recycle-many.html
>
>  * igt@sysfs_clients@split-25:
>    - shard-kbl:          NOTRUN -> [SKIP][139] ([fdo#109271] / [i915#2994]) +1 similar issue
>   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl4/igt@sysfs_clients@split-25.html
>
>
>#### Possible fixes ####
>
>  * igt@feature_discovery@psr2:
>    - {shard-rkl}:        [SKIP][140] ([i915#658]) -> [PASS][141]
>   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-1/igt@feature_discovery@psr2.html
>   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-6/igt@feature_discovery@psr2.html
>
>  * igt@gem_ctx_exec@basic-nohangcheck:
>    - {shard-rkl}:        [FAIL][142] ([i915#6268]) -> [PASS][143]
>   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html
>   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html
>    - {shard-tglu}:       [FAIL][144] ([i915#6268]) -> [PASS][145]
>   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html
>   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html
>
>  * igt@gem_ctx_isolation@preservation-s3@vecs0:
>    - shard-apl:          [DMESG-WARN][146] ([i915#180]) -> [PASS][147] +1 similar issue
>   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-apl6/igt@gem_ctx_isolation@preservation-s3@vecs0.html
>   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-apl2/igt@gem_ctx_isolation@preservation-s3@vecs0.html
>    - shard-kbl:          [DMESG-WARN][148] ([i915#180]) -> [PASS][149]
>   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vecs0.html
>   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vecs0.html
>
>  * igt@gem_ctx_persistence@hostile:
>    - {shard-tglu}:       [FAIL][150] ([i915#2410]) -> [PASS][151]
>   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-tglu-3/igt@gem_ctx_persistence@hostile.html
>   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglu-3/igt@gem_ctx_persistence@hostile.html
>
>  * igt@gem_ctx_persistence@legacy-engines-hang@bsd1:
>    - {shard-dg1}:        [FAIL][152] ([i915#4883]) -> [PASS][153]
>   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-dg1-17/igt@gem_ctx_persistence@legacy-engines-hang@bsd1.html
>   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-dg1-19/igt@gem_ctx_persistence@legacy-engines-hang@bsd1.html
>
>  * igt@gem_eio@in-flight-contexts-10ms:
>    - {shard-tglu}:       [TIMEOUT][154] ([i915#3063]) -> [PASS][155]
>   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-tglu-5/igt@gem_eio@in-flight-contexts-10ms.html
>   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglu-4/igt@gem_eio@in-flight-contexts-10ms.html
>
>  * igt@gem_exec_balancer@parallel-out-fence:
>    - shard-iclb:         [SKIP][156] ([i915#4525]) -> [PASS][157] +1 similar issue
>   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb8/igt@gem_exec_balancer@parallel-out-fence.html
>   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html
>
>  * igt@gem_exec_fair@basic-none@vecs0:
>    - shard-apl:          [FAIL][158] ([i915#2842]) -> [PASS][159]
>   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html
>   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html
>
>  * igt@gem_exec_fair@basic-pace-solo@rcs0:
>    - shard-kbl:          [FAIL][160] ([i915#2842]) -> [PASS][161] +2 similar issues
>   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>
>  * igt@gem_exec_parallel@fds@bcs0:
>    - shard-kbl:          [INCOMPLETE][162] ([i915#6310]) -> [PASS][163]
>   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl6/igt@gem_exec_parallel@fds@bcs0.html
>   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl4/igt@gem_exec_parallel@fds@bcs0.html
>
>  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>    - {shard-rkl}:        [SKIP][164] ([i915#3281]) -> [PASS][165] +8 similar issues
>   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-1/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
>   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
>
>  * igt@gem_exec_schedule@semaphore-power:
>    - {shard-rkl}:        [SKIP][166] ([fdo#110254]) -> [PASS][167]
>   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-1/igt@gem_exec_schedule@semaphore-power.html
>   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html
>
>  * igt@gem_exec_whisper@basic-fds-forked-all:
>    - shard-glk:          [DMESG-WARN][168] ([i915#118]) -> [PASS][169]
>   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk5/igt@gem_exec_whisper@basic-fds-forked-all.html
>   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk8/igt@gem_exec_whisper@basic-fds-forked-all.html
>
>  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>    - {shard-rkl}:        [SKIP][170] ([i915#3282]) -> [PASS][171] +7 similar issues
>   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
>   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
>
>  * igt@gem_softpin@evict-single-offset:
>    - {shard-rkl}:        [FAIL][172] ([i915#4171]) -> [PASS][173]
>   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-5/igt@gem_softpin@evict-single-offset.html
>   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-2/igt@gem_softpin@evict-single-offset.html
>
>  * igt@gem_workarounds@suspend-resume-context:
>    - {shard-rkl}:        [FAIL][174] ([fdo#103375]) -> [PASS][175]
>   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-5/igt@gem_workarounds@suspend-resume-context.html
>   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-5/igt@gem_workarounds@suspend-resume-context.html
>
>  * igt@gen9_exec_parse@allowed-single:
>    - shard-kbl:          [DMESG-WARN][176] ([i915#5566] / [i915#716]) -> [PASS][177]
>   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl3/igt@gen9_exec_parse@allowed-single.html
>   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl4/igt@gen9_exec_parse@allowed-single.html
>
>  * igt@gen9_exec_parse@shadow-peek:
>    - {shard-rkl}:        [SKIP][178] ([i915#2527]) -> [PASS][179] +3 similar issues
>   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-1/igt@gen9_exec_parse@shadow-peek.html
>   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html
>
>  * igt@i915_pm_rpm@i2c:
>    - {shard-rkl}:        [SKIP][180] ([fdo#109308]) -> [PASS][181]
>   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-5/igt@i915_pm_rpm@i2c.html
>   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-6/igt@i915_pm_rpm@i2c.html
>
>  * igt@i915_selftest@live@hangcheck:
>    - shard-tglb:         [DMESG-WARN][182] ([i915#5591]) -> [PASS][183]
>   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-tglb5/igt@i915_selftest@live@hangcheck.html
>   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglb7/igt@i915_selftest@live@hangcheck.html
>
>  * igt@i915_suspend@sysfs-reader:
>    - shard-apl:          [INCOMPLETE][184] ([i915#4939]) -> [PASS][185]
>   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-apl7/igt@i915_suspend@sysfs-reader.html
>   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-apl2/igt@i915_suspend@sysfs-reader.html
>
>  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>    - shard-tglb:         [FAIL][186] ([i915#3743]) -> [PASS][187] +2 similar issues
>   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-tglb1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
>   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglb5/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
>
>  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
>    - {shard-rkl}:        [SKIP][188] ([i915#1845] / [i915#4098]) -> [PASS][189] +26 similar issues
>   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-1/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
>   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-6/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
>
>  * igt@kms_color@pipe-a-ctm-blue-to-red:
>    - {shard-rkl}:        [SKIP][190] ([i915#1149] / [i915#1849] / [i915#4098]) -> [PASS][191] +1 similar issue
>   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-5/igt@kms_color@pipe-a-ctm-blue-to-red.html
>   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-6/igt@kms_color@pipe-a-ctm-blue-to-red.html
>
>  * igt@kms_color@pipe-c-invalid-ctm-matrix-sizes:
>    - {shard-rkl}:        [SKIP][192] ([i915#4070]) -> [PASS][193] +1 similar issue
>   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-1/igt@kms_color@pipe-c-invalid-ctm-matrix-sizes.html
>   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-5/igt@kms_color@pipe-c-invalid-ctm-matrix-sizes.html
>
>  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>    - shard-glk:          [FAIL][194] ([i915#72]) -> [PASS][195]
>   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
>   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
>
>  * igt@kms_dp_aux_dev:
>    - {shard-rkl}:        [SKIP][196] ([i915#1257]) -> [PASS][197]
>   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-1/igt@kms_dp_aux_dev.html
>   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-6/igt@kms_dp_aux_dev.html
>
>  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled:
>    - {shard-rkl}:        [SKIP][198] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][199] +10 similar issues
>   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled.html
>   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled.html
>
>  * igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
>    - shard-glk:          [FAIL][200] ([i915#2122]) -> [PASS][201]
>   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
>   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
>
>  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:
>    - shard-skl:          [FAIL][202] ([i915#1888] / [i915#2122]) -> [PASS][203]
>   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-skl6/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html
>   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl6/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html
>
>  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>    - shard-skl:          [FAIL][204] ([i915#79]) -> [PASS][205] +1 similar issue
>   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>
>  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
>    - shard-tglb:         [FAIL][206] ([i915#79]) -> [PASS][207]
>   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
>   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
>
>  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
>    - shard-skl:          [FAIL][208] ([i915#2122]) -> [PASS][209]
>   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
>   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
>    - shard-glk:          [FAIL][210] ([i915#4911]) -> [PASS][211]
>   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
>   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-glk3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>    - {shard-rkl}:        [SKIP][212] ([i915#1849] / [i915#4098]) -> [PASS][213] +34 similar issues
>   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
>   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
>
>  * igt@kms_plane@pixel-format@pipe-a-planes:
>    - {shard-rkl}:        [SKIP][214] ([i915#3558]) -> [PASS][215] +1 similar issue
>   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-1/igt@kms_plane@pixel-format@pipe-a-planes.html
>   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-6/igt@kms_plane@pixel-format@pipe-a-planes.html
>
>  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid:
>    - {shard-rkl}:        [SKIP][216] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][217]
>   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid.html
>   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mid.html
>
>  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
>    - shard-iclb:         [SKIP][218] ([i915#5176]) -> [PASS][219] +4 similar issues
>   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
>   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
>
>  * igt@kms_properties@crtc-properties-legacy:
>    - {shard-rkl}:        [SKIP][220] ([i915#1849]) -> [PASS][221] +2 similar issues
>   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-5/igt@kms_properties@crtc-properties-legacy.html
>   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-6/igt@kms_properties@crtc-properties-legacy.html
>
>  * igt@kms_psr2_su@page_flip-xrgb8888:
>    - shard-iclb:         [SKIP][222] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][223]
>   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb8/igt@kms_psr2_su@page_flip-xrgb8888.html
>   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html
>
>  * igt@kms_psr@primary_mmap_gtt:
>    - {shard-rkl}:        [SKIP][224] ([i915#1072]) -> [PASS][225] +1 similar issue
>   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-5/igt@kms_psr@primary_mmap_gtt.html
>   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-6/igt@kms_psr@primary_mmap_gtt.html
>
>  * igt@kms_psr@psr2_primary_render:
>    - shard-iclb:         [SKIP][226] ([fdo#109441]) -> [PASS][227] +2 similar issues
>   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb8/igt@kms_psr@psr2_primary_render.html
>   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb2/igt@kms_psr@psr2_primary_render.html
>
>  * igt@perf@gen12-unprivileged-single-ctx-counters:
>    - {shard-rkl}:        [SKIP][228] ([fdo#109289]) -> [PASS][229]
>   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-5/igt@perf@gen12-unprivileged-single-ctx-counters.html
>   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-2/igt@perf@gen12-unprivileged-single-ctx-counters.html
>
>  * igt@prime_mmap_coherency@ioctl-errors:
>    - shard-skl:          [DMESG-FAIL][230] ([i915#6310]) -> [PASS][231]
>   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-skl10/igt@prime_mmap_coherency@ioctl-errors.html
>   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl9/igt@prime_mmap_coherency@ioctl-errors.html
>
>  * igt@prime_vgem@basic-write:
>    - {shard-rkl}:        [SKIP][232] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][233]
>   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-rkl-1/igt@prime_vgem@basic-write.html
>   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-rkl-5/igt@prime_vgem@basic-write.html
>
>
>#### Warnings ####
>
>  * igt@gem_exec_balancer@parallel-ordering:
>    - shard-iclb:         [FAIL][234] ([i915#6117]) -> [SKIP][235] ([i915#4525])
>   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb4/igt@gem_exec_balancer@parallel-ordering.html
>   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html
>
>  * igt@gem_exec_fair@basic-none-solo@rcs0:
>    - shard-tglb:         [FAIL][236] ([i915#2842]) -> [SKIP][237] ([i915#2848])
>   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-tglb7/igt@gem_exec_fair@basic-none-solo@rcs0.html
>   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglb1/igt@gem_exec_fair@basic-none-solo@rcs0.html
>
>  * igt@gem_exec_fair@basic-none-vip@rcs0:
>    - shard-tglb:         [SKIP][238] ([i915#2848]) -> [FAIL][239] ([i915#2842])
>   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-tglb1/igt@gem_exec_fair@basic-none-vip@rcs0.html
>   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-tglb7/igt@gem_exec_fair@basic-none-vip@rcs0.html
>
>  * igt@i915_pm_dc@dc3co-vpb-simulation:
>    - shard-iclb:         [SKIP][240] ([i915#588]) -> [SKIP][241] ([i915#658])
>   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
>   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html
>
>  * igt@kms_flip@flip-vs-suspend@a-dp1:
>    - shard-kbl:          [DMESG-WARN][242] ([i915#180]) -> [DMESG-WARN][243] ([i915#165]) +1 similar issue
>   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
>   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
>
>  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>    - shard-iclb:         [SKIP][244] ([fdo#111068] / [i915#658]) -> [SKIP][245] ([i915#2920])
>   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
>   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
>
>  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>    - shard-iclb:         [SKIP][246] ([i915#2920]) -> [SKIP][247] ([i915#658])
>   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
>   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
>
>  * igt@runner@aborted:
>    - shard-skl:          ([FAIL][248], [FAIL][249], [FAIL][250], [FAIL][251], [FAIL][252]) ([i915#2029] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][253], [FAIL][254], [FAIL][255]) ([i915#3002] / [i915#4312] / [i915#5257])
>   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-skl10/igt@runner@aborted.html
>   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-skl3/igt@runner@aborted.html
>   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-skl9/igt@runner@aborted.html
>   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-skl7/igt@runner@aborted.html
>   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-skl5/igt@runner@aborted.html
>   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl10/igt@runner@aborted.html
>   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl1/igt@runner@aborted.html
>   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-skl1/igt@runner@aborted.html
>    - shard-kbl:          ([FAIL][256], [FAIL][257], [FAIL][258], [FAIL][259], [FAIL][260], [FAIL][261], [FAIL][262], [FAIL][263], [FAIL][264]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#716]) -> ([FAIL][265], [FAIL][266], [FAIL][267], [FAIL][268], [FAIL][269], [FAIL][270], [FAIL][271], [FAIL][272], [FAIL][273]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl1/igt@runner@aborted.html
>   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl6/igt@runner@aborted.html
>   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl6/igt@runner@aborted.html
>   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl1/igt@runner@aborted.html
>   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl6/igt@runner@aborted.html
>   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl3/igt@runner@aborted.html
>   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl4/igt@runner@aborted.html
>   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl1/igt@runner@aborted.html
>   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11823/shard-kbl4/igt@runner@aborted.html
>   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl1/igt@runner@aborted.html
>   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl4/igt@runner@aborted.html
>   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl6/igt@runner@aborted.html
>   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl1/igt@runner@aborted.html
>   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl6/igt@runner@aborted.html
>   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl6/igt@runner@aborted.html
>   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl1/igt@runner@aborted.html
>   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl1/igt@runner@aborted.html
>   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/shard-kbl3/igt@runner@aborted.html
>
>
>  {name}: This element is suppressed. This means it is ignored when computing
>          the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>  [fdo#110254]: https://bugs.freedesktop.org/show_bug.cgi?id=110254
>  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
>  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
>  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>  [i915#2232]: https://gitlab.freedesktop.org/drm/intel/issues/2232
>  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
>  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
>  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>  [i915#2848]: https://gitlab.freedesktop.org/drm/intel/issues/2848
>  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>  [i915#2910]: https://gitlab.freedesktop.org/drm/intel/issues/2910
>  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>  [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>  [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
>  [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
>  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>  [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
>  [i915#3938]: https://gitlab.freedesktop.org/drm/intel/issues/3938
>  [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>  [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
>  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>  [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
>  [i915#4462]: https://gitlab.freedesktop.org/drm/intel/issues/4462
>  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
>  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>  [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
>  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>  [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
>  [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>  [i915#4883]: https://gitlab.freedesktop.org/drm/intel/issues/4883
>  [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>  [i915#4911]: https://gitlab.freedesktop.org/drm/intel/issues/4911
>  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
>  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
>  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
>  [i915#5096]: https://gitlab.freedesktop.org/drm/intel/issues/5096
>  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>  [i915#5234]: https://gitlab.freedesktop.org/drm/intel/issues/5234
>  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>  [i915#5264]: https://gitlab.freedesktop.org/drm/intel/issues/5264
>  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
>  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>  [i915#5420]: https://gitlab.freedesktop.org/drm/intel/issues/5420
>  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
>  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>  [i915#5800]: https://gitlab.freedesktop.org/drm/intel/issues/5800
>  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
>  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
>  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>  [i915#6310]: https://gitlab.freedesktop.org/drm/intel/issues/6310
>  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
>  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>
>
>Build changes
>-------------
>
>  * Linux: CI_DRM_11823 -> Patchwork_105746v2
>
>  CI-20190529: 20190529
>  CI_DRM_11823: 1b87a9522ba4fd2f67837df06e1f7e6d8d23e21a @ git://anongit.freedesktop.org/gfx-ci/linux
>  IGT_6549: 9b9371c8da32533022ad700a7c023b4c3a085fbc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>  Patchwork_105746v2: 1b87a9522ba4fd2f67837df06e1f7e6d8d23e21a @ git://anongit.freedesktop.org/gfx-ci/linux
>  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
>
>== Logs ==
>
>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v2/index.html
