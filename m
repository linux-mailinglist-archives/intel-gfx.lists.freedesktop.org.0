Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD20A459DE
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 10:21:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AC8110E89D;
	Wed, 26 Feb 2025 09:21:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QJksRzMs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E584A10E89D
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2025 09:21:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740561673; x=1772097673;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=F7+Rzr+X0nAGxTFzSuzu7/hl/yagtk05u+/Dt/Vq93Y=;
 b=QJksRzMsdqD8nhocLTKBCTUqkQteMl3x6bAxwkUUEqy/B0SFtaFbNmC/
 K/hSPDDW/CmtyFSIr3YSp2SHqkUJsaAgTba8Eaxebn7ftuu/s7gyMcRX9
 Y0CX2r0E1x5yj1tmypskGDduKGxBr7iQyHPjjCQOLLUa/lkYMGWL5K9Ca
 eycV2qRlOqQpdR3k5js0IR7/a+l1QZNyH6m1R9BaWy9QHJLOrONNYPgPj
 u2ABkVzL/puPppmk9tDymgQS6AVP+6w7xbRNiv0CjCEHenwl3xtlQsKHp
 9M5QcVjS5m6OMJ11cryfC6mXGkKRXFMuh0NBjb/Tg96fQztNQM0MZ2R3R Q==;
X-CSE-ConnectionGUID: FPmhY33uRrCGysieCTXQyQ==
X-CSE-MsgGUID: 3FBEBgP8SnKXXVLHGoOy6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="41242850"
X-IronPort-AV: E=Sophos;i="6.13,316,1732608000"; d="scan'208";a="41242850"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 01:21:13 -0800
X-CSE-ConnectionGUID: Q5hcUyqEQM+Fvcw6EYEbAA==
X-CSE-MsgGUID: hSkdblrtTqyfQiiO4oFZ9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,316,1732608000"; d="scan'208";a="116847126"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 01:21:13 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 26 Feb 2025 01:21:12 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 26 Feb 2025 01:21:12 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 26 Feb 2025 01:21:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cePzGu4ndIfwKGNH3JzL2mi9Gn780yXOLzalDgG2Wvmb2OypWcGbXqNsSo8HWN9DpXVkIa/CSCypXpbgm//pjpiU0xBuh1cEmU8ubYyNC16Uim3qZCPaJAuKUa7EPa2P18Lq7xXXiVrWMqiAaeGEy57q5nQL1O/Z7UEF7edDmt07lj5k1k86dmzz1hP/PbyjnJvyiexEsDKwOD2zcbktLicctxGfg59N+r9HgO2eNRRLyjblXKhqZ8XvWnYjgSuhMvyXWPupfh8rPDlJ00rWXeWo9veXnTTdR64WSwTN0J3oRXg//gjoerDcKTeihucq0fi6DGxxaVo4m0dSGyjW5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xznYA4rt2M0EJWr6g7uCeVCTTH+O7kbPC/DcOqvM1E0=;
 b=ANqhkwEWIxexTcAdXjrEiYKpw9RcWoe1A7CNSKvWu1npIWubClNNIrx8Ody6FonZB8Va8m6c5gIEWdQ1PFW96zZb6Gm4RfhXbG2ZyPsIuu4xI2sSCFi2WDHmAj+LvXDo9J9ZQrmz3IhYg7mOZ3dtRXYQGXS8jI+Vqor4zi163oHdYc5GkTiZD+JR59CUXAVg2z88OcHrE0HAxEJg5sQ4co6PvcIi8JRy88lCI4bWygkRxxWgPwuOwCmItnktradbLZryTGggmcV9o6TUwpCSLZnFziwTTqv1PB33oMN+FjPgvwLzLWiz6mtiXe8eKPp3xYtfx8/rLgFND1so7UWZ2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB2640.namprd11.prod.outlook.com (2603:10b6:805:56::11)
 by SA1PR11MB6966.namprd11.prod.outlook.com (2603:10b6:806:2bc::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.21; Wed, 26 Feb
 2025 09:21:10 +0000
Received: from SN6PR11MB2640.namprd11.prod.outlook.com
 ([fe80::4b8:af61:4cfe:d6fa]) by SN6PR11MB2640.namprd11.prod.outlook.com
 ([fe80::4b8:af61:4cfe:d6fa%4]) with mapi id 15.20.8466.016; Wed, 26 Feb 2025
 09:21:08 +0000
Date: Wed, 26 Feb 2025 09:21:00 +0000
From: Eugene Kobyak <eugene.kobyak@intel.com>
To: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] i915/selftest/igt_mmap: let mmap tests run in kthread
Message-ID: <ifeeo7wln3mwzdhy227tzzhj4y6rmgva2exsvs7bhxeyv7mwm7@rat2xtrxigmk>
References: <mqzn3acyfarzlst3tt3mh5r4bvz4ntjkz5a66pip7qmm6hslb2@qc7g7j7q4z3y>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <mqzn3acyfarzlst3tt3mh5r4bvz4ntjkz5a66pip7qmm6hslb2@qc7g7j7q4z3y>
X-ClientProxiedBy: DU2PR04CA0345.eurprd04.prod.outlook.com
 (2603:10a6:10:2b4::16) To SN6PR11MB2640.namprd11.prod.outlook.com
 (2603:10b6:805:56::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB2640:EE_|SA1PR11MB6966:EE_
X-MS-Office365-Filtering-Correlation-Id: af28c216-bb2e-44e5-ac3b-08dd5646e707
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?58HYNDqicHbyTtsJTRz1h0euqrbKBM4huD3FBduNwMx+42C+Q/auEnbPwsL5?=
 =?us-ascii?Q?zmad3oDy/bJeMyKuFNl/4vve6CPV5tHX3FxDm+zcMMqBh57NGshVVxlHyn1z?=
 =?us-ascii?Q?ruQazh7AHuUDTe2ya1B12Brot2GhK3TWZt9qcHiYNb5yCp8R2VDX+qIQQWtC?=
 =?us-ascii?Q?veD1gurYX18+M4LtMup0rbxTA1lGItiLgXXUpAFGC8pN2KW65kEeUUL0Umuo?=
 =?us-ascii?Q?frOl7D5uX2dLcAprBI+ejp+mBjoGsPCPz26nKGOY2JUV2sfCYRFCiBe0VZa3?=
 =?us-ascii?Q?vEoJSjQVaJm4zNqMXbNrE5iS7NMln4DJk4aY+E15DTp1NR2bmcWeQ8xPfS2j?=
 =?us-ascii?Q?XIto/8vQEKImAlaiTHPBg4B6yST15taQWEFo7c1xiIX5zjkw0dafhLEPOdzg?=
 =?us-ascii?Q?KCztexTDuV29iwoRM6DtFYltFwW3UmBrYlsh0rYHPPOXLIxrUHAWZba6GiSe?=
 =?us-ascii?Q?uc83xnBy+KGp0395gyLs0VKt8kHFozHtSPPoO3+P91+ozeNiKYKw2Ft+NW87?=
 =?us-ascii?Q?yHv896d06kItb50Ohrb8oeuC5CgNwAydswlX253z/WLL7iK/O/WBY4KyuCYh?=
 =?us-ascii?Q?5CYu0CXqQS598VouKjo8DYRtsYvdBzYBsDMSFW8gCeFLRBEoXkPHQeQSZ+fI?=
 =?us-ascii?Q?WPr5OfcFIGRjQBBhfoOxK5mhtrLm6/Weyf1BSVogBn6d7hcr2W2r+uUEwG0x?=
 =?us-ascii?Q?yRngGzDyDi5mY8nxyM0hrQRHUjapJx6M3psIT5AFx2Jdkq7aleVoc6W4Pgn5?=
 =?us-ascii?Q?YBPJ9S7s1NGU6rnOvJgUWx182P2k70/JK2q2xgZHKCDahqhWxbSkKBxR4h1j?=
 =?us-ascii?Q?ktrNPfeUD/+vh1oRpP/nCrJzCLv4SKXtTpsRDrI2e/aVx3VewJvBYWii+6Pw?=
 =?us-ascii?Q?gqZodoAsYYG9DrTgQI5+S4P5yk2iUdOdbS0l2ha6hm2pXnpVYUyn/J0MnZz/?=
 =?us-ascii?Q?wJapMpp5fezjRwBN+Zbge0ZaV//E77I/t/CWEmztxoeuK4wPwJkazuVvvXlF?=
 =?us-ascii?Q?PmZ+ugCVkojl7YZVgGqzmDTx+3QwiWnzX4g6pZClXA/+cTOD7hSjXdLqnlwB?=
 =?us-ascii?Q?GE94n9LBl/UrkCR+5fV+at28hVg/yM1SPPewrTHFznB0D2UboEFzlL/ZH2E2?=
 =?us-ascii?Q?xMAQ4KpzVIHqke3GfGvA6+FaWRj+3576CqvQKt7qcF5i6B+GVAodFznKxsTX?=
 =?us-ascii?Q?cUGWbtU1H9VHQwpsFF0LLz3K+RX8F5a/BW78eXkE+bPTd7lNgajg+TQIlU6h?=
 =?us-ascii?Q?KlTKXC2+w2Y/F1PtdJJ7vJFQkWyaJIj9uScqBmuWQBmUiFRzYZU4y45IgGwY?=
 =?us-ascii?Q?Cz3nSD6SmEHr2vJXoH9eeQK7fDL1+8dXd3KbxKuQS4cMTBjibWD1T/DCUjoc?=
 =?us-ascii?Q?ZfAmDq8YuZeO6ev52nLi1ZKGYfJB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2640.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xOxWpTJ3p3FDphevjRZ7a6JiVO49ynnuyA4fp6/OIFHGVTTxUYwG/KYFs7ao?=
 =?us-ascii?Q?cIRgTC+AQa+2AAYlO/w8O91+A+WHAEnQgu0b4NE60CL03/kVuqAS0H+/aboZ?=
 =?us-ascii?Q?/xAV0FRYnQvnehvq8mOZsi6MkNVQDQZ6zRfOHmLU/Kp4v8on6i5bdsoKuuiv?=
 =?us-ascii?Q?DHel7TmLais/7mwhGcluqwI+XTqv3+UaF483je9l0EJ5ksvsmdpiAaB7/wug?=
 =?us-ascii?Q?f9n0qczFLzZi46Z/yE7ykA3HTfpzEoycoa1yQ79vRWY3BZM2tHHENHCQkNIb?=
 =?us-ascii?Q?Tt9efP7gzibVXLjlxjhvWAFvKrl86Gbv7fGujzdvnMaokQvySnj3Bz2fHLlR?=
 =?us-ascii?Q?nVXFy97LI1ssAV5mTosvehYZHzRKy8UEJnQ+vyHNiauIeyN8J9r7yw3Gngbm?=
 =?us-ascii?Q?LmQs4iZjKXhtBUNbZ9VHY4EHegetHQivB+Swm+RduI2JzIfkl6LEi5OkGIgu?=
 =?us-ascii?Q?qrp4tIW+RSPv41lFfSFVcg3V98kxM45/RQ/xSATg2/DsspKe+gdMmFHDkgva?=
 =?us-ascii?Q?waCubAn4J0ziJKK/rcex/sAriVEEzb+QW1m2gOTZrXoO3AovTofMyO9nWlrv?=
 =?us-ascii?Q?wjBeSvvv4Cc2/hLan5oRSCzGcOho+2Y+lHsKqc2gFU0nG2LlbjeL9wRFZdyq?=
 =?us-ascii?Q?VrAHtWLLKN51lrsrOLdSojZc3qnXUyxY9pIyhopB5JLUNehwvMfy3PwYVl0+?=
 =?us-ascii?Q?nL885tYLQWZs2DLNZYdyA3QxZItScwLtAdVWjQmCZDeS3XOMUPCKdMal2VHh?=
 =?us-ascii?Q?mPvV4tQ63UwEGn6GXq824CEgbmdsEMXYtPktuj13RAOvcZ7uCR5zLTGkG5hR?=
 =?us-ascii?Q?BB/f79tLoIt+it8rkiqeHGiyZRfi1G2xE2Oxo/YI7MXv/WH6c2n+MbKsg6gG?=
 =?us-ascii?Q?PJ7EYKhpjtQvh5xeFdwSxL3RpCBq+sx/tEDiYbfVCLu/QtNajWZUyk8y8ojg?=
 =?us-ascii?Q?Ti+3Y7DNLBx+ywstzRgLAugK37rc0M72cwDhqxhOzVnsn1TzNptOdmRXNlOQ?=
 =?us-ascii?Q?8KQjC0Jqy3KAiSHxlghsYiH4SGFrbMYsHmOBtQ0Gk6dAA7bK62xez15tSJgS?=
 =?us-ascii?Q?Q8O21fXXG53GAIqOqGZ5bpjjC6C/Jcp7qkxP+DkVZTj/9wonTjVqiNcI+iWa?=
 =?us-ascii?Q?cEDeC0yuJTcCZAzawPdnLVuASBlVOQn3iUFAjDS5Y5j4iTZA45GLXyE8cTjk?=
 =?us-ascii?Q?+eIrOH7q8GawwoKt5oLxfr5IGsIWQoiDEwPr205Q2Vwm2/I9At+aKrrZEM9K?=
 =?us-ascii?Q?rXxwisWZBfxXmduKlDy/8piSHT85leS0tS8A0tiqxb/fPkLT8H6CWJADpE2T?=
 =?us-ascii?Q?GISn29jtwBbZImQky0v421IGj3c/GBZqtTDDDdQn+3o9q9qBgBveS1qTJ3zB?=
 =?us-ascii?Q?I5HP4n6uTrrlcfo8SC/fLcPqCZWA2Uja75N8Av54gLx869MPx/PV6V3laD52?=
 =?us-ascii?Q?Tc9r7QwGdZrFuWvx85BUeuSBrJVXYgwnCdfmrmzfgIoWiGjKX1xCdAqKKvyF?=
 =?us-ascii?Q?taBal/P/1a9e1rnaDqpfT98uDmZzvfR/0TEMOf10mKavAbmKRjfHWoUwqkT9?=
 =?us-ascii?Q?9iQnU1wy5duJjiXIIUDHApjgnfKI+YFeeaN7ZHssx2b7Wu/nyzcaemGePNXu?=
 =?us-ascii?Q?0w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: af28c216-bb2e-44e5-ac3b-08dd5646e707
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2640.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2025 09:21:08.1922 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +xpGvqLFz8bWM3YJenU6gzNhCfjJU1sJfM/oVW1fBJd/9MNX61MhfQNfUMxbZZNWUVyUwkMZB2wtBGiBEvAF9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6966
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

> When driver is loaded on system with numa nodes it might be run in kthread.
> This makes it impossible to use current->mm in selftests which currently
> creates null pointer exception.
> This patch allows selftest to use current->mm by using active_mm.
> 
> Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>

Hi, LGTM
Reviewed-by: Eugene Kobyak <eugene.kobyak@intel.com>

Best regards
Eugene
