Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +OUGILTJAWpsjwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:21:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD5550D8CA
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:21:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E57E210E535;
	Mon, 11 May 2026 12:21:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OQ8admXx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81EDA10E535;
 Mon, 11 May 2026 12:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778502064; x=1810038064;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ba4pOW59iWC/rLVvDsblyuyNd5hIb54cXLEr70YTj38=;
 b=OQ8admXxDlNmn+nhNQCl0n1kmUWnKC3du90t2I5necqx+71Y/i9sqEb4
 aGQ8Wd5V6xqhiRkKe45OXGt7P9IUjxjAxalAuDzJ3384SE8vZTGZKHLu1
 om2O7mO98LI0W6arEaihmGg80WOs/MfaGRzfsCMc7/mX5TD1wOrGc95Rg
 WI6IkacdjiPCtosZLd80Nz4sC9HHx0qIKy0MLreBaYfrFu/Ob9M3He+8d
 kzn/Lzc1FWWNA+K0FftuaDnVidJ688KMuDMGLkwH1Y3JnGRPS0ktk/KeF
 ubvu7Dk+LsnWY1CJMH39FGGaScZUbcgEfzO2gWbfc3sSW/dreBQjcZTXU g==;
X-CSE-ConnectionGUID: 8zq+xpTRScWmL5wsDOJcEg==
X-CSE-MsgGUID: lnISABLfRp+ZSS8ulyLBcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="90084735"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="90084735"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:21:04 -0700
X-CSE-ConnectionGUID: 2BPGXlPJT4uP1Op/+n+xUg==
X-CSE-MsgGUID: b3X05yjbSmWFvKeYyLvNXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="241413122"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:21:04 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 05:21:03 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 05:21:03 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.69)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 05:21:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xk1XeWsbzpsS/dy05VOlTqqUvdjE0lHmZ0KtZHVZ6PlJiBIoEWjo+LXSK51kxQC4cMtF3ldNtreuq/KcRx0pvtplMTAN2i1yvboYMVtGWRcs1SnRhp5TircBpuCazCEJ3MTJVvPXtuK9KcXNA4ezab2N5rmKXDviwlA/dG2rWZWa+GP7c5gV0Xd5kLCpyRaIUqPCSllYpvRans9upJhM4WIm+3a8LC8DPibfh5Ww7iMxdfAgkLXnIfaOSbocsYnc1GYx9qKL8ERFG9Vr3DS8mQ26A4bOBmhVSdmiyYM3EG1ayGPEshjywjklLB2ErDwzJyiFmLX3e6XGlDyejvwLnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fXqddAdes9zfba246Ku6eJMbDLbX+5xSO8i0ZJQ48Tc=;
 b=oFFmXZZiqpqMkbb44ZKECxuzYcuiD7z78Jr2d8t1hIyJwSIiEBSP5xgteLoEUjHU8H+4LAqfM3aSwD8Ww36zMNbXAVMTDzLgi9tYpRGPkBcwcn13LCrmDM2K9Iv38DoaEkaF1yUC2se/2KOepEF53av5wzNVj9RXJuCbVoe8b0Odb7w56tfjnRnosTPaQvsLEqU8Wni6Zr1PgC8p+C3a7N1of5OsZfNkcVcdaTDspAyijprJGfT9Hk/0MAI+CTen8gTHwLQLOKTMoQiNXhQVpIESw4q73RcpcG356r+mQ6G0+ymqIOMG9vvLf3HqDy0Ps9mT9/jwNABTA9cKtO/bIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CY5PR11MB6188.namprd11.prod.outlook.com (2603:10b6:930:24::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Mon, 11 May
 2026 12:21:01 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%5]) with mapi id 15.20.9891.020; Mon, 11 May 2026
 12:21:00 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: James Xiong <james.xiong@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: <jani.nikula@linux.intel.com>, James Xiong <james.xiong@intel.com>, "Imre
 Deak" <imre.deak@intel.com>
Subject: Re: [PATCH v3] drm/i915/dmc: fix assert_dmc_loaded WARN during
 async firmware load
In-Reply-To: <20260508181329.666762-1-james.xiong@intel.com>
References: <20260508181329.666762-1-james.xiong@intel.com>
Date: Mon, 11 May 2026 09:20:56 -0300
Message-ID: <87tsseqgrb.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR05CA0033.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::8) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CY5PR11MB6188:EE_
X-MS-Office365-Filtering-Correlation-Id: dbdda4f6-5fb7-4870-b1f9-08deaf57c323
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|11063799003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: agZiU3qRxyoppgWQ9Wnj8gBBl5ze8ubXc0iZPyNWwOyTd9rhgZ7KtjoGMNRwekMfn95YBeULeHPVsfVuvWCPhzPTJ+CCrFs7ZsKSSxq7HKysKjnVqzcFguRk37Z+qdFrhYqbZ6PN58vXwvXJe3ifFJKQqmI9Wb04bkPKQF67NzoOPLNh+Hxc/LRkLVUl/UMVdUFMUMM7OCrcaE4i1pGf21A2UfpYra4l2txWlfa5aVQTssY3KlGiMUvEsEcURBp/032SFWBVlMCRiC2Do5VbZIZSMi6JEnmV1/mnebjbVhMrTf7uDWxQC75ImB86FDLiLdAzQWnN+gcl+l32iviPgkzI/9YVu1BEJP65rbMVjb14rJwUU/lizu7BVFmfdEi7nJ1TXchOTB39vMpjJJAf1/YByCCfsen/DB26YMz/kyxgwP/gXLRAIXZkggrEJ5rSTsJu6Af7YTp0UxY3JSUisK+zteL4o6ONOdG5fH72bI3JampkUxiYYg7AlTDN0Nw+syRg/H1bz3iOfp4SmGWq1PxP4i0q2UQ3ehKaL8pOi+L8Lo9CkmsF/h1uaK/dWc8CtYyBKhupZ9I1MEUCCXq1PZ7lY8q/llYK/vImTlOjIvhWeu0KPo4CsegLMkFrSDEoM8A29iUNLDxqX+kyN4SoikxxqiS2YnXQsexKGp1Mr2jTWQ+Zknzeo8ngcQoVviWf
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(11063799003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xQPJ6/LqwqifMqshvQg5gZz79unApZljxdf9Jp1oEVy0ikDsbWswqBUpwVJr?=
 =?us-ascii?Q?dSGC3ExdJDyfF5aqYk0dkrqGtjApxcetd+vh1gZT6jjagg4UUgi6LalFVJlI?=
 =?us-ascii?Q?14XbWX68zuIHLSKaCW32Y4Zc701KVLkr7yycGd/UFCxHD3woJCSLkyjY4iw1?=
 =?us-ascii?Q?JTddF+gZWPtr19avFEwSVMSDF72MdkFV1Cg35CrlY44ujEVyWI3WaNR4dcIp?=
 =?us-ascii?Q?ef0Db2qv3nfX4NPybxKEUTFEQYItWHso7dkto4w9emkcstZoiG1OoUn0Uu8g?=
 =?us-ascii?Q?okTreEtLdUCfbhnoTAidGlvh2pjuUSf3vJS2FRcVpSXcHtC5a3YwM/zbk0SW?=
 =?us-ascii?Q?qt5uvJXFXEVEmdsntvrbIt9dewxKFvj9QZL3l1gmmlSC9gwVry0wXRjHmyuf?=
 =?us-ascii?Q?PFyt90ykntIzFrZpaQnbQqbq+rZE2DdeFI78eYIlTHe18wWkiflWkTrpJgdj?=
 =?us-ascii?Q?8JjTpOtADveZ8oZfYOL+m6YxdP1i3b8iYMzEIn2NiLgSqQ00rTBhB1f4cN38?=
 =?us-ascii?Q?xuyyPuYAGFpWVpuRoQD6wtNCwncMrjSHX5YOmmlolJRkj1+S6YepqzzMegwr?=
 =?us-ascii?Q?9z2CnADfWVOIRyEbqGu3gzBhGqN7BiWJgI19Knz1j8ReHbgVIQB0rcPBvGCI?=
 =?us-ascii?Q?3xKS6wtaVHP0h/Rv6iDIipYVEESgY0DbQXgTgS3oU9fR9QqmnH1v+cnw3N4K?=
 =?us-ascii?Q?wvon65lr2+0OT3qkBzrbp/GSI+ZB2WIP9uf7RrOaVR9FELnL4GiQMhTShSiy?=
 =?us-ascii?Q?sIYu9D2/0Bq19+z8aa0jAR9XWTyuZ6heGXVYoQMiEiZz1pJZg13QXZhBJfX5?=
 =?us-ascii?Q?6SJRli/tEFdi0UsV2I4EleU0r/1ODnEmerYxH6RaW7QqFhyt0rXj9ZcM3Mml?=
 =?us-ascii?Q?G9itL4YjHRBCLV5PzdV7YluDaeybtFEsthj932EZwHv0I9vdBdE9d3APGSR6?=
 =?us-ascii?Q?b7dZ60D12ZxlZvb3trCMe7yGrZ7ONTCZGwu4Tpoy5yPZP09MvRwViDzMKYev?=
 =?us-ascii?Q?Mw+jN456+bE/iVS7+eYoxZ5sHXNcDd8hXTIlS7qb05zHuBow32311R8bNtr2?=
 =?us-ascii?Q?cjtaIvW3gEJi3jGnys7C7/3/B5Tpp+mRcaDAfFYf5qfmu+9PionG4ismsiIa?=
 =?us-ascii?Q?BgDwr8ddXZ/bc2KbcY+VRx64cnaQX4EInvHfecEcPMcYj715CU9YguyErEuO?=
 =?us-ascii?Q?G/E+HZQwo6MpKfAn7xkJJ5HfMNueJq6E/4W+OKWo0tpelojUULugH5vDgaHi?=
 =?us-ascii?Q?8z6qhSWZINQBX0jyocvLMt9oR/oQVqp5IjrM8TRDWkFyZbU01B9B3TQngn1G?=
 =?us-ascii?Q?XgRywaTsyz6xgQeP2HIac2JChY8eOTROI/ZOWFJwZGnRIGFyeMeah7HmdXWr?=
 =?us-ascii?Q?5grz/Cwj8sj5oyvUFwvSwa/x/IXevRUYLyE5rOln4nx23a20dTE/iyTRgJYW?=
 =?us-ascii?Q?5GNr7apgFKpAcjwk0lHpyLAbLLvfpNl1IoaDmTBQ4CvZLyoG5HlJLt9Q2Naw?=
 =?us-ascii?Q?h2vBOgShrTFxWFc/amccFwkF/+PhyIa9QB4hCPRdv8bjwKyrCQkk9pZdnPRE?=
 =?us-ascii?Q?LyV7RJCDtTY5ylZcSt+vKd63zXXJPOT9MBUp3yALHnH7RrorvsQa+LcKIAX/?=
 =?us-ascii?Q?Kpqp57tI9Ga6WUIJi8SD4EGFFt3HoByl29vf0oeUMA3GzeG2l7EpTeuuelon?=
 =?us-ascii?Q?n1INNjPLdWTMFt33VQAL9BfngHbRse2k6O8pCFbKdmITxInAFqC1CnoavWTz?=
 =?us-ascii?Q?xGuAB+4gKQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: jxeDaWUdh+t8qOF0R+Gr1Qr2r6FfJPvNwWmTnAig0OkDW38DL1fRQfoOeHjcMoUCNvsCnT+Tgwg3iyw5u17hZ6sUA4XZrnkkYIavzbqg17Jo1Py2MHuPW1O5oWd1+vZ34JHY/l79yVOj3o9XMjY1CB/qmalGrprpesttdq78M0Q+J26GslHQIXTnL66CqNA9cRwE3EVXsku3Qn80HoBLGGHnTeLfrhOMA6qPGPToSuePZtHrSd7MDWqTihADn+3VjroXIgL3zZjaP7NUQOrNFFkUvHWmnQeRfiaEEIhbaMUhr9l6jdUBH5xULqr/QF1AOee1JDyFS1vG4NuVoyE88A==
X-MS-Exchange-CrossTenant-Network-Message-Id: dbdda4f6-5fb7-4870-b1f9-08deaf57c323
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 12:21:00.7435 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PjI4On968YIdfHrX+hsqKA81Z+4XZWcCnoROQtkxb/dEVH96mrGECXAqWDBzyG0HJlQEHiESXidyck1ET695DA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6188
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
X-Rspamd-Queue-Id: DCD5550D8CA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

James Xiong <james.xiong@intel.com> writes:

> During driver probe, DMC firmware is loaded asynchronously via a
> workqueue. There is a race between parse_dmc_fw() setting the payload
> pointer (making has_dmc_id_fw() return true) and intel_dmc_load_program()
> writing the firmware to hardware registers. If the probe thread calls
> intel_dmc_enable_pipe() -> assert_dmc_loaded() in this window via
> intel_modeset_setup_hw_state(), it sees parsed payload but stale HW
> registers, triggering a ~20% intermittent WARNING on ADL-N warm boot.
>
> v2: Fix by calling intel_dmc_wait_fw_load() in
>     intel_modeset_setup_hw_state() before iterating the CRTCs (Gustavo
>     Sousa).
>
> v3: Move intel_dmc_wait_fw_load() into intel_dmc_enable_pipe() itself
>     so the function is self-contained (Jani Nikula, Gustavo Sousa).
>
> Signed-off-by: James Xiong <james.xiong@intel.com>

+Imre

Perhaps this deserves a fixes tag? If so, maybe it should be this one:

Fixes: 3af2ff0840be ("drm/i915: Enable a PIPEDMC whenever its corresponding pipe is enabled")

The change itself looks good to me, so

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 0df4f42ba3e3..4151eae92744 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -786,7 +786,12 @@ void intel_dmc_enable_pipe(const struct intel_crtc_state *crtc_state)
>  	enum pipe pipe = crtc->pipe;
>  	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
>  
> -	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(display, dmc_id))
> +	if (!is_valid_dmc_id(dmc_id))
> +		return;
> +
> +	intel_dmc_wait_fw_load(display);
> +
> +	if (!has_dmc_id_fw(display, dmc_id))
>  		return;
>  
>  	if (!can_enable_pipedmc(crtc_state)) {
> -- 
> 2.34.1
