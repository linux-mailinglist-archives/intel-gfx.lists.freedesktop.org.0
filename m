Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE97D27A24
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jan 2026 19:37:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECD2510E17A;
	Thu, 15 Jan 2026 18:37:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BocmEw9V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CED710E21B;
 Thu, 15 Jan 2026 18:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768502220; x=1800038220;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=P3xm0r6YqX94cjNjss0pC8y3wFGQNWkLkG6Fxr9Nu34=;
 b=BocmEw9ViPE8fooyWwldUgiBKGe/M7Hx9xuHBZBopsfI2KX/vXj0AJvK
 50iQFVR+iLlva4uL1YzSEBlPDXbVOUTHLxsy7PeHObpNZC7iLgQTp8xrr
 D5vUUxgoHLBMmuCzAFXfN4DVkrWLaKlSh3AxV1k19FA5Lx/sQrqivmyE+
 LpYqmqyoQAc0tRM6nL0sYnfhN9VD02OVP7Nyw2V+A801XKDg6p+GwkkUO
 1VuOYYXZmfbvMl2ebIEWaSw90gB84KbPTG4uT57wuzm/XLUoqzbMR1oet
 BEcxybmrZUke2vXWKNsS4apNihAJ+LI/B2zQ/wdhRqwbMWjD/NTHecMQz Q==;
X-CSE-ConnectionGUID: DH9PO7DvS2SgQOtRkzqwOw==
X-CSE-MsgGUID: bVCFwcyASFynMQBxTV9u5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11672"; a="80535052"
X-IronPort-AV: E=Sophos;i="6.21,228,1763452800"; d="scan'208";a="80535052"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 10:36:59 -0800
X-CSE-ConnectionGUID: FtNLt6edTtijAu5eTrfQPA==
X-CSE-MsgGUID: 0gjEFFBrSyKC4Rtm9CgBJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,228,1763452800"; d="scan'208";a="204164052"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 10:37:00 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 15 Jan 2026 10:36:58 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 15 Jan 2026 10:36:58 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.51) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 15 Jan 2026 10:36:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YX+SlOc2tqTaGiopC47tNhaMmNimDlAxjldpE+fcL4RwY0EsdS0+MQ97W8lHXTTfvf90n5ZFHw9s2Z4UJGJJ8M8Bemg+aylbLwixFX50iWg8j/XZI589RvItakouNoDHCE9QN9qmDkKuHCluPFS6hr57ImKao3drvCJJowQFK+FlJ4iXo/kVG9MKFxRMWGK7E45tCkjccbe72kuLNSLuumWqrYdYip9T06g3B3mXhXy3OcFJSW+qN+uqGz6+yP10AVb5uLyia047DFxdoldJjaN1JJK5uIUReOYe2ewyFEhHI1LGfeMlxvFyYkOurUIETbAFEKElY6dkQ2wAYC7lLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qiS1vNslxPa1nAG9QzIxJfUM9JKCzoCes87WpBlcJdA=;
 b=PSbk8oz7gyP5ce6gGFflSVm8qNY7JzGFKu7HEBWoOcmjRupJ0P+vNpmlkGdOOpqxBGye37OVOgYrMothlugVOxYZTqD21TJgJqXclFNmmMzVUugTAtbriC4V+OhH128sNqPG03a3A+OFaTWJSeoDaI5jbNS1/zC9xWRUiVWAtkSFu1QEnaklXHHJuuYhP3JgDTzKi25qH1oYZ3S168CuABOYx2izDo75JKOVYTaHWW7/05V+znpzkOvq7TulZgwoU83CN3UbGiW8Peoaol5mGAbEvmFV3FH3CzpwhMj+aRAhVFOwOydZLPoNuqwNGnvetXhuYAhu6rgdvIv3crwlyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8000.namprd11.prod.outlook.com (2603:10b6:8:128::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.5; Thu, 15 Jan
 2026 18:36:49 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Thu, 15 Jan 2026
 18:36:49 +0000
Date: Thu, 15 Jan 2026 20:36:43 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jouni Hogander <jouni.hogander@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <I915-ci-infra@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?=
 =?utf-8?Q?lure_for_drm=2Fi915=2Fdp?= =?utf-8?Q?=3A?= Clean up link BW/DSC
 slice config computation (DSC slice)
Message-ID: <aWkzuwKiYEcYKB-e@ideak-desk>
References: <20260114162232.92731-1-imre.deak@intel.com>
 <176843497205.155664.8189386821387393987@a3b018990fe9>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <176843497205.155664.8189386821387393987@a3b018990fe9>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: LO4P265CA0212.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:33a::12) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB8000:EE_
X-MS-Office365-Filtering-Correlation-Id: 73f3b7ed-6b65-4f1f-6038-08de54650afb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?i2gjkNvC7UJDfjhK8jVYVDEkFsY1AXSCrBrxAUdOE8ftCrusgzUwtLs3Bw9R?=
 =?us-ascii?Q?dOPe2tQmqGCrKp8NnF913aKpHx2vM/0R124MfZFSs6oldh+1P6d8mOk73mD0?=
 =?us-ascii?Q?hSzLOmbWVq0omSILjdCKSvDfHbl3ktpBfdtFFYkqkKLAte02t2mUG55lUC6p?=
 =?us-ascii?Q?bHzGKfqv1WwVwTHyW+6ZCoyMu0RuoZStiMHtK6GzVo19k/XPWBTnywoGFNFp?=
 =?us-ascii?Q?sDJQn9DxlmpXLyqOJPFy7YXowzgsHxcXA4Aix9GS/jWn6rMh2m2fq06OBEUQ?=
 =?us-ascii?Q?phHmN+08Oe9J3jlrPYoTyAyR4Bj31MueaBNRcT39j2PPrO08LqonMphe6d2T?=
 =?us-ascii?Q?/wgiQUhnhu3ockrhFY+wb9JU+x1Fjrudd6jwCOk8f4x1MGCzVxBmasodgVDK?=
 =?us-ascii?Q?Ry56yXRkNkRGA/jvh8B4Qe0payoWXCCFTzpNGIWAhDP3CDT8OIgfWc2zaC9f?=
 =?us-ascii?Q?oVExN+vFxXdqRnVGsdOMPAOfs5G2DWtJrpwx/vgL6580ck8jckf4i+v5BuV5?=
 =?us-ascii?Q?mEszdQ3Hscyk3jSDhE1anqJOsJLfjMG/L5TwpWzkjj0R0UXtwUEzs2kXFKC3?=
 =?us-ascii?Q?E5ud61cWhGD4z4tEeORQfRrd8y13hLBRa44/CZN0X4ogYszBtE7yeHM8W4Ct?=
 =?us-ascii?Q?I4eTx0Bx1t+jDQo9ljFOsvNAnTC8nGMgJe+wCNPIMHmVlRBh+m93gHZQllQC?=
 =?us-ascii?Q?/5EZXwSlqXMD7aymoGHdVpaIeMI8lOuFAf0/LYHPqs4EfKTTmwpS3ZvYJZ/S?=
 =?us-ascii?Q?2Z7jbaAXS+tvdroSsyYYw6ddhwAgYgTeT+erJVTYc6lgJNf0qDVWUuCZo3Rt?=
 =?us-ascii?Q?zgceyfoLHn5lY8EG1XDenBccr5fVQ2QAvWVNvawqkNQADEnmlTJ9wyseAGGj?=
 =?us-ascii?Q?+g7dpTII4kSYKtZHkBFJ1+p5qtEcE7jIiwhZmVBNvK5mP0CM7rRHRk81NT3m?=
 =?us-ascii?Q?Ll6bOIiYAiTv7O0iykC5JRFeXAZm5fBX/v03oF42s3dMf0n/SRkkFRPvaiDy?=
 =?us-ascii?Q?rLTgBWanBhIvCg2i5STggYsn+byKt2WpDRmu4ArQswPKY39BrsWJdDYdOD0f?=
 =?us-ascii?Q?Ie/8hAKBs7z7hgDHpNs5zdfcbGm4XrI4kGuhdvLO5jogJa6ZOxlal6mFDyGj?=
 =?us-ascii?Q?Y6CifS5So1WmoI38PYOJjx8AIo9atokbx5QZnJJmYxKFdJ2G2q/9oHWCoII3?=
 =?us-ascii?Q?V1+v1dfHNkZHmWL3ObER7rFuoxWVe6ag35wg5c7/pqQrXPaAWyDmPKtikYcA?=
 =?us-ascii?Q?KoibJBTBgqBsyfNN3gruD8TglGY+s1hDxwXLWYUrXGbVfvnYWpOV+jOrSjzC?=
 =?us-ascii?Q?45T6kRJI/9nzLDv3+ffy3kugTwAI5KDZd3b3Nztf3Mwdym/K6SAzr2LQlEDH?=
 =?us-ascii?Q?t6k1aKo95malBDra2K0MWAWLswNRVZWNpbcWlKKBl3feC8gjlkgKGNbS4O1m?=
 =?us-ascii?Q?2yLOD1JcN0CB4xviKc12Ws5B7jYlQCxNZXw3JSTTg/0ZQ7vSLjD7HYVvUgTw?=
 =?us-ascii?Q?/IvCfOpb/XGavYTv5lgF6hIxyvIPTPL8CScn?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vW0FwMDgoOQ0GJXLLhhZQ21XLAaDeN9NAvK1CcPHAIO9rqHdi175F5vcceQA?=
 =?us-ascii?Q?PqhSOv8tK7YL8WJkv1fQ3LqWJmk4//1WBf6xJgpK57cvbZI1f1sIuPoLEYTw?=
 =?us-ascii?Q?KuTejtlXM0zB5/ShiNUItpudlI33oIrZenKYyxTJQIJU5n6pOWc6Hhmj1i3Z?=
 =?us-ascii?Q?KTph7Nmatvj3ej14oYvIGsHyJ6pLsOKTUkr5r1DBqFzcghJHbGmiDm2RaHzM?=
 =?us-ascii?Q?dKd1aTOs8iSzkyFIS/z7Ww4SUC/5nML3+h7HTomkrMwEMRr0a/ERfJpIlUin?=
 =?us-ascii?Q?UlzcVju+Lo+u7QLYtlRZ3BfrLuEWEFeL8RyntdKisi69T2+78gEj3GtDyvXo?=
 =?us-ascii?Q?zxm4rdgCUJp5quBGzg1ct25RyPTP1Mh8A62vwJ67/TTRh5Ebefv5yTB/1CwO?=
 =?us-ascii?Q?577P08oTfdtguUT9HyUyFM3emeo1n8env8MFs0IJgN9SYUDEcp0imKM+f+5h?=
 =?us-ascii?Q?Dqh5NxYEAagutWtTwVU+dToSQtj4/ivMXvGBBmC+X3pts/4HVcOWu5EKrWlv?=
 =?us-ascii?Q?NzUWcO0PP6hhPClwKKEESLDQK77PyuwU54ZXh7t0ssF8zphWDE3DdZx/5S9T?=
 =?us-ascii?Q?9qNflhGpK1Ius6DQDnHT5campv16a1crq7a8JOfoRsIm6KAY6V8qeXBFR1zt?=
 =?us-ascii?Q?WRAlSWay6iD6fw0VSt20znGT6vVSevcPHfu8fM2moT88zs7iBA9KHgm4H0Ko?=
 =?us-ascii?Q?80skoa9oVyE+O+e9UkY81BTBib1pASX9qciWSmJtTcQNWoQQupjmVGl3CXVx?=
 =?us-ascii?Q?FJQF0YjhoHYn12+GiQsUrQOMCKk0AZIEOiT8tgsvdh/ecuCNqImkDgTSs5Yv?=
 =?us-ascii?Q?ctcgCPATk6Q4rYJ7VuN1Rf3FkumhymksQX3I7sHYQ9Xzyv8bmToCJzaaZE5m?=
 =?us-ascii?Q?6cVCCPOJWDnbLVVrTTzEYfDkAIsOJtdnYOkJwSMcHuaU6vwwx3OcwyRECmqs?=
 =?us-ascii?Q?2LDwoVoA8S3pepqs465Ab6HG0uezhzZOHAVf2ruu1xl0es3UEp+0XEqfMoUs?=
 =?us-ascii?Q?DOpEhl0AwEl7AMJ3QBPC0AFAXNMXz8IuJypPOTuV1WoiAL6VQk5Gli3jDpNN?=
 =?us-ascii?Q?My4Ab6MO5KPeZtRat1hM7K6CWAJL2fWR3hTSwyC94l4qVfyDhwUXkf8QcL+k?=
 =?us-ascii?Q?GouZ7S0A59l0kZUtdYclfs6VQVKBJTYxtcBpnU9zca2UCg7ZeHj1LuSLqgVc?=
 =?us-ascii?Q?PyE/HPbGm0XmVjPfRTIne69zkYxP/z+FJOfBi0i0Xy9D6lu26MlP93N9iVVx?=
 =?us-ascii?Q?hMGENIky0lsXHXa3r/K7AckeXsV4n1sw/XwcnyQc3tXIRVpYPTJFKHnGq3My?=
 =?us-ascii?Q?R4MZyl+Wbr71PNEbJuJR39DFVRYlmmpFsBEKkVd3CCgmRBQgVTzhPokXOASu?=
 =?us-ascii?Q?NZd8ibGb5VRfsJljweAoBp6HRUiC0gxZYf2x43a+CctcJgpkmOf/4vn5Wk0b?=
 =?us-ascii?Q?QkvJRWWUm2sasxf3dxQgNN2Tnx/iM+sw6OXKEMf74N14UPV1ucw9gwO11Mjk?=
 =?us-ascii?Q?pQWKUr3O4fU6pTJZ4wLzh2ME3wKIZQgO+Hw/lApC82OHT03CEGBY/mYarQgV?=
 =?us-ascii?Q?N13u3U92BrJJ1IO27KHtfR2yf+mKsA4fzkxnlXLh5pojKT/AWvroDLv9Lcwl?=
 =?us-ascii?Q?Om5X/AE68vpWXqzVD84G3lKeDQNwOqz5Uk0SuTvNoMJjNoTDLdQ/3YyZSfDi?=
 =?us-ascii?Q?rJoJQTmZpKMVIFX6c0diqvgquUBiufetKU34QlCCQeghHv7ZZsLmKAXBF/YD?=
 =?us-ascii?Q?cd62E0k2o58n12PU4wQjbvaBVGK36PC4VgpO+RFdss8eEjPBU6mltMVlD5kO?=
X-MS-Exchange-AntiSpam-MessageData-1: 4ZISkx1i93IgoQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 73f3b7ed-6b65-4f1f-6038-08de54650afb
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2026 18:36:49.2921 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 16C+i5mfrPRIrJ8oOmBNo3LvL0zFAcDqC8LG+wxwxlF1Dz4n7w5lbh7tG4TQbHbhw3GJ3yHubcPU3b/H+EncZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8000
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 14, 2026 at 11:56:12PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp: Clean up link BW/DSC slice config computation (DSC slice)
> URL   : https://patchwork.freedesktop.org/series/160099/
> State : failure

Patchset is pushed to drm-intel-next, thanks for the review.

The failure is unrelated, see below.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_17821_full -> Patchwork_160099v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_160099v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_160099v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
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
>   Here are the unknown changes that may have been introduced in Patchwork_160099v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_whisper@basic-queues-priority:
>     - shard-dg2:          [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-dg2-5/igt@gem_exec_whisper@basic-queues-priority.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-3/igt@gem_exec_whisper@basic-queues-priority.html

It looks like an issue related to GuC, see the stacktrace below. The
above DG2 has only an HDMI output, so the DSI/DP/DSC changes in the
patchset are unrelated to the issue.

<0> [176.138907] watchdog: BUG: soft lockup - CPU#0 stuck for 23s! [kworker/u24:6:2169]
...
<4> [176.139161] RIP: 0010:memchr_inv+0x4f/0x140
...
<4> [176.139173]  ? lrc_unpin+0x42/0xd0 [i915]
<4> [176.139318]  guc_context_unpin+0x59/0xb0 [i915]
<4> [176.139485]  __intel_context_do_unpin.part.0+0x5a/0x140 [i915]
<4> [176.139619]  __intel_context_do_unpin+0x17/0x30 [i915]
<4> [176.139752]  intel_guc_sched_done_process_msg+0x233/0x350 [i915]
<4> [176.139920]  ct_process_request+0x135/0x1d0 [i915]
<4> [176.140083]  ? trace_hardirqs_on+0x63/0xd0
<4> [176.140088]  ct_incoming_request_worker_func+0x98/0x180 [i915]

>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_160099v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@crc32:
>     - shard-tglu:         NOTRUN -> [SKIP][3] ([i915#6230])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@api_intel_bb@crc32.html
> 
>   * igt@api_intel_bb@object-reloc-keep-cache:
>     - shard-rkl:          NOTRUN -> [SKIP][4] ([i915#8411]) +3 other tests skip
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-8/igt@api_intel_bb@object-reloc-keep-cache.html
> 
>   * igt@drm_buddy@drm_buddy@drm_test_buddy_fragmentation_performance:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][5] ([i915#15095]) +1 other test dmesg-warn
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-8/igt@drm_buddy@drm_buddy@drm_test_buddy_fragmentation_performance.html
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-tglu-1:       NOTRUN -> [SKIP][6] ([i915#3555] / [i915#9323])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@gem_ccs@block-copy-compressed.html
>     - shard-rkl:          NOTRUN -> [SKIP][7] ([i915#3555] / [i915#9323])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-2/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_ccs@ctrl-surf-copy-new-ctx:
>     - shard-rkl:          NOTRUN -> [SKIP][8] ([i915#9323])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-4/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
> 
>   * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:
>     - shard-dg2:          [PASS][9] -> [INCOMPLETE][10] ([i915#12392] / [i915#13356])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-dg2-1/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-4/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-tglu-1:       NOTRUN -> [SKIP][11] ([i915#6335]) +1 other test skip
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_ctx_persistence@engines-cleanup:
>     - shard-snb:          NOTRUN -> [SKIP][12] ([i915#1099])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-snb7/igt@gem_ctx_persistence@engines-cleanup.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-tglu:         NOTRUN -> [SKIP][13] ([i915#280])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-rkl:          NOTRUN -> [SKIP][14] ([i915#280])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#4525]) +1 other test skip
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_capture@capture-invisible:
>     - shard-rkl:          NOTRUN -> [SKIP][16] ([i915#14544] / [i915#6334]) +1 other test skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@gem_exec_capture@capture-invisible.html
> 
>   * igt@gem_exec_capture@capture-recoverable:
>     - shard-tglu:         NOTRUN -> [SKIP][17] ([i915#6344])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@gem_exec_capture@capture-recoverable.html
> 
>   * igt@gem_exec_fence@concurrent:
>     - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#4812])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-8/igt@gem_exec_fence@concurrent.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][19] ([i915#3281]) +9 other tests skip
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-read-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-range-active:
>     - shard-rkl:          NOTRUN -> [SKIP][20] ([i915#14544] / [i915#3281])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@gem_exec_reloc@basic-range-active.html
> 
>   * igt@gem_lmem_evict@dontneed-evict-race:
>     - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#4613] / [i915#7582])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@gem_lmem_evict@dontneed-evict-race.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-rkl:          NOTRUN -> [SKIP][22] ([i915#14544] / [i915#4613])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-rkl:          NOTRUN -> [SKIP][23] ([i915#4613]) +1 other test skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-8/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-glk:          NOTRUN -> [SKIP][24] ([i915#4613]) +3 other tests skip
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-glk9/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-tglu-1:       NOTRUN -> [SKIP][25] ([i915#4613]) +1 other test skip
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_media_vme:
>     - shard-tglu-1:       NOTRUN -> [SKIP][26] ([i915#284])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@gem_media_vme.html
> 
>   * igt@gem_mmap_wc@invalid-flags:
>     - shard-mtlp:         NOTRUN -> [SKIP][27] ([i915#4083])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-mtlp-3/igt@gem_mmap_wc@invalid-flags.html
> 
>   * igt@gem_mmap_wc@read:
>     - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#4083])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-8/igt@gem_mmap_wc@read.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-rkl:          NOTRUN -> [SKIP][29] ([i915#14544] / [i915#3282]) +3 other tests skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-buffer:
>     - shard-rkl:          NOTRUN -> [SKIP][30] ([i915#13717])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-4/igt@gem_pxp@hw-rejects-pxp-buffer.html
> 
>   * igt@gem_pxp@regular-baseline-src-copy-readible:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#4270]) +1 other test skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-8/igt@gem_pxp@regular-baseline-src-copy-readible.html
> 
>   * igt@gem_set_tiling_vs_pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][32] ([i915#3282]) +2 other tests skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-4/igt@gem_set_tiling_vs_pwrite.html
> 
>   * igt@gem_tiling_max_stride:
>     - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#4077]) +3 other tests skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-8/igt@gem_tiling_max_stride.html
> 
>   * igt@gem_userptr_blits@access-control:
>     - shard-tglu:         NOTRUN -> [SKIP][34] ([i915#3297])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@gem_userptr_blits@access-control.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-busy:
>     - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#3297] / [i915#4880])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-8/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#3297]) +2 other tests skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-tglu-1:       NOTRUN -> [SKIP][37] ([i915#2527] / [i915#2856]) +1 other test skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@gen9_exec_parse@bb-start-out:
>     - shard-tglu:         NOTRUN -> [SKIP][38] ([i915#2527] / [i915#2856]) +1 other test skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@gen9_exec_parse@bb-start-out.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#2527])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-8/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_module_load@reload-no-display:
>     - shard-tglu:         [PASS][40] -> [DMESG-WARN][41] ([i915#13029] / [i915#14545])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-tglu-5/igt@i915_module_load@reload-no-display.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-5/igt@i915_module_load@reload-no-display.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][42] ([i915#4817])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-glk3/igt@i915_suspend@forcewake.html
>     - shard-rkl:          [PASS][43] -> [INCOMPLETE][44] ([i915#4817])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-8/igt@i915_suspend@forcewake.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-3/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#1769] / [i915#3555])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
>     - shard-tglu:         NOTRUN -> [SKIP][46] ([i915#5286]) +2 other tests skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
>     - shard-tglu-1:       NOTRUN -> [SKIP][47] ([i915#5286]) +4 other tests skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][48] ([i915#5286]) +2 other tests skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-8/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-rkl:          NOTRUN -> [SKIP][49] ([i915#14544] / [i915#5286]) +1 other test skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-rkl:          NOTRUN -> [SKIP][50] ([i915#3828])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-4/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][51]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-8/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][52] ([i915#14544] / [i915#3638]) +1 other test skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#3638]) +2 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-4/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#4538] / [i915#5190]) +1 other test skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#14098] / [i915#6095]) +57 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-8/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#6095]) +93 other tests skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-4/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-b-hdmi-a-1:
>     - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#6095]) +151 other tests skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg1-14/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs:
>     - shard-glk10:        NOTRUN -> [SKIP][59] +18 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-glk10/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#6095]) +24 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-1/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][61] ([i915#12805] / [i915#14544])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][62] ([i915#6095]) +54 other tests skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][63] ([i915#6095]) +24 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#10307] / [i915#6095]) +100 other tests skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#14544] / [i915#6095]) +11 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][66] ([i915#12313]) +1 other test skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
>     - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#12313])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][68] ([i915#14098] / [i915#14544] / [i915#6095]) +7 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#3742])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_chamelium_color@ctm-0-50:
>     - shard-tglu-1:       NOTRUN -> [SKIP][70] +40 other tests skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@kms_chamelium_color@ctm-0-50.html
> 
>   * igt@kms_chamelium_edid@dp-edid-change-during-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][71] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-read:
>     - shard-tglu-1:       NOTRUN -> [SKIP][72] ([i915#11151] / [i915#7828]) +6 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@kms_chamelium_edid@hdmi-edid-read.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-single:
>     - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#11151] / [i915#7828]) +6 other tests skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_chamelium_frames@hdmi-crc-single.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-storm:
>     - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#11151] / [i915#7828]) +1 other test skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-8/igt@kms_chamelium_hpd@dp-hpd-storm.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
>     - shard-mtlp:         NOTRUN -> [SKIP][75] ([i915#11151] / [i915#7828])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-mtlp-3/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#11151] / [i915#14544] / [i915#7828]) +1 other test skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
> 
>   * igt@kms_color@deep-color:
>     - shard-tglu:         NOTRUN -> [SKIP][77] ([i915#3555] / [i915#9979])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@kms_color@deep-color.html
> 
>   * igt@kms_color_pipeline@plane-lut3d-green-only@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#15523]) +2 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-1/igt@kms_color_pipeline@plane-lut3d-green-only@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_color_pipeline@plane-lut3d-green-only@pipe-d-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][79] ([i915#15523]) +3 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg1-12/igt@kms_color_pipeline@plane-lut3d-green-only@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#6944] / [i915#7118] / [i915#9424])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-4/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@atomic-dpms-hdcp14:
>     - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#6944])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-8/igt@kms_content_protection@atomic-dpms-hdcp14.html
> 
>   * igt@kms_content_protection@atomic-hdcp14:
>     - shard-tglu-1:       NOTRUN -> [SKIP][82] ([i915#6944]) +1 other test skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@kms_content_protection@atomic-hdcp14.html
> 
>   * igt@kms_content_protection@atomic-hdcp14@pipe-a-dp-3:
>     - shard-dg2:          NOTRUN -> [FAIL][83] ([i915#7173])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-11/igt@kms_content_protection@atomic-hdcp14@pipe-a-dp-3.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#15330] / [i915#3116])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-1.html
>     - shard-tglu:         NOTRUN -> [SKIP][85] ([i915#15330] / [i915#3116] / [i915#3299])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#6944] / [i915#7118] / [i915#9424])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-8/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#6944] / [i915#9424])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#14544] / [i915#6944] / [i915#7118])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@suspend-resume:
>     - shard-tglu:         NOTRUN -> [SKIP][89] ([i915#6944])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@kms_content_protection@suspend-resume.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-tglu-1:       NOTRUN -> [SKIP][90] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x170:
>     - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#13049])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x512:
>     - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#13049] / [i915#14544])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x10:
>     - shard-tglu:         NOTRUN -> [SKIP][93] ([i915#3555])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@kms_cursor_crc@cursor-onscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#3555]) +2 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#13049])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-8/igt@kms_cursor_crc@cursor-onscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-256x85:
>     - shard-tglu:         NOTRUN -> [FAIL][96] ([i915#13566]) +1 other test fail
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@kms_cursor_crc@cursor-random-256x85.html
> 
>   * igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [FAIL][97] ([i915#13566])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-tglu-1:       NOTRUN -> [SKIP][98] ([i915#3555]) +7 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-256x85:
>     - shard-tglu:         [PASS][99] -> [FAIL][100] ([i915#13566]) +1 other test fail
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-tglu-5/igt@kms_cursor_crc@cursor-sliding-256x85.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-5/igt@kms_cursor_crc@cursor-sliding-256x85.html
> 
>   * igt@kms_cursor_crc@cursor-suspend:
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][101] ([i915#12358] / [i915#14152] / [i915#7882])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-glk10/igt@kms_cursor_crc@cursor-suspend.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][102] ([i915#12358] / [i915#14152])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-glk10/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][103] +11 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-tglu-1:       NOTRUN -> [SKIP][104] ([i915#4103])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>     - shard-tglu:         NOTRUN -> [SKIP][105] ([i915#4103])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
>     - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#4103])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#9833])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-8/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#13691])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-4/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#3804])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_dp_link_training@uhbr-mst:
>     - shard-tglu-1:       NOTRUN -> [SKIP][110] ([i915#13748])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@kms_dp_link_training@uhbr-mst.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#13707])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-8/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_dp_linktrain_fallback@dsc-fallback:
>     - shard-tglu-1:       NOTRUN -> [SKIP][112] ([i915#13707])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@kms_dp_linktrain_fallback@dsc-fallback.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-tglu-1:       NOTRUN -> [SKIP][113] ([i915#3840])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>     - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#3840])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-8/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-tglu:         NOTRUN -> [SKIP][115] ([i915#3555] / [i915#3840])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#3555] / [i915#3840]) +1 other test skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-4/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_feature_discovery@display-3x:
>     - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#1839])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_feature_discovery@display-3x.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-tglu-1:       NOTRUN -> [SKIP][118] ([i915#1839])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-tglu:         NOTRUN -> [SKIP][119] ([i915#9337])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#658])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-8/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#9934]) +7 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-8/igt@kms_flip@2x-flip-vs-dpms.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank:
>     - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#9934])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-8/igt@kms_flip@2x-flip-vs-expired-vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-interruptible:
>     - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#3637] / [i915#9934]) +2 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@kms_flip@2x-flip-vs-panning-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][124] ([i915#12745] / [i915#4839])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-glk6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][125] ([i915#4839])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-glk6/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check:
>     - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#14544] / [i915#9934])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_flip@2x-plain-flip-ts-check.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
>     - shard-tglu-1:       NOTRUN -> [SKIP][127] ([i915#3637] / [i915#9934]) +4 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-32bpp-linear-reflect-x@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#15573]) +1 other test skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-32bpp-linear-reflect-x@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][129] ([i915#2672] / [i915#3555]) +2 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][130] ([i915#2587] / [i915#2672] / [i915#3555])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][131] ([i915#2587] / [i915#2672]) +1 other test skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#14544] / [i915#2672] / [i915#3555])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#14544] / [i915#2672])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][134] ([i915#2672] / [i915#3555])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#2672] / [i915#3555]) +2 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#2672]) +2 other tests skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html
>     - shard-tglu:         NOTRUN -> [SKIP][137] ([i915#2587] / [i915#2672]) +2 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-nv12-linear-to-nv12-linear-reflect-x@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][138] ([i915#15573]) +1 other test skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@kms_flip_scaled_crc@flip-nv12-linear-to-nv12-linear-reflect-x@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#15104])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:
>     - shard-snb:          [PASS][140] -> [SKIP][141]
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-blt:
>     - shard-dg2:          [PASS][142] -> [FAIL][143] ([i915#15389] / [i915#6880])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-blt.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][144] ([i915#10056])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-glk9/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#5439])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#15102]) +2 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:
>     - shard-snb:          NOTRUN -> [SKIP][147] +41 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-snb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
>     - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#14544] / [i915#15102] / [i915#3023]) +4 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
>     - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#15102] / [i915#3458]) +1 other test skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render:
>     - shard-tglu:         NOTRUN -> [SKIP][150] +29 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#14544] / [i915#1825]) +9 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#8708]) +3 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-render:
>     - shard-mtlp:         NOTRUN -> [SKIP][153] ([i915#1825])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#1825]) +25 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-abgr161616f-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#15574]) +1 other test skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-abgr161616f-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-abgr161616f-draw-mmap-wc:
>     - shard-tglu:         NOTRUN -> [SKIP][156] ([i915#15574]) +3 other tests skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@kms_frontbuffer_tracking@fbcpsr-abgr161616f-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-argb161616f-draw-pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#15574]) +3 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-argb161616f-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][158] ([i915#15102]) +13 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#15102] / [i915#3023]) +17 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#9766])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-8/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render:
>     - shard-tglu:         NOTRUN -> [SKIP][161] ([i915#15102]) +10 other tests skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#5354]) +1 other test skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-abgr161616f-draw-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#14544] / [i915#15574])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-abgr161616f-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-abgr161616f-draw-pwrite:
>     - shard-tglu-1:       NOTRUN -> [SKIP][164] ([i915#15574]) +3 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-abgr161616f-draw-pwrite.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - shard-tglu:         [PASS][165] -> [SKIP][166] ([i915#13030])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-tglu-5/igt@kms_hdmi_inject@inject-audio.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-5/igt@kms_hdmi_inject@inject-audio.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-tglu:         NOTRUN -> [SKIP][167] ([i915#3555] / [i915#8228]) +1 other test skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@invalid-hdr:
>     - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#3555] / [i915#8228]) +1 other test skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_hdr@invalid-hdr.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#3555] / [i915#8228])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-8/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_joiner@basic-force-ultra-joiner:
>     - shard-tglu-1:       NOTRUN -> [SKIP][170] ([i915#15458])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@kms_joiner@basic-force-ultra-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#15460])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-4/igt@kms_joiner@invalid-modeset-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#14544] / [i915#15458])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-tglu-1:       NOTRUN -> [SKIP][173] ([i915#6301])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_pipe_stress@stress-xrgb8888-yftiled:
>     - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#14712])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-8/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html
> 
>   * igt@kms_plane_multiple@tiling-4:
>     - shard-tglu-1:       NOTRUN -> [SKIP][175] ([i915#14259])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@kms_plane_multiple@tiling-4.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a:
>     - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#14544] / [i915#15329]) +3 other tests skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation:
>     - shard-glk:          NOTRUN -> [SKIP][177] +196 other tests skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-glk6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation.html
> 
>   * igt@kms_pm_backlight@fade-with-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][178] ([i915#9812]) +1 other test skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@kms_pm_backlight@fade-with-dpms.html
> 
>   * igt@kms_pm_backlight@fade-with-suspend:
>     - shard-tglu-1:       NOTRUN -> [SKIP][179] ([i915#9812]) +1 other test skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@kms_pm_backlight@fade-with-suspend.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg1:          [PASS][180] -> [SKIP][181] ([i915#15073])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-dg1-14/igt@kms_pm_rpm@dpms-lpsp.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg1-12/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-rkl:          [PASS][182] -> [SKIP][183] ([i915#15073])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-tglu-1:       NOTRUN -> [SKIP][184] ([i915#15073]) +1 other test skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-tglu-1:       NOTRUN -> [SKIP][185] ([i915#6524])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#6524])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-4/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#11520] / [i915#14544]) +1 other test skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#11520])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-8/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:
>     - shard-tglu:         NOTRUN -> [SKIP][189] ([i915#11520]) +3 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#11520]) +2 other tests skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-4/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@pr-plane-move-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][191] ([i915#11520]) +5 other tests skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-glk3/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][192] ([i915#11520]) +5 other tests skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#9683])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>     - shard-tglu:         NOTRUN -> [SKIP][194] ([i915#9683])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#9683])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-8/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@fbc-psr-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#1072] / [i915#14544] / [i915#9732]) +4 other tests skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_psr@fbc-psr-dpms.html
> 
>   * igt@kms_psr@fbc-psr2-primary-mmap-gtt:
>     - shard-tglu:         NOTRUN -> [SKIP][197] ([i915#9732]) +9 other tests skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@kms_psr@fbc-psr2-primary-mmap-gtt.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-render:
>     - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#1072] / [i915#9732]) +20 other tests skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-8/igt@kms_psr@fbc-psr2-sprite-render.html
> 
>   * igt@kms_psr@pr-basic:
>     - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#1072] / [i915#9732]) +2 other tests skip
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-8/igt@kms_psr@pr-basic.html
> 
>   * igt@kms_psr@psr2-sprite-mmap-gtt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][200] ([i915#9732]) +13 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@kms_psr@psr2-sprite-mmap-gtt.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-tglu-1:       NOTRUN -> [SKIP][201] ([i915#9685])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>     - shard-rkl:          NOTRUN -> [SKIP][202] ([i915#9685])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-2/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][203] ([i915#15500])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-glk5/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html
> 
>   * igt@kms_vblank@ts-continuation-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][204] ([i915#12276]) +1 other test incomplete
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-glk3/igt@kms_vblank@ts-continuation-suspend.html
> 
>   * igt@kms_vrr@flipline:
>     - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#15243] / [i915#3555])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-4/igt@kms_vrr@flipline.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-tglu:         NOTRUN -> [SKIP][206] ([i915#3555] / [i915#9906])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-9/igt@kms_vrr@negative-basic.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-tglu-1:       NOTRUN -> [SKIP][207] ([i915#9906])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@perf@per-context-mode-unprivileged:
>     - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#2435])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-8/igt@perf@per-context-mode-unprivileged.html
> 
>   * igt@perf@unprivileged-single-ctx-counters:
>     - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#2433])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@perf@unprivileged-single-ctx-counters.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#8516])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each:
>     - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#9917])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-4/igt@sriov_basic@enable-vfs-bind-unbind-each.html
> 
>   * igt@tools_test@sysfs_l3_parity:
>     - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#14544]) +7 other tests skip
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@tools_test@sysfs_l3_parity.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@preservation-s3:
>     - shard-rkl:          [INCOMPLETE][213] ([i915#13356]) -> [PASS][214] +1 other test pass
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-4/igt@gem_ctx_isolation@preservation-s3.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-2/igt@gem_ctx_isolation@preservation-s3.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-rkl:          [INCOMPLETE][215] ([i915#13390]) -> [PASS][216]
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@gem_eio@in-flight-suspend.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - shard-dg2:          [INCOMPLETE][217] ([i915#13356]) -> [PASS][218] +1 other test pass
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-dg2-6/igt@gem_exec_suspend@basic-s0@smem.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-8/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   * igt@gem_mmap_offset@clear-via-pagefault:
>     - shard-mtlp:         [ABORT][219] ([i915#14809]) -> [PASS][220] +1 other test pass
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-mtlp-6/igt@gem_mmap_offset@clear-via-pagefault.html
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-mtlp-3/igt@gem_mmap_offset@clear-via-pagefault.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [INCOMPLETE][221] ([i915#13729] / [i915#13821]) -> [PASS][222]
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-snb4/igt@i915_pm_rps@reset.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-snb7/igt@i915_pm_rps@reset.html
> 
>   * igt@i915_selftest@live:
>     - shard-mtlp:         [DMESG-FAIL][223] ([i915#12061] / [i915#15560]) -> [PASS][224]
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-mtlp-2/igt@i915_selftest@live.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-mtlp-8/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - shard-mtlp:         [DMESG-FAIL][225] ([i915#12061]) -> [PASS][226]
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-mtlp-2/igt@i915_selftest@live@workarounds.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-mtlp-8/igt@i915_selftest@live@workarounds.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-rkl:          [INCOMPLETE][227] ([i915#4817]) -> [PASS][228]
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@i915_suspend@fence-restore-untiled.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-8/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_atomic@plane-invalid-params-fence:
>     - shard-dg1:          [DMESG-WARN][229] ([i915#4423]) -> [PASS][230]
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-dg1-19/igt@kms_atomic@plane-invalid-params-fence.html
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg1-17/igt@kms_atomic@plane-invalid-params-fence.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-mtlp:         [FAIL][231] ([i915#5138]) -> [PASS][232]
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:
>     - shard-rkl:          [INCOMPLETE][233] -> [PASS][234]
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
> 
>   * igt@kms_cursor_crc@cursor-random-64x21:
>     - shard-tglu:         [FAIL][235] ([i915#13566]) -> [PASS][236] +1 other test pass
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-tglu-2/igt@kms_cursor_crc@cursor-random-64x21.html
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-tglu-4/igt@kms_cursor_crc@cursor-random-64x21.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-256x85:
>     - shard-rkl:          [FAIL][237] ([i915#13566]) -> [PASS][238]
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-256x85.html
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-1/igt@kms_cursor_crc@cursor-sliding-256x85.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
>     - shard-dg2:          [SKIP][239] ([i915#3555]) -> [PASS][240]
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-dg2-7/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:
>     - shard-snb:          [TIMEOUT][241] ([i915#14033]) -> [PASS][242] +1 other test pass
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-snb6/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-snb7/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a:
>     - shard-rkl:          [INCOMPLETE][243] ([i915#14412]) -> [PASS][244] +1 other test pass
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-rkl:          [SKIP][245] ([i915#6953]) -> [PASS][246]
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-2/igt@kms_plane_scaling@intel-max-src-size.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-1/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-rkl:          [SKIP][247] ([i915#15073]) -> [PASS][248] +1 other test pass
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg2:          [SKIP][249] ([i915#15073]) -> [PASS][250]
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-dg1:          [SKIP][251] ([i915#15073]) -> [PASS][252] +1 other test pass
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-dg1-17/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg1-14/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-mtlp:         [FAIL][253] ([i915#15420]) -> [PASS][254] +1 other test pass
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-mtlp-7/igt@kms_vrr@negative-basic.html
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-mtlp-3/igt@kms_vrr@negative-basic.html
> 
>   
> #### Warnings ####
> 
>   * igt@api_intel_bb@crc32:
>     - shard-rkl:          [SKIP][255] ([i915#14544] / [i915#6230]) -> [SKIP][256] ([i915#6230])
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@api_intel_bb@crc32.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@api_intel_bb@crc32.html
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-rkl:          [SKIP][257] ([i915#11078]) -> [SKIP][258] ([i915#11078] / [i915#14544])
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-1/igt@device_reset@unbind-cold-reset-rebind.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@gem_bad_reloc@negative-reloc:
>     - shard-rkl:          [SKIP][259] ([i915#3281]) -> [SKIP][260] ([i915#14544] / [i915#3281]) +3 other tests skip
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-2/igt@gem_bad_reloc@negative-reloc.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@gem_bad_reloc@negative-reloc.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-rkl:          [SKIP][261] ([i915#14544] / [i915#9323]) -> [SKIP][262] ([i915#9323])
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@gem_ccs@block-multicopy-compressed.html
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-8/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-rkl:          [SKIP][263] ([i915#14544] / [i915#3555] / [i915#9323]) -> [SKIP][264] ([i915#3555] / [i915#9323])
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_ccs@ctrl-surf-copy:
>     - shard-rkl:          [SKIP][265] ([i915#3555] / [i915#9323]) -> [SKIP][266] ([i915#14544] / [i915#3555] / [i915#9323])
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-1/igt@gem_ccs@ctrl-surf-copy.html
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-rkl:          [SKIP][267] ([i915#9323]) -> [SKIP][268] ([i915#14544] / [i915#9323])
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-2/igt@gem_ccs@suspend-resume.html
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-rkl:          [SKIP][269] ([i915#14544] / [i915#280]) -> [SKIP][270] ([i915#280])
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@gem_ctx_sseu@engines.html
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-rkl:          [SKIP][271] ([i915#280]) -> [SKIP][272] ([i915#14544] / [i915#280])
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-2/igt@gem_ctx_sseu@mmap-args.html
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-rkl:          [SKIP][273] ([i915#4525]) -> [SKIP][274] ([i915#14544] / [i915#4525])
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-2/igt@gem_exec_balancer@parallel-bb-first.html
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-rkl:          [SKIP][275] ([i915#14544] / [i915#4525]) -> [SKIP][276] ([i915#4525])
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@gem_exec_balancer@parallel-contexts.html
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_reloc@basic-active:
>     - shard-rkl:          [SKIP][277] ([i915#14544] / [i915#3281]) -> [SKIP][278] ([i915#3281]) +5 other tests skip
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@gem_exec_reloc@basic-active.html
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@gem_exec_reloc@basic-active.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-rkl:          [SKIP][279] ([i915#4613]) -> [SKIP][280] ([i915#14544] / [i915#4613]) +3 other tests skip
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-1/igt@gem_lmem_swapping@parallel-random.html
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-rkl:          [SKIP][281] ([i915#14544] / [i915#4613]) -> [SKIP][282] ([i915#4613])
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@gem_lmem_swapping@smem-oom.html
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_partial_pwrite_pread@reads:
>     - shard-rkl:          [SKIP][283] ([i915#3282]) -> [SKIP][284] ([i915#14544] / [i915#3282]) +1 other test skip
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-1/igt@gem_partial_pwrite_pread@reads.html
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@gem_partial_pwrite_pread@reads.html
> 
>   * igt@gem_pread@self:
>     - shard-rkl:          [SKIP][285] ([i915#14544] / [i915#3282]) -> [SKIP][286] ([i915#3282]) +2 other tests skip
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@gem_pread@self.html
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@gem_pread@self.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-context:
>     - shard-rkl:          [SKIP][287] ([i915#13717] / [i915#14544]) -> [SKIP][288] ([i915#13717])
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-context.html
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-context.html
> 
>   * igt@gem_userptr_blits@access-control:
>     - shard-rkl:          [SKIP][289] ([i915#14544] / [i915#3297]) -> [SKIP][290] ([i915#3297])
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@gem_userptr_blits@access-control.html
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@gem_userptr_blits@access-control.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-rkl:          [SKIP][291] ([i915#3297]) -> [SKIP][292] ([i915#14544] / [i915#3297])
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-2/igt@gem_userptr_blits@coherency-sync.html
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-rkl:          [SKIP][293] ([i915#14544] / [i915#3297] / [i915#3323]) -> [SKIP][294] ([i915#3297] / [i915#3323])
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@gem_userptr_blits@dmabuf-sync.html
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-8/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-rkl:          [SKIP][295] ([i915#2527]) -> [SKIP][296] ([i915#14544] / [i915#2527]) +1 other test skip
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-2/igt@gen9_exec_parse@allowed-all.html
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@bb-start-out:
>     - shard-rkl:          [SKIP][297] ([i915#14544] / [i915#2527]) -> [SKIP][298] ([i915#2527]) +1 other test skip
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@gen9_exec_parse@bb-start-out.html
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-out.html
> 
>   * igt@i915_pm_freq_api@freq-suspend:
>     - shard-rkl:          [SKIP][299] ([i915#14544] / [i915#8399]) -> [SKIP][300] ([i915#8399])
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@i915_pm_freq_api@freq-suspend.html
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@i915_pm_freq_api@freq-suspend.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-rkl:          [SKIP][301] ([i915#6245]) -> [SKIP][302] ([i915#14544] / [i915#6245])
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-1/igt@i915_query@hwconfig_table.html
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@i915_query@hwconfig_table.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-rkl:          [SKIP][303] ([i915#5286]) -> [SKIP][304] ([i915#14544] / [i915#5286]) +1 other test skip
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-rkl:          [SKIP][305] ([i915#14544] / [i915#5286]) -> [SKIP][306] ([i915#5286]) +1 other test skip
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-rkl:          [SKIP][307] ([i915#14544] / [i915#3638]) -> [SKIP][308] ([i915#3638]) +1 other test skip
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-rkl:          [SKIP][309] ([i915#14544]) -> [SKIP][310] +9 other tests skip
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc:
>     - shard-rkl:          [SKIP][311] ([i915#14098] / [i915#6095]) -> [SKIP][312] ([i915#14098] / [i915#14544] / [i915#6095]) +9 other tests skip
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-1/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
>     - shard-rkl:          [SKIP][313] ([i915#12313]) -> [SKIP][314] ([i915#12313] / [i915#14544])
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-2/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
>     - shard-rkl:          [SKIP][315] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][316] ([i915#14098] / [i915#6095]) +7 other tests skip
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          [SKIP][317] ([i915#6095]) -> [SKIP][318] ([i915#14544] / [i915#6095]) +5 other tests skip
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_chamelium_frames@dp-crc-fast:
>     - shard-rkl:          [SKIP][319] ([i915#11151] / [i915#7828]) -> [SKIP][320] ([i915#11151] / [i915#14544] / [i915#7828]) +4 other tests skip
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-1/igt@kms_chamelium_frames@dp-crc-fast.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_chamelium_frames@dp-crc-fast.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-fast:
>     - shard-rkl:          [SKIP][321] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][322] ([i915#11151] / [i915#7828]) +1 other test skip
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-fast.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-8/igt@kms_chamelium_hpd@vga-hpd-fast.html
> 
>   * igt@kms_content_protection@atomic-hdcp14:
>     - shard-dg2:          [SKIP][323] ([i915#6944]) -> [FAIL][324] ([i915#7173])
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-dg2-7/igt@kms_content_protection@atomic-hdcp14.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-11/igt@kms_content_protection@atomic-hdcp14.html
> 
>   * igt@kms_content_protection@content-type-change:
>     - shard-rkl:          [SKIP][325] ([i915#6944] / [i915#9424]) -> [SKIP][326] ([i915#14544] / [i915#6944] / [i915#9424])
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-2/igt@kms_content_protection@content-type-change.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_content_protection@content-type-change.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-rkl:          [SKIP][327] ([i915#15330] / [i915#3116]) -> [SKIP][328] ([i915#14544] / [i915#15330] / [i915#3116])
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-1/igt@kms_content_protection@dp-mst-lic-type-0.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-rkl:          [SKIP][329] ([i915#14544] / [i915#15330] / [i915#3116]) -> [SKIP][330] ([i915#15330] / [i915#3116])
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg1:          [SKIP][331] ([i915#6944] / [i915#9424]) -> [SKIP][332] ([i915#9433])
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-dg1-16/igt@kms_content_protection@mei-interface.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg1-12/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x10:
>     - shard-rkl:          [SKIP][333] ([i915#14544] / [i915#3555]) -> [SKIP][334] ([i915#3555]) +1 other test skip
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-32x10.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-max-size:
>     - shard-rkl:          [SKIP][335] ([i915#3555]) -> [SKIP][336] ([i915#14544] / [i915#3555])
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-max-size.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-rkl:          [SKIP][337] ([i915#13049]) -> [SKIP][338] ([i915#13049] / [i915#14544])
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-2/igt@kms_cursor_crc@cursor-random-512x512.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_feature_discovery@psr2:
>     - shard-rkl:          [SKIP][339] ([i915#658]) -> [SKIP][340] ([i915#14544] / [i915#658])
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-2/igt@kms_feature_discovery@psr2.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_feature_discovery@psr2.html
> 
>   * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
>     - shard-rkl:          [SKIP][341] ([i915#9934]) -> [SKIP][342] ([i915#14544] / [i915#9934]) +2 other tests skip
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-2/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html
> 
>   * igt@kms_flip@2x-plain-flip-interruptible:
>     - shard-rkl:          [SKIP][343] ([i915#14544] / [i915#9934]) -> [SKIP][344] ([i915#9934]) +2 other tests skip
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@kms_flip@2x-plain-flip-interruptible.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_flip@2x-plain-flip-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
>     - shard-rkl:          [SKIP][345] ([i915#14544] / [i915#2672]) -> [SKIP][346] ([i915#2672]) +1 other test skip
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yuv-linear-to-32bpp-yuv-linear-reflect-x:
>     - shard-rkl:          [SKIP][347] ([i915#15573]) -> [SKIP][348] ([i915#14544] / [i915#15573]) +1 other test skip
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-yuv-linear-to-32bpp-yuv-linear-reflect-x.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-yuv-linear-to-32bpp-yuv-linear-reflect-x.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
>     - shard-rkl:          [SKIP][349] ([i915#14544] / [i915#2672] / [i915#3555]) -> [SKIP][350] ([i915#2672] / [i915#3555]) +1 other test skip
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-abgr161616f-draw-blt:
>     - shard-rkl:          [SKIP][351] ([i915#14544] / [i915#15574]) -> [SKIP][352] ([i915#15574])
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-abgr161616f-draw-blt.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-abgr161616f-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-argb161616f-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][353] ([i915#15574]) -> [SKIP][354] ([i915#14544] / [i915#15574]) +2 other tests skip
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-argb161616f-draw-mmap-gtt.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-argb161616f-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
>     - shard-rkl:          [SKIP][355] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][356] ([i915#15102] / [i915#3023]) +5 other tests skip
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
>     - shard-rkl:          [SKIP][357] -> [SKIP][358] ([i915#14544]) +7 other tests skip
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
>     - shard-rkl:          [SKIP][359] ([i915#1825]) -> [SKIP][360] ([i915#14544] / [i915#1825]) +14 other tests skip
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
>     - shard-dg2:          [SKIP][361] ([i915#15102] / [i915#3458]) -> [SKIP][362] ([i915#10433] / [i915#15102] / [i915#3458])
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-pwrite:
>     - shard-rkl:          [SKIP][363] ([i915#14544] / [i915#15102]) -> [SKIP][364] ([i915#15102]) +3 other tests skip
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-pwrite.html
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
>     - shard-dg2:          [SKIP][365] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][366] ([i915#15102] / [i915#3458])
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
>     - shard-rkl:          [SKIP][367] ([i915#15102] / [i915#3023]) -> [SKIP][368] ([i915#14544] / [i915#15102] / [i915#3023]) +10 other tests skip
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>     - shard-rkl:          [SKIP][369] ([i915#14544] / [i915#1825]) -> [SKIP][370] ([i915#1825]) +16 other tests skip
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-rkl:          [SKIP][371] ([i915#13331] / [i915#14544]) -> [SKIP][372] ([i915#12713])
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@kms_hdr@brightness-with-hdr.html
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-dg2:          [FAIL][373] -> [SKIP][374] ([i915#3555] / [i915#8228])
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-dg2-11/igt@kms_hdr@static-swap.html
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-dg2-5/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-rkl:          [SKIP][375] ([i915#15460]) -> [SKIP][376] ([i915#14544] / [i915#15460])
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-2/igt@kms_joiner@basic-big-joiner.html
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-rkl:          [SKIP][377] ([i915#15459]) -> [SKIP][378] ([i915#14544] / [i915#15459])
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-1/igt@kms_joiner@invalid-modeset-force-big-joiner.html
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-rkl:          [SKIP][379] ([i915#14259]) -> [SKIP][380] ([i915#14259] / [i915#14544])
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-1/igt@kms_plane_multiple@tiling-yf.html
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_pm_backlight@basic-brightness:
>     - shard-rkl:          [SKIP][381] ([i915#5354]) -> [SKIP][382] ([i915#14544] / [i915#5354])
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-1/igt@kms_pm_backlight@basic-brightness.html
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_pm_backlight@basic-brightness.html
> 
>   * igt@kms_pm_backlight@brightness-with-dpms:
>     - shard-rkl:          [SKIP][383] ([i915#12343] / [i915#14544]) -> [SKIP][384] ([i915#12343])
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@kms_pm_backlight@brightness-with-dpms.html
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_pm_backlight@brightness-with-dpms.html
> 
>   * igt@kms_pm_backlight@fade-with-dpms:
>     - shard-rkl:          [SKIP][385] ([i915#14544] / [i915#5354]) -> [SKIP][386] ([i915#5354])
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@kms_pm_backlight@fade-with-dpms.html
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_pm_backlight@fade-with-dpms.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
>     - shard-rkl:          [SKIP][387] ([i915#11520] / [i915#14544]) -> [SKIP][388] ([i915#11520]) +3 other tests skip
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-8/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
>     - shard-rkl:          [SKIP][389] ([i915#11520]) -> [SKIP][390] ([i915#11520] / [i915#14544]) +2 other tests skip
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-2/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-rkl:          [SKIP][391] ([i915#9683]) -> [SKIP][392] ([i915#14544] / [i915#9683])
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-2/igt@kms_psr2_su@page_flip-xrgb8888.html
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-pr-cursor-mmap-cpu:
>     - shard-rkl:          [SKIP][393] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][394] ([i915#1072] / [i915#9732]) +5 other tests skip
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-6/igt@kms_psr@fbc-pr-cursor-mmap-cpu.html
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-5/igt@kms_psr@fbc-pr-cursor-mmap-cpu.html
> 
>   * igt@kms_psr@fbc-psr-cursor-mmap-cpu:
>     - shard-rkl:          [SKIP][395] ([i915#1072] / [i915#9732]) -> [SKIP][396] ([i915#1072] / [i915#14544] / [i915#9732]) +8 other tests skip
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-2/igt@kms_psr@fbc-psr-cursor-mmap-cpu.html
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_psr@fbc-psr-cursor-mmap-cpu.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-rkl:          [SKIP][397] ([i915#5289]) -> [SKIP][398] ([i915#14544] / [i915#5289]) +1 other test skip
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_vrr@lobf:
>     - shard-rkl:          [SKIP][399] ([i915#11920]) -> [SKIP][400] ([i915#11920] / [i915#14544])
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-2/igt@kms_vrr@lobf.html
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@kms_vrr@lobf.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-rkl:          [SKIP][401] ([i915#3291] / [i915#3708]) -> [SKIP][402] ([i915#14544] / [i915#3291] / [i915#3708])
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/shard-rkl-2/igt@prime_vgem@basic-write.html
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/shard-rkl-6/igt@prime_vgem@basic-write.html
> 
>   
>   [i915#10056]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
>   [i915#12358]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358
>   [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#13029]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029
>   [i915#13030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13030
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13331]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13390]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
>   [i915#13729]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13729
>   [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
>   [i915#13821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821
>   [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152
>   [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
>   [i915#14412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14412
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
>   [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
>   [i915#14809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14809
>   [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
>   [i915#15095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15095
>   [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
>   [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
>   [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
>   [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
>   [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
>   [i915#15389]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15389
>   [i915#15420]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15420
>   [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
>   [i915#15459]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459
>   [i915#15460]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460
>   [i915#15500]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15500
>   [i915#15523]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15523
>   [i915#15560]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15560
>   [i915#15573]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15573
>   [i915#15574]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15574
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
>   [i915#2435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435
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
>   [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
>   [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7882
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9833]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
>   [i915#9979]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9979
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_17821 -> Patchwork_160099v1
> 
>   CI-20190529: 20190529
>   CI_DRM_17821: 733664f1edf3c01cc68e6dd0bbdb135158a98a1d @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8701: 8701
>   Patchwork_160099v1: 733664f1edf3c01cc68e6dd0bbdb135158a98a1d @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160099v1/index.html
