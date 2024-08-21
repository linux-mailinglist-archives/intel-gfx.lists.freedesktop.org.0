Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBC695919A
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 02:08:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0378D10E76A;
	Wed, 21 Aug 2024 00:08:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XaeTlbG7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F167210E6D3;
 Wed, 21 Aug 2024 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724198897; x=1755734897;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=M7GBS3J1ZcVQBRtAPPyLdCRGAveNK26DV7fd8OgD5j0=;
 b=XaeTlbG7bMyLPwWrpenIhNl4uT/TjomFwbpvb/GkWpvZP1yKlo0PBy3+
 Orj8w08MoYLsstmL5BhsMR3F893yQ4yCUX4OA3RwWYbAr6kXC8AvfvC4q
 9WUpb27Wn9bT3J5/P587RPrzvujaf77oPmvUiGkQ5wJso5+miDk6ctFmM
 JXO5yPILKg4Pj6+z1h2IwOyTzUVWsCSBDPGxROTBYn5AIQza9F6UTIL/m
 8VvaGPLo+1YxqPs2D5HFJdyncsjtTLv3vLmYQC5Ggjm+WDyLJDb4gLRl4
 6xfgPGqYHMLnv751OZm92Cx2geh4z2vTZ3TrvyFNpLSowph8rwWJcTY5g g==;
X-CSE-ConnectionGUID: ObMaUeHqS+CaGhrtk/2bWw==
X-CSE-MsgGUID: P/bJHfEzTCuiq+CBKDCuwQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="26402206"
X-IronPort-AV: E=Sophos;i="6.10,163,1719903600"; d="scan'208";a="26402206"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 17:08:16 -0700
X-CSE-ConnectionGUID: 2AQsMiBAQoaadzdU3CpFRQ==
X-CSE-MsgGUID: 6TsvRINJRNSZwGOH06UfCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,163,1719903600"; d="scan'208";a="65794552"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Aug 2024 17:08:16 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 17:08:15 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 20 Aug 2024 17:08:15 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 20 Aug 2024 17:08:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c1rj6UvQ+W6b3OLTV1hrKXPUGqm979u0XXnAkIZ5LM6t6c42dQ5DjwesWOemwAFP63l8Q0Ztc7KFk51vk2NblNIWyW02BKhZa2wPe6Aum/7KK5OKJ3f6u6+8mkfUWWCK850AwkfH7x5HBHFjdH+wyYPpZ2Ayuk7truCwepBqJAkiK7+kgjln9sC1QUlI+DAqjdqKwoI/vdadxJFUM97XPOY+jZ561nW/PXlkHftaHUkyca94e7T+0kCoRbRpQiBjcuFsFZiaLr6qL2hieO61oZx/SEkyC2Wy+H6D69NgNbOJBCEUASFsyLoqRK5Evxr6FVJn4yBrYaN+SSKtRBFShg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e0wZT3M+MNtuWUw5xFp18OV2KQQ+i82NXaKb+gKYwwY=;
 b=nqsxlF1fs6q/+1NNy2IdpzJA+1EiLI4XKGROUkqTWVkjkoP55NK3aN1SR0JdfLsR9Kc+ZAmTXlFEcmL+mUu7V+njdY+fRTZL1VW9MENCvv8AAmDY4EB6CEU/D8cz0Xdnkhif7fU2ci0C1EeBQ7DVwshc9LhpFUzyW7BZW16DKnXErZ+xrCOvWDv5pj7db9ksrT1iix4Whe+RYj2ygZlsFoQaiH4xr/oon2PLp0YIbPW/l6CsbBKtUNV6kvw3xFSqxrEfJPI5EqnBDzSXmzvyxBetNuuK3wSUsyAHaaVC+qyg/RCA1bq2c8CuHnLvIIr+yoaPo6A1QBSf6jb9u+FH8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS0PR11MB6541.namprd11.prod.outlook.com (2603:10b6:8:d3::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.20; Wed, 21 Aug
 2024 00:08:13 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7875.019; Wed, 21 Aug 2024
 00:08:13 +0000
Date: Tue, 20 Aug 2024 17:08:03 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 09/10] drm/i915: remove display stepping handling
Message-ID: <20240821000803.GW5091@mdroper-desk1.amr.corp.intel.com>
References: <cover.1724180287.git.jani.nikula@intel.com>
 <d64c5e8563dcb8858569d5578230f6b675acdafb.1724180287.git.jani.nikula@intel.com>
 <20240821000410.GU5091@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240821000410.GU5091@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BY5PR04CA0001.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::11) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS0PR11MB6541:EE_
X-MS-Office365-Filtering-Correlation-Id: 2652d835-ec19-41a9-0264-08dcc175594f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?QetBcT1Ixcq0f4BJLjtKKiJLkbumxl0dQ0+xx8sP6B+ktWUXLOYSM6cRpZZF?=
 =?us-ascii?Q?pJ26/l5Cu24F0C1dNqHnvx3T7Ry5MQY4p2W4PKwHQc3BM1WeWBJaLwTJ8KxG?=
 =?us-ascii?Q?lxZENqT6YTYTZj9qANTR0TVxyXQw78dcViagdsTOhBoss95xutjktySulOMj?=
 =?us-ascii?Q?GY1a2nL+jAWWoMWIfR0B7hOHWzdaC97kQ0c7aWHrtHq0zVxjqGW7fuyJ712U?=
 =?us-ascii?Q?TbqmCbWn1gSPsmBP3LicldvfbmNOiPnM3LKONu1LXegm/l5C/HMQZP/GqPy6?=
 =?us-ascii?Q?hk/+Q/nixYqGARfl7ikkUH7qFzdt2rBedSS47R7lAgeoTru0BhD9xGZE4fZj?=
 =?us-ascii?Q?g0aWQk5J7G+7rhJ/vYkLjl/ULMwApOLEMsqHZNDrdBJYuzB2sO2fy1FYSrYO?=
 =?us-ascii?Q?tBKS62fa0T8Tu3jTfF/T1phIBhjtAYsadIqfPRxEsa76Igjp3G4LZceqsNh2?=
 =?us-ascii?Q?3mLggK1Y7vyHJsEX2A2FJZNTmgy9KHPmCwUh/I5iwDzNyHA/22Sp+9xRZKoF?=
 =?us-ascii?Q?NEdv/6BLG/ZGhWp6AZsRIQ+1ArFtdC5Kh1kQgAlDj7xR+4mTWwKMddAkfa9c?=
 =?us-ascii?Q?EHUHeFu8XJbBY1xOBx6P7/r9T4F8Z0KvynWje3jA6vueFxhNKIIbXf7ElKtZ?=
 =?us-ascii?Q?sBcQvOEt3BKhGIwdkJzGFQtkto3EJMDrhEvffZpKR7hXI0LthZvzLktFIZNA?=
 =?us-ascii?Q?obsSrWWXvdWt1CVSmJ0wazDZ12aYpBFtUX1VYKabn8B0zMMaF/o+PW9vgKXR?=
 =?us-ascii?Q?P4VOvvD6zteTjie7Y/N891MglSCvxEHneYvuOk1prx4itKOhAfMR+AhSOE+J?=
 =?us-ascii?Q?u5qJCnWoIdIPODpFBYvhU+hsRUA3McKxewPznKodcM5UsId7ATcOuNb3RZyl?=
 =?us-ascii?Q?bW6GRd+Vh2q9tnwzNm1hPKugyXQs2hpiZtzAOedMiYiUlVdc0+MszE/u7Vmo?=
 =?us-ascii?Q?/+P7gk14EthKLj4+T+3y3TTIGh+AZGKCJglndnt42x4X+A39pjVLFG1lO5Dc?=
 =?us-ascii?Q?8caXDuyQN6mzNqrkxXf1ZIinmt+aQKqd6mQbIgwsvFAC+PGm92jgPLK0YRLn?=
 =?us-ascii?Q?FU3QZg1BnOkxNA/GR0w+Himo/t5GZJfTWymdddm++BSCw/EkCPPNyx8xsz3o?=
 =?us-ascii?Q?LbC0la75Q9bZcApvmbB9ac1/JBE1FVLqszDGramcKLd9b9ljXrmJxrPJ3qEy?=
 =?us-ascii?Q?tJbIDfpLep5qP3seVVOA7goC1qDdqBf09UrutfT7qCSvaDZe33Usixe9cUgN?=
 =?us-ascii?Q?Hbq4YLp1mzIJD7ZxKCkGpBvwOwI0KSNUu8DIjm5Xznd0rGvtRzuMbUlKrhBm?=
 =?us-ascii?Q?Di7akBZ0d6WQlJ2t10HREKvIWUEJ3CBujqxFnuciuORSdA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GGIhWLNROsUrtr0R5K3ygZVpt3RWdRcja93KMh9UrGEhlfkyIvw/4EAR19BX?=
 =?us-ascii?Q?J22ZtbVcgh6H8dlsr4z6/khGQIBOpwSmAff54NCLXpjgam1PXB4+pz5D2cGr?=
 =?us-ascii?Q?fKwNzYK0wiJIVTr2h2I1Z67WOtDOZ7MFPPOXEq9aFaFSFqiRtwupyr3h2VI5?=
 =?us-ascii?Q?ypwdnVn4fkohaNgP56dR8JloXAicAgNWc0AIr5pKnDO4hAMz4WnsT1UIZr0k?=
 =?us-ascii?Q?GyVOXgM8e8ywZcIwqlDbSJZeRNhcbCWeLfpJjP8AEZUf8LbWBAC8BfFTRZll?=
 =?us-ascii?Q?SIpfP9IkSfddgSO59o+BLvm64kuFAORHFLq5lq3Xe3QfhjzIPwZyeeUnxHXA?=
 =?us-ascii?Q?8n/sjurFN1Ah2kTFRjPrFwf5hfPreqTA1g0yDWXEw7HTUXegqcGp91uhHxoj?=
 =?us-ascii?Q?z1m+SsK+bJGgGuH6PuQlz0ZmciY93qKvQ5ezMsgE4Ag2J4pbA+Z7BlHVwtcS?=
 =?us-ascii?Q?eqP24kfD4FhuYZouUZ6jcqYiPtFDszHPGSo+yAHTnNWQmobKKEEgOPA6+BBc?=
 =?us-ascii?Q?CwSYfdrwlZPc2qaHCZJSWhkZi0pSp5NC/YeShDKg9eNHpyDnF3B26sFoQVzO?=
 =?us-ascii?Q?+c9wo9I5yijFaXqsm9SpjAthS3CGkeQfkonaC/F2Bwwre+CTjOzT8cgerqcS?=
 =?us-ascii?Q?7uXHf6ifS55oEXKm4kq9MAytALCrdX7bo5qncW7+WSQ9D+ImMsNNn+Ed2ubQ?=
 =?us-ascii?Q?y/5Eq+Y7Ey4cyRJ08qN9AuGP8qzoRKiOJG8S0Dcallw4n++PykJoVRwad4O0?=
 =?us-ascii?Q?ltfJ2aSM4b5Jf8T0VpPKQZM4YZAKPRg9m23gGq9uWj5mAw64Hs6NT/va6qs0?=
 =?us-ascii?Q?xwdrm8p8zf1BKSGo0YMEut1nVWTCVBoE/N0YT+pkTvxFWrJJOYJ86i2b41nn?=
 =?us-ascii?Q?Qgtf55w712ywunPCD8KFIm8UqKrrZcFj+4ior3UpEOChTArAIq8Sxhtm1VdZ?=
 =?us-ascii?Q?iN3CMMSfaU7+k9SUuCUcwyd4yUWvCvAmSmUXaXlplulTWwox+0jdPFGzLmiN?=
 =?us-ascii?Q?3jOaF/+dmmv5aWame4lC8WbJ7Ef5Fo1htODlQt5Fa/J7Ez19GaP2eajv/5AS?=
 =?us-ascii?Q?XGf70aBbJ75ifhKH6dsF+V2te7jkbXmvREWHaUjoibeM8LhQkeCOYDlTYN0C?=
 =?us-ascii?Q?cl586/pf20g0wG2+D538dgMtmx8ghqVsOJasoM9NdBKZZNmb/YswAlzxp1XW?=
 =?us-ascii?Q?QmXzH9VqCuXLQSfkqx9VOXeXWpMFBzdYbB2kkvnOkponDFuGy40G16fZwK3m?=
 =?us-ascii?Q?CoSX16kcu6JYv0zprMh6vBiABSdZw1DyVE5Xz2kg1Z+Or+y+EvH3ah0WZVQU?=
 =?us-ascii?Q?OhsiyqesYgqU4e/wcqYmzJ00mgKYiruuw4eovvVOtxH2ubg/04xaSoz1nOYF?=
 =?us-ascii?Q?Z4OqN2svs2CwbvPqyxj/Mn788Y5OfILdXG914qGGw9ACqs7oMrRLctHZlgNK?=
 =?us-ascii?Q?L02+PvISC84Kfw0e6bz/+jwBv4tvegvUkf3L4VJcp+Yom51GVWdHnpqL2IqQ?=
 =?us-ascii?Q?HNCe+abDd5y12CS9wS6UYmRSBnPlQ73U8DydP/yKeLK0IcD+8lb+4V64wjZt?=
 =?us-ascii?Q?Dj4/LxhkII1bCN/uSkmUKBL4Mln2npuOq0vGpCS6Atcc7x8oJlRCVNLIoEPu?=
 =?us-ascii?Q?3Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2652d835-ec19-41a9-0264-08dcc175594f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2024 00:08:13.4339 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MMH21SY1kUm9yusuZj1maEi/KSbrCIn91fC29MAzfClEPVqzRAi528+ApmaMj3y2lVwe8V2uZseCvm4U2em3LASHSIEspAiqUMd1nl71Zts=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6541
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

On Tue, Aug 20, 2024 at 05:04:12PM -0700, Matt Roper wrote:
> On Tue, Aug 20, 2024 at 10:00:42PM +0300, Jani Nikula wrote:
> > The code is now unused. Remove.
> > 
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> 
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

BTW, after this series lands, we should also go back and drop
IS_BASEDIE_STEP and its related code from i915 as well.  That was only
relevant to PVC and i915 no longer present in i915.


Matt

> 
> > ---
> >  drivers/gpu/drm/i915/intel_step.c | 79 ++++++++++++++-----------------
> >  drivers/gpu/drm/i915/intel_step.h |  1 -
> >  2 files changed, 36 insertions(+), 44 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
> > index 80464e4edcce..285b96fadfd5 100644
> > --- a/drivers/gpu/drm/i915/intel_step.c
> > +++ b/drivers/gpu/drm/i915/intel_step.c
> > @@ -23,8 +23,7 @@
> >   * use a macro to define these to make it easier to identify the platforms
> >   * where the two steppings can deviate.
> >   */
> > -#define COMMON_STEP(x)  .graphics_step = STEP_##x, .display_step = STEP_##x, .media_step = STEP_##x
> > -#define COMMON_GT_MEDIA_STEP(x)  .graphics_step = STEP_##x, .media_step = STEP_##x
> > +#define COMMON_STEP(x)  .graphics_step = STEP_##x, .media_step = STEP_##x
> >  
> >  static const struct intel_step_info skl_revids[] = {
> >  	[0x6] = { COMMON_STEP(G0) },
> > @@ -34,13 +33,13 @@ static const struct intel_step_info skl_revids[] = {
> >  };
> >  
> >  static const struct intel_step_info kbl_revids[] = {
> > -	[1] = { COMMON_GT_MEDIA_STEP(B0), .display_step = STEP_B0 },
> > -	[2] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_B0 },
> > -	[3] = { COMMON_GT_MEDIA_STEP(D0), .display_step = STEP_B0 },
> > -	[4] = { COMMON_GT_MEDIA_STEP(F0), .display_step = STEP_C0 },
> > -	[5] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_B1 },
> > -	[6] = { COMMON_GT_MEDIA_STEP(D1), .display_step = STEP_B1 },
> > -	[7] = { COMMON_GT_MEDIA_STEP(G0), .display_step = STEP_C0 },
> > +	[1] = { COMMON_STEP(B0) },
> > +	[2] = { COMMON_STEP(C0) },
> > +	[3] = { COMMON_STEP(D0) },
> > +	[4] = { COMMON_STEP(F0) },
> > +	[5] = { COMMON_STEP(C0) },
> > +	[6] = { COMMON_STEP(D1) },
> > +	[7] = { COMMON_STEP(G0) },
> >  };
> >  
> >  static const struct intel_step_info bxt_revids[] = {
> > @@ -64,16 +63,16 @@ static const struct intel_step_info jsl_ehl_revids[] = {
> >  };
> >  
> >  static const struct intel_step_info tgl_uy_revids[] = {
> > -	[0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_A0 },
> > -	[1] = { COMMON_GT_MEDIA_STEP(B0), .display_step = STEP_C0 },
> > -	[2] = { COMMON_GT_MEDIA_STEP(B1), .display_step = STEP_C0 },
> > -	[3] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_D0 },
> > +	[0] = { COMMON_STEP(A0) },
> > +	[1] = { COMMON_STEP(B0) },
> > +	[2] = { COMMON_STEP(B1) },
> > +	[3] = { COMMON_STEP(C0) },
> >  };
> >  
> >  /* Same GT stepping between tgl_uy_revids and tgl_revids don't mean the same HW */
> >  static const struct intel_step_info tgl_revids[] = {
> > -	[0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_B0 },
> > -	[1] = { COMMON_GT_MEDIA_STEP(B0), .display_step = STEP_D0 },
> > +	[0] = { COMMON_STEP(A0) },
> > +	[1] = { COMMON_STEP(B0) },
> >  };
> >  
> >  static const struct intel_step_info rkl_revids[] = {
> > @@ -88,49 +87,49 @@ static const struct intel_step_info dg1_revids[] = {
> >  };
> >  
> >  static const struct intel_step_info adls_revids[] = {
> > -	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_A0 },
> > -	[0x1] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_A2 },
> > -	[0x4] = { COMMON_GT_MEDIA_STEP(B0), .display_step = STEP_B0 },
> > -	[0x8] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_B0 },
> > -	[0xC] = { COMMON_GT_MEDIA_STEP(D0), .display_step = STEP_C0 },
> > +	[0x0] = { COMMON_STEP(A0) },
> > +	[0x1] = { COMMON_STEP(A0) },
> > +	[0x4] = { COMMON_STEP(B0) },
> > +	[0x8] = { COMMON_STEP(C0) },
> > +	[0xC] = { COMMON_STEP(D0) },
> >  };
> >  
> >  static const struct intel_step_info adlp_revids[] = {
> > -	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_A0 },
> > -	[0x4] = { COMMON_GT_MEDIA_STEP(B0), .display_step = STEP_B0 },
> > -	[0x8] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_C0 },
> > -	[0xC] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_D0 },
> > +	[0x0] = { COMMON_STEP(A0) },
> > +	[0x4] = { COMMON_STEP(B0) },
> > +	[0x8] = { COMMON_STEP(C0) },
> > +	[0xC] = { COMMON_STEP(C0) },
> >  };
> >  
> >  static const struct intel_step_info dg2_g10_revid_step_tbl[] = {
> > -	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_A0 },
> > -	[0x1] = { COMMON_GT_MEDIA_STEP(A1), .display_step = STEP_A0 },
> > -	[0x4] = { COMMON_GT_MEDIA_STEP(B0), .display_step = STEP_B0 },
> > -	[0x8] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_C0 },
> > +	[0x0] = { COMMON_STEP(A0) },
> > +	[0x1] = { COMMON_STEP(A1) },
> > +	[0x4] = { COMMON_STEP(B0) },
> > +	[0x8] = { COMMON_STEP(C0) },
> >  };
> >  
> >  static const struct intel_step_info dg2_g11_revid_step_tbl[] = {
> > -	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_B0 },
> > -	[0x4] = { COMMON_GT_MEDIA_STEP(B0), .display_step = STEP_C0 },
> > -	[0x5] = { COMMON_GT_MEDIA_STEP(B1), .display_step = STEP_C0 },
> > +	[0x0] = { COMMON_STEP(A0) },
> > +	[0x4] = { COMMON_STEP(B0) },
> > +	[0x5] = { COMMON_STEP(B1) },
> >  };
> >  
> >  static const struct intel_step_info dg2_g12_revid_step_tbl[] = {
> > -	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_C0 },
> > -	[0x1] = { COMMON_GT_MEDIA_STEP(A1), .display_step = STEP_C0 },
> > +	[0x0] = { COMMON_STEP(A0) },
> > +	[0x1] = { COMMON_STEP(A1) },
> >  };
> >  
> >  static const struct intel_step_info adls_rpls_revids[] = {
> > -	[0x4] = { COMMON_GT_MEDIA_STEP(D0), .display_step = STEP_D0 },
> > -	[0xC] = { COMMON_GT_MEDIA_STEP(D0), .display_step = STEP_C0 },
> > +	[0x4] = { COMMON_STEP(D0) },
> > +	[0xC] = { COMMON_STEP(D0) },
> >  };
> >  
> >  static const struct intel_step_info adlp_rplp_revids[] = {
> > -	[0x4] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_E0 },
> > +	[0x4] = { COMMON_STEP(C0) },
> >  };
> >  
> >  static const struct intel_step_info adlp_n_revids[] = {
> > -	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_D0 },
> > +	[0x0] = { COMMON_STEP(A0) },
> >  };
> >  
> >  static u8 gmd_to_intel_step(struct drm_i915_private *i915,
> > @@ -158,11 +157,6 @@ void intel_step_init(struct drm_i915_private *i915)
> >  						       &RUNTIME_INFO(i915)->graphics.ip);
> >  		step.media_step = gmd_to_intel_step(i915,
> >  						    &RUNTIME_INFO(i915)->media.ip);
> > -		step.display_step = STEP_A0 + DISPLAY_RUNTIME_INFO(i915)->ip.step;
> > -		if (step.display_step >= STEP_FUTURE) {
> > -			drm_dbg(&i915->drm, "Using future display steppings\n");
> > -			step.display_step = STEP_FUTURE;
> > -		}
> >  
> >  		RUNTIME_INFO(i915)->step = step;
> >  
> > @@ -252,7 +246,6 @@ void intel_step_init(struct drm_i915_private *i915)
> >  		} else {
> >  			drm_dbg(&i915->drm, "Using future steppings\n");
> >  			step.graphics_step = STEP_FUTURE;
> > -			step.display_step = STEP_FUTURE;
> >  		}
> >  	}
> >  
> > diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
> > index 96dfca4cba73..83bd1190edf5 100644
> > --- a/drivers/gpu/drm/i915/intel_step.h
> > +++ b/drivers/gpu/drm/i915/intel_step.h
> > @@ -16,7 +16,6 @@ struct intel_step_info {
> >  	 * the expectation breaks gmd_to_intel_step().
> >  	 */
> >  	u8 graphics_step;	/* Represents the compute tile on Xe_HPC */
> > -	u8 display_step;
> >  	u8 media_step;
> >  	u8 basedie_step;
> >  };
> > -- 
> > 2.39.2
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
