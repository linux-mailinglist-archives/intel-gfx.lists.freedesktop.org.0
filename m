Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E7F63D70C
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Nov 2022 14:47:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F071210E454;
	Wed, 30 Nov 2022 13:46:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B1A110E454
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 13:46:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669816009; x=1701352009;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=dioPx997YGgYtpSFdYuj3vXu1Rmv3b8kIzSs2PUOpjc=;
 b=PKxrBtuxleMQP182PDVWvDOJxVYSaWjgHANXWgS+hGrIjCoiy0W6ahQ8
 DcvAmywBZDN51gNt7dcBm2gp3H3PvDffuibQMA0zKwK0wnJ0rQ7igU28M
 h+rOC54Agdnjw74IZ/RRwSqPMqR3K0kDNJXMU/FVUFTiE6agA/4+jFYc2
 VW+M5rAGVz3tdLXMUyudyJsBvk8MkGRxzjDniaT8D9AZRuCJWzMNj9qXn
 glfCI1eTucOkoi2wUdaNwjkgQKqvNqnGi7Lg1oOyoY4e1Kts6m+9nfti5
 U55lqAALMRU6L7errH92d+Kp4rP+3oAxmEvTm8tAg50Fwo8rqphRdY2om A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="295093845"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="295093845"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 05:46:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="973108034"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="973108034"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 30 Nov 2022 05:46:48 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 05:46:48 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 05:46:48 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 05:46:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TDsVO18LDAWGHW+7MAIIHqojZoqtNu377rjwBPpxRbAFGgYJ3loxkXWoHxNlxdME7FvhJQWCtt49IpBKQXS3FXwGGUkoeOWdY2u/RAURsa76maE8lMjTbZrZZ2xQ7kfq/0VgzhlFFG6xIi/IJd5viBaoqzT2aRQe99HHQGaO61c0zDtuRmQNP9Zcfu4Y2PFSC9wXRSzlXWtg7l79alm8Z4/iveQDk3lgs/aTEe3H75qRj1YvJKSAaqS0cNRVYGpTq7e9hZV+dQgkTU4uF1PhOhs5F4MaKMBrg//R3kfs9vZsClw0GvgZDe0UCfuA1FfCGKyw7YygekbAaLh9NLkbvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dioPx997YGgYtpSFdYuj3vXu1Rmv3b8kIzSs2PUOpjc=;
 b=N3WddZyIYRwf3vTNrtIvl5bq9rkQ0LzXcneJvS53Cyu8cQSMAfDGYUIps8q1Un4z3mQGEAUhTQgIhiue/XGMBufkfIeb6qXgzcZEn5IQJOB52eVaZ+cO9K4EatB0cQfAnRn8/xzeHUdocbcbr4VwS+Scg3H+4e1PM5lt8jqwQY3D9lq7g8rStTugPunoL6PhGWhIFx9TCMVnYy1vLOeZ0nJCtpQDaXXNS4Gd5r3rNO+qb0q//8Z5G4B0Fjp+W+ZixxNNEk9uWMXgdolTaOePugwHdEl0psiArF3rwCjDwexTFmadF5wCPnV9ZhzGFcG2qjNQg05mZ2c+5/T9LLDslw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH0PR11MB4902.namprd11.prod.outlook.com (2603:10b6:510:37::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Wed, 30 Nov
 2022 13:46:46 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168%4]) with mapi id 15.20.5857.023; Wed, 30 Nov 2022
 13:46:46 +0000
Date: Wed, 30 Nov 2022 10:46:40 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, Matt Roper
 <matthew.d.roper@intel.com>
Message-ID: <20221130134640.6j42xjl7raqtzzpa@gjsousa-mobl2>
References: <20221121211815.30950-1-gustavo.sousa@intel.com>
 <Y304OGPuYRHAjQkx@mdroper-desk1.amr.corp.intel.com>
 <Y3081s7c5ksutpMW@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Y3081s7c5ksutpMW@intel.com>
X-ClientProxiedBy: SJ0PR13CA0112.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::27) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH0PR11MB4902:EE_
X-MS-Office365-Filtering-Correlation-Id: f807212d-5479-4da3-bf5f-08dad2d952d5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xn+YuuDTyrBVIoj/E1h5qgcVb0t1HHQH6yYjez8oisavjp4/xYnZ1dT0XR/tp7pFf37Vw8IP2Ojh4a9OKGI0labKDIT2k4l+gBcNlxUdpvtCNqNIhC6+8mO9+g0WSDL1EYGOR7TbSukda/SQVBNBbNg+65nsf5PHxJiiXd+C6WiwQ0pRvyFOpaDIdq6Q/N8tNvtzejnvBA5r7ZuM6KZ/dvk3tNknA7+5vMGQeBnJXaruwpOUiQXUw7D64qvT9Go+5jI2HONHloXxaqYfR9+YGje15xMU4qCdbGFTDAqPieoWXtYa6u7V1ETJYRCuK5fMlhI8Pjy7qXXYoSX3DbLI4i26cGH+V6aSiWcyw+5oOIijXRmTGNDlgLJlaapMA2OSWpAFdWcfJlfrzS2p544mb+eFI+Xyt0UBjcLKhABjT0YdX6U0Lz0ZXJlwvw0AbP7P7e3W7KMMbm/ZDFyYGxquaYo7LFkXj4Q+9Row7cjcLKZnRbXNDs7xMJ8jTnSVg9ogse9PO1ACyPOh8e5uEhLFWVMdR0hEILpXFKnV49jjB7qnBWx8nuGGCAHt7B3PIJco3UTAKGAmoFwJsHf54MHWDGtwp1l54Q+gGAXqFN2E0ugdOC/gtzaqo5DCJJVIofjosWyMVYrx9SjnAlh7ECAzww==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(366004)(346002)(376002)(396003)(136003)(39860400002)(451199015)(38100700002)(82960400001)(2906002)(4326008)(41300700001)(44832011)(86362001)(66476007)(66556008)(6486002)(66946007)(6636002)(1076003)(110136005)(316002)(478600001)(558084003)(5660300002)(8936002)(33716001)(6666004)(186003)(26005)(8676002)(9686003)(6506007)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cxG2aXRPckDrClRSmH9VvvZJyLlgYsLV2u5DEvh5wZZF38ueSw7COvXSbJek?=
 =?us-ascii?Q?NWJTgz0B2zBqLp06M6I5WS/2GILRBgQ4rUVBqeerBL0xHZIKvblYE/95S3Na?=
 =?us-ascii?Q?JOWUGnzO4CqU8WjHudoaiW+l8wF3tJw7RoNtdNT5X5qS7HpS9hEwAHhuZBvd?=
 =?us-ascii?Q?PPPuM7DL7kK/AnUdOkLGKuBhz7nh2UesQSkvFjOF384p2NSxgxfzzm/C49vG?=
 =?us-ascii?Q?desz2x+zg4g6tTJTCgnMyG3O5rjQoTy2paHIibqpsYiLFLll+zkhJJbIlPFP?=
 =?us-ascii?Q?rF1rspQG+YEq0RUDZEE92HNXnk2+Tjzaz75CPitkWi9EmBOWyT84HCaLVmZH?=
 =?us-ascii?Q?tFW7X/KThQlbizw4IsgGpp0NOaByF9VnlzEeHlhnv4lATTQjEUdzhMJZ+VSr?=
 =?us-ascii?Q?9tG9uCSdUvrkM1k/aJLuajMeMLgxI0amwcEI/C+zUkV587M2m+rMNNRHUW7B?=
 =?us-ascii?Q?UmKeMdAkUXatEk2objWmzUDKTLyUYjI/lEwYHUbWs2kmTz3tP2m5ScOafRdP?=
 =?us-ascii?Q?9K7wNIKd1thbYbDAF6ZErnROdQTDMG3fynAwcPBtz8NLh5uCBdyaxCyycnBY?=
 =?us-ascii?Q?ffZvA6ePoaJo3jyZRPgApMY51yqDtM8kC0ArLB7+jMrAJfwMwXEfndUHGbnD?=
 =?us-ascii?Q?J4cypTEVriYzXap0jXhaHUX6/9f4BWREHcfk1pHmkH8iv/OFs+QgHbmUshxh?=
 =?us-ascii?Q?tilHQDdoSI7mqEriwa1vjc40TefE5r+cbBhf94N/BFx/oHH5+i8mYN0cYIcc?=
 =?us-ascii?Q?sM4uHR6vi7RzPkb0dGmgsXbK7+z6S6yPkRwcOzy5NfcXbV8/s3PFT5adP/Ff?=
 =?us-ascii?Q?wah+NhcvC8rPZxiHsVLahi4ALmVCl6OrnnD95R7eExVjxLxflCObMDk+28bl?=
 =?us-ascii?Q?MYMKUw9NM15HG+qmzmMpPa1blSbD1ndm0LNArFGkSYvmIRtHIIx7tEeRO1Cb?=
 =?us-ascii?Q?EFkdyG49YlEilI/aTUU4BFiUOKRH5BaFyRCdRpLv7xRWDdLSV2fY0pFvXOCX?=
 =?us-ascii?Q?bXZ9PQnOY7ZVg9jN3x+a5T8vbVd03qbHuKhLNQNW3TkFClpxRrlR/Gczt939?=
 =?us-ascii?Q?eSvkekhMo392iS7Qxf6fm/0/VrN8A0oTGesmRB/7ycNkA9wkZXKMbYdfsVQf?=
 =?us-ascii?Q?gDz55+7CbDZddXAxkFKsKPNsFD8b1kPSXPzytPKrCJfrcwVBxMDULWpBOJCX?=
 =?us-ascii?Q?Jt3AwgJbSAao8IrI891I8u7XXxW+9LQ0MUmaXqk3i7vbjvtvjkk+Ei7hKSae?=
 =?us-ascii?Q?O2w8M7KeWtRUSFe/DIVZrBj+YnNE8CoQNBdB8A8DPCxpp/0wGe+RXGBEZfeW?=
 =?us-ascii?Q?j7rrnChTOaEg/726nZ2/xKsBG5PnaE+UWbBU45c60HAZSKsL/fWsPRmYFFOO?=
 =?us-ascii?Q?cJ7PgSXy289aphnfnS5UBgO1ldfT/jRClkxJ8i8TEQcxvMpu4ygk4eZFsGEk?=
 =?us-ascii?Q?cu9GMTfsP50rVPZHAoHh5pE6pNZLX1aSgBbw4wKZ+39kICpCaO+v8zpUAeLb?=
 =?us-ascii?Q?qqXw70h7+Qwh/AlmfcL5kdRTpnjn+m6m1+k9MfoCi7ocsZfhFeRhRQf0t63o?=
 =?us-ascii?Q?dxGBkAf4S32SW4Cg8lhoCspGSid22v7RLQCANn3dSPFWFKmVYnHgqvA4Veq8?=
 =?us-ascii?Q?mA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f807212d-5479-4da3-bf5f-08dad2d952d5
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2022 13:46:46.7384 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sjEOnWOgJ8NBIIkZMr0G6bcAHlB05fO56fFZrSnwNgzQsY39INufP7YB/p9M+zQjko91W4REb2KvpluIZ2xNaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4902
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Update DG2 DMC version to
 v2.08
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

Thank you both for the instructive feedback! :-)

--
Gustavo Sousa
