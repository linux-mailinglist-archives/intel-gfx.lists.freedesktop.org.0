Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE78B9C2F5
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 22:46:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0410710E7E1;
	Wed, 24 Sep 2025 20:46:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BBLoa6uV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D03CF10E122;
 Wed, 24 Sep 2025 20:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758746792; x=1790282792;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BHQb4a9yykqQXTqilp/K1KzV5B7bz1zfXdFIHb29m6s=;
 b=BBLoa6uV7dFL6WpmSgLs7dvo0hnWC27bDfjglcU8jLQhXkCvdSl/46Pj
 8MBTKNgss0roNn87Up5NxaP/2tHVQe4yriCdEFH6RjFkn9DVFmj3i1k4X
 B2MNnqhNqCcgTayrVX0kMC1drOA/+9BUrKJWUIqxzZHjVrnARZEGBgxtx
 +Plogf69KrmLGbM7JqlNim33u6nN8PND0RBt9FKJUNungezAp6Srp22bL
 VWaFR7leY854wPX/FSHsIMYi4UHI7Gi9zFzEP9Dk3onzSukleLH9FpUf5
 Y/I93wr1LeQJ6tsfbJNA6xHhkgd5ok6+qOg9hE27W8FiOdXh+D//vb4Em w==;
X-CSE-ConnectionGUID: U9Z+skytQEiPolXdSclPaw==
X-CSE-MsgGUID: N8GBzyOORqeHW/VuOu30Rw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64863760"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64863760"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 13:46:32 -0700
X-CSE-ConnectionGUID: fUrzvbrVTDas/elP+nN4Gw==
X-CSE-MsgGUID: 4yU2atlmTmayU7ZF5l+lMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,291,1751266800"; d="scan'208";a="208057620"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 13:46:31 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 24 Sep 2025 13:46:30 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 24 Sep 2025 13:46:30 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.40) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 24 Sep 2025 13:46:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jfntmf+1OxCCzGiz3f/BIrfQclFAQfvQB/7puS4FBpZdGnTr6Fz81Pl7OGGfAS86tTBJ16uTTZzdti79WYsSNtZ703Hw38QjpFYYxXX27/bWzQ7i2Tijfy1MwRQ8DpU8AlonKVnMlqmukWYyG6nEKaJdIZ7IqrceCrH34k+DZ9wGGhO97Rz3crUFDxzxxnZU6vBE+06BCqejZaFwltI9R1n5Vv+a6RLWuJouFA2aKbqtbmliP97VwBH3R68A3raUDGV947xcrjt5HsLmNI27nviDXRD8JOdHBoq5W4vWp5DL/FiVA4ctkEA7hk41U7m6TQ2UWjsSPq8WdHMzfksuxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PZTAAs2KTpuRLO41A1GgJHTtfC0Ouy9jRfl947uaoE0=;
 b=loow2q1zn5lwbaPN03JqSObrRXqq4zPkNU5KrF7P0p2zZtS8OahC1Eg9Emuh9UsKZMlanDacRv1L0Wn6q9xXcWKqcb+b6p1vk7uFqOywJ+GFno+f8l5lwyMfmsRO+CMop4bObxq5YAKRIR/loH5+qJAYjETlzEkQsTf0l4qL34164P91126r3wnyCilbKdplBHD15qY2VlK5BnUQyZGZWXO4Z+Zw0Yp3/+x84Cep1D6Yq9pMQfRjb2JT8GWLVaim3Frh2kdkO4zyJqlhUYegQYO1hfASQUYa4WUAYG1f6QPeRxB/GzT9Fiow6LFyLcq/won4u67HHheM9Z3hQdFbLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CO1PR11MB5138.namprd11.prod.outlook.com (2603:10b6:303:94::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.9; Wed, 24 Sep
 2025 20:46:28 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.9137.018; Wed, 24 Sep 2025
 20:46:28 +0000
Date: Wed, 24 Sep 2025 15:46:25 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <jouni.hogander@intel.com>, <kunal1.joshi@intel.com>,
 <jani.saarinen@intel.com>
Subject: Re: [PATCH] drm/i915/fbc: update the impacted platforms in
 wa_22014263786
Message-ID: <6dvl2tpadc43l26tuzf5mieqkeynj54vxrq4f5qscn2zn7cb53@6nopcpcsqnra>
References: <20250924100308.346808-1-vinod.govindapillai@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20250924100308.346808-1-vinod.govindapillai@intel.com>
X-ClientProxiedBy: BYAPR08CA0059.namprd08.prod.outlook.com
 (2603:10b6:a03:117::36) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CO1PR11MB5138:EE_
X-MS-Office365-Filtering-Correlation-Id: 2c4a2e90-d84d-42a5-d1ea-08ddfbab6f5d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?96EliVxnnGnvXKkP8TtCEoo2b4ILjn5PIUxtYRIPP1wyyT0ugx6aQniDO8jR?=
 =?us-ascii?Q?ZXR4z1pN8M8lS0WrC1rO/f/qq/WCIgO5MkvFORajZqjk0v4/BYg6c40CaQ2k?=
 =?us-ascii?Q?4/toAz0wgqSAdXVRnnXYsUi5K24kRTlkIWapp6hYlUCu/fDTp3lRC/STt0eb?=
 =?us-ascii?Q?O8k/FUx3G2VVSBjVzA57pratuefnOI//XZDePPOeLI09KzALTPrxfgnnRhBd?=
 =?us-ascii?Q?BCqxqJ4tGaPgcOJwY4ur0DlPkcLkTPUE6RdHHS2xrU8ZzooSYkrrrF4UH+nz?=
 =?us-ascii?Q?OXjQB2BtNFlurUgGTCdCBNUqpg/Bo9wcngOkwzvyFaUAteTgcsJ914MjEQE/?=
 =?us-ascii?Q?TETKUJuILugWmoEVrCcz0QLDl4sw6HZT5rgwWkOtZBCcUtcxygZ0XgaloL/D?=
 =?us-ascii?Q?Jfji0IoXG0+Gr/8i1elIf2sknCgv1bpzwv3b2LQ0NvVj5J4neXZQYRjDpCxg?=
 =?us-ascii?Q?d6PJasksVI83E8XUAzM/jYBbxVPS9RXk5KnM+R5316rzk67iL2+64t3t8IIB?=
 =?us-ascii?Q?qxONik2yUr0IGRqAn7DyJCVBOrUA/L26rcaFtDgXyo5+Q6zUSU6Fm9AVrruT?=
 =?us-ascii?Q?s8Io8RrFCiHel9IBb2BVkHlUNeIwfrUWndDuNVA2m+bI7becIJAzi6B4QPtf?=
 =?us-ascii?Q?a4WCP+WJEkVUkKzAxNEdTvlvEonKD45wCTGHr79pTIXbEj/w/sp7Ci3vdPvb?=
 =?us-ascii?Q?4HGZe3NSnohnI6ERb550uHIxqMSU45rrXqibiQH7x85nAG9/gLExXFSZl3sU?=
 =?us-ascii?Q?F9ATTUbVbHvQROTqA9VC5zw3xXX9rRt7vbPl1T8oDAo8pxVfkYQoNdxjVeip?=
 =?us-ascii?Q?A3ZRA672zBeJiIBpCqBnaXaaBSOaIqYGH5pDH08A9HWp9RSdijIhr0Z6Atyn?=
 =?us-ascii?Q?e+6OFJ5QQFVgcfOdfXado/+SgFGe4Jzf0DbHyrGaFniKleRR6aLj9cjDVF/S?=
 =?us-ascii?Q?PcbENpwbK299ll8bqUzpSF5+9aLey9ZcsrEZV2XSKpT/vUnNCO/0H81BfP4q?=
 =?us-ascii?Q?CB8yzmBcyJ5fP0n5j1LvrHsPIJZLddVLSCqaUKdWHK9HuqfbRa+zfV6lM9Tl?=
 =?us-ascii?Q?vRzZWea0JHRMDEpvy5E5bT0yIYw9QH+S1nYt21bM5/suNbrRO6/dRfFgcah4?=
 =?us-ascii?Q?AiCxskxjBucailS2hkl4Tddjv148LRhyMYX50IHF6MkYaU4KshLa6hm5qeqR?=
 =?us-ascii?Q?+cl9bBdVepwi/JDkuEbgJjXIyFvVp7M5ipl25qOhKkAM2eUPyL77vtxWvqHj?=
 =?us-ascii?Q?CHAE6Rpni+wAfQyQ52w1bC0DDo7Uz6NEP3/7LHOQ4LnEab2YrMZU0R6qTm4P?=
 =?us-ascii?Q?tA5as5tXunpfb2DWhPNz+4XZmhTtD2VW5ViJVc5tElL31fKPPrS2++DgB3OT?=
 =?us-ascii?Q?Ne39KI9fXV22YXaKwDCO+q/MKLAzegNTrjusECaU+A/GfWXYbcBC3dMFJXkR?=
 =?us-ascii?Q?cFxM/kUfmL4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DQtcrwPof4XbOjfBRtUip+6BQmcttWxg8Fb3LZ3Gs8/UkQeLCseSL7xveaFX?=
 =?us-ascii?Q?GhVkxQxO72t021b0Iio+7oZq0G2NlZhThNLja0n/BYWWOwEYUbMh+DYMJA0X?=
 =?us-ascii?Q?xH705bk+yoehM47LsznO0w5kW4LqQlFpJCZWwB52jKf3aKfrgneqo7pxNeER?=
 =?us-ascii?Q?0Kf1OzV2Vacxwr5jd6tBS6iNGTyh3Vn+RNHrwAEeGImprITCU5O5GIOH5Nwx?=
 =?us-ascii?Q?jUyCzNDbE2UjUHYUl46QqJaPC1KWpmVPRv0e/0Wh4IfKkhpUk8JROTxmY6mv?=
 =?us-ascii?Q?/q51F278xiApH1UjHIhX15mA5HDzboVdCkLZ2d7fIlKBcPlKGCZs4Xa+76e5?=
 =?us-ascii?Q?1GWG6FzldM2DIv5VInHAPFu6JpTLb+IWbFIaDRmOA4WYD3+tBQA1seWYEbUb?=
 =?us-ascii?Q?mZLflzj+4E8jxNuvCO1mtsNpE/Isylo9r8TtzxnvGh40XaWOyykE5Gipsp8E?=
 =?us-ascii?Q?IiAjdw5ZgoV72piyvSZ3vTrvS6nS7AMXTAo7monWOqhOfywAbGc0O1aQBr6M?=
 =?us-ascii?Q?0BBpz2sC2mymiycEUuYZ9wlrDEan+siRYBPlWSD+4ct7IagHifta4vr9Rdis?=
 =?us-ascii?Q?rJTOuDnhKcp9jZ/s4rL7OLV/zkhBd8aETFy1P9ILwGbplORUVrM2Sod1fHYW?=
 =?us-ascii?Q?r1/XfXxaZBAzMA/yL+YDq/G6ITwqQvyv1395HaXyV4BZTUyCxAowSHfzSiV5?=
 =?us-ascii?Q?zWKFfCZ0xCOgIcsncZFbe+ZJR4xtCcvaGbthtrvHgxtV7l2UxY9bbO0TLEbV?=
 =?us-ascii?Q?FbP61EOh+MN2BO8DX4HN0Cfxb/5+Y8ZA79NU7DVDjA0E3eVFUeGcwYS4ygs/?=
 =?us-ascii?Q?u4NWcM/Gq6Cl2ocQ+edIJdPkoxi8S/c6R9Wl3ITCrResAeMZrqB7BvGAUhXQ?=
 =?us-ascii?Q?aJArV9iwglHJxrZcQnVYzSE/C0l4TikNU4euxA0QjWUggZEiSaTC9erop7aE?=
 =?us-ascii?Q?L3t64ZXBHC1Urbu7V9jaQ52wOITS7ubu77BG6vsWwDRhuWYEeXZ59Spe4rVD?=
 =?us-ascii?Q?U7xYAIWy1PS9Ud2xE0GLnBqw3RHc0zW/0Zcqh3VPo3eTfLhlsj56hbMtg0A+?=
 =?us-ascii?Q?C1JhsW392VIG5rVP2xbTvAmABudKY3P4PonIgvMfjl04ruaMYqec5CVxGjd5?=
 =?us-ascii?Q?MBL1q11H0V6FE4KisegbiffSf4aZ1nW6gYk06WeEMjos39RFrZ8feYiI0+au?=
 =?us-ascii?Q?37XFvC3XkfXwCspRBZKGb1eRFbsDJxuMPZZRLyt0pmpkFVwZ7lTdYRxCrXY7?=
 =?us-ascii?Q?W7+ZDrCTXQzqWkIvKO3wN30NmIsvOw11K59375pCPTZLRSl+JCNz5TqKgP10?=
 =?us-ascii?Q?Jxr3vSn8/q5Y83DAv1MC9lWaCcDf3B253Gj+EeNrG7FtALJ0vwiZeMuwoneK?=
 =?us-ascii?Q?GarXLOy/AMIamt2eEQgWm5EyEniClHL7iMewojcBBjRzXM31yFwJ0fr7y75H?=
 =?us-ascii?Q?MErnS5j82k6C9kE12TdYDBdiVi2Uo6u7kn5mTig4/Q5JgDgL8DjMIZDF3psi?=
 =?us-ascii?Q?WhoGwIKXS+DZYOcvvz1c8rkQZsz4YQMNZe9WlKPyxPaxfCUA/3Fbnz2LDQdD?=
 =?us-ascii?Q?JcKtS/RKvO3m9QDvHwjnE4dXBROEr0d5wD607xqwwE1z6QRTxjdrjHoPsX6h?=
 =?us-ascii?Q?6w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c4a2e90-d84d-42a5-d1ea-08ddfbab6f5d
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2025 20:46:28.5015 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3s8jV6iDWJ4G6fCFNtTMweX2kw+ZFvOTnEgnDgWFSHx6eVN4j3av3tML0d6K4gYc15o6/5z1szu8XOEm2m+LbD2vPYGl/CCa+bagTeiq2Nk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5138
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

On Wed, Sep 24, 2025 at 01:03:08PM +0300, Vinod Govindapillai wrote:
>wa_22014263786 is not applicable to the BMG and hence exclude it
>from the wa.
>
>Bspec: 74212, 66624
>Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_fbc.c | 3 ++-
> 1 file changed, 2 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
>index 0d380c825791..2938ee4b64d8 100644
>--- a/drivers/gpu/drm/i915/display/intel_fbc.c
>+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>@@ -934,7 +934,8 @@ static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
> 			     0, DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>
> 	/* Wa_22014263786:icl,jsl,tgl,dg1,rkl,adls,adlp,mtl */

at this point it's pretty safe to drop these comments as they are not
being updated

>-	if (DISPLAY_VER(display) >= 11 && !display->platform.dg2)
>+	if (DISPLAY_VER(display) >= 11 && !display->platform.dg2 &&
>+	    !display->platform.battlemage)

is the plan really to keep adding exceptions? That doesn't seem to
scale.

According to WA database, dg2 should **not** be an exception. Commit
1d7426945716 ("drm/i915/display/fbc: Do not apply WA 22014263786 to
DG2") added that exception without proper follow up to update the
spec/db.

And besides BMG, it looks like LNL is also not affected.

While at it, please migrate these to use
intel_display_wa(display, 22014263786)). Then you can probably just
check by IP version  `1100 <= display_ver < 1401` seems to cover
everything, but DG2 situation will need to be figured out.

Lucas De Marchi

> 		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
> 			     0, DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
>
>-- 
>2.43.0
>
