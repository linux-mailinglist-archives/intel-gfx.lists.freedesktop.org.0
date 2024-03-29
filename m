Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE51F89232C
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 19:15:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC85810F1EF;
	Fri, 29 Mar 2024 18:15:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TbzMW+HU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9A1F10F1EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 18:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711736113; x=1743272113;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=Mx0cPuj7BySWf9T/eHYw3OzcO6oVMMdF30Z1yYGZUGg=;
 b=TbzMW+HUWt6u43ePpqa658s6qF/wk82pIrip4xhqtPGkh9Po1/DxUqFb
 UyELGkfguw3665r5sku/pWQK5P6t23d7WmjNxyAQ5ov5fkhQdxV8l41/G
 i8mgG941evfLwu9NoNCgDDmOeaxC0fUf6FOacQprMZ68qSqD/GD+feuR/
 rvYFCasRB1J9HkB2c3pmASn5+22sbXVT/ovZPBCRPiUp6Htfejz5Fsul3
 G2W4YBkKZTJtTSaIh+rT5JgtLX7ONc2/ST6tweY2f5d8CZsOkFgv0FRLR
 9bPRAcB9XEGpTlG2PcSnCeJCpijYF1SIxPTf4+leqGxwcy9yL0HHC6BBf A==;
X-CSE-ConnectionGUID: IlWCc6ydRVWNPzhN8Z7tbQ==
X-CSE-MsgGUID: +5uoHKb/Qaq8bffW+7U0qg==
X-IronPort-AV: E=McAfee;i="6600,9927,11028"; a="7151834"
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; 
   d="scan'208";a="7151834"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 11:15:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; d="scan'208";a="48245697"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Mar 2024 11:15:11 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 29 Mar 2024 11:15:10 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 29 Mar 2024 11:15:10 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 29 Mar 2024 11:15:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jOTvMkamu/BkJfKOgYr2aUndTigp5mSlRGZa9AXi0qFgXf0JwqR8/aED8Wl/7R35ZRn1hcPy7r8M9uY2rbs/BkBgHmpt3J9IAyN3sMmZ39Vnci3j9twXZjsNKfBYZimnxErj06TgjevHyyP/zzQ8NOy5QDPJruOlpQCwVSBN+DdrAU62vyb/d1tVLmizuaYNTi7LWYk4GNnNfG6GetWQlu9F1PXlP+Rxf0aj1G2Y0Ew5bb0ILzPivLhDzaza4a+eAsKTOHrHsAE/GUOGrUQCkL/ojyCWxRUxztX+P3kdOOFvar30Qennj4io4dalsncYqX7PCFYv+uNjjhvLu+6tWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PGilKkpnG7JXMzF187b/FrGT1O1GNl33ILYIWsORIyU=;
 b=LkIJpmLrxxUZR4U1XRBy+JTjvyv1Sx6D4lQLghkW7OegRLLbGUPa2UacRj2iZIQG10oy5myBLjRVFsjGtDs3jDujyBWWxtKPD8GKgnsCupj5J01mq42BV2VDfwAY7fc2N0CuCvngKECjAEz1iS47D460U3eoq6AdisjUFP+gsmrT9y9Ss2OJNefzslvzr5fLKlzspYHp1I9lD2LGf9s7rO8iJrV/OAMfSFYrIa+jyjK9OmWdDZ9ws+Sgv6QUX2U2J6uvdQ0WWDVjJeqobi5p+7gkj/V07D1AE9RcUlaCFBeCJptGxwk3ib3BYY/my5YkgflrUfZuRQ4Z89rXyB8XOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA3PR11MB7416.namprd11.prod.outlook.com (2603:10b6:806:316::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Fri, 29 Mar
 2024 18:15:08 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1%4]) with mapi id 15.20.7409.028; Fri, 29 Mar 2024
 18:15:07 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240327174544.983-12-ville.syrjala@linux.intel.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
 <20240327174544.983-12-ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 11/13] drm/i915: Implement vblank synchronized MBUS join
 changes
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 29 Mar 2024 15:15:02 -0300
Message-ID: <171173610219.2604.2909482202174397972@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0237.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::32) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA3PR11MB7416:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iL4Ye954nHNDG5wNpLSt/GA9op3s6gFyvDBuE9F8t5tQYbV4ZaErb9qa8ltF1cZOwkfhdt6PBsHvQTJ9PlZOXW8Y7knu40RRRdcJd9s3EdkIS14ldqybJqkXtW8YFqfpJlo4eQm2gnucgg10HydEYnVwk7TW/xIZQiOT/EsJgS7zJdp0x8xdkGcodVDdcJioQx3WlDin4B9PMsfbDdXqviWaiFIloswEBkriP06woSW92ZADuXKzHAoPDOlgQDi+pRaTQ2b07CV/pJw0XlBM+PXmCxMpdYoe+GyuSCMpqxUJsB+2o9ATaOKDILa5F3NA3rbiUwvdnFgYzimGpVtjwcmLYey6XZyHdOPVWddF7Q+4wqtR3mBR5g6NGhMn3/IIbtGW/bkugpKhDm9VkynOcV2rK1otmdr0lblY9rM6fn9QezDlZID5UlQMfrNRAv7pzjQbIbPvv40Qr7LVTIbe0tohYamxGSc0uXb0lwd8ECbCWEIIdxJW8nmsaywraERZquTc5/1d8PsM+wqsCoL9oFodpBoHxT+WgxHF0zipXm7G5AaPTYhIKYSrMyFY5EKIXa6tPcXGnjxAPmmML/+sMbvtZ4oK/1c11JtWO9ibbB4gw6mLSH2tIAOFr7hXSVXM83S3hugyO1yP8iKxwFda1ZaWwctr8lDVuYjqqLu/JZI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RUhQcWUwdUtYZ0grRzIzc0J0c3VES25SSXhRZUQ0alRZbzZ5ZFN1cGN3QVpD?=
 =?utf-8?B?YzhyN01id1FVdkMzT3JKTk5BajZaY2pVSGx5MG93UmR6WklDOGQ1WXhUUXVR?=
 =?utf-8?B?Y3YvWFlnZHdwTDJYRzR4ejcvN3hUQnVhZzY5UEtXUTF2TVErSzFlTTFFZWZF?=
 =?utf-8?B?WmZQcmVhSXhYZDh6RmlJUWI3amplK2J1d1Voa05WSnpMYllSZ1pLak1uSzZr?=
 =?utf-8?B?UGM2dnRMbkp0QWkyTEduVE5jM201ZXhaaFhreVUxSi9nbTZEUStSUHFyRm4z?=
 =?utf-8?B?SzhNd0l0bnRSMzhoTWZCTnJMcmxtQVJGUHRWWm1iQlpWNUZYK2FraVc4OE5E?=
 =?utf-8?B?T2NTdExrNjhaSmxrNUR5a2VlY1UvMlo0S245MEVtcG5NRXdubU01N1pmeW9Q?=
 =?utf-8?B?c0R5Q1VNZUtHamdJaExWejFnOVc1Y1BCd3dsaDhvbGVOeVlPWXZ2Qld2ZUx6?=
 =?utf-8?B?ZFUwalExc0NQQzNNRUI2Z0lGd0FLOFl0T3FJTnFvTXlJaWZYWjVzSFljb2c0?=
 =?utf-8?B?NmpwUm5RMHhGdVh6bStwYkFaWW5acVJMYStsNHhLQVBtQWE4SjdXd295SFRw?=
 =?utf-8?B?SjYvTXRsTXk4TERCdU5hQUJUMk9NMXFKNWtQNzNjZ2ZvSjZkbllyMEVYSC9L?=
 =?utf-8?B?V0lnREJsRVhONGh6aE4yTEUyOWFwbGtyWGo3Wkx1eDhPT2xIUitIbFpKWjhH?=
 =?utf-8?B?UmhoQVFMRnNrRjVvcklrK3NuZzQ2WEw4YTFvV1FRVS92ZWI1elI2cVZxKzJT?=
 =?utf-8?B?cW5OeXdHRzIrZndVQ09FTTdnd1VyUXBKc1Q2d0tpNTdkWTRKNGFlazBZdjdT?=
 =?utf-8?B?MUY1R092OEFWSnNHSDN3YmxBWnpjZEcwK0JXRm9aajZBWDltczJIYk80SUJJ?=
 =?utf-8?B?UjJtcWxMMTdkcWZPaWlDOGRvUU1UU1hWdVBFL0pXTWxoN2lPOUtVVk83a3FS?=
 =?utf-8?B?VHQydldzRG1aUDd1eVA2SDVrZGlYeWlaTFdKS2V4Nys2eVBZY1BmbmNscEhH?=
 =?utf-8?B?MVZDNVBzWGVpQWs4cS9tcHc1VmNLV0E3NWI5eWpURVppZ2JZaUZIbWt4cGht?=
 =?utf-8?B?NUFWL21qamNWUVpwalVXUDBwcUxKNE1XTy95N0pRdTdjc2ZJUjNlNzA4WVRm?=
 =?utf-8?B?ZFo1UFdBMmtYMnRSQjM5UnJDWjIxTnZFZDdVTHk2U1NicStFdDlTcnJyS0Jm?=
 =?utf-8?B?K3VMMXhOdXRNdVFaV2NyMytFdW54TVRCOTBmTWFkTWpXWWUyWkZDbXJTcnk2?=
 =?utf-8?B?RUE5YWEzcytaVTRvU3B3QmV1WnFXcVJjRks4YzdCak5zTnZoZWtOTkhTcklU?=
 =?utf-8?B?U0hRd1U3WHZPODVhR2RValg4b0M1V3RSLzVmMmhKWkZyLzloSytQMnp3UFBY?=
 =?utf-8?B?azkzN1JUdE82Vk1CakJDWk5GclJmWklWTW90STY2UnZkUm9GVVpyZTVaTndt?=
 =?utf-8?B?L1pHcEx5MHF3a3h3dVBjMC94ZWlpU1ppck51QXhIZzBUZmtpamNpQWZJUEla?=
 =?utf-8?B?WW8weVFZQUErOXBJaDNJb2tHVllSangzUUFXS3lKSHl4MlQ3Z0RTeVllSDVG?=
 =?utf-8?B?ekplMEt4VE5hdy9Cd2ErM0RtREQ3NUJuRUlTRm9xT2pJTVBqaXBxWmZOd1hI?=
 =?utf-8?B?OXJvODMvNEFmVkhvZXlTZml2Q1ZOK0ZjU0RMQXdKOVdWVUJURnZJUG5ZNnp1?=
 =?utf-8?B?MDlWNDNHdkNadHhIUmZLdVFTV2w3YkY2Zk4wTXI3d2dpd1BKU2ZhMkNQQ0xl?=
 =?utf-8?B?aFBTYlUrZ0Vrai9RREZFQndCaUNKcWtIU2UybExQUlhyYVhrci94dUxGTzM4?=
 =?utf-8?B?NlpBeG91TWQrN3cwNHhUUGZMb1lETVhSVTljbHF0OFFQeWlGNnpjVUR6cHFr?=
 =?utf-8?B?UWpJblRISlYzWnRiZk9pb3NnVHQyYTU0Z0pHYnlISzQxVkVEM2loaWFTZVB3?=
 =?utf-8?B?b3pRU1I1NlJ4Q0pXanlMdUJPT2s4bG5VaHVqS2lMVFVyVUNTN2NucytiTjlO?=
 =?utf-8?B?ZWNZR0xiS2NUNlRuMlltbEpYbnJkWDQrbncrcXQxN0pjZFN4RUpLc1ZOTUNp?=
 =?utf-8?B?SzJ2Tm1UQUxRbzNFVHZjVk5hSjRacWRrQTNhT0g3Z29WUE52alRvMFFaaW9S?=
 =?utf-8?B?dG5MTHA1UUUrbFBJSklhaGc3NVNuVUo2TUthK01NaDZSWGlLdkM5ZDgzcHZ2?=
 =?utf-8?B?Y0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e498d15-3c58-4ff7-8aaa-08dc501c2a0b
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2024 18:15:07.8007 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mAqCQKBemPNcRjgCTzdndRDYwFq2ylVNCyecmz16z/0UMcQ7/v/McgdlOGxv+0Uk8+bbhZHkkdFgdBxdR1290w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7416
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

Quoting Ville Syrjala (2024-03-27 14:45:42-03:00)
>From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>
>Currently we can't change MBUS join status without doing a modeset,
>because we are lacking mechanism to synchronize those with vblank.
>However then this means that we can't do a fastset, if there is a need
>to change MBUS join state. Fix that by implementing such change.
>We already call correspondent check and update at pre_plane dbuf update,
>so the only thing left is to have a non-modeset version of that.
>If active pipes stay the same then fastset is possible and only MBUS
>join state/ddb allocation updates would be committed.
>
>The full mbus/cdclk sequence will look as follows:
>1. disable pipes
>2. increase cdclk if necessary
> 2.1 reprogram cdclk
> 2.2 update dbuf tracker value
>3. enable mbus joining if necessary
> 3.1 update mbus_ctl
> 3.2 update dbuf tracker value
>4. reallocate dbuf for planes on active pipes
>5. disable mbus joining if necessary
> 5.1 update dbuf tracker value
> 5.2 update mbus_ctl
>6. enable pipes
>7. decrease cdclk if necessary
>  7.1 update dbuf tracker value
>  7.2 reprogram cdclk
>
>And in order to keep things in sync we need:
>Step 2:
>- mbus_join =3D=3D old
>- mdclk/cdclk ratio =3D=3D new
>Step 3:
>- mbus_join =3D=3D new
>- mdclk/cdclk ratio =3D=3D old when cdclk is changing in step 7
>- mdclk/cdclk ratio =3D=3D new when cdclk is changing in step 2
>Step 5:
>- mbus_join =3D=3D new
>- mdclk/cdclk ratio =3D=3D old when cdclk is changing in step 7
>- mdclk/cdclk ratio =3D=3D new when cdclk is changing in step 2
>Step 7:
>- mbus_join =3D=3D new
>- mdclk/cdclk ratio =3D=3D new
>
>v2: - Removed redundant parentheses(Ville Syrj=C3=A4l=C3=A4)
>    - Constified new_crtc_state in intel_mbus_joined_pipe(Ville Syrj=C3=A4=
l=C3=A4)
>    - Removed pipe_select variable(Ville Syrj=C3=A4l=C3=A4)
>[v3: vsyrjala: Correctly sequence vs. cdclk updates,
>               properly describe the full sequence,
>               shuffle code around to make the diff more legible,
>               streamline a few things]
>
>Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>Co-developed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cdclk.c   |  11 ++
> drivers/gpu/drm/i915/display/intel_cdclk.h   |   1 +
> drivers/gpu/drm/i915/display/intel_display.c |   5 +-
> drivers/gpu/drm/i915/display/skl_watermark.c | 141 ++++++++++++-------
> drivers/gpu/drm/i915/display/skl_watermark.h |   3 +-
> 5 files changed, 112 insertions(+), 49 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/=
i915/display/intel_cdclk.c
>index 4024118a7ffb..66c161d7b485 100644
>--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>@@ -2576,6 +2576,17 @@ static void intel_cdclk_pcode_post_notify(struct in=
tel_atomic_state *state)
>                            update_cdclk, update_pipe_count);
> }
>=20
>+bool intel_cdclk_is_decreasing_later(struct intel_atomic_state *state)
>+{
>+        const struct intel_cdclk_state *old_cdclk_state =3D
>+                intel_atomic_get_old_cdclk_state(state);
>+        const struct intel_cdclk_state *new_cdclk_state =3D
>+                intel_atomic_get_new_cdclk_state(state);
>+
>+        return new_cdclk_state && !new_cdclk_state->disable_pipes &&
>+                new_cdclk_state->actual.cdclk < old_cdclk_state->actual.c=
dclk;
>+}
>+
> /**
>  * intel_set_cdclk_pre_plane_update - Push the CDCLK state to the hardwar=
e
>  * @state: intel atomic state
>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/=
i915/display/intel_cdclk.h
>index 2843fc091086..5d4faf401774 100644
>--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
>@@ -69,6 +69,7 @@ bool intel_cdclk_clock_changed(const struct intel_cdclk_=
config *a,
>                                const struct intel_cdclk_config *b);
> u8 intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
>                            const struct intel_cdclk_config *cdclk_config)=
;
>+bool intel_cdclk_is_decreasing_later(struct intel_atomic_state *state);
> void intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state);
> void intel_set_cdclk_post_plane_update(struct intel_atomic_state *state);
> void intel_cdclk_dump_config(struct drm_i915_private *i915,
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/dr=
m/i915/display/intel_display.c
>index 4d6668a5f1ab..023cf4a77e6f 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -6915,6 +6915,8 @@ static void skl_commit_modeset_enables(struct intel_=
atomic_state *state)
>                 intel_pre_update_crtc(state, crtc);
>         }
>=20
>+        intel_dbuf_mbus_pre_ddb_update(state);
>+
>         while (update_pipes) {
>                 for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc=
_state,
>                                                     new_crtc_state, i) {
>@@ -6945,6 +6947,8 @@ static void skl_commit_modeset_enables(struct intel_=
atomic_state *state)
>                 }
>         }
>=20
>+        intel_dbuf_mbus_post_ddb_update(state);
>+
>         update_pipes =3D modeset_pipes;
>=20
>         /*
>@@ -7191,7 +7195,6 @@ static void intel_atomic_commit_tail(struct intel_at=
omic_state *state)
>         intel_encoders_update_prepare(state);
>=20
>         intel_dbuf_pre_plane_update(state);
>-        intel_mbus_dbox_update(state);
>=20
>         for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) =
{
>                 if (new_crtc_state->do_async_flip)
>diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/dr=
m/i915/display/skl_watermark.c
>index a118ecf9e532..ca0f1f89e6d9 100644
>--- a/drivers/gpu/drm/i915/display/skl_watermark.c
>+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>@@ -2636,13 +2636,6 @@ skl_compute_ddb(struct intel_atomic_state *state)
>                 if (ret)
>                         return ret;
>=20
>-                if (old_dbuf_state->joined_mbus !=3D new_dbuf_state->join=
ed_mbus) {
>-                        /* TODO: Implement vblank synchronized MBUS joini=
ng changes */
>-                        ret =3D intel_modeset_all_pipes_late(state, "MBUS=
 joining change");
>-                        if (ret)
>-                                return ret;
>-                }
>-
>                 drm_dbg_kms(&i915->drm,
>                             "Enabled dbuf slices 0x%x -> 0x%x (total dbuf=
 slices 0x%x), mbus joined? %s->%s\n",
>                             old_dbuf_state->enabled_slices,
>@@ -3559,7 +3552,7 @@ static bool xelpdp_is_only_pipe_per_dbuf_bank(enum p=
ipe pipe, u8 active_pipes)
>         return false;
> }
>=20
>-void intel_mbus_dbox_update(struct intel_atomic_state *state)
>+static void intel_mbus_dbox_update(struct intel_atomic_state *state)
> {
>         struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>         const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state;
>@@ -3640,6 +3633,9 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_=
i915_private *i915, u8 ratio
> {
>         enum dbuf_slice slice;
>=20
>+        if (!HAS_MBUS_JOINING(i915))
>+                return;
>+
>         if (DISPLAY_VER(i915) >=3D 20)
>                 intel_de_rmw(i915, MBUS_CTL, MBUS_TRANSLATION_THROTTLE_MI=
N_MASK,
>                              MBUS_TRANSLATION_THROTTLE_MIN(ratio - 1));
>@@ -3663,24 +3659,42 @@ static void intel_dbuf_mdclk_min_tracker_update(st=
ruct intel_atomic_state *state
>                 intel_atomic_get_old_dbuf_state(state);
>         const struct intel_dbuf_state *new_dbuf_state =3D
>                 intel_atomic_get_new_dbuf_state(state);
>+        int mdclk_cdclk_ratio;
>=20
>-        if (DISPLAY_VER(i915) >=3D 20 &&
>-            old_dbuf_state->mdclk_cdclk_ratio !=3D new_dbuf_state->mdclk_=
cdclk_ratio) {
>-                /*
>-                 * For Xe2LPD and beyond, when there is a change in the r=
atio
>-                 * between MDCLK and CDCLK, updates to related registers =
need to
>-                 * happen at a specific point in the CDCLK change sequenc=
e. In
>-                 * that case, we defer to the call to
>-                 * intel_dbuf_mdclk_cdclk_ratio_update() to the CDCLK log=
ic.
>-                 */
>-                return;
>+        if (intel_cdclk_is_decreasing_later(state)) {
>+                /* cdclk/mdclk will be changed later by intel_set_cdclk_p=
ost_plane_update() */
>+                mdclk_cdclk_ratio =3D old_dbuf_state->mdclk_cdclk_ratio;
>+        } else {
>+                /* cdclk/mdclk already changed by intel_set_cdclk_pre_pla=
ne_update() */
>+                mdclk_cdclk_ratio =3D new_dbuf_state->mdclk_cdclk_ratio;
>         }
>=20
>-        intel_dbuf_mdclk_cdclk_ratio_update(i915, new_dbuf_state->mdclk_c=
dclk_ratio,
>+        intel_dbuf_mdclk_cdclk_ratio_update(i915, mdclk_cdclk_ratio,
>                                             new_dbuf_state->joined_mbus);

I get the feeling that this part actually belongs to the previous patch.

--
Gustavo Sousa

> }
>=20
>-static void intel_dbuf_mbus_join_update(struct intel_atomic_state *state)
>+static enum pipe intel_mbus_joined_pipe(struct intel_atomic_state *state,
>+                                        const struct intel_dbuf_state *db=
uf_state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        enum pipe pipe =3D ffs(dbuf_state->active_pipes) - 1;
>+        const struct intel_crtc_state *new_crtc_state;
>+        struct intel_crtc *crtc;
>+
>+        drm_WARN_ON(&i915->drm, !dbuf_state->joined_mbus);
>+        drm_WARN_ON(&i915->drm, !is_power_of_2(dbuf_state->active_pipes))=
;
>+
>+        crtc =3D intel_crtc_for_pipe(i915, pipe);
>+        new_crtc_state =3D intel_atomic_get_new_crtc_state(state, crtc);
>+
>+        if (new_crtc_state && !intel_crtc_needs_modeset(new_crtc_state))
>+                return pipe;
>+        else
>+                return INVALID_PIPE;
>+}
>+
>+static void intel_dbuf_mbus_join_update(struct intel_atomic_state *state,
>+                                        enum pipe pipe)
> {
>         struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>         const struct intel_dbuf_state *old_dbuf_state =3D
>@@ -3689,44 +3703,80 @@ static void intel_dbuf_mbus_join_update(struct int=
el_atomic_state *state)
>                 intel_atomic_get_new_dbuf_state(state);
>         u32 mbus_ctl;
>=20
>-        drm_dbg_kms(&i915->drm, "Changing mbus joined: %s -> %s\n",
>+        drm_dbg_kms(&i915->drm, "Changing mbus joined: %s -> %s (pipe: %c=
)\n",
>                     str_yes_no(old_dbuf_state->joined_mbus),
>-                    str_yes_no(new_dbuf_state->joined_mbus));
>+                    str_yes_no(new_dbuf_state->joined_mbus),
>+                    pipe !=3D INVALID_PIPE ? pipe_name(pipe) : '*');
>=20
>-        /*
>-         * TODO: Implement vblank synchronized MBUS joining changes.
>-         * Must be properly coordinated with dbuf reprogramming.
>-         */
>         if (new_dbuf_state->joined_mbus)
>-                mbus_ctl =3D MBUS_HASHING_MODE_1x4 | MBUS_JOIN |
>-                        MBUS_JOIN_PIPE_SELECT_NONE;
>+                mbus_ctl =3D MBUS_HASHING_MODE_1x4 | MBUS_JOIN;
>         else
>-                mbus_ctl =3D MBUS_HASHING_MODE_2x2 |
>-                        MBUS_JOIN_PIPE_SELECT_NONE;
>+                mbus_ctl =3D MBUS_HASHING_MODE_2x2;
>+
>+        if (pipe !=3D INVALID_PIPE)
>+                mbus_ctl |=3D MBUS_JOIN_PIPE_SELECT(pipe);
>+        else
>+                mbus_ctl |=3D MBUS_JOIN_PIPE_SELECT_NONE;
>=20
>         intel_de_rmw(i915, MBUS_CTL,
>                      MBUS_HASHING_MODE_MASK | MBUS_JOIN |
>                      MBUS_JOIN_PIPE_SELECT_MASK, mbus_ctl);
> }
>=20
>-/*
>- * Configure MBUS_CTL and all DBUF_CTL_S of each slice to join_mbus state=
 before
>- * update the request state of all DBUS slices.
>- */
>-static void update_mbus_pre_enable(struct intel_atomic_state *state)
>+void intel_dbuf_mbus_pre_ddb_update(struct intel_atomic_state *state)
>+{
>+        const struct intel_dbuf_state *new_dbuf_state =3D
>+                intel_atomic_get_new_dbuf_state(state);
>+        const struct intel_dbuf_state *old_dbuf_state =3D
>+                intel_atomic_get_old_dbuf_state(state);
>+
>+        if (!new_dbuf_state)
>+                return;
>+
>+        if (!old_dbuf_state->joined_mbus && new_dbuf_state->joined_mbus) =
{
>+                enum pipe pipe =3D intel_mbus_joined_pipe(state, new_dbuf=
_state);
>+
>+                WARN_ON(!new_dbuf_state->base.changed);
>+
>+                intel_dbuf_mbus_join_update(state, pipe);
>+                intel_mbus_dbox_update(state);
>+                intel_dbuf_mdclk_min_tracker_update(state);
>+        }
>+}
>+
>+void intel_dbuf_mbus_post_ddb_update(struct intel_atomic_state *state)
> {
>         struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        const struct intel_dbuf_state *new_dbuf_state =3D
>+                intel_atomic_get_new_dbuf_state(state);
>+        const struct intel_dbuf_state *old_dbuf_state =3D
>+                intel_atomic_get_old_dbuf_state(state);
>=20
>-        if (!HAS_MBUS_JOINING(i915))
>+        if (!new_dbuf_state)
>                 return;
>=20
>-        /*
>-         * TODO: Implement vblank synchronized MBUS joining changes.
>-         * Must be properly coordinated with dbuf reprogramming.
>-         */
>-        intel_dbuf_mbus_join_update(state);
>+        if (old_dbuf_state->joined_mbus && !new_dbuf_state->joined_mbus) =
{
>+                enum pipe pipe =3D intel_mbus_joined_pipe(state, old_dbuf=
_state);
>+
>+                WARN_ON(!new_dbuf_state->base.changed);
>+
>+                intel_dbuf_mdclk_min_tracker_update(state);
>+                intel_mbus_dbox_update(state);
>+                intel_dbuf_mbus_join_update(state, pipe);
>+
>+                if (pipe !=3D INVALID_PIPE) {
>+                        struct intel_crtc *crtc =3D intel_crtc_for_pipe(i=
915, pipe);
>+
>+                        intel_crtc_wait_for_next_vblank(crtc);
>+                }
>+        } else if (old_dbuf_state->joined_mbus =3D=3D new_dbuf_state->joi=
ned_mbus &&
>+                   old_dbuf_state->active_pipes !=3D new_dbuf_state->acti=
ve_pipes) {
>+                WARN_ON(!new_dbuf_state->base.changed);
>+
>+                intel_dbuf_mdclk_min_tracker_update(state);
>+                intel_mbus_dbox_update(state);
>+        }
>=20
>-        intel_dbuf_mdclk_min_tracker_update(state);
> }
>=20
> void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
>@@ -3738,13 +3788,11 @@ void intel_dbuf_pre_plane_update(struct intel_atom=
ic_state *state)
>                 intel_atomic_get_old_dbuf_state(state);
>=20
>         if (!new_dbuf_state ||
>-            (new_dbuf_state->enabled_slices =3D=3D old_dbuf_state->enable=
d_slices &&
>-             new_dbuf_state->joined_mbus =3D=3D old_dbuf_state->joined_mb=
us))
>+            new_dbuf_state->enabled_slices =3D=3D old_dbuf_state->enabled=
_slices)
>                 return;
>=20
>         WARN_ON(!new_dbuf_state->base.changed);
>=20
>-        update_mbus_pre_enable(state);
>         gen9_dbuf_slices_update(i915,
>                                 old_dbuf_state->enabled_slices |
>                                 new_dbuf_state->enabled_slices);
>@@ -3759,8 +3807,7 @@ void intel_dbuf_post_plane_update(struct intel_atomi=
c_state *state)
>                 intel_atomic_get_old_dbuf_state(state);
>=20
>         if (!new_dbuf_state ||
>-            (new_dbuf_state->enabled_slices =3D=3D old_dbuf_state->enable=
d_slices &&
>-             new_dbuf_state->joined_mbus =3D=3D old_dbuf_state->joined_mb=
us))
>+            new_dbuf_state->enabled_slices =3D=3D old_dbuf_state->enabled=
_slices)
>                 return;
>=20
>         WARN_ON(!new_dbuf_state->base.changed);
>diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/dr=
m/i915/display/skl_watermark.h
>index bf7516620ab6..3323a1d973f9 100644
>--- a/drivers/gpu/drm/i915/display/skl_watermark.h
>+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
>@@ -79,7 +79,8 @@ int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_=
atomic_state *state, u8
> void intel_dbuf_pre_plane_update(struct intel_atomic_state *state);
> void intel_dbuf_post_plane_update(struct intel_atomic_state *state);
> void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915, u=
8 ratio, bool joined_mbus);
>-void intel_mbus_dbox_update(struct intel_atomic_state *state);
>+void intel_dbuf_mbus_pre_ddb_update(struct intel_atomic_state *state);
>+void intel_dbuf_mbus_post_ddb_update(struct intel_atomic_state *state);
>=20
> #endif /* __SKL_WATERMARK_H__ */
>=20
>--=20
>2.43.2
>
