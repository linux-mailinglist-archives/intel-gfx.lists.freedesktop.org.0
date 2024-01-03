Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E01E823329
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jan 2024 18:25:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D758310E328;
	Wed,  3 Jan 2024 17:25:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E65610E328
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jan 2024 17:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704302728; x=1735838728;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=RLKetZIvNYzzTJpCt4HKyVjXK3hKm0sbFz4j1k1p4m4=;
 b=L42ZY0rIs+FuzpgfJ8wnPk7OsiOjaoCQBDWzIea6g3p+U1Ulx1h4P3T+
 6HXEq46xi2OWYa3UMed0mJsbJ3fzc6Uh1o6jJkOkrl8yElbdsDs63rkar
 jXzTsYTw5+jR9xZyPJbHv5Wulaj63DEkwYCy6MyxAsFLX4KLOZYua7dwy
 HKBKe5VyGAIR9Qi+1a01YVrmxxEvey3NvDkKhkfKtglzzz3lm/2YCCtj4
 IMFrQFbeARoexfrxb+6OAsC58pdIAdihRdhCkO+qW/RFRGXy2gTI9EcxA
 N9bylMycxKDvznlnUKdZZIpaY2Uubasan5IJ1oDn43AJgReAKpoak9Nfo w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="18561655"
X-IronPort-AV: E=Sophos;i="6.04,328,1695711600"; d="scan'208";a="18561655"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 09:25:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="953283164"
X-IronPort-AV: E=Sophos;i="6.04,328,1695711600"; d="scan'208";a="953283164"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2024 09:25:27 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Jan 2024 09:25:26 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Jan 2024 09:25:26 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Jan 2024 09:25:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JOojG0ndGAeSb3opXVosSSgU781fQWGdZvOhqvhhOkiAaRuPMECCJqx7xR495x6cW/wU6LHdFUQry8kukA412BS0zwPfqJMrMfjc6582J1B/Ks2Bn8zGJFFL1qn8ijTTqSt/8vlfZ3jnBjclv7cpcnEcxf2EO8wKyI2xSwvtRC2d3X6n/Q80zQW1CvU6O3ZjKs3um1NXYMBV/o3zyzD+n63qMjE8NBXAr1W2n6eN/Rll5Xbo+JgtJl8teF8ceSHlKC0iusX+g/M2ei44Pq3gabhFDlDtWnD0ayluogXZPReb3PXnQ3ap7X4DcEY9IVhSuPu5ZE6wQC92Y1xlc6BJbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G7/xIR/duXquIad6Js5AdrPzmrlUqyYE0zgCGXhJQBQ=;
 b=K8g9ZuHNcgVQa9JprJ2fzYEwhJjcWs7G58PTbzdi+QQnLaxWw4LGGhtyuHMTE/LQqWFOk2PaQjvwxxMLuMaYGXTJqH356Wm86tPSG7DZuCvhQnovYx4/K6oz+LN/26W0h51rgS9IzJP5Z71p59BN2quN9NUnQQAJRd4iJP+T7RePcUQ0Se6VEbxduuTFUIFqzrbnv8yIdqL4obHaByKikTsOw3eGEGiaXpqtKNkv8Iie8IvPdqQSdymm6qAgS/7dP7xGZUCp/7XlzQcv1YNrMwCDyi4O/BL5lLXF+CvuEZ+hsqptzApyZqud6XV7109IU/ZO1YKdhKW1PTSygyJiDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7135.25; Wed, 3 Jan 2024 17:25:19 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3%4]) with mapi id 15.20.7135.023; Wed, 3 Jan 2024
 17:25:18 +0000
Date: Wed, 3 Jan 2024 09:25:16 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyTIEZpLkNJLkJBVDogc3VjY2Vz?= =?utf-8?Q?s?= for
 drm/i915/mtl: Add fake PCH for Meteor Lake (rev2)
Message-ID: <20240103172516.GU1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231219185233.1469675-1-haridhar.kalvala@intel.com>
 <170301520159.17581.9260450184654715214@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <170301520159.17581.9260450184654715214@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR02CA0049.namprd02.prod.outlook.com
 (2603:10b6:a03:54::26) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM4PR11MB6019:EE_
X-MS-Office365-Filtering-Correlation-Id: 90c2778d-4b49-48ce-6a8a-08dc0c80f503
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TMq5YqvCsQXtseLlAtbNv4lCq4e9UZcqD7fm+VKi6/+A1LyvdDNqHxwGJElspz1cHe2mu4kk6cZ798dtxnzt3/eMfXEvwMJG7ermGulM3RBB5fpddGHYhEW0Mbz8kx0KcBQUncv8KTFBIV0qUbae2LVU7MvD6aaH4MhS7HMubOi9HBz8WxRrkstp1ohWLcc17n0jWuj+GC/DRCr/aJhotCEXf27mM8U0zaMEjsi+8lHSWQhlxyJVW7beZDz2q6E644EjTGJ/HDA4OSqFUPhabBg8ldbPYv0/8PsXiSN+vkpFuChZl4RTK96dTMfJXp1FeIGsmjHsWf9sSH80bk/8ELtzScyNmLAdg9hqQTkKqdM3PVUZWlTtgpjQC5O+ApiH6DG5IlmZnLhdsKKAFxAoKVrY1VFNAgXjYn6KQ1SdSB5s1ZrQdru4XSw8zwCmN1uHgv7huiiIIiO0N1TcLxBKYXpUMlALXdHXoa/SVe1NWadFyWWE4mhBmLSwrff6uwu9MLx817FIrht4++qxoGKiUOZ34W4MFVrGU8aI+nO+DLQp/jVU6fcenzuFmH3HtxWcB3xzNmDN0ZJBQsfQNuRozLJsNEv+Kl2w8j9Cu4OaWqu4zN3AC1Hh7Sk1V4B96sxjVfRNtLDutgHWKD25glShuw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(136003)(346002)(366004)(376002)(230922051799003)(230273577357003)(230173577357003)(186009)(64100799003)(451199024)(1800799012)(33656002)(66476007)(6512007)(66556008)(66946007)(6916009)(6506007)(6486002)(86362001)(38100700002)(82960400001)(1076003)(107886003)(26005)(83380400001)(41300700001)(4326008)(2906002)(966005)(478600001)(316002)(5660300002)(8936002)(226253002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5WbriYkY6WeltRGQeJ3mLraLXXq8Y5YHGp3IDTP/GCPU8WC+IKWD1UDQf0L/?=
 =?us-ascii?Q?7p4JpvZ+mxcdj67VNYsDrQhBwIvj5PvN1Om8IplTfkUej/uWSq4TN3YPTVWf?=
 =?us-ascii?Q?Prp0P8LALBpTtUGSxJKiVG3u1cP2Hte1j/bQCFqurjnkA6c9e+gMTaaoQSMo?=
 =?us-ascii?Q?JXAUAtAssmKkr532f2a9PE8Ny5sfn7XRXcnH/ozwBA7UID/CeOrbLin/aH5r?=
 =?us-ascii?Q?6uCNj+lsxdUEJegUzyNJzJYJRIezlsZmuKTdilEgicAi1hwgmND2H7gjXXZn?=
 =?us-ascii?Q?aakQ6LxPlW7cO+0PZ+CKfpNvozc0iN0oriU0avyUAtZuz6GRb0MVC1WDgoM2?=
 =?us-ascii?Q?iws1noUtkXZuoUTEsd1iCESD1vlRfqP6O76SPDXpMqkC8DmhxC9oaIvGyovx?=
 =?us-ascii?Q?lWF0xiCdIOcHM06W46yVkaga9oStBQDWylce/rhIYAkcXdXgmSXhHsz/Jnpi?=
 =?us-ascii?Q?lo6+wMZmqDKjc4g9RpamU1yBp/LTHwsTshTGxKQSqndiQLdM3CVTiT1XeRR1?=
 =?us-ascii?Q?2/+2T6qg96k6tS7y+TAXKL+PWFwt9xEoYRXnIhxdr9f6wparBHMPsvmustEL?=
 =?us-ascii?Q?fymWgtGvaNrrbLYosbEBejsMkmawHhz91JXlkQ4clLMH6nGUGj9vC3NNdx5S?=
 =?us-ascii?Q?JBQsR8lbLkD9mC4nY/erurIngFGx557SCryaXe+d/eUK/YfhB/idITBKJsou?=
 =?us-ascii?Q?IIH5mDAmHp9Dmt9Vtlr77eGrG0FQiGsD3bZVxvOWVF0Cwpphp6u7GO9DlrLa?=
 =?us-ascii?Q?GCglsayr4zGFk/h/F9PTcrz3ETcmTb5PPhEd7oThyUFM8ZQ5nW03cCgq8QA4?=
 =?us-ascii?Q?MApNO1Qo957km4cQYOqdzoAUKQVCokE9rUJjl4I/fLc+WprSdQ0FXrUSUgk0?=
 =?us-ascii?Q?pRh/tiT7gLTEKW2k0aI11yAGut3PGndTO9BEceHE3jUZcGPCVSg6npcsz1bI?=
 =?us-ascii?Q?oycf/nulVVG4Sn5WeowHJroRUrnKWCbnGYU4Rly9GebCJS1SvrkfvJXcWXDQ?=
 =?us-ascii?Q?AUIDleQCTKK4BMDtJ+d6m9IX84ECAi9Ua8wEDO0j5ZB20PUbaOwW+gnYblOP?=
 =?us-ascii?Q?h9+ckUhatpxNAYAd+bTu4z47W/ainUppYwCCwpi1SOp/Y0QMFktEtDO2bBlj?=
 =?us-ascii?Q?WIoOpPCXbolITZy0/CwvteaeyQqg3QU91IdGYKsyNo90BOdaYmTJLYU4T2ut?=
 =?us-ascii?Q?CN4D0TPFTQ2GlxBGhhKjm3YJtLMG78Pt4hHvOfofyYj76XzHBOT6u2sNI400?=
 =?us-ascii?Q?DTQT0pylH1Cdwt9RFQUfeKWzBBHqjfhXFmTsl2LJAk2ibQcvJicMkZhydFYy?=
 =?us-ascii?Q?frv80HHQfg2hIIe/Be0eEdAeZneoIrIFONIezjDVO8BnHb9+KmAncJtWSC2H?=
 =?us-ascii?Q?s6J8dVIg4teyfiepmKreur/HRs7WEJOourqnEoIWbrR3GqMfHAFg9Z5czq3b?=
 =?us-ascii?Q?ySLN2/9ituoYkCcq/4ShK25Hsq31pl4+aGvDt1aqBEoXiutAPdVBa5nJkdyP?=
 =?us-ascii?Q?BS/foy0/DJOiBxDyACyvljikAYMUEP4K5i9BN1gJcZPJjdN8esXQbCq3ilYa?=
 =?us-ascii?Q?Tp50Bd8bdeP1aaihKMuifynul+nlBIQZKqoSZzI2GUHFVmhkWVnLgQCcpSHO?=
 =?us-ascii?Q?5A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 90c2778d-4b49-48ce-6a8a-08dc0c80f503
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2024 17:25:18.7516 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 78RrhKceZcQj2hHO7muUqTlWcDA78Nzvhja4C7ytvAv4GdO0VVo8WXciakuvCqVebKLPfXqa2SkT6iEnnLzz+BtoxGqmg24G2zRVFmL6304=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6019
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

On Tue, Dec 19, 2023 at 07:46:41PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/mtl: Add fake PCH for Meteor Lake (rev2)
> URL   : https://patchwork.freedesktop.org/series/127963/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14045 -> Patchwork_127963v2
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**

Shards results never showed up on the mailing list, but they've
visible in patchwork; neither of the failures reported there (one
on SNB, one on DG2) are related to this MTL PCH change (the SNB failure
is a lock issue outside the DRM subsystem, and the DG2 failure is a
random timeout on a GT-specific test).

Applied to drm-intel-next.  Thanks for the patch.


Matt

> 
>   No regressions found.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127963v2/index.html
> 
> Participating hosts (38 -> 37)
> ------------------------------
> 
>   Additional (1): fi-pnv-d510 
>   Missing    (2): bat-rpls-2 fi-snb-2520m 
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_127963v2 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_lmem_swapping@basic:
>     - fi-pnv-d510:        NOTRUN -> [SKIP][1] ([fdo#109271]) +28 other tests skip
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127963v2/fi-pnv-d510/igt@gem_lmem_swapping@basic.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_14045 -> Patchwork_127963v2
> 
>   CI-20190529: 20190529
>   CI_DRM_14045: e786d8c6347b8b304e82c6bcebc0d38401792b16 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7648: 5c7b44f13c9c5bc15af0cb2b6a5ea10a8a468ac0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_127963v2: e786d8c6347b8b304e82c6bcebc0d38401792b16 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> 22a222ed2423 drm/i915/mtl: Add fake PCH for Meteor Lake
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127963v2/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
