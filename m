Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BA9601F91
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Oct 2022 02:28:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0460210E1B4;
	Tue, 18 Oct 2022 00:28:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1E9710E1B4
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Oct 2022 00:28:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666052907; x=1697588907;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=842zX3m1qAnETTy8pE0z7aqcnreNKpeV5ao/f1MhzFU=;
 b=gYTvYzTdZY44+i3ljtHw46iUPGt4w1ViVFF9g7hRJbmHexjDvIzhrKwz
 x9LNekqUK4tpzI6TvyvVtrx88/vU86qdl0052ibNYUiWmhQBBzvsomvcm
 eNs5TdR3ZRH1/SlNKU6sG1JbSMd+Lr67ZMTsvqBM/58liD3bTOkw++pKi
 vQBfyh6wJ9CYeiKPcFe5gp77JLGCUOIZfWdC1/dew0Wbx7m0kSfNAyC3N
 9nbda9rbK91tc+qu4ilPgc+Awm1WdGiwUgJ+n0XbO4CBdnW5A5aPPPDhN
 XZlMO1paXrBrUALLmsRipgE7aTgzMxenPM8+Mrz702VDVAsu+3qMoP/8U A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="304694719"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="304694719"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 17:28:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="770970760"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="770970760"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 17 Oct 2022 17:28:25 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 17:28:25 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 17 Oct 2022 17:28:25 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 17 Oct 2022 17:28:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LvHac6nye3silAL/gqOQViLXgdbYGrLhLnhqV1kCxm1PWLrc0D8KAXxDo6X6qCokIUcXiX09/pCpu/cSFtY47wW4ZEiclzoI3oAyXHm6SHrujw5++FMRmveGeMRUx0gKsKPj884uRHrv89bUNlILCBwQZmbERdi4D+gkSsIN9JUhYNNS17KWGEQi9xDp5qIqmt1BEwLZqjYBZ7Y4vIlqBXLky7R75a633U8yGRyqeqknyc4CYm+Kqdc8joasC4exg+mvO3ICI9MU8tX3PKeHwKUsU+P15YGykPTHZYhchyxPr1a76l9AEHOQoXpvJwN+jrcZDSFfKBGkFP7xo55zgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=842zX3m1qAnETTy8pE0z7aqcnreNKpeV5ao/f1MhzFU=;
 b=Ty//06d778KGSNP0o3mqdNvyFyZpJ8A5UpiwApspmYaKDOyA7/hdUtF33uz1T2EWnZZHEDF45B93TzaHQ+oTTa4jZW5xdzr1fp3VE2efSbiBCywkyompy5QjW6uV8jV/2vChL9MEuXiYCkMf0Mqggjff0fcHCrx1mGrh1VSTI1uBimCkoZDEE2nGhpvtQYzhzQW+EF28Vv5oTaDtuGuZ40RKNlVH48XH9s7xXlwBV2DTCDrDbEn9JV2CdfnozoNew6YqUP1WXWOpttSB0uKwGEXfbvc3WwGt/TbUyCC/o4JGH0a/XKy41cmqVojMIw40abZsvTFa2xtgarzGR+0ipQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CO1PR11MB5058.namprd11.prod.outlook.com (2603:10b6:303:99::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.21; Tue, 18 Oct
 2022 00:28:22 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7246:dc8c:c81f:5a10]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7246:dc8c:c81f:5a10%3]) with mapi id 15.20.5723.033; Tue, 18 Oct 2022
 00:28:22 +0000
Date: Mon, 17 Oct 2022 17:28:20 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <20221018002820.5niryq2g5uuioj4x@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20221017085525.3898649-1-andrzej.hajda@intel.com>
 <20221017172208.ji2eyhysrrotwo2i@ldmartin-desk2.lan>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20221017172208.ji2eyhysrrotwo2i@ldmartin-desk2.lan>
X-ClientProxiedBy: SJ0PR03CA0242.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::7) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CO1PR11MB5058:EE_
X-MS-Office365-Filtering-Correlation-Id: 178e9f43-3475-4781-37b7-08dab09fa9c4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PIjWWTTm8nrEHQGLN5aK74HZJvPdX1qzAcTxc6RTfQ0wuHcHCo9epPP0LeyEWzOlQdx5PdzNYRw2d2kZgL60jUf8WG/YAOupqD31kWJ4kgY9Z2BDM5gvrlUTT+C0NeYWxk/w4ZTWXmdM1Qtqa4C5lse5Jt2EX4bvf+NYtStEN8qV9QSysENqhJhKF4KWSLlEuuUSOi4Kem10LLqP3M+1p9cc81xqsqFrwb2SHP1ZgWDT5XWVCHSMxCd5G4TF9qVuZQzxcvxOpDV0hXG4ky4MPZumiuwMhe0uSkrXI5Wlp+8+yNCfFYvO49GxFfI4r/bH1lp2SNc5AjOhGlYDQK+dTKV9JVlWLkauLpraMtGthD7K0u7czpHhlpMGP8v0wxabu4Ou9qjb4K6uBZAd6kafO/kM1odrKGGdxR6NZ7SsQXj/eOVb37+n9yn8KSBjt24i3Eu174dPISUG06FRkx1FuZyS9XU1ATPIGiloPBeIvIOM6ICh6ZkQMpc/DQsyTkAnR3vf0LoGgYdMjDuvJE4TxJYLY2xcDQOuRGHbMnSjZ3gfRmCcIj/as67fGcEALwK5N4AxXQOhBawEnGF8v3OFjfqtKTw7uK454MKQ9lmDbAxsKq/yLaPoWgl/66edM10wYs6JFYhBhl7x0klDtgvnjxKjJJojt/bDW1leSTYfsWergriksSo58+4essWfCbUfnccRzUjcfgsB7FfeyG19BQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(346002)(136003)(39860400002)(376002)(451199015)(83380400001)(1076003)(2906002)(66946007)(66556008)(6862004)(66476007)(8936002)(5660300002)(316002)(4326008)(8676002)(15650500001)(107886003)(478600001)(86362001)(6486002)(36756003)(4744005)(41300700001)(186003)(9686003)(6512007)(6506007)(6636002)(82960400001)(38100700002)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ic19S2JEEPqxMrnqlHDzumF92SinY10aYqmM5c1ZYmRHRHdb9Xvfs5U6sw0S?=
 =?us-ascii?Q?97cfxfNJA4A/IhTcZDsDl9msGRDCeESHp3nK3YPLAR9SLswKlyRSD4rtCNWd?=
 =?us-ascii?Q?IEfX8S3NDZ3ow5M0tZhlGk06p+9PTLmcJm36mVoHpwXjP2FOJQZDsYVAgOug?=
 =?us-ascii?Q?L0y+fKYmhqOf9LsNrPWqk/h2e0rSz8b3iH2KmjoLmJcHo3o2FRt7PjJwt+/z?=
 =?us-ascii?Q?dRW4koSYBq0FyCBGQoC+b7u773pqRwXGINqXGN8vIMaxYEBdhr4HNGIr3k/W?=
 =?us-ascii?Q?lR7KdcvOpIWjk0Ap6MZZ1un1RlVcZwXh7JYW8Q/Nb1jmzSwWXOl439FotaGA?=
 =?us-ascii?Q?zA3UzG1VYn27Oy4kTf1ZAyLqplzub29nBg4mYye8paYhlnALlJSaBU/6pa7r?=
 =?us-ascii?Q?dGcR5Bg62h331dSiSENEfJOm2abiWLItP2ls4JdkVMvnIGAwOMZhaAG1qLlm?=
 =?us-ascii?Q?oWYsYy163ptQGN82cq52UgPUdzoXQFVkhnJ1HhknVofl+uJ7IupO0dmgubEG?=
 =?us-ascii?Q?SLU8u+HJYINwZiV/NFJBB0bekzg76+VaQwQHumEO2XjjMuIzOEp9IGllPgeq?=
 =?us-ascii?Q?kvBXZ3jWB1bqjxIqpu5u0gqqwidz+YwBsVraKTFu0JMh4pD9NFqTvGcNzahP?=
 =?us-ascii?Q?Z8ff/Yefl8rtZvfmOSYBnJD32g1JI3juohG6jTKdSbC7TD1OmIfZkEmGAAiR?=
 =?us-ascii?Q?IEuLpTQBvpgHaWWsXPPZZLnUhTgCdgwOBRGIpnv8t+Q2uS8CxrGpc+D3xWNl?=
 =?us-ascii?Q?9CwZBKfYtR6z8vl1GAlkrXMJtPByQ4RLZHM6vFbl6Z3Hsv/8dfZnU2hvsvqm?=
 =?us-ascii?Q?bgecYqcKCuBeRZHjNirKOT/BOe+YjaXbTdovoQ3KZG/HdLw8peoMFL/MQDOS?=
 =?us-ascii?Q?AkDlAMTYVGQnQA+Ys2c0NtaiN1B1FiE1DdvKe2xwiumm2ngNGoMnGsNJQOAo?=
 =?us-ascii?Q?SYwCMDOt+AeFOBBLNotHOqA0QjMmT8QAeYpRGQECyBDgpOxoA9T12U6y6dWd?=
 =?us-ascii?Q?XzXxze2wCwzH0JRv/UQ4L+Zh2zgKq/I5ER/FC5LBYE/XJW18bk4RKCteSybt?=
 =?us-ascii?Q?JtCFHzAX3nEoqCbAb0oa5bdiPRNuuvmoKl6lX8Xu70mSDTUHJ05JRvJCgu3O?=
 =?us-ascii?Q?ofZUgGU6fyzJd3BM/Nk2hOHGiJZnpUVMfKMZnnaN6dV0FzSb1eRmAXO3HemT?=
 =?us-ascii?Q?nuieYUXTRRI4CIFY7bm/huVfj2EW/ZHOyGvdeVERVfmUb6vBGLgAYydovjrz?=
 =?us-ascii?Q?H9SbxbitXmRTyBl8zdGU4XmlXGufX5OXCJ+1GKF8Hv+Ol4MeNCHdKOM6r/x5?=
 =?us-ascii?Q?6LfzRswlZoBSpXSIIN776T2NwWaOiQa0vinSvuZUNcBg39rNto49S5fLm0HV?=
 =?us-ascii?Q?9TghS8ytI7naj/NscY0bnGtDS21UcHEQW0bPopH94Kw2zNLaslF2/+gZCYU/?=
 =?us-ascii?Q?gJJnQwaqnwpqLnbQFYkaC86nuQxgL/pGrGxRPGen/91uhCGaobWjQiJN+tEw?=
 =?us-ascii?Q?4M+abNxx8Jz214cpGjVUxy5QUqzbFgJpuCNx7xM/5/9aQC+cBctSHjCR2zyR?=
 =?us-ascii?Q?zCicuP6kQZHdCoxEdkG38rNZwEdbpRR6TQRXxvUS2fxWa7F6tCG7Gc8x+SrG?=
 =?us-ascii?Q?7w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 178e9f43-3475-4781-37b7-08dab09fa9c4
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2022 00:28:22.2562 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gerr2yVOjeBUl9e5a5rSvgCd6NyIkoYAx1JEIqLXuN3zLoviirf5zrtyMLUSSYkNtnN+wEHGoNQ9rDBlz/aJHFbF5PCvpgqOL1798ZBulqY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5058
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix clear mask in GEN7_MISCCPCTL
 update
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 17, 2022 at 10:22:08AM -0700, Lucas De Marchi wrote:
>On Mon, Oct 17, 2022 at 10:55:25AM +0200, Andrzej Hajda wrote:
>>GEN7_DOP_CLOCK_GATE_ENABLE bit should be cleared, not inverse.
>>The bug was introduced during conversion to intel_uncore_rmw helper.
>>
>>Suggested-by: Matt Roper <matthew.d.roper@intel.com>
>>Fixes: 8cee664d3eb6f8 ("drm/i915: use proper helper for register updates")
>>Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>
>
>Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

and pushed

thanks
Lucas De Marchi
