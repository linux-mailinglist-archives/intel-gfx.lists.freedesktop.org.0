Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8364D5B9071
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 00:14:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4346E10E0EB;
	Wed, 14 Sep 2022 22:14:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56A2510E0EB
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 22:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663193645; x=1694729645;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=dcMSwVKhs2YaoFOERAcTEANr7f8O6Py2ooFYe607Ikw=;
 b=UQx1YwHJWAd4kTzXz9/6ojsTrKQeoTdgaLFsSQPFjIVh2rRoHOlU0RlB
 O2dXAC9h4yBYXVi9mYAaS3DFIxyaMQ6baUoFoLn1d6xm3oG2Y4ovW1in7
 uLoYmA4lfdNJJP0+DhZnXG3AHNll7qUnC+XRKwoWBNE12Xz0TvkxX7YP2
 n0VzXFI0/4kmip8GwOHNu2aoUDg63PVES9obw+1SZgU5P1DK2ihAdXc9v
 F5DbCz3m0CoVxdP+cjnJ5xlq9LON0mJysrN9Hvxg633kmCjc+5IDSSNhV
 kIQFO4PsGHrbztEw71JG3xo+VHDo3T2mlB3iDDXjv6lc/p5fo9gRetO20 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="281586020"
X-IronPort-AV: E=Sophos;i="5.93,316,1654585200"; d="scan'208";a="281586020"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 15:14:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,316,1654585200"; d="scan'208";a="706108602"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Sep 2022 15:14:04 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 15:14:04 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 15:14:03 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 14 Sep 2022 15:14:03 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 14 Sep 2022 15:14:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VQdxZ0VLcrDtz1RckYLT4LzA/cyq+vFWflNBSkaFpt73cpFOhveKUNK+zwmjkB+pEJRIaOQ1kyR6CDpizAbenTHAgiIG76y97qbkTrFnZYFrPz3Az6WuglNscBh8fmUoCGTUKc0f7qAhg3cXRFoDthNdXCuO7iBYUuUK5Cmf+f3cxZlxsob38v9yDU8klr4kAfbFfbKL2W2k47oy6U0HiQn3yLxr64NnkdHdK+YZWAhnM9u4g8dzJSBBPsVZWKZkc17Knl/FYU9MQEOuxCtuP87Mjnw5JwgFObL3FnQxKMhHjw/SkPTbvC/50U4WR0TFUoaPax8i2GpJ0OspFXhf7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fFhJpGiF4jAZj1wQjq1JfLf5x2ts0v+ahtd2RxnZKbE=;
 b=Eh2uvOkf3g4F9kKO8Mc3pAE6LFU0P5z4UEAKDAzoJ4IhXYtm8N6u7LCZH9aYYtclUjoyn+ga3Tshlxq4jlEX4LUeEj6ZCf4giEkPyGTWI21dbSCBeJqcvuGDi4A24twl96lhuev7qsFnmOAVk65PmhXWOfuD7NBglPoLEkCqz4ocFCjuLGoKdaAczc1Ahu/rZ5+DGLkmVOEwgZEB+t/Cbf7sNAcEX61Csf4AFiPROHNyE/ci/1aIVOzpjAVwtFx5v9vr7M1olosbMs3svuROU6bsgl7Fv2qnQV+kjCvWMyyOa5QJ8917/kAZZO6FDt5nP0nHFBAyxae9pDR6m4o6kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA0PR11MB4528.namprd11.prod.outlook.com (2603:10b6:806:99::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.14; Wed, 14 Sep
 2022 22:14:02 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::b80a:cf49:9118:24e7]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::b80a:cf49:9118:24e7%6]) with mapi id 15.20.5612.022; Wed, 14 Sep 2022
 22:14:02 +0000
Date: Wed, 14 Sep 2022 15:13:59 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20220914221359.mxwmhn46ytvgjbvy@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20220908-if-ladder-v2-0-7a7b15545c93@intel.com>
 <166316965288.30166.11670219240086498806@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <166316965288.30166.11670219240086498806@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR05CA0152.namprd05.prod.outlook.com
 (2603:10b6:a03:339::7) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA0PR11MB4528:EE_
X-MS-Office365-Filtering-Correlation-Id: d5bf55fd-15cc-4d53-3684-08da969e6dcb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Nhisovf49U12QQsMOMYEuitJxeAXy3Z4rDATumQpGgoelu1j+RW6MgAfpigOvmpj0lUcGDeFhjNR/qNYer/jnTV4ujndjwvFSYeI+odppcUJoLugohTm7QI76rVxAo4d4NWgDeawem1XdEFFqUfx1Ni1c1d2rR0zLJxrB/LNJ0E7g0aOK4TZ/Natp41klO1BI/3SyIjQ3QLQ7U7hE98Ef13paZkAfHOJFuaG2P24PtO09Kd3SRYrb+WPsyrJ76/3PdJkIhs46SDLBoO4gKWW6Y8dSJbAlE3OqZ9kggBJ0IR1e/COKGca+w1qtyDIXfjvJOS0zAnUUR92E6p0hDDt1nnux2psaEnulqPJEH2bs9dETCnR2bxPoLSdAGpJhG7hB7ARBlDLyL/Ivif73/7zFpDGVPMJOSf79HT1qY/RcnHAeqXD/L9gVDWqcIVdXPu2NVKywji/49HzVX2X48hwwa7qHnN9uQEUuQzvNeUFtm+a8QxKYs8u2g02ZdRkI/lITwTHDIoOg20vX6xslZLcoCNhQtgueAE2q4ExtQVndOKnTKhJjUrXTFTn0rdjJtq2Tswkow9PzUnJwFfCXn8XOa5CCUL2tQWbJ1cBVOVu353PpsH4DEKmiooA7OiI0H2XQ1UhRmgm3BwHIWOOn+TuBjVh3P/F98aUBRnv9y1qQMuUph10k+4wXVOhUwWYNhD+sA0q/zStHsqV1UmYTiLoFMRJ/KArQxdokaulJ2QkriCcSom8bkhdCfbeSO/1EYvCJQI6iZDdhxiFwH7a7EOKMg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(396003)(39860400002)(136003)(366004)(451199015)(36756003)(66946007)(6916009)(316002)(6666004)(966005)(1076003)(107886003)(2906002)(186003)(9686003)(83380400001)(26005)(478600001)(86362001)(38100700002)(41300700001)(6512007)(6506007)(66476007)(66556008)(6486002)(5660300002)(82960400001)(4326008)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Adxh2ZtutBxHKyCAS/QWsoMYg86n7zLn3c5GVBMpfhLU6mwJIDKi7chLhvSG?=
 =?us-ascii?Q?PcMz+FKORSSa29Z2C/xI8uJWo2XQwJoHxWZuef6us51oe3pRarA8E2FeUjG3?=
 =?us-ascii?Q?oMOzBm9zYS74A2zPdgpA3XIwLRuY6PlWniAAaNPlyuRIqSDnhWyXtf5/LJ48?=
 =?us-ascii?Q?GNcbqwNc6Mh+Vt8b+3Mg7GHAir5nb/k+ajD7gVGHb9EFFzo/+Ht/UBgVZdJb?=
 =?us-ascii?Q?SJHmKRPc0GOec8eVTWR9UB9Pq+Bn2zpIEoC/lRs/CfU+AC7+cNKFKnb8w8ae?=
 =?us-ascii?Q?iCy5TpoRPwxZZidVtel4W8kaKf4VXji+c4a6YjMbSzA35CJxsGVkMnjLtPL6?=
 =?us-ascii?Q?DlMfHoqycb8QfY1RkSEJ2sok+yigJhwg4pQUDmWQ4lKmMAQWL71W9EmRh6+I?=
 =?us-ascii?Q?SphyHlYIkhqv/TfNf5rMfj8EEenrjXCaItZUxss2aboGTg4wMoxKnURn0qIl?=
 =?us-ascii?Q?nlzjfkiCG24cXUpKslnTEkemY6/CERh1Mm2+7qN53Yr38rVnjfcnjyrBiNZm?=
 =?us-ascii?Q?qIiUOYSa22B69dlMelOR5+wtOX2t3R2NX02msejFDiRDwteg/X3G1qWRdp0s?=
 =?us-ascii?Q?77GwhIk+RI3kku0KkiPUy+1Itl8bRli4jgcxGZ1O3X48CdBA7RiR6zmfFIMr?=
 =?us-ascii?Q?m9GtxD/PYj5pE40PW+1ck10IG04AQ3TXhQr3nLoL7/y8rRYAS0Um6WOAe8qo?=
 =?us-ascii?Q?q8cqpm0OG5/Adl5PLh0eWxjT10ed7TfwuQrwKnyZ0IXP7X1itPTU1dMdqU+A?=
 =?us-ascii?Q?PJm8KBaS0C/TSJTQ2cqQGKg3SXNEU9wEdc9mbGSZJwi7s445KAqLsDgvVq95?=
 =?us-ascii?Q?AniHXrQVHRQ+9fIPkMelzEe6nC777jkhQgDiFt3/9xgBkILoDf3U98SnDnXV?=
 =?us-ascii?Q?UYjAMmMdneSS3hGxMy8njk2o+mLatpK1THvYpixtz3B1IG4ztya7Q8FlcoDA?=
 =?us-ascii?Q?7intZPX5hvcmnPvemM1n85RlWupBpg+elYkhc0Y+xNUoc+MeH1O8So18M3N1?=
 =?us-ascii?Q?NSiUAlnXpeubdTy06MTQoFfi2ByoZeNt7ygDT4IXEcDqnnfgWMqX+gImq+kZ?=
 =?us-ascii?Q?0gQ7MZt6orgzQfbksyD+EHha1YFjLAfu4qEcpKtbxr4cL+NVNV4D9bLVamVW?=
 =?us-ascii?Q?baZqfDLFjSJUR5Bmg/1iMGBrPZneNKGczhXBfdyaFTtUpCeMdzdYT6eIR9rD?=
 =?us-ascii?Q?kZUr+woHwEpV2rPqpOgVcNITqP/Y6u0u0UlxNQWGgCaIUj1iZnxwoRFI+vVV?=
 =?us-ascii?Q?ZnBzdMsbmhizZU5GgSf1tlleHhcYtiZCVTHkT7voWEpolFsYz/IxmKZxTWMC?=
 =?us-ascii?Q?cJ40je8U2+r3BkzlpHMzdSEq3xvDdNGECyqa2IF1DvW10VebOv/6zGKe4I+w?=
 =?us-ascii?Q?ld6F5q9ewWDRmuJi582l2yjL5nPE24LMoeOqa+870p8GFom+LFyQZrROGVuE?=
 =?us-ascii?Q?NIz0M72VRyjlshfQQJrzfBecFQFzAWKEYh+hMg4u8mlUvaatRJra1pyBIz0l?=
 =?us-ascii?Q?DsCUV/nfc7brtKaCNtjwZODLct3aPHeAI/A+Xm6wJ/E/XOSPumWZCCI66kXr?=
 =?us-ascii?Q?hpV0RCQUvnii+dzi9teJBveHORqcK07/c7bBMrG+CRNIYQ+TZAjUNQ1n1bfD?=
 =?us-ascii?Q?FQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d5bf55fd-15cc-4d53-3684-08da969e6dcb
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2022 22:14:01.9254 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hk8heDhnbTRv35gLO6j2fDHNE1mScW3JtI3pXaHRvDLy3QsyMFCiPZH/LFWcgmDqNari0euZQhlNWRN95GX6t3ySmE/XBY154i2u1pv4wPk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4528
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_A_couple_of_if/else_ladder_refactors_=28rev2=29?=
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

On Wed, Sep 14, 2022 at 03:34:12PM +0000, Patchwork wrote:
>== Series Details ==
>
>Series: drm/i915: A couple of if/else ladder refactors (rev2)
>URL   : https://patchwork.freedesktop.org/series/108315/
>State : failure
>
>== Summary ==
>
>CI Bug Log - changes from CI_DRM_12132_full -> Patchwork_108315v2_full
>====================================================
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_108315v2_full absolutely need to be
>  verified manually.
>
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_108315v2_full, please notify your bug team to allow them
>  to document this new failure mode, which will reduce false positives in CI.
>
>
>
>Participating hosts (11 -> 11)
>------------------------------
>
>  No changes in participating hosts
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_108315v2_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@gen9_exec_parse@bb-large:
>    - shard-apl:          [PASS][1] -> [TIMEOUT][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12132/shard-apl1/igt@gen9_exec_parse@bb-large.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108315v2/shard-apl2/igt@gen9_exec_parse@bb-large.html
>

unrelated to this change and also failed recently in drm-tip:
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-apl7/igt@gen9_exec_parse@bb-large.html

pushed, thanks for reviews.

Lucas De Marchi
