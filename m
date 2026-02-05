Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mKlTOPDThGlo5gMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 18:31:28 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37CC5F5F76
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 18:31:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C10710E947;
	Thu,  5 Feb 2026 17:31:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QwUfrLEV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 959CE10E942;
 Thu,  5 Feb 2026 17:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770312685; x=1801848685;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=dQJgWeVOV9rmi7L32I1Piz/P40m+R7TfRy0T/l0vN6A=;
 b=QwUfrLEVn8kwh0Sagtvv+L1GARbNjLP0LuGXAWsKEt6m1H5I0VuJ5joN
 5ofd0rjQiVL6XrSiZMBc8fOOS07uVPgPr5iGof8nX/MX92OuApI9Tiv73
 D2DdxShvnQ2gyafVQBS/PhZUmFCJDsThToQlnOwdgYX3klqXYmKiYsMUV
 E2twhNByQKrZpEJHqhiIVgfJP8qSNcZzwbfGou2FUgO/ZlTbeTnzf17Ml
 tu1WAJN7PoVsbbqlfQsEqMzJzxDRDnQeQ9lGOxJ6cOHMBg2NkiP8B58dR
 YdV8GR9Sh7951yXX43jPUlUG/MLz+Mqe9s02QN32btjQCGtMZe6m6hzGu g==;
X-CSE-ConnectionGUID: +hkF6L81Rqm174fDuRG8JQ==
X-CSE-MsgGUID: dIrgHnsRSeucgOVyo0Xqog==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="71415968"
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="71415968"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 09:31:17 -0800
X-CSE-ConnectionGUID: QTMaTZhMRry9USdDGakRoA==
X-CSE-MsgGUID: fg0AeFT3ROu1btUp5UbLcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="210035531"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 09:31:16 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 09:31:16 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 09:31:16 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.36) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 09:31:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZhknYjPBgxi/RXE+cYZf4IzvtSXeIl5R6kOzsvDqDEh6rgbw5BHWCZf7ZwTEElXahthj9jfrhpmtwU1MBQxmsQeL1pwYKoj+BEdqBBFvaJQx0X1eWkODtreIE3zteKQSjLpcaGz47whhvHbWP4Q4vE1cZVYA8jtnG3+pX0fIg4UW9MOITHD+pQRq2/73XrWAEc49qQ3uDZANTV1jUOejRkGU4T3A8MvMXzjEKo3eIs9j8MEwGNA4u/Eh63qnK6MoLLlBrpxxxqh5D9RI4lS7k9NfI4cQK5fE+7YBU68KrzEsgPWG3K//HeKmSIEl4kCdAPcAbqoB8IAktuWug/Jw1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y8JgxDTzEUaxfhGrBSKauft0s/iVMbVhcVYkl+5sG2w=;
 b=DINrLS6WBUsuLJT5nQGdl/C/nZo9VM3zUjsNSmEGV7XZ7u76ckJ1NtS+he4AQimc7mTtHSCfbUnvb4IGLBpRhSfRAY9QvVypUURBXC9QgqNN1obibJDJjsVPI9OqIVvGflkaWXyWCzV+DeQNfQLepRLG8R9QU75ezkk7QXjOGfO2tD5L4TMRQE9Jo1SKs44vr9DERTGzw1MJdo1w33RxFeFCOick0mp+oqAiwblmBJZTjdA81zV9cI9tkJebXzdrA6HFb7llk5Upr/8oGHS4sD15W8RAWY/xAkVCootE1RJzGfnZQWYdDt2pXJ0WDsDpz46WRGOBNg4fC85dX5Lz0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e) by DS7PR11MB6061.namprd11.prod.outlook.com
 (2603:10b6:8:74::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.13; Thu, 5 Feb
 2026 17:31:07 +0000
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::eb8c:fc1e:e3c0:13a2]) by SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::eb8c:fc1e:e3c0:13a2%3]) with mapi id 15.20.9587.013; Thu, 5 Feb 2026
 17:31:07 +0000
Date: Thu, 5 Feb 2026 09:31:04 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Matt
 Roper" <matthew.d.roper@intel.com>
Subject: Re: [PATCH 07/16] drm/xe/xe3p_lpg: Disable reporting of context
 switch status to GHWSP
Message-ID: <20260205173104.GC772659@msatwood-mobl>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
 <20260202-nvl-p-upstreaming-v1-7-653e4ff105dc@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260202-nvl-p-upstreaming-v1-7-653e4ff105dc@intel.com>
X-ClientProxiedBy: SJ0PR03CA0173.namprd03.prod.outlook.com
 (2603:10b6:a03:338::28) To SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PPF89507EDE4:EE_|DS7PR11MB6061:EE_
X-MS-Office365-Filtering-Correlation-Id: fd4ef698-1f61-43de-c663-08de64dc5897
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?eizTbVXioRdl8AJ9j/kOMF/kS78g+PGcDCyLdKJqSaqSHXj6kGkCZSV2O4J7?=
 =?us-ascii?Q?LsuZF2O5mk7JvO3VCQFi9bYQfwlrCeGKKpkRgeYGo/mCp0kqE2Cu3ZVno0G5?=
 =?us-ascii?Q?RVR9xKoOWbOdp+aUJf5JYrEJIW4R6Wk09mffD0imBEbC2426qhZ0bnzRnkCk?=
 =?us-ascii?Q?4Gd3DDD4X13d226mMm11bpLJIaGSZaCC7Tcs1NxppNBUYhjLMMiPe7fmlOrQ?=
 =?us-ascii?Q?z9iW0Ak/wZGnjP3UA2qpai42mUUMs+XwUNgna5mEH1GpSaziBQzCqd+0XSGo?=
 =?us-ascii?Q?xJZhe70Vr1eoGah1QzsW+f0jV5HeL8+dOwumiVAeLrUg0OUH3SKUFZht5b1O?=
 =?us-ascii?Q?bJ2s7Vy+GBFZ3woseidxLOJKzdeeZB9i7AV2Ikn7uGeKEkHY5iZDpWqw8i5A?=
 =?us-ascii?Q?+rQNse0mS3VdnaoeQSPuDyAB2BOZw5us6th1HHibbAIgvORlsh6Rbh4zR3L3?=
 =?us-ascii?Q?s3FT2vhlZBFnkdeM/tyEaf5VX56YGqZzVZ8JEZXFbY9QNjtL9wJvp/zUU0ft?=
 =?us-ascii?Q?t9/lPOsZURj6mL/J/66IwRRTvErkexVMrI+L8gTItsJ5B+hfbyZxsTfn/H2Y?=
 =?us-ascii?Q?T8GNv15yp4aEH3dekPXViIc61FH7Wiz/FcYNnCrU7W5/onyG9gmz/9VcVgcV?=
 =?us-ascii?Q?+3FA99WuigZy30iIe0QwC0GfUmI98hVYLdarGaad9P8Yxau2leksvCkHUls6?=
 =?us-ascii?Q?/w12iWZY3aSBGzHVlpEecDGjnWfxLdDx6RvO+RQRPUlb36edmgpGQ0ApygCA?=
 =?us-ascii?Q?DFc5cLMWPX8tYZsGQMO1i1wgyU7898MnwwILrAOU6ixkQvccEHIfHguQVtJv?=
 =?us-ascii?Q?MvlrpU9WD+BUBr7CzTk91YkcOouha7LOih/ofncJ+mD34QMncaLOTmzLcUOY?=
 =?us-ascii?Q?Biqhiy6m3djXHXKJAFThctO6s9/5n8se/AnjVr+ImS6EXQR3FEci1bQFGq9L?=
 =?us-ascii?Q?Oafmtr87GAk4E7d9HhXFhPMPtP2fBFKeCJg/P5lvKC9Gibj+LP5PbdK2R0Sm?=
 =?us-ascii?Q?rEjdKEa9I91rv8v2/dGD8be9hdphd5YY21M6h0wJH+xowxnyivjs3+21jzCz?=
 =?us-ascii?Q?SY8E6OmfZKKvEHJodx4DnncooKebiNxEX5RSCLZ+mpbPC9qWaqh4g6VgdjTk?=
 =?us-ascii?Q?0kTFepE7cQJmCvH8dRy+UPMEI8jNSv++HI1paVuq3+1z1ZXPMHkEKCCKjBDt?=
 =?us-ascii?Q?1/O2owMEeWULIwLAQ+g1jzPqA9l/LZyvxThSpdKP6+u+vVs+xRraXDsSk83q?=
 =?us-ascii?Q?AtZdOHu/GKNtLIO3FE3xzMwyRNBdZfct8YjdOc6Yefj4sKyu2l4x3Wr8rzUi?=
 =?us-ascii?Q?Upr8+LspQr3+B/ZJtM3e+7Zl+otTWJokRYPYYrCE6HIeNL2s2T43gChxlDri?=
 =?us-ascii?Q?JjjmIIYoGY9fJ2mwjAQpYVseK47BBxTalJD7os6zUwyUD220L4gHi4kHw6m0?=
 =?us-ascii?Q?01LlWV3jje555kdku0vG+uCYZoJ6iBDLFgJJsodgcUP65YJKDh+wZ7YOzcFI?=
 =?us-ascii?Q?rkIo0QUP8StZjSb7PGEIrQKUiymJE+Pns2qJG0z4Gbq7EA+zll1E6Fh5Vt+J?=
 =?us-ascii?Q?cLotLaHZRaY0X7OAioo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF89507EDE4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0ZAIUO8sw4HSaUq4aaG7Bm48CqyJOeBzI+V/+jALe44DiG7MNvQxF/PB11Ov?=
 =?us-ascii?Q?RaT0yHQiCNXp03dTMD3UqkO8rYWGkuqF2o+bn/b2N+sO1/PPIaoF+XQPFTtY?=
 =?us-ascii?Q?rbG7Y6aBV6l0i5ZbD+drOfLhYVWQDTQkmZ/jgn2mNCsp+NaJk1jnE8cLlu7D?=
 =?us-ascii?Q?N+kh3ltYSDdz9qUJFl18yi/M/vOCP34jjyUiNYvsquilg2ohrLNnGEsJv31S?=
 =?us-ascii?Q?bsisjzAbp4kWeiKB1lyrFfKgiVIa+D+dz1Xl/FYoUqFjmMF//O5kLdCFfZjg?=
 =?us-ascii?Q?arZ742RnLtVoMUCmT7Gg95PJiaEWDjpnnm1LahboFiqXZ1pBKhmsQBOm5iHP?=
 =?us-ascii?Q?LMz8prSQA/ZpIrrGxVQihIbheGjuMLC/jZtB6EwS761TZknInERIbQh7EZMr?=
 =?us-ascii?Q?qM//D959HLxAU4ppNcx/ypVQ5XyeHjntxfwpz52OpfSCGwCKmbU4Gg+MnpzD?=
 =?us-ascii?Q?qe8shwRUeC2NeCcWwGgpcVfkeYgWSJXjpmvPbVnRY9YJq+5R8ZA44hJ0Spu7?=
 =?us-ascii?Q?uC8wbkkCbqsvCyf7idrzMAkWusFMPpAYPjgL7ea0bA8FK+m9LT8Qf0t8D+0A?=
 =?us-ascii?Q?R3ol45h93CwiMtDbiHidpv5TXOT5DCZzHIBg3mvA9/9RGWD8dG9jKiR+NTjs?=
 =?us-ascii?Q?Zip3PI/TIOG4NeItyS0XtySS8FKB84nCELspQdIC6KHl0mZRc0Ww/Po/WKHA?=
 =?us-ascii?Q?4XikCE6ivEl/zUs4faaDD92XZmkC+V4JWbxKxNKRUZvfCRhZPBu9lSvORbVm?=
 =?us-ascii?Q?oaV7J4AH4DFWxm7gl/0F4XhlPKxvGWQM8H0LrZKQjoUqj8OWC8MYMdBvlc+r?=
 =?us-ascii?Q?E+wfR4NEgLCLmi0SL7jSPBJeF0lYgfBvmOkLFQOB35O3MeNcWMuag+1w5at5?=
 =?us-ascii?Q?RKbUuTeXWa9KUiT08DoxK7F28aKHRB//Qs2oj/jEWtDV4E/4ROvmhejlUvU3?=
 =?us-ascii?Q?rHyV4g5pPcorlFo8cQal04l6jvRJMJWNFzjwin7NAh5514pURqUc2P4L7tVK?=
 =?us-ascii?Q?ihBeWPBAm2EDSlkKEUrG4DPnaQ5PeKLYqtH6RgVisdtlvII5Foq3hqlVtzbk?=
 =?us-ascii?Q?wZhD+/VoBNBpaBKG/zTPiZS27mxJXmKBB7trDGmh+zLlrzv9Hs4Y5rNBgO5Y?=
 =?us-ascii?Q?ix/x3aY5KCEkPAo3vPoIsYYVUUQf6gGrgtW6rBhJRrOUIpUcPLMN8IY1IJ7D?=
 =?us-ascii?Q?HqoNuz/xdo+Ql57GkO5YGZf8dweSTYz0/m6o3vpxiJ34mrmpOjHUCdcwjxaE?=
 =?us-ascii?Q?jKElBf/QVnL46C5atlMLZqBKPZ6PDBFIF8R1slTuHLC+dZBuyp33qkRpZpIS?=
 =?us-ascii?Q?RhEyk8l43fl/Ufsrp46M+jI/rK5uXIwKQ4X1PSENXWmpvbRqX3BHDVxU8yvJ?=
 =?us-ascii?Q?EO8va3PGlyws90zwQVjq9CEd3wC1mHXMwApLdemB9CrtMYlSjbn9TohmZVZZ?=
 =?us-ascii?Q?6fTdzqC5yfBE84zKMqFfGAXImBOQyqPsx257x3Z+UPxPfz3I09tM9ccTIxCP?=
 =?us-ascii?Q?hE8xl3Mg8wmi5LrG9neF2ge3cFaRVcrLtj+pZzU7t1SWRlxtCwT8SkjXsCRF?=
 =?us-ascii?Q?69Uw1jd8Vok+qKoYVEjzCY93SIaPuIyt4XUyD+rZlNgzmDvskM8YFJtZwvDE?=
 =?us-ascii?Q?U/kQwaKMpNCqz/n+QUG9ac+QUhNsXtjEeKQH9Se/c3KBpwU2poLqtp7Os/OV?=
 =?us-ascii?Q?4Md/aRTlFHQGeWbI1/Y4uGzhGnzGWIqO9mWTqrRc6wwJ7KRpbYojteZocecy?=
 =?us-ascii?Q?lk8y9DZd9EWvTjuSVCKzJi17cAiD3aE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fd4ef698-1f61-43de-c663-08de64dc5897
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF89507EDE4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2026 17:31:07.6959 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L56qVNCZh5K3Ff7VesPdkGWgN3kj6z0kfwhN1f9SLWmFN7b4iJTqjNrXMLt5vPvqrO9Y1MrK9BXcN1+W0aR3WtZYD9SNZxEPi06s+Auj0kc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6061
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.s.atwood@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 37CC5F5F76
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 06:43:13PM -0300, Gustavo Sousa wrote:
> From: Matt Roper <matthew.d.roper@intel.com>
> 
> By default the hardware reports context switch status into the global
> hardware status page.  The Xe driver doesn't use this information for
> anything, and as of Xe3p, leaving this setting enabled will prevent
> other hardware optimizations from being enabled.  Disable this reporting
> as suggested by the tuning guide.
> 
> Bspec: 72161
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_tuning.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/xe/xe_tuning.c b/drivers/gpu/drm/xe/xe_tuning.c
> index 5766fa7742d3..a97872b3214b 100644
> --- a/drivers/gpu/drm/xe/xe_tuning.c
> +++ b/drivers/gpu/drm/xe/xe_tuning.c
> @@ -10,6 +10,7 @@
>  #include <drm/drm_managed.h>
>  #include <drm/drm_print.h>
>  
> +#include "regs/xe_engine_regs.h"
>  #include "regs/xe_gt_regs.h"
>  #include "xe_gt_types.h"
>  #include "xe_platform_types.h"
> @@ -107,6 +108,12 @@ static const struct xe_rtp_entry_sr engine_tunings[] = {
>  		       FUNC(xe_rtp_match_first_render_or_compute)),
>  	  XE_RTP_ACTIONS(SET(RT_CTRL, DIS_NULL_QUERY))
>  	},
> +	{ XE_RTP_NAME("Tuning: disable HW reporting of ctx switch to GHWSP"),
> +	  XE_RTP_RULES(GRAPHICS_VERSION_RANGE(3500, XE_RTP_END_VERSION_UNDEFINED)),
> +	  XE_RTP_ACTIONS(SET(CSFE_CHICKEN1(0),
> +			     GHWSP_CSB_REPORT_DIS,
> +			     XE_RTP_ACTION_FLAG(ENGINE_BASE)))
> +	},
>  };
>  
>  static const struct xe_rtp_entry_sr lrc_tunings[] = {
> 
> -- 
> 2.52.0
> 
