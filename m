Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2E25A6D7E
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 21:40:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AE6C10E025;
	Tue, 30 Aug 2022 19:40:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 504D310E025
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 19:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661888408; x=1693424408;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=29IaS1b5PnhdDCeSnIpXdS0rH3FOKJyfd6NEg+ijT/w=;
 b=aPz9ioXPlyYUnYYYmO450Mtu99ApUNWwJrqPAj3ZBKdu99ajKfXBX88O
 RkwRPKhoQ0Sj8CpUCljVbTXPBg6uANuCYMDOyFbSdpRpD76YORZYofhqW
 j4ulZCIUssXhDz5fmI1uU4fAlIAQ4PdKCDz3ZErHw/JwfNHsdsfxI8X4e
 crP39+hpRG31ptj2A05FgkY4QAkZf0i4K7xDY3DsvagIDW8OdkomzjQ6j
 tf8BlMPNwwGHP57iQU4w/jX+AKA3mZfd2bCbr2BZCsrm+GDmELVw8nsAF
 vmFDzM1ni4BXz9HOq75v7GWI1ShqR79cgnzB7YLOoxIULa2QzddCY6dlW Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10455"; a="278301315"
X-IronPort-AV: E=Sophos;i="5.93,275,1654585200"; d="scan'208";a="278301315"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 12:40:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,275,1654585200"; d="scan'208";a="641534575"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 30 Aug 2022 12:40:06 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 30 Aug 2022 12:40:06 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 30 Aug 2022 12:40:06 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 30 Aug 2022 12:40:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ii94hfnXhrX664xwBmtARfEG6+iFaLu1sl6HX1wwuVdszchj45UCOIFVEXJaDUJWBCDMfTc/3qPjdiOwXEeLREPcm8a6ETpnlwkfT8TqBvEkNHGTvlORdQqlnNjMp1TicPqB1b4vuuDTQcIQ2nApOez9VFCSR3MK5QA7ycTmbdDwWPBGyfRwrSb+nycnbfhulCNt00Qc9rRSWCHjqPd9+QEpMRPpN3Z/0h5u3CmKuxKvZF+X7At60xPpXeQdjlG+tRFNpD/X82GRMAh9fVtHbVi0TY9doD/+nxOqrOrghkR9GubofR07QfYVSya03Y8DAt5efh/eSl2G6nOjfIhRSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=seUSdWn/s0gKxcPFmmsOMCYXM5oLXgPpOPvkryfPVoM=;
 b=G7sF5RxlRWXgFi5JOQHJ2KV4rFOvIE5cXSeaR0yGok+iRmHjCQq5Jl18vt78cEg688yZhgxFQMKupTAe2w1wIY1pY23xjDdH9xmrcjL4H7WJIGITTalPMFxgzB+JdXtERwTvnYgbeVcUCWIz/BBznfic7+gWBhzmyr2GLWrq0GkblXV3bq8GFsKRQiRHtgxNAofQEtRUiYfYQsh/57jtMPCGDLwZv14xSYjdD+vjB6Ix9ML0cnr+ruPOK/Q2wTkyww0Z2boRFr5oxSgP/5j3k1HkaoFJKvREp9WAkTnqoeT2Rqu6Rw31IUonHJhhdJDlzmayPg+G/Ojk4ZzKVxxGnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by CO6PR11MB5652.namprd11.prod.outlook.com (2603:10b6:5:35e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Tue, 30 Aug
 2022 19:40:03 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514%12]) with mapi id 15.20.5566.021; Tue, 30 Aug
 2022 19:40:03 +0000
Date: Tue, 30 Aug 2022 12:40:01 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Yw5nkcwfFTtIDpzv@mdroper-desk1.amr.corp.intel.com>
References: <20220826212718.409948-1-matthew.d.roper@intel.com>
 <166188213544.27288.15851254437301464426@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166188213544.27288.15851254437301464426@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR13CA0177.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::32) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cf681417-ed04-4163-65e6-08da8abf6f2f
X-MS-TrafficTypeDiagnostic: CO6PR11MB5652:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fgRVeUlp6p5sRiXezpCvH5Hn7zLoAv5cOICicmtvl9dqPnNh6EHPnaiWJeSeENc7AMrj8ViRZrtCsFnxhe+kUofArD1Sr5gGCHGkl41ix309pvtvMqk9AEnMnNt6QE2l6ibMlNJ6OMMeQarEbluzvLX03QdDsnk35XwFTNKrPIRAmLnKCY39qpQRry5xLchqqHaMkTIdJ0Yme19WJvWEjMFU9ZkpMaPjjg96mFbGgjxmTrO3YwroHliruBTMjP1IyLDFqM5hRkhGHzNjGaWwAWAqYEaX7ad/wnXI1aI1p7bF2uJB9qr+OFCre768dEWMyzkfwwVPB/M+mAnjmREOPrRurjPjdITANbO2Z0qMyJrV/ncI0wWaEgfCJ2NpcHju1BxyVlK9lGG933ELllpfp4pWUf9+SXUQt3fdsFeh9YTlIYNBdmRCcmbLJDIof6oLwVJVGAtdd6l0595LhWlKwMqs9gNoMdUuP9FAycYEr+V4FknNMxcs/jNA3PJrymmnSuoBZy9z71sxRJCac10PjSXMK71wEC8086QgLiP5fMCkz/lXO7VvdeA/P9Y+x+DmO+4NuSOi92T1prhsEC8ka9pIzKEzIZyxTPZHqQvRmkCXca1zODRQ/DhbVONTLPe2mOWu5Hh9MHsodSYQNpaV3yyvh9nY3ZCnsAVDoBTY/XCd/pOOwmhoE3WX0fcACrG3yXIUQhQk68qwKjFgMV2HwnPZSALWDzT0wwvGRJIrYIQHZ8eyUiTv6plaH1qLU6Lyp6KnZbl9pqEhmkZhiJn7E4Mm93sbUB2LkBSqycphyTnndeiBw+qBP0O1SSa9jXLL
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(39860400002)(376002)(396003)(366004)(346002)(6506007)(26005)(6512007)(41300700001)(966005)(6486002)(478600001)(83380400001)(186003)(8936002)(30864003)(2906002)(5660300002)(6916009)(316002)(66476007)(66946007)(66556008)(82960400001)(38100700002)(86362001)(13750500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IhgB5evrDMDSO7mGaG46/mJs3Nzs1DEudDgM2xUrkRG0+VDAeo+CR+NGeGDe?=
 =?us-ascii?Q?KH1NnG9+2POe2O9DnB2FQ0mdXmVpYCg/ssML0vwyAbjTrYebs2Pe/P8WGu9l?=
 =?us-ascii?Q?5eKGSQKE+rGnpZ27xrCLUG2l1Qxm4FQODViX9j8OlGj/CoghFOWva0i+5hnA?=
 =?us-ascii?Q?td72vFsOTJIU+U5EGpNguUvtLjloVLXDwbj3PMy++pQZYfR5sUVz7k7aNoJi?=
 =?us-ascii?Q?dBJv4odEl310mbY8VNrd9pHRmiXrILl1relMPJlc9zwH7Lc3fvaM6ZUEHLun?=
 =?us-ascii?Q?S/tkNr7UoHJh7lxYN5HgAHiS/nQ45VQSm/uir446tkJFCg1RSqQOFjjaj671?=
 =?us-ascii?Q?7xfYyThPf3y6o6pWfA5aqqikjqZe/wSgJl0L9Bw86hh2XkxJf1RHDAr22JW1?=
 =?us-ascii?Q?UfR5MYsI4M3BuU0Fn/GBev0I5YIgsPn0Nc69gLcf/6ck1XF6Nu/ObLRqe43Z?=
 =?us-ascii?Q?oZDJy6TY0t/THGgAXjw7DpRclhMj2Utf9NqoEnWTAN5A941N4HuidaoE/L8N?=
 =?us-ascii?Q?n2qLLJW+dqUGYPliY5qScQJapSZmL9+XvARJoNYO9Qu/PQAyowg8MhN/wSvP?=
 =?us-ascii?Q?DRTHmbR1m1fUXsSFbM5LoSkNzGBvKRJNRRF1onn7QwlLW/RVMg5ONRtX+YGf?=
 =?us-ascii?Q?CEb9JQEdJWSLIqRhhOb3erILb58vkg2S0BJpswQ15FxHoFySRfS2OMuksx77?=
 =?us-ascii?Q?ni/dOpURBk9qb2+cUNDqw0u4MEUcUv1jG/uUa/QvuYG1+H9+GD7t0ae6E49S?=
 =?us-ascii?Q?TL8oDn7oqbjqnoLS21s+hjldZPJRW/xIkVAh1/HfHjAqrpRjrIATOviWcwpt?=
 =?us-ascii?Q?IW4jx58NnxGJzeUFPGHJTko5Dcp3mga6/L8tUzE7azCX9lhTauYmdJxHXOaO?=
 =?us-ascii?Q?LQxq0/7Mgzpd7MouybIvPqn5mgpdlvLwA7isqSDI2RxMCmnRINa4gQ9Sth6I?=
 =?us-ascii?Q?WB08XVSRqMHbGvEbkBQpMzcOa0y1B++lGFNDW81WUIbRUn9o7veiBYUpHez+?=
 =?us-ascii?Q?WciyP4Te7QExUtJ0jPc6wm6ViVB4+MvRJP6B2Vglcq3KPsCqGncVV18ou2RO?=
 =?us-ascii?Q?aCLoxNndUhtiEDKFdjg3FOxZ49r3GbAYvZZHgXFtkyqwvbKWVwrJZ+ILH8V4?=
 =?us-ascii?Q?l9FWIrhAB8FVE4PVgLpOv3HVre730Fr6bbOE5H4k6hQnuxGmCJeBG7jSOCw8?=
 =?us-ascii?Q?ue3TuNkWb1FhNn9R4IUVB5zH9m7EOaFYFA5YkR2wOx6raYS+6WGfiZvydrFe?=
 =?us-ascii?Q?iZQfLsrwO71kLqk8AdIAo1+SEebVfyccxff/3rLXJ6cdPNggxAgqfd3aUyCe?=
 =?us-ascii?Q?/wsliqmvMcsFakFZsdR/pptJc/75yI8D/PpyULNP7RnUN7wW/L30Qd4BsXt1?=
 =?us-ascii?Q?a1R2/rz+zFLHTNcd/G8vaIhdHZY3D1Tb5GrPnpwuoTQQK61XKViGZHF+B66x?=
 =?us-ascii?Q?W72x2bq1vbB0Ws2MN1tYsoAbZzmutTucTh7ZWbzcSh2UaZSm3/gYOfzur9We?=
 =?us-ascii?Q?5TD9K0YHHFGfwxYBQi1nAB/Vr9lq8eKvd50eyxrVKebWVQrm73cNaR6OFkBt?=
 =?us-ascii?Q?5I7W+8piAcmOq9M154xq2kM20zXEvtqQiGCOBqhIVVI2ld2wYOFib21gLQES?=
 =?us-ascii?Q?4g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cf681417-ed04-4163-65e6-08da8abf6f2f
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Aug 2022 19:40:03.6828 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PkfyTSUCMriHbZpsE8CgfQnhaE/VQG2RRPmqG1m5u7t2GuDr075GvguKm8Rrm91i6s7BXw+Vuntj+UQaHP/nxZvHKoXH3Oy0G/Tmy7SQ2ns=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5652
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/ats-m=3A_Add_thread_execution_tuning_setting?=
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

On Tue, Aug 30, 2022 at 05:55:35PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/ats-m: Add thread execution tuning setting
> URL   : https://patchwork.freedesktop.org/series/107822/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12035_full -> Patchwork_107822v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-gt-next.  Thanks MattA for the review.


Matt

> 
>   
> 
> Participating hosts (12 -> 12)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_107822v1_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - shard-snb:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [FAIL][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50]) ([i915#4338])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb6/boot.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb6/boot.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb6/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb6/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb6/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb6/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb6/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb5/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb5/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb5/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb5/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb5/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb5/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb5/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb5/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb5/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb4/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb4/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb4/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb4/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb4/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb4/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb4/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb4/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb6/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-snb6/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-snb6/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-snb6/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-snb6/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-snb6/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-snb6/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-snb6/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-snb5/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-snb5/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-snb5/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-snb5/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-snb5/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-snb5/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-snb5/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-snb5/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-snb5/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-snb4/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-snb4/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-snb4/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-snb4/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-snb4/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-snb4/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-snb4/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-snb4/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-snb4/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-iclb:         [PASS][51] -> [SKIP][52] ([i915#4525]) +1 similar issue
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-iclb3/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-glk:          [PASS][53] -> [FAIL][54] ([i915#2842])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-glk1/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>     - shard-kbl:          NOTRUN -> [FAIL][55] ([i915#2842]) +2 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][56] -> [FAIL][57] ([i915#2842]) +1 similar issue
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_lmem_swapping@heavy-multi:
>     - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#4613])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-apl7/igt@gem_lmem_swapping@heavy-multi.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-kbl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#4613]) +4 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl1/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-kbl:          NOTRUN -> [WARN][60] ([i915#2658])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl1/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][61] ([i915#4991])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl1/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-kbl:          [PASS][62] -> [DMESG-WARN][63] ([i915#180]) +1 similar issue
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-kbl:          NOTRUN -> [FAIL][64] ([i915#454])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl4/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][65] -> [FAIL][66] ([i915#454])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - shard-kbl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#1937])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#3886]) +18 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl7/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_dg2_rc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][69] ([fdo#109271]) +308 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl7/igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_dg2_rc_ccs.html
> 
>   * igt@kms_color_chamelium@ctm-negative:
>     - shard-kbl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [fdo#111827]) +13 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl1/igt@kms_color_chamelium@ctm-negative.html
> 
>   * igt@kms_color_chamelium@gamma:
>     - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [fdo#111827])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-apl7/igt@kms_color_chamelium@gamma.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][72] ([i915#1319] / [i915#6637])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl4/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>     - shard-glk:          [PASS][73] -> [FAIL][74] ([i915#2346])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
> 
>   * igt@kms_flip@2x-nonexisting-fb-interruptible:
>     - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271]) +41 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-apl7/igt@kms_flip@2x-nonexisting-fb-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-apl:          [PASS][76] -> [DMESG-WARN][77] ([i915#180]) +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-apl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][78] ([i915#2672]) +5 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][79] ([i915#2672] / [i915#3555])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][80] ([i915#180]) +2 similar issues
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>     - shard-apl:          NOTRUN -> [FAIL][81] ([fdo#108145] / [i915#265])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][82] ([i915#265])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][83] ([fdo#108145] / [i915#265]) +2 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-kbl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#658]) +2 similar issues
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr@psr2_primary_blt:
>     - shard-iclb:         [PASS][85] -> [SKIP][86] ([fdo#109441]) +1 similar issue
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-iclb3/igt@kms_psr@psr2_primary_blt.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-kbl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#2437]) +1 similar issue
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl7/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@sysfs_clients@create:
>     - shard-kbl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#2994]) +3 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl1/igt@sysfs_clients@create.html
> 
>   * igt@sysfs_clients@sema-25:
>     - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#2994])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-apl7/igt@sysfs_clients@sema-25.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [SKIP][90] ([i915#658]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb6/igt@feature_discovery@psr2.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-iclb2/igt@feature_discovery@psr2.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@vecs0:
>     - shard-kbl:          [DMESG-WARN][92] ([i915#180]) -> [PASS][93] +2 similar issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vecs0.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vecs0.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-iclb:         [SKIP][94] ([i915#4525]) -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb3/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [FAIL][96] ([i915#2842]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [FAIL][98] ([i915#454]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-iclb7/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1:
>     - shard-apl:          [DMESG-WARN][100] ([i915#180]) -> [PASS][101] +2 similar issues
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-apl6/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-apl7/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode:
>     - shard-iclb:         [SKIP][102] ([i915#3555]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_psr@psr2_primary_render:
>     - shard-iclb:         [SKIP][104] ([fdo#109441]) -> [PASS][105] +2 similar issues
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb1/igt@kms_psr@psr2_primary_render.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-iclb2/igt@kms_psr@psr2_primary_render.html
> 
>   * igt@testdisplay:
>     - {shard-tglu}:       [DMESG-WARN][106] ([i915#4941]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-tglu-4/igt@testdisplay.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-tglu-1/igt@testdisplay.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
>     - shard-iclb:         [SKIP][108] ([i915#2920]) -> [SKIP][109] ([i915#658])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-iclb1/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-iclb:         [SKIP][110] ([i915#658]) -> [SKIP][111] ([i915#2920])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb6/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl7/igt@runner@aborted.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl7/igt@runner@aborted.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl1/igt@runner@aborted.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl7/igt@runner@aborted.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl7/igt@runner@aborted.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl1/igt@runner@aborted.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl1/igt@runner@aborted.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl7/igt@runner@aborted.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl7/igt@runner@aborted.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl7/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl7/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl6/igt@runner@aborted.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl6/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl6/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl6/igt@runner@aborted.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl6/igt@runner@aborted.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl6/igt@runner@aborted.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl1/igt@runner@aborted.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl6/igt@runner@aborted.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl6/igt@runner@aborted.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl6/igt@runner@aborted.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl6/igt@runner@aborted.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl1/igt@runner@aborted.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl6/igt@runner@aborted.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/shard-kbl6/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4338]: https://gitlab.freedesktop.org/drm/intel/issues/4338
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4941]: https://gitlab.freedesktop.org/drm/intel/issues/4941
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5982]: https://gitlab.freedesktop.org/drm/intel/issues/5982
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
>   [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6637]: https://gitlab.freedesktop.org/drm/intel/issues/6637
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12035 -> Patchwork_107822v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12035: 94f8134b5320a43800ca3ca50d1c387d66f75c6a @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6636: 1298b5f0e1b3e010657ffba41d2e775fab028e08 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_107822v1: 94f8134b5320a43800ca3ca50d1c387d66f75c6a @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107822v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
