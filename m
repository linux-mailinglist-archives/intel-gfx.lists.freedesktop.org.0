Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D235CC9EBE1
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Dec 2025 11:38:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1E5110E781;
	Wed,  3 Dec 2025 10:38:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X9rQEjrM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BB4F10E76D;
 Wed,  3 Dec 2025 10:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764758333; x=1796294333;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=Huc3dfeB+3PDMT4ycrUakSv1qbm9gibwkp/9n5XqJuU=;
 b=X9rQEjrMZyEPyxQ7opQ/yeq0Fg4+827a9TN/iCaG49NgKX2d3NmUOaOE
 GDzzhEBAz1crct/C5VXgSxNe+Beu9Q1FQM716iAZNMs4EY31bl20oeaUs
 aIvKYQab7vxnPEowXKBz28PcWNa1YrRGTLdp77LPbXHiAD9EOf8henKLV
 kE2SizoNyghmFs6uxgEV078q+hA6D2oKoEnLUPLmJj6Eno2YRUP/eKSxP
 QU+MJPmKCe/zVhKDrmRDyxmolGnzRXtLqesq1RP1FmcLiIjepEIkNU+XH
 c8NId39gn+MuD9Gte/6a+lB5E0gHHbVnaFRhx1W9idPJ36GR5hJh9bHxb w==;
X-CSE-ConnectionGUID: CpFqtPTOQ1mHyd3YOucezw==
X-CSE-MsgGUID: x0nLKGKOTFyS26oaqFeagw==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="54296247"
X-IronPort-AV: E=Sophos;i="6.20,245,1758610800"; d="scan'208";a="54296247"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 02:38:52 -0800
X-CSE-ConnectionGUID: K2RQ1of2Qwadizzn/Tcyeg==
X-CSE-MsgGUID: IyC5OqZTTQ+N2qdagVPwgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,245,1758610800"; d="scan'208";a="195060164"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 02:38:52 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 02:38:51 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 3 Dec 2025 02:38:51 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.14) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 02:38:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WIM2KKcxmt7QX/2PREzJ6uwTN4UnFxudi4Gqsx7uz00xlVkVEzXAZnI0a2QyuqYglL2+3W/lQXZjf27WN+5/mH7f+xA5dUKjZYiWGx+rMDiykdosxtA+q10fh+6IVjsnmjRhlRq8pVj6LQEX6cpUYMPjuyv8zB57y992/NXKum8ijRob7bDDvnE/u+val35Z4FHjyHLigBvcHdq+Mf5lpgBg8SfwlLgwachhqk0N9rEkVGFiKSab/xyZgVUoI3ubYVgAjivJKAmXk5pPexgfLN6cTX+ptCLjHqy90ELzVHcu/3U6JwEUUcDXKjFMs0xTThAQMeGsbESjXUXwf/UFhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lLO4zVROfawQ/BYTOhVLwkrAYSSZubLpE4/lP4TLqBk=;
 b=v8Ggr6e66H3ev+xHIJPGJCn9aXKKCodhuJjaVhk/Lq2dSD2zZIYS4WmfvAbpiREBhzJPfFJYKpDfpZprpVyGsEq5HuzEVmkyoU48paCppCP4WXWZlbQSBY6RzYh54j7EHHVjSyAZuLz7NZbOQcSj/G4jbD6Aii/cEbbg10ogv/xs+aVz4NzHyTI4inttCWy2VSiFh1vHwlWJI/ybmP2ieyJjsZYQ3/kULK8mKC6nHvpB2uzSUyLnPGmxEK5pJLKLB4JwbERFVUD0EdXVlTONi8dq/Vo1WmYl3BzVRanIdamFr0S6jn6HYaE0xe+4WYUs4qei4Aqd0bjl++LQMNhRZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB8341.namprd11.prod.outlook.com (2603:10b6:610:178::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.9; Wed, 3 Dec
 2025 10:38:49 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Wed, 3 Dec 2025
 10:38:49 +0000
Date: Wed, 3 Dec 2025 12:38:42 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Mohammed Thasleem <mohammed.thasleem@intel.com>, <stable@vger.kernel.org>
Subject: Re: [PATCH] drm/i915/dmc: fix an unlikely NULL pointer deference at
 probe
Message-ID: <aTATMrp6oysYUecR@ideak-desk>
References: <20251202183950.2450315-1-jani.nikula@intel.com>
 <aS9ZGmXG_n0IXv-N@ideak-desk> <aS9bj8RRYYc01Rzs@ideak-desk>
 <43c4d7f0d9fe4ba6acac828306b41d612dd4f085@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <43c4d7f0d9fe4ba6acac828306b41d612dd4f085@intel.com>
X-ClientProxiedBy: LO4P123CA0211.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1a5::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB8341:EE_
X-MS-Office365-Filtering-Correlation-Id: b1890f75-1ea7-4025-52b4-08de325824ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?5pWe9EtcNk3m9dxl/IdHzLQYyOSkXyhfv5w4laLORi3CBjPLKDRYWinXvKNL?=
 =?us-ascii?Q?5Rv31JJs+MAML7A5vD38/mYnCYYBxkvZRCTQxEpb81CsshMfQlmaSP5avOd4?=
 =?us-ascii?Q?mDva0PWKcz4pIThYaN3YwxByIQolIU9Jpfwlzq9YPdHNdIb1c0NRsNA1wa40?=
 =?us-ascii?Q?UOY5jWmOm9kcnWgdwea0bdBkZamGyHIEwapmCryWv+1Mriewwq362AGJJBvw?=
 =?us-ascii?Q?e6087MnSUrxrUcItuWHk7hzhDaFaxsLCrdQoUYwN0JPmlikGWywP3IyEsx6A?=
 =?us-ascii?Q?HyfkXgJDAc6N2ict5FVhGj+TmSMBOkEqRArAnWao4LSMcHiAEKbhIeTpf5x0?=
 =?us-ascii?Q?BgrSQe1R3aIk7gFhAtTxtpJoW4+FXstX0MQTnszkdbkGWDhIt826dMS5j/HV?=
 =?us-ascii?Q?vrTwQjmim36y9neaqDKR2Ytus/d1M2R9l9tga3vQtrNRGU/uU5qd2hkTYzvY?=
 =?us-ascii?Q?BD23BWM5udG6MShcg9cWVbJAhmGd2bttHgdt7EPK+rsJ/DTOo/xNkiKZYH5U?=
 =?us-ascii?Q?WSvXiLIy9tRCWw/VEA739ZXS8OkhYDwu+xnI68VCvRXZ515+v6H/lj/83Q9v?=
 =?us-ascii?Q?a+rPMR5xvxzFeQJ+GlNrczX5ywZMNvTY0GDzA/KLbrEBHHj7TCwyLCUR6J2n?=
 =?us-ascii?Q?poSqnhSzya+F39woEWpzGOu3Oy+kSxA8ELsKFqcR1GNIrMwK6xEnaE4ZUH8P?=
 =?us-ascii?Q?S0V5tzgXAOHesYWxNhCEdRC8l9YQG1UQZuPxTTaHDQ5imT++/2AGiQnfkO+K?=
 =?us-ascii?Q?czeJ6uS2UiybYQLSwHIl+xDyE6plvvIu7d9BYOIicSYmVyn9jNMYTSyHOY7f?=
 =?us-ascii?Q?xEryefKUqkR825MFj1BPYPf8G8PvzaOzOC2jBFVwiUm/hzgPM8nqrMLJ4p3u?=
 =?us-ascii?Q?l9IlMcUz3vb8H20PGoKfgBCrMVeF+liFsyqB6EKI1sgZqHWzj+Nzx7VXIvZi?=
 =?us-ascii?Q?LT/XmKjrJvLqO5P8P0R4DzhyMmKHvW7uzXvLzNDwaz4KteCVBHlk9zwysssM?=
 =?us-ascii?Q?8LOOjglvHvr24UYVbdSZFnZSFdMk9Eq6iuelfXOYCYSV4ErdRqQjr8KLMKyd?=
 =?us-ascii?Q?BvdebxlGomdKVe2/l77/LgWDrd6IJhpJ6HHyIemxtz4fnR9OB4M3/lT2HNat?=
 =?us-ascii?Q?jAJ7ZpzO8PxJEk90nb4jGrrUphfL+eBrwIiCJOqAxYhBT0tE6rakZQ7Chr3r?=
 =?us-ascii?Q?Jupo2SzxvqXpEV6A979mcyQzVp9eTqcOTv8Q0wgH89qCzsE8mpFtzKPIw3rs?=
 =?us-ascii?Q?Uso+X5V3zyOHvc5xq/WraoYc773YGNBcO3XVrFtz/nbbXVZcbFEpQZxYZsGz?=
 =?us-ascii?Q?FDabSl9ytChHDDTRdJllyPziFUVPIe4e336gznrXiVU3xSSX1Qw995Oq//7a?=
 =?us-ascii?Q?tzEYTwMRYfWP9Y8n75ldJ7uqNdKszpzS6dFdb9rzlITbq9g14+SlzCzNMgc4?=
 =?us-ascii?Q?Goe4YAOCQbzEA5R5zr6WZCOY7j/kX3jQ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uzoHzTpqbuHz/8mNF3Gwz0YDG/eLc/NurpVAAXQrNWrSzDC9QH7H8YEJSN/a?=
 =?us-ascii?Q?SdSLAmUBT7xx1tuLuCZCY4/3+Xa38lksWaZyTIfMHQO/gogf0txRWO63N7EN?=
 =?us-ascii?Q?armMFWrZu4EQ8PloKHUYEsZRjRIk054XCQ00Zio2LcCVUGC/lcdzRcPvepdT?=
 =?us-ascii?Q?tymzfb80JwIod8Cvk1vCL/H0GP9Ec7omjqo4SKBKjwxbFu8sJAwRj3Yiz7Ni?=
 =?us-ascii?Q?zzaiAQuCPn3kMA5Ft/JXgwUpc1SSQYSBPtKaAi8PpMkG7KEzOCOwz0vcOdlj?=
 =?us-ascii?Q?awXdi9e3MbiuHTeHSi/14+bEurc0rlmjYEoUHiFef+muRSgHLdvBi4x9CB6b?=
 =?us-ascii?Q?S9xFoQ2Nl9ZUJFhWWNYqBp4phelL9+j53HEEM4Mcqa8cdc4hKIdKRpPiCjJb?=
 =?us-ascii?Q?KilKjaiEM6UkXXXqJ9xn1wYxNpVtFdrOnnbvtt6O9yRLYcqnrLqt9HxW41zu?=
 =?us-ascii?Q?aJYe5+qMBxQXSdnw2RHczguzV7mbS4DJJu0krnihG5DnXCjXHpQtTTnAKUo/?=
 =?us-ascii?Q?LJ78fnjjSvRVOL0842t2Ch5aynCwerGdkQtr9ckb7zAtKFgnbcKuQiLn5xcO?=
 =?us-ascii?Q?9HJKm+ETGXiSC2CNBxtV/DkU5m6LbNDa+XDaIJb2i/vcST2DimZywv2yod+l?=
 =?us-ascii?Q?Gz9ZkhVcMAgf7CSa94ppBHFZLeI5LWihrxbpmFCKiObuazksUsGOwONBGDEx?=
 =?us-ascii?Q?tSqkAbGyZ2rHxQmC71n2OIq1B8Uj6KCrhHBEjtd6BvyNYBelBgzIRsejWwc5?=
 =?us-ascii?Q?TK7Zvz5OiBfr5ZG7w5E9XDLMmx32UxeAk3oM+jualCw9YCYnzSOPBQS8FxRj?=
 =?us-ascii?Q?AINyX5ym4mZDkDqBzTkOVZ7TkcXMDM5BuLGeU8weBiwg2PfClHprBgjT9KUb?=
 =?us-ascii?Q?cuJ4TilENRP6F61vgp/3g1ycHR7ZIcS16zxj9MxVkHzywKMzYFn37Fov7nHn?=
 =?us-ascii?Q?lt7ubHEQcwUwCBbAiOZIsxTmrQqk7+tIW5KjBQPPUtwP1eeOCWEThtqg4izs?=
 =?us-ascii?Q?KmErVe/NJ5Ns0C3p+vI7tCJrEau6dpPyG3Po+cec3PXX4klhPnFhVyTk+2AX?=
 =?us-ascii?Q?FieyGtWJJ1tm1kG9KZP6NTxdw7WvLAksO71hQvM9iI/ejtmxWIoERWX+MTE8?=
 =?us-ascii?Q?S4kLdpBLa/xyED5rHXtVHgg8Dgg6t0cx5kVM0WqTYtoOGubI/+AkkSiOaAcG?=
 =?us-ascii?Q?efR+01LdQjc4c7NY1IqK7SRqFZltoXmuh1K0IaJLD1TtXz4txv2IlQB919XH?=
 =?us-ascii?Q?v+wN/ftVuNjPNYjXRhnngP9naqPoGrTsPaAQpsrfbQACMn9fLvc5MjHIfpdp?=
 =?us-ascii?Q?dZk2wbdinccoEkx9358hpD/t+ySmkF5HG7bTAZaM+PeeAs+fkRqb32fsjvIM?=
 =?us-ascii?Q?vwz1JJnbBFP2l51F3KEixKzhIkrZvI8HpHHO9AsaAUYLoP2ojEkALY8ar3nT?=
 =?us-ascii?Q?aOLmIWug2MAC8OV2qZTs4bTFj5P2IJTJmxF/0DPdweINTBbUypouBpRGJVKw?=
 =?us-ascii?Q?0bgV5Tqf/YX3tq09sdu1J8bwU4hzfWR54vVkXwAhlIcMRH0vV54qv4dBvXpC?=
 =?us-ascii?Q?hRpKkeEQ63XHf/UXL8E6xqxKx5sL+V3rTATcguph5lcogsQi5N0jZMXbxVE7?=
 =?us-ascii?Q?tEsDxx1J5huSFS9oIOFJsEPOchKMqHHm2W7gj88bH0bg?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b1890f75-1ea7-4025-52b4-08de325824ab
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2025 10:38:48.9183 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DOA3E7mAAmlVW5OZ+iG5wUIqj92EasJNfkE1JtbhJc0pmvmuGW3l+bdc/yWJsIrwuVjhToBWGYTlvHDF1IREtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8341
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

On Wed, Dec 03, 2025 at 10:13:44AM +0200, Jani Nikula wrote:
> On Tue, 02 Dec 2025, Imre Deak <imre.deak@intel.com> wrote:
> > On Tue, Dec 02, 2025 at 11:24:42PM +0200, Imre Deak wrote:
> >> On Tue, Dec 02, 2025 at 08:39:50PM +0200, Jani Nikula wrote:
> >> > intel_dmc_update_dc6_allowed_count() oopses when DMC hasn't been
> >> > initialized, and dmc is thus NULL.
> >> > 
> >> > That would be the case when the call path is
> >> > intel_power_domains_init_hw() -> {skl,bxt,icl}_display_core_init() ->
> >> > gen9_set_dc_state() -> intel_dmc_update_dc6_allowed_count(), as
> >> > intel_power_domains_init_hw() is called *before* intel_dmc_init().
> >> > 
> >> > However, gen9_set_dc_state() calls intel_dmc_update_dc6_allowed_count()
> >> > conditionally, depending on the current and target DC states. At probe,
> >> > the target is disabled, but if DC6 is enabled, the function is called,
> >> > and an oops follows. Apparently it's quite unlikely that DC6 is enabled
> >> > at probe, as we haven't seen this failure mode before.
> >> > 
> >> > Add NULL checks and switch the dmc->display references to just display.
> >> > 
> >> > Fixes: 88c1f9a4d36d ("drm/i915/dmc: Create debugfs entry for dc6 counter")
> >> > Cc: Mohammed Thasleem <mohammed.thasleem@intel.com>
> >> > Cc: Imre Deak <imre.deak@intel.com>
> >> > Cc: <stable@vger.kernel.org> # v6.16+
> >> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> > 
> >> > ---
> >> > 
> >> > Rare case, but this may also throw off the rc6 counting in debugfs when
> >> > it does happen.
> >> 
> >> Yes, I missed the case where the driver is being loaded while DC6 is
> >> enabled, this is what happens for the reporter:
> >> 
> >> i915 0000:00:04.0: [drm] *ERROR* DC state mismatch (0x0 -> 0x2)
> >> 
> >> That's odd, as DC6 requires the DMC firmware, which - if it's indeed
> >> loaded by BIOS for instance - will be overwritten by the driver, not a
> >> well specified sequence (even though the driver is trying to handle it
> >> correctly by disabling any active firmware handler).
> >> 
> >> But as you pointed out this would also throw off the cooked-up DC6
> >> counter tracking,
> >
> > Actually the patch would keep the counter working, as the counter
> > wouldn't be updated in the dmc==NULL case. However I still think the
> > correct fix would be to check the correct DC state, which from the POV
> > of the counter tracking is the driver's version of the state, not the HW
> > state.
> 
> One thing I failed to mention is that this happens in a KASAN run in
> QEMU. So I'm kind of not surprised we haven't hit this before. And it
> impacts the deductions about the DC state.

Ok, it's strange why QEMU decides to initialize the DC_STATE_EN register
to a non-zero value then. But in any case the driver should handle it.

> I'm not quite sure what exactly you're suggesting, maybe a draft patch
> would communicate the idea better than plain English? ;)

intel_dmc_get_dc6_allowed_count() still needs to check for dmc==NULL, as
the debugfs entry can be read at any point. With that, what I meant is:

in gen9_set_dc_state():
...
-       dc6_was_enabled = val & DC_STATE_EN_UPTO_DC6;
+       dc6_was_enabled = power_domains->dc_state & DC_STATE_EN_UPTO_DC6;
...

in intel_dmc_get_dc6_allowed_count():
...
        if (DISPLAY_VER(display) < 14)
                return false;
 
+       if (!dmc) {
+               *count = 0;
+               return true;
+       }
+
        mutex_lock(&power_domains->lock);
-       dc6_enabled = intel_de_read(display, DC_STATE_EN) &
-                     DC_STATE_EN_UPTO_DC6;
+       dc6_enabled = power_domains->dc_state & DC_STATE_EN_UPTO_DC6;
...

> Anyway, I think "not oopsing" is a lot better than "inaccurate DC
> counters in debugfs".

Agreed, the above would ensure both.

> 
> BR,
> Jani.
> 
> 
> >
> >> so could instead the counter update depend on the
> >> driver's DC state instead of the HW state? I.e. set
> >> gen9_set_dc_state()/dc6_was_enabled,
> >> intel_dmc_get_dc6_allowed_count()/dc6_enable if power_domains->dc_state
> >> says that DC6 was indeed enabled by the driver (instead of checking the
> >> HW state).
> >> 
> >> That would fix the reporter's oops when calling
> >> intel_dmc_update_dc6_allowed_count(start_tracking=false), by not calling
> >> it if the driver hasn't actually enabled DC6 and it would also keep the
> >> DC6 counter tracking correct.
> >> 
> >> intel_dmc_update_dc6_allowed_count(start_tracking=true) would be also
> >> guaranteed to be called only once the firmware is loaded, as until that
> >> point enabling DC6 is blocked (by holding a reference on the DC_off
> >> power well).
> >> 
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_dmc.c | 6 +++---
> >> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >> > 
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> >> > index 2fb6fec6dc99..169bbbc91f6d 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> >> > @@ -1570,10 +1570,10 @@ void intel_dmc_update_dc6_allowed_count(struct intel_display *display,
> >> >  	struct intel_dmc *dmc = display_to_dmc(display);
> >> >  	u32 dc5_cur_count;
> >> >  
> >> > -	if (DISPLAY_VER(dmc->display) < 14)
> >> > +	if (!dmc || DISPLAY_VER(display) < 14)
> >> >  		return;
> >> >  
> >> > -	dc5_cur_count = intel_de_read(dmc->display, DG1_DMC_DEBUG_DC5_COUNT);
> >> > +	dc5_cur_count = intel_de_read(display, DG1_DMC_DEBUG_DC5_COUNT);
> >> >  
> >> >  	if (!start_tracking)
> >> >  		dmc->dc6_allowed.count += dc5_cur_count - dmc->dc6_allowed.dc5_start;
> >> > @@ -1587,7 +1587,7 @@ static bool intel_dmc_get_dc6_allowed_count(struct intel_display *display, u32 *
> >> >  	struct intel_dmc *dmc = display_to_dmc(display);
> >> >  	bool dc6_enabled;
> >> >  
> >> > -	if (DISPLAY_VER(display) < 14)
> >> > +	if (!dmc || DISPLAY_VER(display) < 14)
> >> >  		return false;
> >> >  
> >> >  	mutex_lock(&power_domains->lock);
> >> > -- 
> >> > 2.47.3
> >> > 
> 
> -- 
> Jani Nikula, Intel
