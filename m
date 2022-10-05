Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE9D5F583D
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 18:24:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3340F10E6DC;
	Wed,  5 Oct 2022 16:24:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B9EF10E6DC
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 16:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664987044; x=1696523044;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=JgDRHb6hiKkBJ7lBhKeD306ehtPFn0zNHLRN6MWpTko=;
 b=Vtx4QBkhOX2fFQt1df41ITyNH+hpkwvrqMfJkqcqNlJact7Azx+FrcAQ
 Z9SqHWKIizce5OTArHu5+GfeZNSgF6EKsI6dQoC3dRj71AQrjlw0Ac1+w
 VglbNNCfnLqzutGX8suCCejU0GrfRR2cXLVANoIgwEIPwlR28CDJ80ZRs
 DdAe+5IU+/mQ//xfFGOK2T3z6FxpjhuhlRt5LrYWgkC33Qed8Y48X6oOM
 3UJ4UEtyxJHRcJ0vAQJhXzH6avzxCPkmE/rKarpesYdZw04pMCCCyl852
 pR9p9h7xy3VWEGZ4WDxZheWI+Doqzw3J8sM29/a6KnMphYzCLu78ny/fD Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="303179974"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="303179974"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 09:24:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="655222636"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="655222636"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 05 Oct 2022 09:24:01 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 5 Oct 2022 09:24:01 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 5 Oct 2022 09:24:00 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 5 Oct 2022 09:24:00 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 5 Oct 2022 09:24:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dQnDb/S2RvRCZXWpFxA86JSn4nvEqpsD3up2t0JSgYdlMq5Jt/Tc/HakWmpbSg/LiiU3h4teqzfAtNbtHCApFFj/fJfMrdagZ7Uesf9sFu7ucz0A35h2/2AQpjUy1e+zBkeS6rEzY9+RN//iKFtmQno6mS8Wte36mmvMHjUq9OtFpda3R9Ubsa6gynn8yD6arpyL4o6SvgBEu/0g040TgVWTRiYU3iJo4QAMMa4yJrgycZbtiKqsOt0ftZvMqkb14ac9fUbfR7mgFkGee13ZHGSBbjNP78GgoLaYkvMLcBytdesmRKZehlJGuPmxXMHV6sMTpeW3xh7EynW4P4NSdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+Zsjw+zkPusdDkCI9Tv1N1rTGEZx19rLfsnI3uOwAQs=;
 b=kHuB4CJdMcjRrcyAdOcBDqmFy1ZAMBrVbp/as1Y4lanHPUsngRR0hWCtuoIaGego40ASjqqhYdGBkxGq1BF/QN6eNtBDVnnl3CdZzgjQb9mn5nPVAVdRh0zBto7zAwCLnAQUHdbWsHii8ZIpDuZKn2OjW9rTTSLTTfYUgLp19bI6MDcBUnL3upkchLRarKwmovmQcOvD/PeM49qrGBMmTjT/8lb+2/Nh0m3x4dCKHu/DNy6mLwlvz8krMQfS3K+cULclkmTqEs0rPaleUTOC3TQKWZyjBl6J7Ahm4VJTYccmMb5mqTCGnqKLiWAxoeGFb9T2fAjH2JFu3qSEjEKb7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CY8PR11MB7337.namprd11.prod.outlook.com (2603:10b6:930:9d::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.17; Wed, 5 Oct
 2022 16:23:57 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7246:dc8c:c81f:5a10]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7246:dc8c:c81f:5a10%4]) with mapi id 15.20.5676.031; Wed, 5 Oct 2022
 16:23:57 +0000
Date: Wed, 5 Oct 2022 09:23:55 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <20221005162355.qgj4rdyiovedswfx@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20221005153148.758822-1-matthew.auld@intel.com>
 <20221005153148.758822-2-matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20221005153148.758822-2-matthew.auld@intel.com>
X-ClientProxiedBy: SJ0PR05CA0134.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::19) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CY8PR11MB7337:EE_
X-MS-Office365-Filtering-Correlation-Id: 1687fd77-92cb-4bd9-4b3b-08daa6ee0091
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jFS37YjL8fUrT/rK8MERMq/jc7nVQGid0wC41ZhnvmxdK8c6m7ty/6sf3FuySWqOjShSjC7yWLSOf4eU8sIk4QA9ad8P5GIt3F1WHXf/QJt9T0fZEY64vdXI8FdVRVGU+zrFsYdZEZnAigy8zd/uyZhAHjXaXDWmoSruBKyWr3Nb6GekpNXJxClS1WdtIpCcoWGVWCh1aarMnRlhMcJDSFRdyHmbXhgpdzbEDEu+fH+4ZmCbEx+sHYHeGav4BeR7OEHctLHGQOgvtRF6zZN8ayUFPDzFfsSZO/kqDIuO466FLUMsqyHHa9dHlsnOlMlZuRtAAqX+cFFwzn3qYXed0vtA3mtZssvpkIoRjVDO57VlQqOZyqoZGoZ8OmD7QSqKEdNQHbKmr7SYvFe9sHB9UlGM3Uulf5uJjOIN/DJxyth8Ml1DfpWVyDHEwt+pUo+xsjt6UkvkSwKEvTDxHZKVpOYf+CicRiptFsQrzFLm4nSIbeIZeEzZUGT2PeZBa+GF/dRnbUi5nKoneb4l5d732gnkiglmFlnaNd2/IckVpwNRoh2C+40tO0BDboF9vpDmfPWLocUG7UepBwwa9HSCWXK6UYokH8EeFF6+ClcU03tv3PK+UuzZ+XNzkC0Er7n72L9as4fig15BXu89XyZKaBUuR1EjckSRz+Vz1fKd650=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(396003)(376002)(346002)(136003)(451199015)(66476007)(26005)(6512007)(9686003)(1076003)(186003)(4326008)(6506007)(38100700002)(36756003)(83380400001)(5660300002)(966005)(54906003)(66946007)(6486002)(316002)(82960400001)(107886003)(2906002)(6862004)(8936002)(66556008)(8676002)(6636002)(86362001)(478600001)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?THmhKA1kFCaaEaVVDq0iYMG544/MWEoYqWYgHg0DbGHHIqDfdHGR3PPPfAXv?=
 =?us-ascii?Q?pzuz9yWH/L0loUpKTvID2AEX/cl13EcI+d33FEyDK3cfWhTgAu6cUQO4Mxfb?=
 =?us-ascii?Q?w77m/6tt/AB/JjUW7OswlL3VAF6oVc0hJuxH8FdPry3HaD1tmBwWbZAENTMY?=
 =?us-ascii?Q?uCE3Rsg6xW4mQ8WxartEsoO461qTukgED3eVlht8BNxQOrL7obPS3cD7F0So?=
 =?us-ascii?Q?ArVd0fXLOumTzyCXVIj1nBjp09+8fDIgGcM38OMu5+uZgvK5Y4FxFeqMzKtu?=
 =?us-ascii?Q?vxWYbxg1zfFxEjAARC3CyPi3bNQdbUwW8qNuuZHbVaO2yleSJEno6EvG38Cc?=
 =?us-ascii?Q?PhxLVVX1qMcuBmoNAJVkPPI1eJ67vvXTBMuQggSZ3nkRBQbU31FN4VdaLe10?=
 =?us-ascii?Q?qgij+GbqVVwEEXFpQBn4Zy/SFYlhKbE06bqv7+87xsFpT1AAXhj/HOllxl7V?=
 =?us-ascii?Q?1nthvIZZ9GVcIEy+z/6biLLrRw1QP3++80TNKguEq37VPjsuNKTyMrC/XXKy?=
 =?us-ascii?Q?LwsNbzVIk7ycK1a8A0Jh9G/Bg9euT8TjgmWX5cMfMOzFegK9Sj29+OKYsRcy?=
 =?us-ascii?Q?LlThbuZA8VGfJ4he21X/ZrZTpAWpxe2uwt2IeUX0UXUKynRj+QnFGa8h0es6?=
 =?us-ascii?Q?3vYyuCVQB5+Q/yGeXx9mx831WOxuaR6aLmFjwtZKrwNaMuetwDiJX/gbrU1T?=
 =?us-ascii?Q?//lVwzSkIaVxVRgN6hKWWz+juIpK7zkowPtC+ipoA6JPB8UZhubOCdq6Hw54?=
 =?us-ascii?Q?2dovmMjhT6bFdXwP3bZBOK1GYOzwCiYjqv6j8Fn0Ewh0w2grPdXBe0EnkoKJ?=
 =?us-ascii?Q?WQ4oDBI9Lqbnv0+5hls4TXrm/ov38W7gPDilQ8f1qhtLunYUx/z1Tjd1aFF+?=
 =?us-ascii?Q?OSrYZm8880csDAJOGxY33HllknIbID72t1tBzitelh0ozUKEr3nXfQzmJJSd?=
 =?us-ascii?Q?hARMyNmUf5qwYaxq9T/CVR6mpjVCtjA0ogoexVZgdyruxd399ctgiLiLFs6N?=
 =?us-ascii?Q?FMVcG25pZnTW5vW12oz+lHC3IICI2dZ7lzYCZuOpHvVxWVzzIMMtKn9FTAxv?=
 =?us-ascii?Q?AW4qkB4/M4NFRmCo2i1wt2vAvRItb5cYlO7QkaaZ+MkFcxZ0O8nxaR91uV4L?=
 =?us-ascii?Q?iz7R/6vNBAEDrpFHDpcmaex5r3LMAuZUWC0ITOCdnxWzWh4AgXwujdugroEr?=
 =?us-ascii?Q?N9Vw5dQTod4VijTL0A+Hrs3VA0XFcBiKprOMEYhbK49WUzkFkOajM3dj17lH?=
 =?us-ascii?Q?oSZPBK/4566IZdMIQbnH8DfjnjoQj+4m79V+2QascrJpf5qPvpZaK3csN1R+?=
 =?us-ascii?Q?V32Y1fuyP+udmaJbVIr6wgbWOo5B9xNJ70IgrDUA176Uz8NC1z6K3mqyqNDk?=
 =?us-ascii?Q?nzGD+BSEbwUIsaO0iPotUO4M4XHVvfrdjtCbTcqqlmAsCIi1cLxRDNLMFHdx?=
 =?us-ascii?Q?U0SsfXfR36UUsiKVsOH/Go2kb7qGDkEDIwR9etJYIe4yH/5hpo6wyyYAT2qp?=
 =?us-ascii?Q?B4gaiaWl4FjBLtRSYQ2H9hj+PGsg6WVPkRTVVMY5N1EZiCu0gYf+u/z+PevA?=
 =?us-ascii?Q?mZ/LpCMoZtCO+eHl/o4ookCfZN5vI97KKVn0nEbtBipL4MnmE2tsIQuA2rHU?=
 =?us-ascii?Q?6A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1687fd77-92cb-4bd9-4b3b-08daa6ee0091
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Oct 2022 16:23:56.9701 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2IYup0wEGTpv2iCWFbnvYXXb4XbyK8uKgvYH+yKWKfSIyirlAsdaqauJxFmOM5iBW76XOzLEs42PxPXQa2o9k9Rx2l1H624qOiLlPlIHWEA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7337
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: restore stolen memory
 behaviour for DG2
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 05, 2022 at 04:31:48PM +0100, Matthew Auld wrote:
>Restore the previous behaviour here where we compare the
>pci_resource_len() with the actual lmem_size, and not the dsm size,
>since dsm here is just some subset snipped off the end of the lmem.
>Otherwise we will incorrectly report an io_size > 0 on small-bar
>systems.
>
>It doesn't looks like MTL is expecting small-bar with its stolen memory,
>based on:
>
>  GEM_BUG_ON(pci_resource_len(pdev, GEN12_LMEM_BAR) != SZ_256M)
>  GEM_BUG_ON((dsm_size + SZ_8M) > lmem_size)
>
>So just move the HAS_BAR2_SMEM_STOLEN() check first, which then ignores
>the small bar part, and we can go back to checking lmem_size against the
>BAR size.
>
>Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7007
>Fixes: dbb2ffbfd708 ("drm/i915/mtl: enable local stolen memory")
>Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>Cc: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
