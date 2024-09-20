Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3F997DA19
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2024 22:38:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CA8910E300;
	Fri, 20 Sep 2024 20:38:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VTwtRATw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C64F510E301
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2024 20:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726864682; x=1758400682;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9isct5gIyJVPfttdqXy/STj+rXz9pm2hYBrmD2S4YVI=;
 b=VTwtRATwSO0J/nZNjhUkrizV69OzG19h0TUVZpqXgZ/PnY1XCKQdzC7D
 8kip4C/5q31xuIm0B1XQGVK98puBUoteDM3eiIGEDbGCLDchrnzv9xDhF
 3a211YN+SrvNDzq2z7pVPrgF4t/F2zaKNSkLRrBVFBTYm70gWMSLBf5xx
 QVYpbgfSxsBB9109qV+09r6IJoZUrDA+cbTQvebXYeO1io1luHO7iA9y9
 j3LN2SeGzxbDnxSguBufAfkV+D2odUn5DW7C0AocAN5tYAI/6NmDNX4Il
 BBL3FqiACJKOZ6t5CM9s7iOojLIyRRRo17Hu5SnamuSZC6Xgj8U1Y8vTt Q==;
X-CSE-ConnectionGUID: +cvMQXi9Rue04h+q7SbzqQ==
X-CSE-MsgGUID: PJ21wZ9oRI+wwIiggxgv8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11201"; a="43358613"
X-IronPort-AV: E=Sophos;i="6.10,245,1719903600"; d="scan'208";a="43358613"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 13:38:02 -0700
X-CSE-ConnectionGUID: wRePaccHTB2Ggn+cpt6fSg==
X-CSE-MsgGUID: YVNDYhmIR1SCw8wgiy6mkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,245,1719903600"; d="scan'208";a="70869719"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Sep 2024 13:38:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 20 Sep 2024 13:38:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 20 Sep 2024 13:38:01 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 20 Sep 2024 13:38:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d77uFZwHjIkbkSBkIl8TCFOw49rza8mr+HiGQLUpEQr90eMYh4Wvw3w/1gcCDM7OX5diOeAMb5Eizwusq5cbIioNcBBaqVlMz1j8TXeaZgjqexl5I3P+63yqoJnoIPD7hsYaAQFZvGIJiBd8zZ3IREKJAndLj5RC/FQTLlqqrk8aW9KpyqdwpuJGmim/B5Ro4USlJTt24iA1Iu221vZI+TC1UomIL7NPMwiR0LbNHUzPYspGQCG6cpplxCARAzU4BbEcQIP3GTDLiN7qe05Gja95925FVJY8hyPOzp5t7DOk7tX32DFl0QwnraLo6NoqGvaQqGNV/vncpRmTytZjfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G/1ujWjU5cmeWyGSngj2zd5WrKknIRHtRvmY/d+18jw=;
 b=VSik9SM70BuyCnXlKMBobqDe0Bd5gnQrbOB+Fq12oNXvtKG6PG8+7EFL/B8yYRV9/DqJena044wFQWW5a7E6A68MzkZ4D2lj8fW9nYmCuCxlPBu6ojtomBvQ0/ZVQJWPEoUuVal8DthQKuzePNrvGAvvc2suXMV+X2MlBMyjsxpnkAPfDQeLI/pWJ3KJODqXE95wuLd+MLwzVltrcX+9qaRYPe1gOKHFpSr5n2q11BAWnHpKbDMCBISMqc00+4Z05obKTaVs45zrPXv/5r4BAUQ+8YjQMqG+p6XydDDW+Fy9PKQRJQPW4jXpNTB+y0cv5p4+dCAgjQNSi23xtjdf6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8185.namprd11.prod.outlook.com (2603:10b6:610:159::12)
 by PH0PR11MB4982.namprd11.prod.outlook.com (2603:10b6:510:37::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.23; Fri, 20 Sep
 2024 20:37:51 +0000
Received: from CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::1be5:55ed:3261:fefb]) by CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::1be5:55ed:3261:fefb%5]) with mapi id 15.20.7982.022; Fri, 20 Sep 2024
 20:37:51 +0000
Date: Fri, 20 Sep 2024 13:37:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVA==?= =?utf-8?Q?=3A?= failure for
 drm/i915/pciid: Add new PCI id for ARL
Message-ID: <20240920203748.GX5091@mdroper-desk1.amr.corp.intel.com>
References: <20240910062301.2006782-1-dnyaneshwar.bhadane@intel.com>
 <172603681250.983746.9403039896097296790@2413ebb6fbb6>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <172603681250.983746.9403039896097296790@2413ebb6fbb6>
X-ClientProxiedBy: SJ0PR05CA0125.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::10) To CH3PR11MB8185.namprd11.prod.outlook.com
 (2603:10b6:610:159::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8185:EE_|PH0PR11MB4982:EE_
X-MS-Office365-Filtering-Correlation-Id: 297dd574-3be3-456d-f534-08dcd9b418ae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?nDuOH443rZ3oWHqsyAwHUQIfE6ofzm65/A29pMG3RaOXqjPi3+9LP0Nz3LC9?=
 =?us-ascii?Q?KEEAf4Mt143GaJqke2FEJ10s3MXp/+XQn/Xz/r7b0XIJcBpoIAOvTQg36miU?=
 =?us-ascii?Q?MnFsjuYEAXpkDaGsEIdmTIqWDsVlNyHbmkoUqAt+yQ2b1ffFDljU7oLfGx1B?=
 =?us-ascii?Q?4HKIT2H7FxM7hUKrSnON71GSLIa91G0JQlyKMN5IfQSwmsvSncKUcj1UNgx+?=
 =?us-ascii?Q?FrOnJrFsSR6ikL3MkobZzJshPFqwRqedV1i2z5oB0nUhPKwBqip1XzjBxNVz?=
 =?us-ascii?Q?oVisaxobYnHlLEonYigJViVXleRj6blcWCOJlBJqzFuOJXC3s2aXubTSaIgy?=
 =?us-ascii?Q?f0tsovsZr/WcrQo4BHaxcqTmI6HQtHiwZTnj9RZs5UuUGDw3O1+gwPojPwwf?=
 =?us-ascii?Q?hTKSwSbO6q+FsXgRnJzxyjE+ayh+Kpk3yyzgzD8prFinMHTvPuIrPtt2ZeIO?=
 =?us-ascii?Q?qFqhhpZClpKJRHaHRYE70/PsJJ1mlxOB6Ofmb1GVO4NmuS+lHHInoiQTGqG9?=
 =?us-ascii?Q?rx7jIGm+3as7HbFSSkTTwO+iYDI0d8lmEEFxkpcIF9KTNMnx3EJOOCZ9tl09?=
 =?us-ascii?Q?VTyi5oHwPkJhPqD5GRlcobyXRrBvEj3ZI8ePReKh6B9ULewZGP2DYYfy3xIV?=
 =?us-ascii?Q?YoBl84W1zU2eM6LmVumewzW9cF+pDUf7d7L4ITk9G5v5Q52KPwukTm15sYYb?=
 =?us-ascii?Q?1sYBrxb8oZBb3vLIm5KJfVuJidU8oWaBBFyWi9w9OFFeN2HE3DpsLixeITQG?=
 =?us-ascii?Q?W+IbJ0V7/vr3uluzKYGjb3o29TY5sAOEkZxqROfKEujOZfwpsb7zPkmHN3iO?=
 =?us-ascii?Q?JY05jTLJ/68mERMkUX6JKjd0lt2hXFzbcdJDLAILZGOrZ0IXy2bnczKMuWjo?=
 =?us-ascii?Q?lny0JJ4mOeCjNlfgQ7e5CiMe/jE9eD+dgHoNaCy8rvfxw5T1SqFvkXRcH2uM?=
 =?us-ascii?Q?iL50LErWdUT+RF3RJozhl8qMfacqMrpxYRZHW3UN9VwU53Xe5YAP2DlRWtx0?=
 =?us-ascii?Q?akhLsaX8zjc3939r1o2OL+a7xA470iSUA1UbquD89bEiZx9/9/LCjgEmoQjS?=
 =?us-ascii?Q?vNLKw7fgNi6Uq0alOq+6i2adaON5HprDl0K3s64IiRbf+BNCDPUC7MlOSoj1?=
 =?us-ascii?Q?ukP/dHIAoKfqDzVonUYhlCCEtXL1H6RXR9nESFciId/F/RPza0gjPiP+kHmK?=
 =?us-ascii?Q?E5aOjn+I05EFtTDekn+ts5TNfrar4Ej1rBLvn8p6OLnhh0PMzKZquoksiug?=
 =?us-ascii?Q?=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Rw7wtJNpIaDylPUWdVQOfkbDhAcpdQp0Ngda/gzH1Bd7lzd28dy8H0LU3mx3?=
 =?us-ascii?Q?l9SnYIbyhv50T1tU1rPzTDkY4ys26M7WkNBGX3qYGhIt58X7YoJDOa0FJ1nw?=
 =?us-ascii?Q?8zl9u0eZ8Ig3Bs2B3kHmlwi5wxl0zdeQFBeLkjML6nwJvE6YJjc3HCRj1wKG?=
 =?us-ascii?Q?S71Cfb6YCq6B3S+CLkvYgpMDlQmMmDXPuBFCSvkUQ+A/F9++xOjxl7ox0mWt?=
 =?us-ascii?Q?dlyQW82IjCYqoM1s2FUpLXFUJ8FMVNQiYWgwz0iRiURT4qCE7EanTElxiOVJ?=
 =?us-ascii?Q?riEbcXVvurgZnU7e14oKao7EJZjJsKy7Iz1XJq3Ctq/YXzI/JQFJXzufrPaX?=
 =?us-ascii?Q?56HZhiypNBDuJJkvsixl5hcl2wFYydZr7vlEpSTXKKlPyl/+IIz9YtOfr859?=
 =?us-ascii?Q?/s4Oed+xz6Qb671zlDb7UrZbc4WlI6BKPNImm9TMndLco60JPHPaF8sbaf8L?=
 =?us-ascii?Q?iUv7T3nRgylgOHfNt5bw5IAMfc68jn1C2Ul/LkUKh/zybVtNsindnazP51/g?=
 =?us-ascii?Q?7chBujWdJg7QbvQf/T3lh5XVlBNuB9wXugGZwS8flhHfpVqiVMfOUlI9/1vK?=
 =?us-ascii?Q?l+/vnyBfTZbFi/jJ9M96AHIg3t7jFNveqc8rhWMwNSwztz2ZKiXWapQ+0a7a?=
 =?us-ascii?Q?g5D97CGbDQTnPmbJSc+g11NYctPC67BzOM7/b1fLBm0sUPoHZYshjhU5l9vz?=
 =?us-ascii?Q?YeYzM+p+svYc4/Bip5sAYcWJ+f3sVPimdJadgcIx5kTmd1wwAHaUyM32HYWC?=
 =?us-ascii?Q?eTvOo5w92u6wBb/Wgkl5TxyE5Nnj3rHl8dIpWWxQUM7EZy3UuZ0jo6corruA?=
 =?us-ascii?Q?cxXL0LBHcy44dU2iCXA9nc2IYVBsw8YkILeoWYedrOjx5Gum+syVg5wHGnmQ?=
 =?us-ascii?Q?InxH21yBlqVlBfA9ljZIXIT8Iq11qbXrave4Kzbmne4yDGg7xhSh6PgJOFU/?=
 =?us-ascii?Q?Glcn3IjCClX/I0yrhlQVaisByMB8urMo8kSRBfV1aQmnuQhMqAGRGH9m8USQ?=
 =?us-ascii?Q?A6BztGcZt5A97YA494KGs5pyk63YHP/6po9uILfHoznV4ZAw4CaSo9QhoMHp?=
 =?us-ascii?Q?goeqBPxnJt4IIvHGrgh6HKsBkib5R3iljBMG12enfeiTiq3HVzBU1r+YdPCz?=
 =?us-ascii?Q?qPK1O4dp7OifHBPt2gTSGiPkshxdgeLkjzD89Phsyk8hTi7HjwZxQ4msdmgJ?=
 =?us-ascii?Q?KAadmlJ2uUY6JOB2o4wMfLsU9+M28uyi1y3r14U79yfvCQJ0CjsyB8Vf4lAN?=
 =?us-ascii?Q?cxe+ei4XyqI1ghk984oFBc+B8ZgaMH8pf2AM+K6nNcErLq1bTm54x78ZQZur?=
 =?us-ascii?Q?njKODDFXgFpnJXszB0DdW3Iqmd4AcpBc7d5crqSlViAaU0PLlejug1x1CRFQ?=
 =?us-ascii?Q?1SvCqe5c9aZ8KjF3GIp8YmGPUBWZoQIxQJh97k6IH7sN3kMEA3XjJp0VzyhN?=
 =?us-ascii?Q?dzJC22rskdXEj3NvzP92Xv5D0jpk6D+SoyQyveMMrU5A+jmUtxURIYukkztR?=
 =?us-ascii?Q?2l3LBl7C95a+ALR2qtqnmL3+E0JKf72qhFuppMLO5HPuRuuD/AWflIKJ8ufb?=
 =?us-ascii?Q?fM/cxJJYUCA1ULhOVO1cYbQEJ2ocLEn+t9BguHlcUt2Kj5ehC3cIfZkrTVL4?=
 =?us-ascii?Q?Qg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 297dd574-3be3-456d-f534-08dcd9b418ae
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2024 20:37:51.4344 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mFIxhfetswn2VPOaUQLTQMoQM8+R/TLVptUQROUKYEB8Sie8vjLDvaZmRfvJYBUjJgIc8asbF5DYV0ETcX8I2U8xC0Da7XfPa3v3O0ujEoQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4982
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

On Wed, Sep 11, 2024 at 06:40:12AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/pciid: Add new PCI id for ARL
> URL   : https://patchwork.freedesktop.org/series/138446/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15387_full -> Patchwork_138446v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_138446v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_138446v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (9 -> 9)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_138446v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][1] +1 other test incomplete
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-glk9/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@kms_vblank@wait-idle-hang:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][2] +2 other tests incomplete
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-6/igt@kms_vblank@wait-idle-hang.html

Neither of these failures (on GLK and DG2) are related to the extra ARL
PCI ID added by this patch.

Applied to drm-intel-next.  Thanks for the patch and reviews.


Matt

> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_15387_full and Patchwork_138446v1_full:
> 
> ### New IGT tests (4) ###
> 
>   * igt@kms_atomic_transition@plane-all-transition-fencing@pipe-a-hdmi-a-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [3.72] s
> 
>   * igt@kms_atomic_transition@plane-all-transition-fencing@pipe-b-hdmi-a-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [3.73] s
> 
>   * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@pipe-a-hdmi-a-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.07] s
> 
>   * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@pipe-b-hdmi-a-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.09] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_138446v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@object-reloc-purge-cache:
>     - shard-dg1:          NOTRUN -> [SKIP][3] ([i915#8411])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-17/igt@api_intel_bb@object-reloc-purge-cache.html
> 
>   * igt@drm_fdinfo@busy-hang@bcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][4] ([i915#8414]) +7 other tests skip
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-7/igt@drm_fdinfo@busy-hang@bcs0.html
> 
>   * igt@drm_fdinfo@virtual-busy-hang-all:
>     - shard-dg1:          NOTRUN -> [SKIP][5] ([i915#8414])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-17/igt@drm_fdinfo@virtual-busy-hang-all.html
> 
>   * igt@gem_caching@reads:
>     - shard-mtlp:         NOTRUN -> [SKIP][6] ([i915#4873])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-5/igt@gem_caching@reads.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-rkl:          NOTRUN -> [SKIP][7] ([i915#9323]) +1 other test skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_ccs@ctrl-surf-copy-new-ctx:
>     - shard-dg1:          NOTRUN -> [SKIP][8] ([i915#9323])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-17/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-mtlp:         NOTRUN -> [SKIP][9] ([i915#9323])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-5/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_ctx_persistence@heartbeat-stop:
>     - shard-dg1:          NOTRUN -> [SKIP][10] ([i915#8555]) +1 other test skip
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-17/igt@gem_ctx_persistence@heartbeat-stop.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-rkl:          NOTRUN -> [SKIP][11] ([i915#280])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-3/igt@gem_ctx_sseu@engines.html
>     - shard-dg1:          NOTRUN -> [SKIP][12] ([i915#280])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-17/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-dg2:          NOTRUN -> [SKIP][13] ([i915#280]) +1 other test skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-7/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_exec_capture@capture-recoverable:
>     - shard-rkl:          NOTRUN -> [SKIP][14] ([i915#6344])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-3/igt@gem_exec_capture@capture-recoverable.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-rkl:          NOTRUN -> [FAIL][15] ([i915#2846])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-pace-solo:
>     - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#3539])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-7/igt@gem_exec_fair@basic-pace-solo.html
> 
>   * igt@gem_exec_flush@basic-uc-prw-default:
>     - shard-dg1:          NOTRUN -> [SKIP][17] ([i915#3539])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-17/igt@gem_exec_flush@basic-uc-prw-default.html
> 
>   * igt@gem_exec_flush@basic-wb-rw-default:
>     - shard-dg1:          NOTRUN -> [SKIP][18] ([i915#3539] / [i915#4852])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-17/igt@gem_exec_flush@basic-wb-rw-default.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read-active:
>     - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#3281]) +4 other tests skip
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-6/igt@gem_exec_reloc@basic-gtt-read-active.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][20] ([i915#3281])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-write-read-active:
>     - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#3281]) +5 other tests skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-3/igt@gem_exec_reloc@basic-write-read-active.html
>     - shard-dg1:          NOTRUN -> [SKIP][22] ([i915#3281]) +3 other tests skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-17/igt@gem_exec_reloc@basic-write-read-active.html
> 
>   * igt@gem_exec_schedule@deep@rcs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][23] ([i915#4537])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-5/igt@gem_exec_schedule@deep@rcs0.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts:
>     - shard-mtlp:         NOTRUN -> [SKIP][24] ([i915#4537] / [i915#4812])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-5/igt@gem_exec_schedule@preempt-queue-contexts.html
>     - shard-dg2:          NOTRUN -> [SKIP][25] ([i915#4537] / [i915#4812])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-8/igt@gem_exec_schedule@preempt-queue-contexts.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - shard-rkl:          NOTRUN -> [SKIP][26] ([i915#7276])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices:
>     - shard-rkl:          NOTRUN -> [ABORT][27] ([i915#7975] / [i915#8213]) +1 other test abort
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-5/igt@gem_exec_suspend@basic-s4-devices.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-none:
>     - shard-mtlp:         NOTRUN -> [SKIP][28] ([i915#4860]) +1 other test skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-5/igt@gem_fence_thrash@bo-write-verify-none.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-y:
>     - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#4860]) +1 other test skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-8/igt@gem_fence_thrash@bo-write-verify-y.html
> 
>   * igt@gem_lmem_swapping@massive:
>     - shard-mtlp:         NOTRUN -> [SKIP][30] ([i915#4613])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-5/igt@gem_lmem_swapping@massive.html
> 
>   * igt@gem_lmem_swapping@massive-random:
>     - shard-glk:          NOTRUN -> [SKIP][31] ([i915#4613]) +3 other tests skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-glk3/igt@gem_lmem_swapping@massive-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-rkl:          NOTRUN -> [SKIP][32] ([i915#4613]) +4 other tests skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-5/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg1:          [PASS][33] -> [TIMEOUT][34] ([i915#5493]) +1 other test timeout
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_media_vme:
>     - shard-dg1:          NOTRUN -> [SKIP][35] ([i915#284])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-16/igt@gem_media_vme.html
>     - shard-tglu:         NOTRUN -> [SKIP][36] ([i915#284])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-tglu-7/igt@gem_media_vme.html
> 
>   * igt@gem_mmap@pf-nonblock:
>     - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#4083]) +1 other test skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-8/igt@gem_mmap@pf-nonblock.html
>     - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#4083])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-5/igt@gem_mmap@pf-nonblock.html
> 
>   * igt@gem_mmap_offset@clear:
>     - shard-dg1:          NOTRUN -> [INCOMPLETE][39] ([i915#10193]) +1 other test incomplete
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-17/igt@gem_mmap_offset@clear.html
> 
>   * igt@gem_mmap_wc@write-prefaulted:
>     - shard-dg1:          NOTRUN -> [SKIP][40] ([i915#4083])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-17/igt@gem_mmap_wc@write-prefaulted.html
> 
>   * igt@gem_partial_pwrite_pread@reads-snoop:
>     - shard-dg1:          NOTRUN -> [SKIP][41] ([i915#3282]) +1 other test skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-16/igt@gem_partial_pwrite_pread@reads-snoop.html
> 
>   * igt@gem_pwrite@basic-self:
>     - shard-rkl:          NOTRUN -> [SKIP][42] ([i915#3282]) +4 other tests skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@gem_pwrite@basic-self.html
> 
>   * igt@gem_pxp@display-protected-crc:
>     - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#4270])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-7/igt@gem_pxp@display-protected-crc.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-on:
>     - shard-rkl:          NOTRUN -> [SKIP][44] ([i915#4270]) +4 other tests skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@gem_pxp@reject-modify-context-protection-on.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][45] ([i915#8428]) +1 other test skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-5/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html
>     - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#5190] / [i915#8428]) +2 other tests skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-8/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#4079])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-6/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
>     - shard-rkl:          NOTRUN -> [SKIP][48] ([i915#8411]) +1 other test skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-3/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
>     - shard-dg1:          NOTRUN -> [SKIP][49] ([i915#4079])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-17/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [PASS][50] -> [ABORT][51] ([i915#5566])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-glk3/igt@gen9_exec_parse@allowed-single.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-glk4/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@batch-invalid-length:
>     - shard-rkl:          NOTRUN -> [SKIP][52] ([i915#2527]) +3 other tests skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@gen9_exec_parse@batch-invalid-length.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-rkl:          [PASS][53] -> [ABORT][54] ([i915#9820])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-rkl-1/igt@i915_module_load@reload-with-fault-injection.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-snb:          [PASS][55] -> [ABORT][56] ([i915#9820])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#6412])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-3/igt@i915_module_load@resize-bar.html
>     - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#7178])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-17/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-rkl:          NOTRUN -> [SKIP][59] ([i915#5723])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-5/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#4077]) +1 other test skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-8/igt@i915_suspend@fence-restore-untiled.html
>     - shard-mtlp:         NOTRUN -> [SKIP][61] ([i915#4077])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-5/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_addfb_basic@basic-x-tiled-legacy:
>     - shard-dg1:          NOTRUN -> [SKIP][62] ([i915#4212])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-17/igt@kms_addfb_basic@basic-x-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#4212])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-7/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][64] ([i915#8709]) +3 other tests skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-dp-4-4-rc-ccs-cc:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#8709]) +11 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-11/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-dp-4-4-rc-ccs-cc.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#1769] / [i915#3555])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:
>     - shard-snb:          [PASS][67] -> [FAIL][68] ([i915#5956]) +1 other test fail
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-snb2/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-snb7/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_atomic_transition@plane-toggle-modeset-transition:
>     - shard-dg1:          [PASS][69] -> [FAIL][70] ([i915#5956])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-dg1-13/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-16/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
> 
>   * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [FAIL][71] ([i915#5956])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-16/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#5286]) +5 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-3/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html
>     - shard-dg1:          NOTRUN -> [SKIP][73] ([i915#4538] / [i915#5286]) +1 other test skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-17/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#3638]) +2 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-3/igt@kms_big_fb@linear-64bpp-rotate-90.html
>     - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#3638]) +1 other test skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-17/igt@kms_big_fb@linear-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-180:
>     - shard-mtlp:         [PASS][76] -> [ABORT][77] ([i915#10354])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-mtlp-6/igt@kms_big_fb@linear-8bpp-rotate-180.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-3/igt@kms_big_fb@linear-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
>     - shard-mtlp:         NOTRUN -> [SKIP][78] +5 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-5/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#4538] / [i915#5190]) +4 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-8/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
>     - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#5190])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-7/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_joiner@basic:
>     - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#10656])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-7/igt@kms_big_joiner@basic.html
> 
>   * igt@kms_big_joiner@invalid-modeset:
>     - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#10656])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@kms_big_joiner@invalid-modeset.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#12042])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#6095]) +14 other tests skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-5/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-edp-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#6095]) +75 other tests skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#10307] / [i915#6095]) +192 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][87] ([i915#6095]) +37 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-13/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#10307] / [i915#10434] / [i915#6095]) +6 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-8/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#3742])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#11616] / [i915#7213]) +3 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:
>     - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#7828]) +2 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-7/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html
> 
>   * igt@kms_chamelium_frames@hdmi-frame-dump:
>     - shard-mtlp:         NOTRUN -> [SKIP][92] ([i915#7828])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-5/igt@kms_chamelium_frames@hdmi-frame-dump.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-fast:
>     - shard-tglu:         NOTRUN -> [SKIP][93] ([i915#7828])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-tglu-7/igt@kms_chamelium_hpd@dp-hpd-fast.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
>     - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#7828]) +7 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-3/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
>     - shard-dg1:          NOTRUN -> [SKIP][95] ([i915#7828]) +2 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-17/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
> 
>   * igt@kms_content_protection@content-type-change:
>     - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#6944] / [i915#9424])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-5/igt@kms_content_protection@content-type-change.html
>     - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#9424])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-8/igt@kms_content_protection@content-type-change.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#3116])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#7118])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-7/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#11453]) +1 other test skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#11453])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-7/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#3555]) +5 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-128x42:
>     - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#8814])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-sliding-128x42.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#3555]) +2 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-7/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-max-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][105] ([i915#3555] / [i915#8814])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-8/igt@kms_cursor_crc@cursor-sliding-max-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
>     - shard-tglu:         NOTRUN -> [SKIP][106] +3 other tests skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-tglu-7/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#5354]) +10 other tests skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-7/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#4103])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_cursor_legacy@torture-bo@pipe-a:
>     - shard-snb:          [PASS][109] -> [DMESG-WARN][110] ([i915#10166]) +1 other test dmesg-warn
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-snb7/igt@kms_cursor_legacy@torture-bo@pipe-a.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-snb1/igt@kms_cursor_legacy@torture-bo@pipe-a.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#3555] / [i915#3804])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#3804])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#1257])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-7/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#3555] / [i915#3840])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-5/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#9337])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-8/igt@kms_feature_discovery@dp-mst.html
>     - shard-mtlp:         NOTRUN -> [SKIP][116] ([i915#9337])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-5/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#658])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-7/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][118] +5 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-8/igt@kms_flip@2x-flip-vs-panning-interruptible.html
>     - shard-mtlp:         NOTRUN -> [SKIP][119] ([i915#3637])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-5/igt@kms_flip@2x-flip-vs-panning-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][120] +25 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][121] ([i915#9934]) +2 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-17/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check:
>     - shard-tglu:         NOTRUN -> [SKIP][122] ([i915#3637])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-tglu-7/igt@kms_flip@2x-wf_vblank-ts-check.html
> 
>   * igt@kms_flip@flip-vs-fences:
>     - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#8381])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-5/igt@kms_flip@flip-vs-fences.html
>     - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#8381])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-8/igt@kms_flip@flip-vs-fences.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible:
>     - shard-snb:          [PASS][125] -> [FAIL][126] ([i915#2122]) +1 other test fail
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-snb2/igt@kms_flip@plain-flip-ts-check-interruptible.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-snb7/igt@kms_flip@plain-flip-ts-check-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#2672]) +7 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#2672] / [i915#3555]) +7 other tests skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
>     - shard-dg1:          NOTRUN -> [SKIP][129] ([i915#2672] / [i915#3555])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][130] ([i915#2587] / [i915#2672])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:
>     - shard-mtlp:         NOTRUN -> [SKIP][131] ([i915#2672] / [i915#3555] / [i915#8813])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html
>     - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#2672] / [i915#3555] / [i915#5190])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][133] ([i915#2672] / [i915#3555])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#2672])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:
>     - shard-dg2:          [PASS][135] -> [FAIL][136] ([i915#6880])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#8708]) +5 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
>     - shard-dg1:          NOTRUN -> [SKIP][138] +6 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#1825]) +37 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#3458]) +2 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-dg1:          NOTRUN -> [SKIP][141] ([i915#9766])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-16/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
>     - shard-tglu:         NOTRUN -> [SKIP][142] ([i915#9766])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-tglu-7/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][143] ([i915#8708]) +5 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
>     - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#3023]) +24 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-rte:
>     - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#3458]) +10 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render:
>     - shard-mtlp:         NOTRUN -> [SKIP][146] ([i915#1825]) +7 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#3555] / [i915#8228])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-7/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@invalid-hdr:
>     - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#3555] / [i915#8228])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@kms_hdr@invalid-hdr.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg2:          [PASS][149] -> [SKIP][150] ([i915#3555] / [i915#8228]) +1 other test skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-dg2-11/igt@kms_hdr@static-toggle-suspend.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_plane_alpha_blend@alpha-basic:
>     - shard-glk:          NOTRUN -> [FAIL][151] ([i915#12178])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-glk3/igt@kms_plane_alpha_blend@alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][152] ([i915#7862]) +1 other test fail
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-glk3/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [FAIL][153] ([i915#8292])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][154] ([i915#5176]) +4 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#9423]) +8 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-c-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#9423]) +33 other tests skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#9728]) +5 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
>     - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#6953])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
>     - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#6953])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-17/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#5235] / [i915#9423]) +2 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#5235]) +1 other test skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#5235]) +2 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-17/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#9728]) +4 other tests skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-16/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#9685])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-dg2:          [PASS][165] -> [SKIP][166] ([i915#9340])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-dg2-8/igt@kms_pm_lpsp@kms-lpsp.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-6/igt@kms_pm_lpsp@kms-lpsp.html
>     - shard-rkl:          [PASS][167] -> [SKIP][168] ([i915#9340])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-5/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#8430])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg2:          [PASS][170] -> [SKIP][171] ([i915#9519])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-dg2-10/igt@kms_pm_rpm@dpms-lpsp.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-6/igt@kms_pm_rpm@dpms-lpsp.html
>     - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#9519])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html
>     - shard-dg1:          NOTRUN -> [SKIP][173] ([i915#9519])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-17/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-mtlp:         NOTRUN -> [SKIP][174] ([i915#9519])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-5/igt@kms_pm_rpm@modeset-non-lpsp.html
>     - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#9519])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          [PASS][176] -> [SKIP][177] ([i915#9519])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@pm-tiling:
>     - shard-dg1:          NOTRUN -> [SKIP][178] ([i915#4077]) +2 other tests skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-17/igt@kms_pm_rpm@pm-tiling.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#6524])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-cursor-plane-move-continuous-exceed-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#11520]) +4 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@kms_psr2_sf@fbc-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-sf@psr2-pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][181] ([i915#9808]) +2 other tests skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-5/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-sf@psr2-pipe-b-edp-1.html
> 
>   * igt@kms_psr2_sf@fbc-overlay-plane-update-sf-dmg-area:
>     - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#11520]) +1 other test skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-7/igt@kms_psr2_sf@fbc-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>     - shard-dg1:          NOTRUN -> [SKIP][183] ([i915#11520])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-17/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr@fbc-pr-primary-render:
>     - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#1072] / [i915#9732]) +7 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-7/igt@kms_psr@fbc-pr-primary-render.html
> 
>   * igt@kms_psr@fbc-psr-cursor-plane-onoff:
>     - shard-tglu:         NOTRUN -> [SKIP][185] ([i915#9732]) +1 other test skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-tglu-7/igt@kms_psr@fbc-psr-cursor-plane-onoff.html
> 
>   * igt@kms_psr@fbc-psr2-cursor-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][186] ([i915#1072] / [i915#9732]) +5 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-16/igt@kms_psr@fbc-psr2-cursor-blt.html
> 
>   * igt@kms_psr@pr-primary-render:
>     - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#9688]) +2 other tests skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-5/igt@kms_psr@pr-primary-render.html
> 
>   * igt@kms_psr@psr2-cursor-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#1072] / [i915#9732]) +22 other tests skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-3/igt@kms_psr@psr2-cursor-mmap-gtt.html
> 
>   * igt@kms_psr@psr2-sprite-plane-onoff:
>     - shard-glk:          NOTRUN -> [SKIP][189] +137 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-glk4/igt@kms_psr@psr2-sprite-plane-onoff.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#5289])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
>     - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#11131])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-7/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
> 
>   * igt@kms_setmode@invalid-clone-exclusive-crtc:
>     - shard-dg1:          NOTRUN -> [SKIP][192] ([i915#3555])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-16/igt@kms_setmode@invalid-clone-exclusive-crtc.html
>     - shard-tglu:         NOTRUN -> [SKIP][193] ([i915#3555])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-tglu-7/igt@kms_setmode@invalid-clone-exclusive-crtc.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#8623])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
>     - shard-snb:          [PASS][195] -> [FAIL][196] ([i915#9196]) +1 other test fail
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-snb2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-snb5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_vrr@max-min:
>     - shard-mtlp:         NOTRUN -> [SKIP][197] ([i915#8808] / [i915#9906])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-5/igt@kms_vrr@max-min.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-glk:          NOTRUN -> [SKIP][198] ([i915#2437])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-glk3/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#2436])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf@global-sseu-config:
>     - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#7387])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-7/igt@perf@global-sseu-config.html
> 
>   * igt@perf_pmu@busy-double-start@bcs0:
>     - shard-mtlp:         [PASS][201] -> [FAIL][202] ([i915#4349])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-mtlp-6/igt@perf_pmu@busy-double-start@bcs0.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-4/igt@perf_pmu@busy-double-start@bcs0.html
> 
>   * igt@perf_pmu@busy-double-start@vecs1:
>     - shard-dg2:          [PASS][203] -> [FAIL][204] ([i915#4349]) +4 other tests fail
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-10/igt@perf_pmu@busy-double-start@vecs1.html
> 
>   * igt@perf_pmu@frequency@gt0:
>     - shard-dg2:          NOTRUN -> [FAIL][205] ([i915#6806]) +1 other test fail
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-7/igt@perf_pmu@frequency@gt0.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-dg1:          NOTRUN -> [SKIP][206] ([i915#8516])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-17/igt@perf_pmu@rc6-all-gts.html
>     - shard-rkl:          NOTRUN -> [SKIP][207] ([i915#8516])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-3/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#3708])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-5/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@sriov_basic@bind-unbind-vf:
>     - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#9917])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-7/igt@sriov_basic@bind-unbind-vf.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on:
>     - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#9917])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@sriov_basic@enable-vfs-autoprobe-on.html
> 
>   * igt@syncobj_wait@invalid-wait-zero-handles:
>     - shard-dg1:          NOTRUN -> [FAIL][211] ([i915#9781])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-16/igt@syncobj_wait@invalid-wait-zero-handles.html
>     - shard-tglu:         NOTRUN -> [FAIL][212] ([i915#9781])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-tglu-7/igt@syncobj_wait@invalid-wait-zero-handles.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@idle@rcs0:
>     - shard-rkl:          [FAIL][213] ([i915#7742]) -> [PASS][214] +1 other test pass
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-rkl-4/igt@drm_fdinfo@idle@rcs0.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-5/igt@drm_fdinfo@idle@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share:
>     - shard-tglu:         [FAIL][215] ([i915#2842]) -> [PASS][216] +3 other tests pass
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-tglu-7/igt@gem_exec_fair@basic-pace-share.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-tglu-9/igt@gem_exec_fair@basic-pace-share.html
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-dg2:          [INCOMPLETE][217] -> [PASS][218]
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-dg2-5/igt@gem_exec_suspend@basic-s0.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-8/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - shard-dg2:          [INCOMPLETE][219] ([i915#11441]) -> [PASS][220]
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-dg2-5/igt@gem_exec_suspend@basic-s0@smem.html
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-8/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg1:          [ABORT][221] ([i915#9820]) -> [PASS][222]
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-dg1-15/igt@i915_module_load@reload-with-fault-injection.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-16/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-tglu:         [ABORT][223] ([i915#9820]) -> [PASS][224]
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-tglu-8/igt@i915_module_load@reload-with-fault-injection.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@kms_atomic_transition@modeset-transition-nonblocking:
>     - shard-glk:          [FAIL][225] ([i915#12177]) -> [PASS][226]
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-glk3/igt@kms_atomic_transition@modeset-transition-nonblocking.html
> 
>   * igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs:
>     - shard-glk:          [FAIL][227] ([i915#11859]) -> [PASS][228]
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-glk3/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4:
>     - shard-dg1:          [FAIL][229] ([i915#5956]) -> [PASS][230] +1 other test pass
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-dg1-16/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4.html
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-18/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_atomic_transition@plane-toggle-modeset-transition:
>     - shard-snb:          [FAIL][231] ([i915#5956]) -> [PASS][232] +1 other test pass
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-snb7/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-snb1/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
>     - shard-dg2:          [SKIP][233] ([i915#3555]) -> [PASS][234]
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-dg2-2/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
> 
>   * igt@kms_flip@wf_vblank-ts-check-interruptible:
>     - shard-dg2:          [FAIL][235] ([i915#2122]) -> [PASS][236]
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-dg2-2/igt@kms_flip@wf_vblank-ts-check-interruptible.html
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-11/igt@kms_flip@wf_vblank-ts-check-interruptible.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-snb:          [SKIP][237] -> [PASS][238]
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt.html
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-rkl:          [SKIP][239] ([i915#9519]) -> [PASS][240]
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          [SKIP][241] ([i915#9519]) -> [PASS][242] +2 other tests pass
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-dg2:          [FAIL][243] ([IGT#2]) -> [PASS][244]
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-dg2-2/igt@kms_sysfs_edid_timing.html
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-11/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:
>     - shard-tglu:         [FAIL][245] ([i915#9196]) -> [PASS][246] +2 other tests pass
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-tglu-7/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_vblank@query-forked-hang:
>     - shard-dg1:          [INCOMPLETE][247] -> [PASS][248] +1 other test pass
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-dg1-17/igt@kms_vblank@query-forked-hang.html
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg1-16/igt@kms_vblank@query-forked-hang.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_content_protection@uevent:
>     - shard-dg2:          [FAIL][249] ([i915#1339] / [i915#7173]) -> [SKIP][250] ([i915#7118] / [i915#9424])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-dg2-11/igt@kms_content_protection@uevent.html
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-10/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x512:
>     - shard-dg2:          [SKIP][251] ([i915#11453] / [i915#3359]) -> [SKIP][252] ([i915#11453])
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-dg2-11/igt@kms_cursor_crc@cursor-offscreen-512x512.html
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-3/igt@kms_cursor_crc@cursor-offscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x170:
>     - shard-dg2:          [SKIP][253] ([i915#11453]) -> [SKIP][254] ([i915#11453] / [i915#3359]) +1 other test skip
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-512x170.html
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-11/igt@kms_cursor_crc@cursor-onscreen-512x170.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:
>     - shard-mtlp:         [ABORT][255] -> [SKIP][256] ([i915#3555] / [i915#8813])
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         [ABORT][257] ([i915#10354]) -> [SKIP][258] ([i915#3555] / [i915#8810])
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-dg2:          [SKIP][259] ([i915#6953] / [i915#9423]) -> [FAIL][260] ([i915#8292])
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-dg2-7/igt@kms_plane_scaling@intel-max-src-size.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_psr@psr-cursor-render:
>     - shard-dg2:          [SKIP][261] ([i915#1072] / [i915#9732]) -> [SKIP][262] ([i915#1072] / [i915#9673] / [i915#9732]) +14 other tests skip
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-dg2-2/igt@kms_psr@psr-cursor-render.html
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-11/igt@kms_psr@psr-cursor-render.html
> 
>   * igt@kms_psr@psr2-primary-mmap-gtt:
>     - shard-dg2:          [SKIP][263] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][264] ([i915#1072] / [i915#9732]) +9 other tests skip
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-dg2-11/igt@kms_psr@psr2-primary-mmap-gtt.html
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-10/igt@kms_psr@psr2-primary-mmap-gtt.html
> 
>   * igt@kms_rotation_crc@bad-tiling:
>     - shard-dg2:          [SKIP][265] ([i915#11131]) -> [SKIP][266] ([i915#11131] / [i915#4235])
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-dg2-7/igt@kms_rotation_crc@bad-tiling.html
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-11/igt@kms_rotation_crc@bad-tiling.html
> 
>   * igt@kms_rotation_crc@primary-rotation-270:
>     - shard-dg2:          [SKIP][267] ([i915#11131] / [i915#4235]) -> [SKIP][268] ([i915#11131]) +1 other test skip
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-dg2-11/igt@kms_rotation_crc@primary-rotation-270.html
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-3/igt@kms_rotation_crc@primary-rotation-270.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
>     - shard-dg2:          [SKIP][269] ([i915#11131] / [i915#5190]) -> [SKIP][270] ([i915#11131] / [i915#4235] / [i915#5190])
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15387/shard-dg2-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/shard-dg2-11/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html
> 
>   
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [i915#10166]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10166
>   [i915#10193]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10193
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10354
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#11131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131
>   [i915#11441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441
>   [i915#11453]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11616]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616
>   [i915#11859]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859
>   [i915#12042]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12042
>   [i915#12177]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12177
>   [i915#12178]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12178
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#1339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
>   [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2846
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4873]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4873
>   [i915#5176]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
>   [i915#5566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
>   [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6806
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7178]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7178
>   [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
>   [i915#7276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276
>   [i915#7387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387
>   [i915#7742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7862]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7862
>   [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
>   [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8292]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8808
>   [i915#8810]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810
>   [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
>   [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
>   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9728]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9728
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781
>   [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
>   [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_15387 -> Patchwork_138446v1
> 
>   CI-20190529: 20190529
>   CI_DRM_15387: bab1666fc2379a31ac48e7d61683d3edeaf29244 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8011: 26dca87f1252b7f6f0c0f833050256f0244d61e9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_138446v1: bab1666fc2379a31ac48e7d61683d3edeaf29244 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138446v1/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
