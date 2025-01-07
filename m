Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E21D9A04D34
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 00:10:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B891210E334;
	Tue,  7 Jan 2025 23:10:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bDmgjobn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFD1010E334
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2025 23:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736291428; x=1767827428;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=tb2wNsLc6XEfzne0verCumiInJ3YQ3pftoWbAZiSfSk=;
 b=bDmgjobnNynijNOCi0FpoVpwzhZjq6+ukpXUrjFpG8Jh9rkjvvdjvFp5
 873nzAPB75BC8Wht7AwRq6bFrZThCOvFxrwvrCGflfijyX3lGsDMvqex7
 gESGfJbP/2YdJQi3iW/8DiwHCoaoH8C8AtPyhPc2l/GvanAgNTenSXIqL
 WaQ5i7m5LlaPIT9QYQnDAq4XIalXDEU/R+Y2JrMDQ1JW6SZJutFUC7clm
 TSZ7zfdjQgAxdDq4SjsUFZ+eyylcgaSYQxYhPWfLKdt94x3BjyMdcpEER
 Eajv0ga+gPpRyv7gfUxjXAHfb0PcS7Td0+fS5WXqbiWKsqWF5kJi/8Hqo Q==;
X-CSE-ConnectionGUID: 3WYOLCy+Qi6vwACLjkR0eA==
X-CSE-MsgGUID: /pPe4WdxRR2LdukWpH2aGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="47490264"
X-IronPort-AV: E=Sophos;i="6.12,296,1728975600"; d="scan'208";a="47490264"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 15:10:27 -0800
X-CSE-ConnectionGUID: Vy437TFbTnKrHnpwMGxuXw==
X-CSE-MsgGUID: CCRS1U2TTQ23hkpbcFy+2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="140245011"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jan 2025 15:10:27 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 7 Jan 2025 15:10:26 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 7 Jan 2025 15:10:26 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 7 Jan 2025 15:10:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j5ru5lc5EOEcGoHxGZhCy3VawWEt0ezr16FLDaheqb/vYHFKrbJKTCeJooOjFY9ovihrpaEneKMbFeR64YUuMPKvRWBZnMdWIOY294JP9Cl5/wZzKg9+jrJCU/EAAmQNyt+6VbYY5Q+zqDhvDjyh+a3uzl/xi4er/P8BfCiQ7zqaAcWefTW0fvUPNNweO8XHVWVy78llQ+Ho9zTX0k/u2OC5C/aH9SY8saChCqTCdVHxQZx0SaamvL7j6yJKOI48HYh4Tbv2EHimiiNeF2467fNa3vPlpvEqPlz69AYPfJawZ5S/qQkCNEaLZ3tGx3V5FklPT/SK61hjXoKIIOOpvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3ZBglQFRFvuN36EcQPYB2tnyIH0S4E5nKc6jGaiWLrs=;
 b=qXwMB07vyNO8qItRyUQqwg/KNP3k/VTTyRIm/M8XRlMfwW9ItYMLXwH5Hij/7eJHPpLiP0e03j33N+S80khPTIWFxoRxC9UgRh7ixP2jSxxJm0rBxTp220fNRRcsSnwZKNOIvr+1hccoKuGtRoBr+q9fpKfet9cu5Gzn1nEMSx0GwQonZ19d6BCvnixBi4K0y9R01TUpiVaPIAt20Ueu7HgkJqg2vIMmJG2Q2vzvHh81FyJE6KP3wGhC7l7rmyiFXxnNa+fzhBhoffSxwMu36t2f7w0IANDlcuXObVMXE73cGK8/SamJQBOCOKZOW54njvtlcjJ32MFYVJG9ejr7Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8185.namprd11.prod.outlook.com (2603:10b6:610:159::12)
 by PH8PR11MB6610.namprd11.prod.outlook.com (2603:10b6:510:1cd::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.17; Tue, 7 Jan
 2025 23:10:12 +0000
Received: from CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::1be5:55ed:3261:fefb]) by CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::1be5:55ed:3261:fefb%4]) with mapi id 15.20.8314.018; Tue, 7 Jan 2025
 23:10:12 +0000
Date: Tue, 7 Jan 2025 15:10:09 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?=
 =?utf-8?Q?lure_for_drm=2Fi915=2Fdmc=5Fwl?= =?utf-8?Q?=3A?= Support extra
 values for dmc_wl_enable for debugging
Message-ID: <20250107231009.GZ3224633@mdroper-desk1.amr.corp.intel.com>
References: <20241219221429.109668-1-gustavo.sousa@intel.com>
 <173472813205.916365.14467288886216292789@b555e5b46a47>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <173472813205.916365.14467288886216292789@b555e5b46a47>
X-ClientProxiedBy: BY3PR05CA0057.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::32) To CH3PR11MB8185.namprd11.prod.outlook.com
 (2603:10b6:610:159::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8185:EE_|PH8PR11MB6610:EE_
X-MS-Office365-Filtering-Correlation-Id: c6cc6d00-e5f7-45d8-a1e7-08dd2f706fd2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?w2wWu5dWJ2/MelbU+u/HHchBtDCR+bQ1WarfI3zY32apGjFxtz/LXOau054T?=
 =?us-ascii?Q?RkDbcjjSwByMQTls3pBLigSg6d0rbcJT4Y54oV7uuY43EvUPnjFRYaTH+yAn?=
 =?us-ascii?Q?WZ2CloJaoO4STWWvi3fQ4OpjP5BQ31WOGET58O8cGK0xOTiN2u+iQjCk3AKt?=
 =?us-ascii?Q?EMzLlFkb9DJ5tCPaWjBre1i5PcAx4jk705pqw85DogH1V8rzG84UH/YCUzAT?=
 =?us-ascii?Q?SqTaxdd5gW+LEujo5xUUIR32puLCXOde2sd9+VEporqAeLRfG3tlLDnjrpXx?=
 =?us-ascii?Q?4FLzrq5XHjDIBEO6Wa5wHZQyfi0U3o7ys0dssJGbkcse8lIXX+k2nchd4+CG?=
 =?us-ascii?Q?4KkLxkp7AF02eu3eb4sqPemWCaOMYOa7/LHZHAr+6HeHZaZzgMTNzbcpwIZ0?=
 =?us-ascii?Q?I0UgRzL1/A7h52AoGK1GLuKy3LfTBipaaGATkQu2xGBc0BDzOWVuUGQidT3i?=
 =?us-ascii?Q?/C0gmQBFDymglwshJgFB6sT+l8jfWTc11Yx4GwM85rXq1OmVgragle0yGn+f?=
 =?us-ascii?Q?0fuH4TIAtXxTqAqLirqBSFSXWTwQ2PdC+8H2T8a1f4ucuD/SCGPLRLADMz0U?=
 =?us-ascii?Q?zt2tnNFTJoam9pAbPJlmt1dDLik4EqvspbjJelLOFm78d0f+VYDbOF6ufYf5?=
 =?us-ascii?Q?xUcTWKJwNrtv7mxFK9iPVyCyoCk/gd1kjU8xUzD4bF1jNmeSYajfFRIE88Ft?=
 =?us-ascii?Q?Wy6Icz7ucavMB9bY/ow7+idjnyWeZCQvo4UN9yHrfUJ5qrsEa2j/vT9wY0jA?=
 =?us-ascii?Q?FXPd+hNeeHD2AHHz0CpG1Nd8peQx/WuPeVSL6kklslIxsoiwRWr7WvVIOR9m?=
 =?us-ascii?Q?092fGZhOrT8XEXkQetLve/AlA1U+65prds3yPRJLE8CsnNayCI6TnnrAOiXL?=
 =?us-ascii?Q?pKkGRPYHcT5TkFNKZ1vF7m9JAw6oDqRHrkFsnODfub+Rdj2K2icTEZpc/DMG?=
 =?us-ascii?Q?h4P9N8G/UcW5rglm5ZxwwdByNIfUD0ebW+eido3lkzkigVmQ63L92pLkZDzL?=
 =?us-ascii?Q?5nVdpexCbL7SmJs+hwteev3jTkP8H7GUtv/p1Ft5V6wbOHSHm/FHm95MvQ2H?=
 =?us-ascii?Q?gOJ5K6oI7pAMA7kvAySxdCyeRkyqhYkZvFjDfTEnyhS88vsx2RxKL6kSyReL?=
 =?us-ascii?Q?lLOXtH5BbAbhy/b9xC8WhVYjjKrqvoncTSqnMVz8vlRB6IGNo44Iamg8z4Q7?=
 =?us-ascii?Q?gVvSZwWcIKRhWz8GDTUwYNCiQx/g2NhPVZ+MpgPvHCbBzw6Zc/laciotSv0/?=
 =?us-ascii?Q?pwz30Wr1En+4uElagAU0u+Wmxs/RtfCoz9qFu0dpzxAzX634NBLO1TQLGxld?=
 =?us-ascii?Q?o2h/KsZSKN9OZbxVd1R6j/2j?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LSuPxSp82Uy/Jk4udtRWjvGhPFORXItDkcAdzUVrY6Yp7TO+co+fl+1+zMtn?=
 =?us-ascii?Q?0SkqrRtMbg9qNLOca0SoAwYRgrW/RDDvgxlbn78wlUqLdn08GTLupwXwwryS?=
 =?us-ascii?Q?2f4xEsulP7gzTDfQciCDO7GnP0sbKsv7KjIMuBapA0vh8vD55eTPi6CaDPwu?=
 =?us-ascii?Q?DHM/KjQAwGFjWdFdcilzV6awY34iiMA109csncP/W7k99JJcJ1CqzBAcal1M?=
 =?us-ascii?Q?rlyco8tZmrjgFFB+BBHD5yTqa/Cim07ZdwV4bkdq9bzQ9bbPPqE/ohuRBhP1?=
 =?us-ascii?Q?3rp8n8OdxF/YaWTUd5lzOM/XdmEUuqHyw2qAnoB8YFtvyaF6oako7W+r1+oK?=
 =?us-ascii?Q?9IGMtdjFnl37VnzBsBj/vfyQY5heF3aZ3NEnX3UAPFc+U1SGPU1/o1pGHnEE?=
 =?us-ascii?Q?dHy31U7Dbn91YdtjXU054A0XQlI3mjCJeMrY9sfxVRRrlnYQ5GHNlCC+y1ir?=
 =?us-ascii?Q?fFfdcSjnM88BV+i83YDDH773YDkXGbUxjwE4tsvJsPNIi7vR6aTA098Tlfs6?=
 =?us-ascii?Q?CmGrbc0jJzZmMAfZ0o55hBfxzdV8+OIG9fiWjTigDcJZTgL6Qc3xZ+AQ6spG?=
 =?us-ascii?Q?79/5OaWkxCmPwlSArtSbTBzZAW4n/9SX/0znO6QXLKcc5XhVO7Btdtrv66p5?=
 =?us-ascii?Q?CYZx0JcTwlht9moR8nnrjGS3mFS0tHYHhy/f2OU2j/sgAgQ2SUAue5rRD9YN?=
 =?us-ascii?Q?XSSjGP/ScDbURW5Yw9wA4dw+0QqSYUjbwF2aSoBHDyCqyxz3U5xHWEAVBhOZ?=
 =?us-ascii?Q?JY/mn2bjiK+kh5Ltb2khLj6mwGYb23VCzpze0vtOMhubr10Mg1pGCXBARtDi?=
 =?us-ascii?Q?mbVw2lyIvijcsLyBoySJHoQcTAKI46LKkZXwhlPceMb/o94IIPa6dNWn2r/c?=
 =?us-ascii?Q?v6ljbvW7ycJqo5kK/lHDn6H2ZN6yRCrEo/f1PVpnjHayfk4znEwwHYnt19FL?=
 =?us-ascii?Q?imOQjh+OntHerCRCav2yoa1b40ReolUXxlk3UqWNSwFDp7BhpJuTdBufpArZ?=
 =?us-ascii?Q?aASUqWrPsJ+AwJrBh9Po2xbQmOtaI37nOKF2aNEa8Wj2kQNlm4GUPi4vtGws?=
 =?us-ascii?Q?cxBwzL++kjbbZEf4DX+cCwOiVDqQDXcbBY35hKFGx+0XnvbAGGH56i+aQQrk?=
 =?us-ascii?Q?Izih8iSzXVMaoThJiG1Q5H3ooOyH+IYIKje04zjs5/fr/9nN+lypx8qtUDq7?=
 =?us-ascii?Q?KNoTMc6HbVsexhq2wlLrR/cXQF5KNm111RnRV+OJogzOMNEWz2MHG2aNU+3j?=
 =?us-ascii?Q?19xaY0kRFxa/n/ldLmK2y0zWw3LlfmCi7JWNlPYD7vPHKde0WcqPcrgZfpSR?=
 =?us-ascii?Q?qhWKPtRqChR2K3t5SlmWYxrjD957kLjQgb3DSoddLMkK0Pewg9zcSpEnJKsc?=
 =?us-ascii?Q?pw3YcuCRDiO60z3rmdMXEDlGMUjlTqkew9KHoedqD6PZVPOrxsebF1Gi4f9Y?=
 =?us-ascii?Q?6Vn0+lLTMPuP1A7kqbxNQQqiTIlZnwIxUIO8+cU12rIosGZllHmsAaO5LyMS?=
 =?us-ascii?Q?gSJmSVsq80gEOqiquYsy886uaYQZ7x05+EyMHgKJIxmnE9vxezTDUKOYSOIm?=
 =?us-ascii?Q?stDUTY2dvnJ/Gmnt3t1C8imwIbXap8E2FgS3GvEBZZb8wPrB1yvtS6QLC6KJ?=
 =?us-ascii?Q?oQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c6cc6d00-e5f7-45d8-a1e7-08dd2f706fd2
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2025 23:10:11.9159 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZYwQzY56zC56mXWtCKlEN7jwEo9Ci69EzPFt2FZ1R1mi5TESmlaZU20UE5DcKDaxDNj1d0Y6GIpabW7R/qHh4riBY4Ux6KfddyUYwdmF8N0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6610
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

On Fri, Dec 20, 2024 at 08:55:32PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dmc_wl: Support extra values for dmc_wl_enable for debugging
> URL   : https://patchwork.freedesktop.org/series/142855/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15873_full -> Patchwork_142855v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_142855v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_142855v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (12 -> 11)
> ------------------------------
> 
>   Missing    (1): shard-dg2-set2 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_142855v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [ABORT][1] +1 other test abort
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-2/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html

I'm not sure why this is listed as "abort" since the test ran and passed
successfully:

  <6> [245.730614] [IGT] kms_ccs: finished subtest pipe-D-HDMI-A-1, SUCCESS
  <6> [245.731069] [IGT] kms_ccs: finished subtest crc-primary-suspend-y-tiled-gen12-rc-ccs, SUCCESS

The only thing I see that might be confusing CI is a stray "done"
printed at log level <4> as the system comes out of suspend?

  <4> [245.642684] done.


Series applied to drm-intel-next.  Thanks for the patches and reviews.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_142855v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-purge-cache:
>     - shard-dg1:          NOTRUN -> [SKIP][2] ([i915#8411])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-17/igt@api_intel_bb@blit-reloc-purge-cache.html
> 
>   * igt@api_intel_bb@crc32:
>     - shard-dg1:          NOTRUN -> [SKIP][3] ([i915#6230])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-17/igt@api_intel_bb@crc32.html
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-tglu-1:       NOTRUN -> [SKIP][4] ([i915#11078])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@device_reset@cold-reset-bound.html
> 
>   * igt@device_reset@unbind-reset-rebind:
>     - shard-dg2:          [PASS][5] -> [ABORT][6] ([i915#5507])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-11/igt@device_reset@unbind-reset-rebind.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@device_reset@unbind-reset-rebind.html
>     - shard-tglu:         NOTRUN -> [ABORT][7] ([i915#12817] / [i915#5507])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-2/igt@device_reset@unbind-reset-rebind.html
> 
>   * igt@drm_fdinfo@busy@rcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][8] ([i915#8414]) +24 other tests skip
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-7/igt@drm_fdinfo@busy@rcs0.html
> 
>   * igt@drm_fdinfo@busy@vcs1:
>     - shard-dg1:          NOTRUN -> [SKIP][9] ([i915#8414]) +22 other tests skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-12/igt@drm_fdinfo@busy@vcs1.html
> 
>   * igt@gem_busy@semaphore:
>     - shard-dg2:          NOTRUN -> [SKIP][10] ([i915#3936])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@gem_busy@semaphore.html
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-dg1:          NOTRUN -> [SKIP][11] ([i915#3555] / [i915#9323])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-17/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-dg1:          NOTRUN -> [SKIP][12] ([i915#9323])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-12/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_ccs@ctrl-surf-copy-new-ctx:
>     - shard-tglu-1:       NOTRUN -> [SKIP][13] ([i915#9323])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
> 
>   * igt@gem_ccs@large-ctrl-surf-copy:
>     - shard-dg1:          NOTRUN -> [SKIP][14] ([i915#13008])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-17/igt@gem_ccs@large-ctrl-surf-copy.html
>     - shard-tglu:         NOTRUN -> [SKIP][15] ([i915#13008])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-10/igt@gem_ccs@large-ctrl-surf-copy.html
> 
>   * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][16] ([i915#12392])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-2/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-rkl:          NOTRUN -> [SKIP][17] ([i915#7697])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-3/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-rkl:          NOTRUN -> [SKIP][18] ([i915#6335])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-3/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-dg1:          NOTRUN -> [SKIP][19] ([i915#8562])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-14/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_ctx_persistence@engines-cleanup:
>     - shard-snb:          NOTRUN -> [SKIP][20] ([i915#1099]) +3 other tests skip
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-snb5/igt@gem_ctx_persistence@engines-cleanup.html
> 
>   * igt@gem_ctx_persistence@heartbeat-close:
>     - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#8555])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-close.html
> 
>   * igt@gem_ctx_persistence@heartbeat-many:
>     - shard-dg1:          NOTRUN -> [SKIP][22] ([i915#8555])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-14/igt@gem_ctx_persistence@heartbeat-many.html
> 
>   * igt@gem_ctx_persistence@saturated-hostile-nopreempt:
>     - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#5882]) +7 other tests skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@gem_ctx_persistence@saturated-hostile-nopreempt.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-tglu-1:       NOTRUN -> [SKIP][24] ([i915#280])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][25] ([i915#13197])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-glk6/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_balancer@bonded-dual:
>     - shard-dg1:          NOTRUN -> [SKIP][26] ([i915#4771])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-14/igt@gem_exec_balancer@bonded-dual.html
> 
>   * igt@gem_exec_balancer@bonded-false-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#4812]) +1 other test skip
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@gem_exec_balancer@bonded-false-hang.html
> 
>   * igt@gem_exec_balancer@bonded-true-hang:
>     - shard-dg1:          NOTRUN -> [SKIP][28] ([i915#4812]) +2 other tests skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-17/igt@gem_exec_balancer@bonded-true-hang.html
> 
>   * igt@gem_exec_balancer@invalid-bonds:
>     - shard-dg1:          NOTRUN -> [SKIP][29] ([i915#4036])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-17/igt@gem_exec_balancer@invalid-bonds.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-rkl:          NOTRUN -> [SKIP][30] ([i915#4525]) +2 other tests skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-6/igt@gem_exec_balancer@parallel-balancer.html
>     - shard-tglu:         NOTRUN -> [SKIP][31] ([i915#4525])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-2/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-tglu-1:       NOTRUN -> [SKIP][32] ([i915#4525]) +1 other test skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_capture@capture-recoverable:
>     - shard-rkl:          NOTRUN -> [SKIP][33] ([i915#6344])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-3/igt@gem_exec_capture@capture-recoverable.html
> 
>   * igt@gem_exec_capture@capture@vecs0-lmem0:
>     - shard-dg1:          NOTRUN -> [FAIL][34] ([i915#11965]) +2 other tests fail
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-17/igt@gem_exec_capture@capture@vecs0-lmem0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-uc:
>     - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#3539] / [i915#4852]) +1 other test skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-7/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
> 
>   * igt@gem_exec_flush@basic-wb-prw-default:
>     - shard-dg1:          NOTRUN -> [SKIP][36] ([i915#3539] / [i915#4852]) +1 other test skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-13/igt@gem_exec_flush@basic-wb-prw-default.html
> 
>   * igt@gem_exec_params@rsvd2-dirt:
>     - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#5107])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@gem_exec_params@rsvd2-dirt.html
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>     - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#3281]) +11 other tests skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-wc-read-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#3281]) +11 other tests skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-3/igt@gem_exec_reloc@basic-wc-read-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-write-gtt-active:
>     - shard-dg1:          NOTRUN -> [SKIP][40] ([i915#3281]) +16 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-17/igt@gem_exec_reloc@basic-write-gtt-active.html
> 
>   * igt@gem_exec_schedule@reorder-wide:
>     - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#4537] / [i915#4812]) +1 other test skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-4/igt@gem_exec_schedule@reorder-wide.html
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - shard-dg2:          [PASS][42] -> [INCOMPLETE][43] ([i915#11441] / [i915#13304]) +1 other test incomplete
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-5/igt@gem_exec_suspend@basic-s0@smem.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-1/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-y:
>     - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#4860])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-7/igt@gem_fence_thrash@bo-write-verify-y.html
>     - shard-dg1:          NOTRUN -> [SKIP][45] ([i915#4860])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-12/igt@gem_fence_thrash@bo-write-verify-y.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#2190])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-3/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - shard-tglu:         NOTRUN -> [SKIP][47] ([i915#4613])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-2/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - shard-rkl:          NOTRUN -> [SKIP][48] ([i915#4613]) +1 other test skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-3/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-glk:          NOTRUN -> [SKIP][49] ([i915#4613])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-glk6/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg1:          NOTRUN -> [TIMEOUT][50] ([i915#5493]) +1 other test timeout
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_lmem_swapping@verify-random-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][51] ([i915#4613]) +2 other tests skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@gem_lmem_swapping@verify-random-ccs.html
> 
>   * igt@gem_media_vme:
>     - shard-dg1:          NOTRUN -> [SKIP][52] ([i915#284])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-14/igt@gem_media_vme.html
> 
>   * igt@gem_mmap_gtt@medium-copy-odd:
>     - shard-dg1:          NOTRUN -> [SKIP][53] ([i915#4077]) +10 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-13/igt@gem_mmap_gtt@medium-copy-odd.html
> 
>   * igt@gem_mmap_wc@copy:
>     - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#4083]) +4 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-7/igt@gem_mmap_wc@copy.html
> 
>   * igt@gem_mmap_wc@read:
>     - shard-dg1:          NOTRUN -> [SKIP][55] ([i915#4083]) +5 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-13/igt@gem_mmap_wc@read.html
> 
>   * igt@gem_partial_pwrite_pread@reads-snoop:
>     - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#3282]) +5 other tests skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-17/igt@gem_partial_pwrite_pread@reads-snoop.html
> 
>   * igt@gem_partial_pwrite_pread@reads-uncached:
>     - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#3282]) +4 other tests skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-4/igt@gem_partial_pwrite_pread@reads-uncached.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads:
>     - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#3282]) +8 other tests skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gem_pxp@display-protected-crc:
>     - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#4270]) +2 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-4/igt@gem_pxp@display-protected-crc.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-3:
>     - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#4270])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-7/igt@gem_pxp@reject-modify-context-protection-off-3.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-on:
>     - shard-rkl:          NOTRUN -> [TIMEOUT][61] ([i915#12917] / [i915#12964]) +4 other tests timeout
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-3/igt@gem_pxp@reject-modify-context-protection-on.html
> 
>   * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>     - shard-dg1:          NOTRUN -> [SKIP][62] ([i915#4270]) +5 other tests skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-13/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
> 
>   * igt@gem_render_copy@linear-to-vebox-yf-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#5190] / [i915#8428]) +7 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@gem_render_copy@linear-to-vebox-yf-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#4079]) +2 other tests skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-4/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-dg1:          NOTRUN -> [SKIP][65] ([i915#4079]) +1 other test skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-14/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gem_tiled_partial_pwrite_pread@writes:
>     - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#4077]) +11 other tests skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-4/igt@gem_tiled_partial_pwrite_pread@writes.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#3297]) +2 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-7/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#3282] / [i915#3297])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate:
>     - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#3297] / [i915#4880])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@gem_userptr_blits@map-fixed-invalidate.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
>     - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#3297] / [i915#4880])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-17/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html
> 
>   * igt@gem_userptr_blits@readonly-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#3297]) +2 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-7/igt@gem_userptr_blits@readonly-unsync.html
> 
>   * igt@gem_userptr_blits@relocations:
>     - shard-dg1:          NOTRUN -> [SKIP][72] ([i915#3281] / [i915#3297])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-14/igt@gem_userptr_blits@relocations.html
> 
>   * igt@gem_userptr_blits@sd-probe:
>     - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#3297] / [i915#4958])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-4/igt@gem_userptr_blits@sd-probe.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#3297]) +5 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-17/igt@gem_userptr_blits@unsync-unmap-after-close.html
>     - shard-tglu:         NOTRUN -> [SKIP][75] ([i915#3297])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-10/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-tglu-1:       NOTRUN -> [SKIP][76] ([i915#2527] / [i915#2856]) +1 other test skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@gen9_exec_parse@bb-start-cmd:
>     - shard-dg1:          NOTRUN -> [SKIP][77] ([i915#2527]) +3 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-13/igt@gen9_exec_parse@bb-start-cmd.html
> 
>   * igt@gen9_exec_parse@bb-start-out:
>     - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#2527]) +3 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-3/igt@gen9_exec_parse@bb-start-out.html
> 
>   * igt@gen9_exec_parse@unaligned-jump:
>     - shard-tglu:         NOTRUN -> [SKIP][79] ([i915#2527] / [i915#2856]) +1 other test skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-10/igt@gen9_exec_parse@unaligned-jump.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#2856]) +2 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_fb_tiling:
>     - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#4881])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-13/igt@i915_fb_tiling.html
> 
>   * igt@i915_module_load@reload:
>     - shard-tglu-1:       NOTRUN -> [ABORT][82] ([i915#13010])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@i915_module_load@reload.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg2:          [PASS][83] -> [ABORT][84] ([i915#9820])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
>     - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#7091])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-11/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
> 
>   * igt@i915_pm_freq_api@freq-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#8399]) +1 other test skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-3/igt@i915_pm_freq_api@freq-suspend.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt0:
>     - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#6590]) +1 other test skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-6/igt@i915_pm_freq_mult@media-freq@gt0.html
>     - shard-tglu:         NOTRUN -> [SKIP][88] ([i915#6590]) +1 other test skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-2/igt@i915_pm_freq_mult@media-freq@gt0.html
> 
>   * igt@i915_pm_rps@min-max-config-loaded:
>     - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#11681] / [i915#6621])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@i915_pm_rps@min-max-config-loaded.html
> 
>   * igt@i915_pm_rps@thresholds-idle-park:
>     - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#11681])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-4/igt@i915_pm_rps@thresholds-idle-park.html
> 
>   * igt@i915_pm_rps@thresholds-park:
>     - shard-dg1:          NOTRUN -> [SKIP][91] ([i915#11681]) +2 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-14/igt@i915_pm_rps@thresholds-park.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#4387])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_query@query-topology-coherent-slice-mask:
>     - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#6188])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-11/igt@i915_query@query-topology-coherent-slice-mask.html
> 
>   * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#4212])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
> 
>   * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#5190]) +1 other test skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
> 
>   * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
>     - shard-dg1:          NOTRUN -> [SKIP][96] ([i915#4212]) +1 other test skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-14/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-4-y-rc-ccs-cc:
>     - shard-dg1:          NOTRUN -> [SKIP][97] ([i915#8709]) +15 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-17/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-4-y-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-d-hdmi-a-1-y-rc-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#8709]) +7 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-10/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-d-hdmi-a-1-y-rc-ccs.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#8709]) +3 other tests skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@crc:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][100] ([i915#13287] / [i915#9878])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-1/igt@kms_async_flips@crc.html
>     - shard-dg1:          NOTRUN -> [WARN][101] ([i915#13287])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-13/igt@kms_async_flips@crc.html
> 
>   * igt@kms_async_flips@crc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][102] ([i915#13287])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-1/igt@kms_async_flips@crc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_async_flips@crc@pipe-b-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [CRASH][103] ([i915#13287]) +3 other tests crash
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-13/igt@kms_async_flips@crc@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#9531])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#1769] / [i915#3555]) +1 other test skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-4/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][106] ([i915#1769] / [i915#3555])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-tglu:         NOTRUN -> [SKIP][107] ([i915#5286]) +1 other test skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-10/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#5286]) +5 other tests skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-1/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#4538] / [i915#5286]) +7 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-14/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-tglu-1:       NOTRUN -> [SKIP][110] ([i915#5286]) +3 other tests skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#3638]) +3 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][112] ([i915#3638]) +6 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-14/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
>     - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#4538] / [i915#5190]) +13 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-11/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
>     - shard-dg1:          NOTRUN -> [SKIP][114] ([i915#4538]) +4 other tests skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-17/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][115] ([i915#6095]) +4 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-10/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#10307] / [i915#6095]) +181 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-7/igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#12313])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][119] ([i915#12805])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-14/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#6095]) +109 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-1/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][121] ([i915#12796]) +1 other test incomplete
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-glk6/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#6095]) +8 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-11/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#12313]) +1 other test skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-10/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][124] ([i915#6095]) +64 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][125] ([i915#12313]) +3 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-14/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#6095]) +135 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-13/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#4087]) +3 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-8/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_chamelium_frames@dp-crc-fast:
>     - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#7828]) +10 other tests skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-4/igt@kms_chamelium_frames@dp-crc-fast.html
> 
>   * igt@kms_chamelium_frames@dp-crc-single:
>     - shard-dg1:          NOTRUN -> [SKIP][129] ([i915#7828]) +11 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-17/igt@kms_chamelium_frames@dp-crc-single.html
>     - shard-tglu:         NOTRUN -> [SKIP][130] ([i915#7828]) +2 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-10/igt@kms_chamelium_frames@dp-crc-single.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd:
>     - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#7828]) +9 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-fast:
>     - shard-tglu-1:       NOTRUN -> [SKIP][132] ([i915#7828]) +4 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-fast.html
> 
>   * igt@kms_color@deep-color:
>     - shard-tglu-1:       NOTRUN -> [SKIP][133] ([i915#3555] / [i915#9979])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@kms_color@deep-color.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#3299]) +1 other test skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#3116])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][136] ([i915#3116] / [i915#3299])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#9424])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-7/igt@kms_content_protection@mei-interface.html
>     - shard-dg1:          NOTRUN -> [SKIP][138] ([i915#9433])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-13/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#7118] / [i915#9424])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-3/igt@kms_content_protection@type1.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#7116] / [i915#9424])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-17/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x32:
>     - shard-dg1:          NOTRUN -> [SKIP][141] ([i915#3555]) +10 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-13/igt@kms_cursor_crc@cursor-offscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#13049]) +1 other test skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-11/igt@kms_cursor_crc@cursor-onscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-32x32:
>     - shard-tglu-1:       NOTRUN -> [SKIP][143] ([i915#3555]) +1 other test skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-dg1:          NOTRUN -> [SKIP][144] ([i915#13049])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-17/igt@kms_cursor_crc@cursor-random-512x512.html
>     - shard-tglu:         NOTRUN -> [SKIP][145] ([i915#13049])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-10/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-256x85:
>     - shard-rkl:          [PASS][146] -> [DMESG-WARN][147] ([i915#12917] / [i915#12964]) +1 other test dmesg-warn
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-256x85.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-256x85.html
> 
>   * igt@kms_cursor_edge_walk@256x256-top-bottom@pipe-b-hdmi-a-1:
>     - shard-rkl:          [PASS][148] -> [DMESG-WARN][149] ([i915#12964]) +3 other tests dmesg-warn
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-rkl-2/igt@kms_cursor_edge_walk@256x256-top-bottom@pipe-b-hdmi-a-1.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-2/igt@kms_cursor_edge_walk@256x256-top-bottom@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#4103])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>     - shard-dg1:          NOTRUN -> [SKIP][151] ([i915#4103] / [i915#4213]) +1 other test skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-13/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#13046] / [i915#5354]) +6 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-8/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#9067])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#9833])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_display_modes@mst-extended-mode-negative:
>     - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#8588])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@kms_display_modes@mst-extended-mode-negative.html
>     - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#8588])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-3/igt@kms_display_modes@mst-extended-mode-negative.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][157] ([i915#8588])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@kms_display_modes@mst-extended-mode-negative.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-tglu-1:       NOTRUN -> [SKIP][158] ([i915#12402])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#3555] / [i915#3840])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-4/igt@kms_dsc@dsc-basic.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][160] ([i915#3555] / [i915#3840])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#3840])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html
>     - shard-tglu:         NOTRUN -> [SKIP][162] ([i915#3840])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-2/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#3555] / [i915#3840]) +1 other test skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-7/igt@kms_dsc@dsc-with-output-formats.html
>     - shard-dg1:          NOTRUN -> [SKIP][164] ([i915#3555] / [i915#3840]) +1 other test skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-13/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#3840] / [i915#9053])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-3/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_feature_discovery@display-2x:
>     - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#1839]) +1 other test skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-11/igt@kms_feature_discovery@display-2x.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#1839]) +1 other test skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-3/igt@kms_feature_discovery@display-4x.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][168] ([i915#1839])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_feature_discovery@psr2:
>     - shard-dg1:          NOTRUN -> [SKIP][169] ([i915#658])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-12/igt@kms_feature_discovery@psr2.html
>     - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#658])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-7/igt@kms_feature_discovery@psr2.html
> 
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
>     - shard-tglu-1:       NOTRUN -> [SKIP][171] ([i915#3637]) +1 other test skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#4423] / [i915#9934])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-13/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race:
>     - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#3637]) +3 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-2/igt@kms_flip@2x-modeset-vs-vblank-race.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-dg1:          NOTRUN -> [SKIP][174] ([i915#9934]) +4 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-17/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
>     - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#9934]) +5 other tests skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#9934]) +10 other tests skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-6/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html
> 
>   * igt@kms_flip@absolute-wf_vblank-interruptible:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][177] ([i915#12917] / [i915#12964]) +1 other test dmesg-warn
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-1/igt@kms_flip@absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@blocking-wf_vblank@a-hdmi-a1:
>     - shard-tglu:         [PASS][178] -> [FAIL][179] ([i915#11989]) +5 other tests fail
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-tglu-6/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-8/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html
> 
>   * igt@kms_flip@blocking-wf_vblank@a-hdmi-a2:
>     - shard-rkl:          NOTRUN -> [FAIL][180] ([i915#11989])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-1/igt@kms_flip@blocking-wf_vblank@a-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-fences-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][181] ([i915#8381])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-13/igt@kms_flip@flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1:
>     - shard-tglu:         NOTRUN -> [FAIL][182] ([i915#11989]) +3 other tests fail
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-2/igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#2672] / [i915#3555]) +3 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][184] ([i915#2587] / [i915#2672]) +3 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#2672]) +5 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
>     - shard-dg1:          NOTRUN -> [SKIP][186] ([i915#2587] / [i915#2672]) +5 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-13/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-dg1:          NOTRUN -> [SKIP][187] ([i915#2587] / [i915#2672] / [i915#3555])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-14/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#2672] / [i915#3555] / [i915#5190])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][189] ([i915#2672]) +4 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][190] ([i915#2672] / [i915#3555]) +3 other tests skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#2672] / [i915#3555]) +5 other tests skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html
>     - shard-dg1:          NOTRUN -> [SKIP][192] ([i915#2672] / [i915#3555]) +4 other tests skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-13/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#5354]) +29 other tests skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#8708]) +25 other tests skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-dg1:          NOTRUN -> [SKIP][195] +56 other tests skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][196] ([i915#8708]) +22 other tests skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-stridechange:
>     - shard-dg2:          [PASS][197] -> [FAIL][198] ([i915#6880]) +2 other tests fail
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-stridechange.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-stridechange.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#5439]) +1 other test skip
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
>     - shard-dg1:          NOTRUN -> [SKIP][200] ([i915#5439])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][201] +29 other tests skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][202] ([i915#1825]) +50 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
>     - shard-tglu-1:       NOTRUN -> [SKIP][203] +43 other tests skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#3023]) +36 other tests skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-dg1:          NOTRUN -> [SKIP][205] ([i915#9766])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-12/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
>     - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#9766])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-7/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>     - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#10433] / [i915#3458]) +1 other test skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-plflip-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][208] ([i915#4423])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render:
>     - shard-tglu:         NOTRUN -> [SKIP][209] +42 other tests skip
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>     - shard-dg2:          NOTRUN -> [SKIP][210] ([i915#3458]) +18 other tests skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:
>     - shard-dg1:          NOTRUN -> [SKIP][211] ([i915#3458]) +27 other tests skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#3555] / [i915#8228])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-4/igt@kms_hdr@bpc-switch-suspend.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][213] ([i915#3555] / [i915#8228])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-dg1:          NOTRUN -> [SKIP][214] ([i915#12713])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-14/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-rkl:          NOTRUN -> [SKIP][215] ([i915#3555] / [i915#8228])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-3/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_joiner@basic-ultra-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][216] ([i915#12339])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-3/igt@kms_joiner@basic-ultra-joiner.html
>     - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#12339])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@kms_joiner@basic-ultra-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#12388])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-1/igt@kms_joiner@invalid-modeset-force-big-joiner.html
>     - shard-dg1:          NOTRUN -> [SKIP][219] ([i915#12388])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-13/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-dg1:          NOTRUN -> [SKIP][220] ([i915#12394])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-17/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-ultra-joiner:
>     - shard-dg1:          NOTRUN -> [SKIP][221] ([i915#12339])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-14/igt@kms_joiner@invalid-modeset-ultra-joiner.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-dg1:          NOTRUN -> [SKIP][222] ([i915#1839])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-17/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>     - shard-tglu:         NOTRUN -> [SKIP][223] ([i915#1839])
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-10/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
>     - shard-dg2:          NOTRUN -> [SKIP][224] +13 other tests skip
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-7/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#3555]) +4 other tests skip
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-3/igt@kms_plane_multiple@tiling-yf.html
>     - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#3555] / [i915#8806])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#6953])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-3/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c:
>     - shard-tglu:         NOTRUN -> [SKIP][228] ([i915#12247]) +13 other tests skip
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
>     - shard-rkl:          NOTRUN -> [SKIP][229] ([i915#12247]) +11 other tests skip
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25:
>     - shard-tglu:         NOTRUN -> [SKIP][230] ([i915#12247] / [i915#6953])
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-2/igt@kms_plane_scaling@planes-downscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d:
>     - shard-dg1:          NOTRUN -> [SKIP][231] ([i915#12247]) +17 other tests skip
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-17/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d:
>     - shard-tglu-1:       NOTRUN -> [SKIP][232] ([i915#12247]) +8 other tests skip
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
>     - shard-dg2:          NOTRUN -> [SKIP][233] ([i915#12247] / [i915#6953] / [i915#9423])
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
>     - shard-rkl:          NOTRUN -> [SKIP][234] ([i915#12247] / [i915#6953]) +2 other tests skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a:
>     - shard-dg2:          NOTRUN -> [SKIP][235] ([i915#12247]) +7 other tests skip
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
>     - shard-dg1:          NOTRUN -> [SKIP][236] ([i915#12247] / [i915#6953])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-13/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
>     - shard-dg1:          NOTRUN -> [SKIP][237] ([i915#12247] / [i915#3555])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-12/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
>     - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#12247] / [i915#3555] / [i915#9423])
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
> 
>   * igt@kms_pm_backlight@basic-brightness:
>     - shard-rkl:          NOTRUN -> [SKIP][239] ([i915#5354])
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-7/igt@kms_pm_backlight@basic-brightness.html
>     - shard-dg1:          NOTRUN -> [SKIP][240] ([i915#5354])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-13/igt@kms_pm_backlight@basic-brightness.html
> 
>   * igt@kms_pm_backlight@fade-with-suspend:
>     - shard-tglu-1:       NOTRUN -> [SKIP][241] ([i915#9812])
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@kms_pm_backlight@fade-with-suspend.html
> 
>   * igt@kms_pm_dc@dc5-retention-flops:
>     - shard-rkl:          NOTRUN -> [SKIP][242] ([i915#3828])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-3/igt@kms_pm_dc@dc5-retention-flops.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#5978])
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-7/igt@kms_pm_dc@dc6-dpms.html
>     - shard-dg1:          NOTRUN -> [SKIP][244] ([i915#3361])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-12/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][245] ([i915#3361])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-1/igt@kms_pm_dc@dc9-dpms.html
>     - shard-tglu:         [PASS][246] -> [SKIP][247] ([i915#4281])
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-tglu-6/igt@kms_pm_dc@dc9-dpms.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-dg2:          NOTRUN -> [SKIP][248] ([i915#9519])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg2:          [PASS][249] -> [SKIP][250] ([i915#9519])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-10/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][251] ([i915#9519]) +1 other test skip
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          [PASS][252] -> [SKIP][253] ([i915#9519]) +2 other tests skip
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][254] ([i915#11520]) +3 other tests skip
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-2/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:
>     - shard-glk:          NOTRUN -> [SKIP][255] ([i915#11520]) +1 other test skip
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-glk6/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][256] ([i915#11520]) +13 other tests skip
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-3/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area:
>     - shard-tglu-1:       NOTRUN -> [SKIP][257] ([i915#11520]) +3 other tests skip
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:
>     - shard-dg1:          NOTRUN -> [SKIP][258] ([i915#11520]) +12 other tests skip
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-14/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:
>     - shard-dg2:          NOTRUN -> [SKIP][259] ([i915#11520]) +10 other tests skip
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-4/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:
>     - shard-snb:          NOTRUN -> [SKIP][260] ([i915#11520]) +10 other tests skip
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-snb4/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-dg2:          NOTRUN -> [SKIP][261] ([i915#9683])
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>     - shard-rkl:          NOTRUN -> [SKIP][262] ([i915#9683])
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-3/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-tglu-1:       NOTRUN -> [SKIP][263] ([i915#9683])
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@fbc-pr-sprite-plane-onoff:
>     - shard-tglu-1:       NOTRUN -> [SKIP][264] ([i915#9732]) +8 other tests skip
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@kms_psr@fbc-pr-sprite-plane-onoff.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-plane-move:
>     - shard-glk:          NOTRUN -> [SKIP][265] +66 other tests skip
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-glk6/igt@kms_psr@fbc-psr2-sprite-plane-move.html
> 
>   * igt@kms_psr@pr-sprite-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][266] ([i915#1072] / [i915#9732]) +31 other tests skip
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-6/igt@kms_psr@pr-sprite-mmap-gtt.html
> 
>   * igt@kms_psr@psr-primary-page-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][267] ([i915#9732]) +6 other tests skip
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-2/igt@kms_psr@psr-primary-page-flip.html
> 
>   * igt@kms_psr@psr-sprite-blt:
>     - shard-snb:          NOTRUN -> [SKIP][268] +303 other tests skip
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-snb4/igt@kms_psr@psr-sprite-blt.html
> 
>   * igt@kms_psr@psr2-cursor-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][269] ([i915#1072] / [i915#9732]) +21 other tests skip
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@kms_psr@psr2-cursor-blt.html
> 
>   * igt@kms_psr@psr2-sprite-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][270] ([i915#1072] / [i915#9732]) +30 other tests skip
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-13/igt@kms_psr@psr2-sprite-mmap-gtt.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-dg1:          NOTRUN -> [SKIP][271] ([i915#9685]) +1 other test skip
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-12/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>     - shard-dg2:          NOTRUN -> [SKIP][272] ([i915#9685])
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-tglu-1:       NOTRUN -> [SKIP][273] ([i915#5289]) +3 other tests skip
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-dg1:          NOTRUN -> [SKIP][274] ([i915#5289]) +1 other test skip
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-14/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-tglu:         NOTRUN -> [SKIP][275] ([i915#5289])
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-10/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
>     - shard-dg2:          NOTRUN -> [SKIP][276] ([i915#12755]) +1 other test skip
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-7/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
> 
>   * igt@kms_scaling_modes@scaling-mode-none:
>     - shard-dg2:          NOTRUN -> [SKIP][277] ([i915#3555]) +7 other tests skip
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-7/igt@kms_scaling_modes@scaling-mode-none.html
> 
>   * igt@kms_selftest@drm_framebuffer:
>     - shard-rkl:          NOTRUN -> [ABORT][278] ([i915#13179]) +1 other test abort
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-1/igt@kms_selftest@drm_framebuffer.html
>     - shard-snb:          NOTRUN -> [ABORT][279] ([i915#13179]) +1 other test abort
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-snb4/igt@kms_selftest@drm_framebuffer.html
> 
>   * igt@kms_setmode@clone-exclusive-crtc:
>     - shard-tglu:         NOTRUN -> [SKIP][280] ([i915#3555]) +1 other test skip
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-2/igt@kms_setmode@clone-exclusive-crtc.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-rkl:          NOTRUN -> [SKIP][281] ([i915#8623])
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_vrr@seamless-rr-switch-virtual:
>     - shard-dg1:          NOTRUN -> [SKIP][282] ([i915#9906])
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-14/igt@kms_vrr@seamless-rr-switch-virtual.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-rkl:          NOTRUN -> [SKIP][283] ([i915#9906])
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@kms_writeback@writeback-check-output-xrgb2101010:
>     - shard-dg2:          NOTRUN -> [SKIP][284] ([i915#2437] / [i915#9412])
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@kms_writeback@writeback-check-output-xrgb2101010.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][285] ([i915#2437] / [i915#9412])
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@kms_writeback@writeback-check-output-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>     - shard-rkl:          NOTRUN -> [SKIP][286] ([i915#2437] / [i915#9412]) +1 other test skip
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-3/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-tglu-1:       NOTRUN -> [SKIP][287] ([i915#2437])
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-tglu:         NOTRUN -> [SKIP][288] ([i915#2437] / [i915#9412])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-10/igt@kms_writeback@writeback-pixel-formats.html
>     - shard-glk:          NOTRUN -> [SKIP][289] ([i915#2437])
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-glk6/igt@kms_writeback@writeback-pixel-formats.html
>     - shard-dg1:          NOTRUN -> [SKIP][290] ([i915#2437] / [i915#9412])
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-17/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@per-context-mode-unprivileged:
>     - shard-rkl:          NOTRUN -> [SKIP][291] ([i915#2435])
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-6/igt@perf@per-context-mode-unprivileged.html
> 
>   * igt@perf@polling@0-rcs0:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][292] ([i915#12964]) +25 other tests dmesg-warn
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-3/igt@perf@polling@0-rcs0.html
> 
>   * igt@perf@unprivileged-single-ctx-counters:
>     - shard-dg1:          NOTRUN -> [SKIP][293] ([i915#2433])
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-17/igt@perf@unprivileged-single-ctx-counters.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-tglu-1:       NOTRUN -> [SKIP][294] ([i915#8516])
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@perf_pmu@rc6-all-gts.html
>     - shard-dg2:          NOTRUN -> [SKIP][295] ([i915#8516])
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-4/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@prime_mmap@test_aperture_limit:
>     - shard-dg2:          NOTRUN -> [WARN][296] ([i915#9351])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@prime_mmap@test_aperture_limit.html
> 
>   * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
>     - shard-dg2:          NOTRUN -> [CRASH][297] ([i915#9351])
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
> 
>   * igt@prime_vgem@basic-fence-mmap:
>     - shard-dg1:          NOTRUN -> [SKIP][298] ([i915#3708] / [i915#4077])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-17/igt@prime_vgem@basic-fence-mmap.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - shard-rkl:          NOTRUN -> [SKIP][299] ([i915#3291] / [i915#3708])
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-7/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@prime_vgem@basic-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][300] ([i915#3708] / [i915#4077])
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-4/igt@prime_vgem@basic-gtt.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-dg2:          NOTRUN -> [SKIP][301] ([i915#3291] / [i915#3708])
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-11/igt@prime_vgem@basic-write.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-dg1:          NOTRUN -> [SKIP][302] ([i915#3708]) +1 other test skip
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-13/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][303] ([i915#3708])
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@prime_vgem@fence-write-hang.html
>     - shard-rkl:          NOTRUN -> [SKIP][304] ([i915#3708]) +1 other test skip
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-3/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@sriov_basic@bind-unbind-vf:
>     - shard-dg1:          NOTRUN -> [SKIP][305] ([i915#9917])
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-17/igt@sriov_basic@bind-unbind-vf.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off:
>     - shard-rkl:          NOTRUN -> [SKIP][306] ([i915#9917]) +1 other test skip
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-off.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6:
>     - shard-tglu:         NOTRUN -> [FAIL][307] ([i915#12910]) +9 other tests fail
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-2/igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on:
>     - shard-dg2:          NOTRUN -> [SKIP][308] ([i915#9917]) +2 other tests skip
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@sriov_basic@enable-vfs-autoprobe-on.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
>     - shard-tglu-1:       NOTRUN -> [FAIL][309] ([i915#12910])
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-1/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
> 
>   * igt@tools_test@sysfs_l3_parity:
>     - shard-dg1:          NOTRUN -> [SKIP][310] ([i915#4818])
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-17/igt@tools_test@sysfs_l3_parity.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          [INCOMPLETE][311] ([i915#12392] / [i915#7297]) -> [PASS][312]
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-7/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-2/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          [TIMEOUT][313] ([i915#5493]) -> [PASS][314] +1 other test pass
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-8/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_tiled_swapping@non-threaded:
>     - shard-tglu:         [FAIL][315] -> [PASS][316]
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-tglu-2/igt@gem_tiled_swapping@non-threaded.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-7/igt@gem_tiled_swapping@non-threaded.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [ABORT][317] ([i915#5566]) -> [PASS][318]
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-glk6/igt@gen9_exec_parse@allowed-single.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-glk6/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_module_load@load:
>     - shard-dg2:          ([PASS][319], [PASS][320], [PASS][321], [PASS][322], [PASS][323], [PASS][324], [PASS][325], [PASS][326], [PASS][327], [PASS][328], [PASS][329], [PASS][330], [DMESG-WARN][331], [PASS][332], [PASS][333], [DMESG-WARN][334], [PASS][335], [PASS][336], [PASS][337], [PASS][338], [PASS][339], [PASS][340]) ([i915#13368]) -> ([PASS][341], [PASS][342], [PASS][343], [PASS][344], [PASS][345], [PASS][346], [PASS][347], [PASS][348], [PASS][349], [PASS][350], [PASS][351], [PASS][352], [PASS][353], [PASS][354], [PASS][355], [PASS][356], [PASS][357], [PASS][358], [PASS][359], [PASS][360], [PASS][361], [PASS][362], [PASS][363], [PASS][364])
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-7/igt@i915_module_load@load.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-4/igt@i915_module_load@load.html
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-11/igt@i915_module_load@load.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-8/igt@i915_module_load@load.html
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-10/igt@i915_module_load@load.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-11/igt@i915_module_load@load.html
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-8/igt@i915_module_load@load.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-8/igt@i915_module_load@load.html
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-10/igt@i915_module_load@load.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-1/igt@i915_module_load@load.html
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-1/igt@i915_module_load@load.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-6/igt@i915_module_load@load.html
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-2/igt@i915_module_load@load.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-2/igt@i915_module_load@load.html
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-6/igt@i915_module_load@load.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-2/igt@i915_module_load@load.html
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-2/igt@i915_module_load@load.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-5/igt@i915_module_load@load.html
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-3/igt@i915_module_load@load.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-3/igt@i915_module_load@load.html
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-5/igt@i915_module_load@load.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-4/igt@i915_module_load@load.html
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-7/igt@i915_module_load@load.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-3/igt@i915_module_load@load.html
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-11/igt@i915_module_load@load.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-8/igt@i915_module_load@load.html
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-7/igt@i915_module_load@load.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-8/igt@i915_module_load@load.html
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-6/igt@i915_module_load@load.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-1/igt@i915_module_load@load.html
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@i915_module_load@load.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@i915_module_load@load.html
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-11/igt@i915_module_load@load.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-2/igt@i915_module_load@load.html
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-5/igt@i915_module_load@load.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-5/igt@i915_module_load@load.html
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-4/igt@i915_module_load@load.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@i915_module_load@load.html
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-7/igt@i915_module_load@load.html
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-11/igt@i915_module_load@load.html
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-10/igt@i915_module_load@load.html
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-5/igt@i915_module_load@load.html
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-3/igt@i915_module_load@load.html
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-4/igt@i915_module_load@load.html
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-6/igt@i915_module_load@load.html
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-1/igt@i915_module_load@load.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg1:          [ABORT][365] ([i915#9820]) -> [PASS][366]
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg1-18/igt@i915_module_load@reload-with-fault-injection.html
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-tglu:         [ABORT][367] ([i915#12817] / [i915#9820]) -> [PASS][368]
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-tglu-10/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-glk:          [ABORT][369] -> [PASS][370]
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-glk8/igt@i915_module_load@reload-with-fault-injection.html
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-glk6/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@kms_atomic_transition@modeset-transition-nonblocking-fencing:
>     - shard-glk:          [FAIL][371] ([i915#12238]) -> [PASS][372]
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-glk7/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html
> 
>   * igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs:
>     - shard-glk:          [FAIL][373] ([i915#11859]) -> [PASS][374]
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-glk7/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-mtlp:         [FAIL][375] ([i915#2346]) -> [PASS][376]
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-mtlp-6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-mtlp-4/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1:
>     - shard-mtlp:         [FAIL][377] ([i915#12741]) -> [PASS][378]
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-mtlp-1/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-mtlp-5/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1:
>     - shard-mtlp:         [FAIL][379] ([i915#11989]) -> [PASS][380] +1 other test pass
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-mtlp-1/igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1.html
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-mtlp-5/igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank@d-edp1:
>     - shard-mtlp:         [FAIL][381] ([i915#11989] / [i915#12740]) -> [PASS][382] +1 other test pass
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-mtlp-1/igt@kms_flip@flip-vs-blocking-wf-vblank@d-edp1.html
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-mtlp-5/igt@kms_flip@flip-vs-blocking-wf-vblank@d-edp1.html
> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-rkl:          [SKIP][383] ([i915#9519]) -> [PASS][384]
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-rkl-7/igt@kms_pm_rpm@dpms-non-lpsp.html
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-3/igt@kms_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          [SKIP][385] ([i915#9519]) -> [PASS][386]
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_rotation_crc@primary-rotation-90:
>     - shard-rkl:          [DMESG-WARN][387] ([i915#12964]) -> [PASS][388] +3 other tests pass
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-rkl-2/igt@kms_rotation_crc@primary-rotation-90.html
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-2/igt@kms_rotation_crc@primary-rotation-90.html
> 
>   * igt@perf_pmu@all-busy-check-all:
>     - shard-mtlp:         [FAIL][389] -> [PASS][390]
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-mtlp-4/igt@perf_pmu@all-busy-check-all.html
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-mtlp-7/igt@perf_pmu@all-busy-check-all.html
> 
>   * igt@perf_pmu@render-node-busy-idle:
>     - shard-mtlp:         [FAIL][391] ([i915#4349]) -> [PASS][392] +1 other test pass
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-mtlp-2/igt@perf_pmu@render-node-busy-idle.html
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-mtlp-8/igt@perf_pmu@render-node-busy-idle.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-mtlp:         [ABORT][393] ([i915#10131] / [i915#9820]) -> [ABORT][394] ([i915#10131] / [i915#10887] / [i915#9820])
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rpm@system-suspend:
>     - shard-rkl:          [SKIP][395] ([i915#13328]) -> [DMESG-WARN][396] ([i915#12964])
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-rkl-2/igt@i915_pm_rpm@system-suspend.html
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-2/igt@i915_pm_rpm@system-suspend.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
>     - shard-dg1:          [SKIP][397] ([i915#4423]) -> [SKIP][398] +1 other test skip
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg1-13/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-13/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt:
>     - shard-dg1:          [SKIP][399] ([i915#8708]) -> [SKIP][400] ([i915#4423] / [i915#8708])
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt.html
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:
>     - shard-dg2:          [SKIP][401] ([i915#10433] / [i915#3458]) -> [SKIP][402] ([i915#3458]) +2 other tests skip
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-dg2:          [SKIP][403] ([i915#13331]) -> [SKIP][404] ([i915#12713])
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-dg2-10/igt@kms_hdr@brightness-with-hdr.html
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-dg2-8/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_pm_rpm@basic-pci-d3-state:
>     - shard-rkl:          [DMESG-WARN][405] ([i915#12964]) -> [SKIP][406] ([i915#12916])
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15873/shard-rkl-4/igt@kms_pm_rpm@basic-pci-d3-state.html
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/shard-rkl-5/igt@kms_pm_rpm@basic-pci-d3-state.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#10030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10030
>   [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10887]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
>   [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#11859]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859
>   [i915#11965]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11965
>   [i915#11989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989
>   [i915#12238]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12238
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
>   [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
>   [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
>   [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
>   [i915#12402]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12402
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12740]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12740
>   [i915#12741]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12741
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12796]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#12817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12817
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#12916]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12916
>   [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
>   [i915#13010]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13010
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
>   [i915#13197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13197
>   [i915#13287]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13287
>   [i915#13304]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13304
>   [i915#13328]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13328
>   [i915#13331]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331
>   [i915#13368]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13368
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
>   [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
>   [i915#2435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3936]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3936
>   [i915#4036]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4036
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4387]: https:/
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142855v1/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
