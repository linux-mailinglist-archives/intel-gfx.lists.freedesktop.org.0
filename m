Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AAJLK/ZbAmosrgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 00:45:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A443517101
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 00:45:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 802AC10E908;
	Mon, 11 May 2026 22:45:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H2WM1hQa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D488E10E8FA;
 Mon, 11 May 2026 22:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778539507; x=1810075507;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=NNHAJa8zJSIyg7+hnw1n4LMoOYlr5e7m4jtNipzchpQ=;
 b=H2WM1hQabkOSnwj5njc+VsCDMR93S7fz97Ehd2ZsYYhTxEOW4zfrz2cZ
 ODoVoe8mWZITcUEOYrtxevB9CrtJrdQ8K35iM7nl8UhTvI7MtW5L5OksN
 CkoQ4J8HaNjK0Ax0dElaDU/SampWQzv0ekzIvaJe1fcQg7+axRMSX9h4P
 gePC4xA5XMY6XcGgI/hNAY224MIj+34gVvrA05KeaAIrtV/JlSGL/xnxI
 /AiXaU9Rj6IgjIVtemrEisSdis/4xZ/ovCW/fjgGnLp+Q+tXzziGdR/H9
 5OImiYgiNIDluM3EppVOknqDeKyXk0quBaCdO7b+NW2QXQqYR4n4pBY9Y g==;
X-CSE-ConnectionGUID: Xw7b1UpJTwmrWg6E1nz2Mg==
X-CSE-MsgGUID: rezuTBRSTHOL4Li49WhkeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="79336670"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="79336670"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 15:45:06 -0700
X-CSE-ConnectionGUID: G6OsYT97TBeWc3aRSrD5BQ==
X-CSE-MsgGUID: mxgWl3iRSteXH8uD2KogSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="261082550"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 15:45:06 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 15:45:05 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 15:45:05 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.7) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 15:45:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AByvPiRGc9P8vF5xoJiHLS8XnZ9MUCNLxC+LZddMbvjXlPSUhNu0x2AU2Ylo40CEfxJ0+x6wNqZ+5/TadUjywl2GTCwQ6UY2wQdPYXe9P1+LilpeBb4gh6BhU7BiVm4WYUF1d9fbtT8beteNrtKsEDpVSSlb56DSdNgvdOtMXQ0KtJ96G9paKfYHVM/bVxTb/dnT7mA1k2IqYds0AC9gobb2FEyAO/6dmu7pcXSHgmoypLVcHxOamfmDUotF/oxyYI6I3gAOFk9fRE5T+jpM+D39vWZHOYEQ1zu8gCBHur5GQGHo1Bt2tWypdzcjRfblgDxBsBYJG16IBmfvMHXL1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=54caJQWufF48RLDGLQDx+iYNDS8PXih8guO1W9zn6lc=;
 b=MjmsbiJc8CN0FIAJl5MC24TkmO+Zh+pnrV+Sr2LcSeUn5RzyrCFv8ozSQ55Hm9JUeSkSpruTm082gcdoPxgsmQ1wfznV5bWD8ZQ0JU0ZR8svpN0IoqEpGtniJcGrGcPhvqNojtecCSqqi4V2BDb9zFOfMigJsrbH5aagvIhh93rSmLLBIplhyst3Ca2wpphN6nSvjgGdtd0SZX5xqrpr7K3jaTeJEFxCCISymxEe2QcI0Cfc+lmc6PV/3oQjKVCYkWCo88NBSY/UESD4xvSqxqIR7GhCh7XrL1znNssZC86mO9kmlNMOoco2OAUfstTxPFD9RgMMGn4kqPzyvukCBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SJ5PPF8622363CD.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::83c) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Mon, 11 May
 2026 22:45:01 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9891.021; Mon, 11 May 2026
 22:44:57 +0000
Date: Mon, 11 May 2026 15:44:54 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@intel.com>
Subject: Re: [PATCH v2 3/4] drm/i915/bw: Rename struct intel_sa_info to
 intel_display_bw_params
Message-ID: <20260511224454.GA2131374@mdroper-desk1.amr.corp.intel.com>
References: <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-0-e762cb8662da@intel.com>
 <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-3-e762cb8662da@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-3-e762cb8662da@intel.com>
X-ClientProxiedBy: SJ0PR05CA0065.namprd05.prod.outlook.com
 (2603:10b6:a03:332::10) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SJ5PPF8622363CD:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d40f2ed-a08a-4a0d-1940-08deafaeecfa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|56012099003|18002099003|3023799003|11063799003;
X-Microsoft-Antispam-Message-Info: iqfFrJsLIyaQR+vcOQu5TG58q1uIxlegpMNhjvx5++XTLBcz1OgKEoKL2vC4mWZ7d5ZLWrJHrjJn9DyQPZ39LXuez17bKovwpCag5OX5auU9cW04GRcEGRkNnMpBRRInUfnDpaaXYZ2ZjfE/7YG7HmLYqQVbj2kPk6yu4VEduTYZzLPh2cqanM02GdJi/pU0UmBbXbau/VnS61bjyLb3oJax8bc4RxstL5C3n3Fb7DzohSG9tgXjGnmDzUw6210iHBVkOVREgpD/l31KlZit4zoGdlO/CobbUsO1mxlnwZc/J8I7NPYY6u4qZ+Vo609nLJn6UQ00aSIdBCXyPZlkRKf6iTrl/LZSGPwu6x8P2vVn8bSTfgDK2mFyqMyywfqHcfndSEm7UQxHudh1edUyu5vam8lmL1o42MF/UVMmqI22lj11GrvznMTTglaS0/9CEquozXOZrNxL1bOZaM2ZReeW13hbqM+HqFpAprAFyE+IOC69niyMdnkHosDohEsLDmx8aTFHfA39Dn77OSuBIUHw6WJBKuLM2Pbbj/3jPQPnIA+LebSOUDGd21SoMkMVL+sI8rWBsXlNFFSmiIZbDeC/MXRcUz1l0Q+HZxJqGPpEPG/uiNC9I+X6nc9DeOV4PKsM+cXNi+tQiQ5GS65q5CTWMg1U1uH5b2yZGzIFaNQ+z1onwyxQV3Fpp3PtIpqo
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(56012099003)(18002099003)(3023799003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TZoNUz1XW8aDo6za7deQZvviFj4hiJP9lg0WLnBmyIWYGZxtYhrF2ge85GKA?=
 =?us-ascii?Q?arGVMs+6CDD05jNQ2onNzNespK202pWGVY3ZSmNwmljQRcjAm54GTBacQQid?=
 =?us-ascii?Q?nUrN0h8KGrTy+vdDIt55K6h4/S2uaqkv2ITzhpvrPo64m7xjLYymY7kYkmk5?=
 =?us-ascii?Q?HQYOYVyi8Zw2QRtquAIA2pfC0MLBMItLx+GczejeVQV7T4NwMoA2cJoQmiHs?=
 =?us-ascii?Q?Fphof4Kd9+p8q7hxmBeWAuXM36zIldw9tOmk01BuZTYcQ6gDcWKooS/3ZVMp?=
 =?us-ascii?Q?56qhUfXupAtLW6t2jbE6yik7w7TpOU8ftnAU4eDStvHDLzuEy645Sq3vD0cH?=
 =?us-ascii?Q?cNmO3/q8CupYrjAL+xDnIHrSClBku9Sbh1hUFDKlpcaIeSxcTZqx2Y/sIw7y?=
 =?us-ascii?Q?uxWAS3oV6XioJN2JWm/CYLOkD4H7Upr030ab7j9pAW/2cMv0RiyEw1XheEhH?=
 =?us-ascii?Q?vCrFpEFsLsKnolLh+MkLBUcO3dcU9GbaiBClQ9e3XyKQz9Hz5tbCiGyc651b?=
 =?us-ascii?Q?3ljFU64zN913mstdWRY18aTusrmqqpQLs0N3Sus9RpjPzsM0kg4NGeQ4Iib1?=
 =?us-ascii?Q?R5h9u+eU3O/eVgHHx3afphBEoBB2DtimELge2RTpy2anO+0JwxC69u2h139n?=
 =?us-ascii?Q?yjtbCQGTQ3yPZr0prJZSuCPTZHbVbZPMniARHhuYOCWY1aXylw/yli5qwnt0?=
 =?us-ascii?Q?6Olatp8mzt4HBZFeOExYGvxuK8Ao4hLj9r7SC1EUF18J753XjdxY+N3u4/mZ?=
 =?us-ascii?Q?Z02nQTTkMSMs23Y7xvA8vEzQDmxchY97NFlOhglkZoqmdhKWreetaNwn6u+D?=
 =?us-ascii?Q?mSbenAXqeOxAlEvSoveuyjg0xkIthhoUjf5JHDADSqlrTd1nRosOWo2Scool?=
 =?us-ascii?Q?RWtcmEJaJAXTGhTqsvp148nQcoZt94uY70pUiJfVWiH9NnkRj9P/gy3qrze9?=
 =?us-ascii?Q?XaMuUUCUtMZu4N2NCb27er0ZHr5EH+dMt7g0BkDyT3/7QDw4Om3UVhjmprtR?=
 =?us-ascii?Q?xiaygFRKXp1kcMsPl0D45BPASn/Tx08QTc5R2WTvN59Eaq/0gW8X4RwA7HCx?=
 =?us-ascii?Q?crfL8VKTix3v/bQGiY6lrIMzgcHrkuSeI0JoRTGwSCWo5/Fv89Tp4YsKh0eh?=
 =?us-ascii?Q?DVOXmvg7lo+tTUZoK0Jo1fJ44ljAOpfKrxi6B9nhmBgPkU1Ri1lkWHr9zPUD?=
 =?us-ascii?Q?C9BRwdqc5xx26k46ZAqCaJUOtaKK1RYdRUEEos1RkiX9R0um8U+WiyXTn6dk?=
 =?us-ascii?Q?dq0pypmJxC8C4AGQfa/qGNbi1l9h75de24AopQuUgVHcjo/ZDHBFB0hT8t+M?=
 =?us-ascii?Q?lBpceqlsR+4FNm77DyM85V/sGvQEpjiVQ8PIZktWkgIVb4B9CHlA725lA8cE?=
 =?us-ascii?Q?6v7/IscNQbbin0XhTSKsYAWt3P2uEV3wttkI9iclJb0kVbsfjLY4le4Ag24G?=
 =?us-ascii?Q?RjS6SkcENh1U8FDj54i3aq59VdTa4i9Z4o013ifbHRVL6aiGXHIuOuRA20el?=
 =?us-ascii?Q?crTBS7Pn237xa7cRMKCmRyVCV0JD+GX9gWLi+QdXVzcD+Yi9FN1HHI4dweNw?=
 =?us-ascii?Q?xfh6mzf5NJ/aDUoA/OajnjjD9Atd9fxzPTnjs+B5qVenu7oKNalLYjpfbfuj?=
 =?us-ascii?Q?rIxSK3+S0Z8Q6KsC3yh+KkECasm9FBjvmeqV53ro/uI0mCxskuI8tAM3LwMp?=
 =?us-ascii?Q?QVzHh+bo+3Tn5Bw/Wy6nvD7yfP/Cks5ZR7RgvOlGA/Q+36ZHVPzwm9Lz6KAV?=
 =?us-ascii?Q?yX50X8tazAQOqaX3yKLNJjRWkjvcmtM=3D?=
X-Exchange-RoutingPolicyChecked: lZ1y9aIvp/YEPY5Q5AonJJlL1u2sQRuoRyB1kEStQ4C5zR7qxoVGBrzm0h9WKWCib4+QqkOuBrV0p8mSLkBQqasEZBW1j5rmwBsifdA9I2sKyV0jIk/NQ2NZZcc8YLnCae0efZ2l8Q4qwwshapuMzziKh7W79bDTy9iXg3KFcdHQNcq85TAHGvVoCYJNXjZCWo6Dxx/amnwfrnj/RAWL9CpxEGi6ppoY8FXsn+WH0iJsBPwmZqmlD7Z7elPhIhzLx0FT1gubF1dYlQZ/lNVumja+tiVyrq+z8xm7evUtYjM0b5TwDTaUJzBVpje1CnzLxtxEdPO/Xb30lwDelP/l6g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d40f2ed-a08a-4a0d-1940-08deafaeecfa
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 22:44:57.0328 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aCXnzxEoeF7UI7zqP/iOSvkej+11cAAHpT1e5h2uUJn6yabe/Xn6gN8P1AsIDS2kU3D07kCAlLQvLLGLNdqz4P0jYTbLIaxnmcoyNXmPWB4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF8622363CD
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
X-Rspamd-Queue-Id: 1A443517101
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mdroper-desk1.amr.corp.intel.com:mid,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Mon, May 11, 2026 at 01:30:58PM -0300, Gustavo Sousa wrote:
> To align with struct intel_platform_bw_params, rename struct
> intel_sa_info to intel_display_bw_params.  Also add comments to contrast
> their purposes.
> 
> v2:
>   - Use gen11 and gen12 as prefixes for ICL's and TGL's display-specific
>     parameters variables. (Matt)
>   - Prefer to use "display" instead of "disp" in variable names. (Jani)
>   - Drop the redundant "disp" from the variable names.
> 
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 36 ++++++++++++++++++++-------------
>  1 file changed, 22 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 2e580c1a3fab..c01356d38e64 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -372,6 +372,10 @@ static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
>  	return dclk;
>  }
>  
> +/*
> + * Bandwidth parameters that are tied to the SoC (as opposed to struct
> + * intel_display_bw_params).
> + */
>  struct intel_soc_bw_params {
>  	u8 deprogbwlimit;
>  	u8 derating;
> @@ -465,22 +469,26 @@ static const struct intel_soc_bw_params *get_soc_bw_params(struct intel_display
>  	return NULL;
>  }
>  
> -struct intel_sa_info {
> +/*
> + * Bandwidth parameters that are tied to the display IP (as opposed to struct
> + * intel_soc_bw_params).
> + */
> +struct intel_display_bw_params {
>  	u16 displayrtids;
>  	u8 deburst;
>  };
>  
> -static const struct intel_sa_info icl_sa_info = {
> +static const struct intel_display_bw_params gen11_bw_params = {
>  	.deburst = 8,
>  	.displayrtids = 128,
>  };
>  
> -static const struct intel_sa_info tgl_sa_info = {
> +static const struct intel_display_bw_params gen12_bw_params = {
>  	.deburst = 16,
>  	.displayrtids = 256,
>  };
>  
> -static const struct intel_sa_info mtl_sa_info = {
> +static const struct intel_display_bw_params xelpdp_bw_params = {
>  	.deburst = 32,
>  	.displayrtids = 256,
>  };
> @@ -488,7 +496,7 @@ static const struct intel_sa_info mtl_sa_info = {
>  static int icl_get_bw_info(struct intel_display *display,
>  			   const struct dram_info *dram_info,
>  			   const struct intel_soc_bw_params *soc_bw_params,
> -			   const struct intel_sa_info *sa)
> +			   const struct intel_display_bw_params *display_bw_params)
>  {
>  	struct intel_qgv_info qi = {};
>  	bool is_y_tile = true; /* assume y tile may be used */
> @@ -508,7 +516,7 @@ static int icl_get_bw_info(struct intel_display *display,
>  
>  	dclk_max = icl_sagv_max_dclk(&qi);
>  	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
> -	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
> +	ipqdepth = min(ipqdepthpch, display_bw_params->displayrtids / num_channels);
>  	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
>  
>  	for (i = 0; i < num_groups; i++) {
> @@ -516,7 +524,7 @@ static int icl_get_bw_info(struct intel_display *display,
>  		int clpchgroup;
>  		int j;
>  
> -		clpchgroup = (sa->deburst * qi.deinterleave / num_channels) << i;
> +		clpchgroup = (display_bw_params->deburst * qi.deinterleave / num_channels) << i;
>  		bi->num_planes = (ipqdepth - clpchgroup) / clpchgroup + 1;
>  
>  		bi->num_qgv_points = qi.num_points;
> @@ -560,7 +568,7 @@ static int icl_get_bw_info(struct intel_display *display,
>  static int tgl_get_bw_info(struct intel_display *display,
>  			   const struct dram_info *dram_info,
>  			   const struct intel_soc_bw_params *soc_bw_params,
> -			   const struct intel_sa_info *sa)
> +			   const struct intel_display_bw_params *display_bw_params)
>  {
>  	struct intel_qgv_info qi = {};
>  	bool is_y_tile = true; /* assume y tile may be used */
> @@ -598,7 +606,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>  	peakbw = num_channels * DIV_ROUND_UP(qi.channel_width, 8) * dclk_max;
>  	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
>  
> -	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
> +	ipqdepth = min(ipqdepthpch, display_bw_params->displayrtids / num_channels);
>  	/*
>  	 * clperchgroup = 4kpagespermempage * clperchperblock,
>  	 * clperchperblock = 8 / num_channels * interleave
> @@ -611,7 +619,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>  		int clpchgroup;
>  		int j;
>  
> -		clpchgroup = (sa->deburst * qi.deinterleave / num_channels) << i;
> +		clpchgroup = (display_bw_params->deburst * qi.deinterleave / num_channels) << i;
>  
>  		if (i < num_groups - 1) {
>  			bi_next = &display->bw.max[i + 1];
> @@ -851,7 +859,7 @@ void intel_bw_init_hw(struct intel_display *display)
>  	if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
>  		xe2_hpd_get_bw_info(display, dram_info, soc_bw_params);
>  	} else if (DISPLAY_VER(display) >= 14) {
> -		tgl_get_bw_info(display, dram_info, soc_bw_params, &mtl_sa_info);
> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &xelpdp_bw_params);
>  	} else if (display->platform.dg2) {
>  		dg2_get_bw_info(display);
>  	} else if (DISPLAY_VER(display) >= 12) {
> @@ -862,11 +870,11 @@ void intel_bw_init_hw(struct intel_display *display)
>  		 * parameters.
>  		 */
>  		if (display->platform.rocketlake)
> -			tgl_get_bw_info(display, dram_info, soc_bw_params, &icl_sa_info);
> +			tgl_get_bw_info(display, dram_info, soc_bw_params, &gen11_bw_params);
>  		else
> -			tgl_get_bw_info(display, dram_info, soc_bw_params, &tgl_sa_info);
> +			tgl_get_bw_info(display, dram_info, soc_bw_params, &gen12_bw_params);
>  	} else if (DISPLAY_VER(display) == 11) {
> -		icl_get_bw_info(display, dram_info, soc_bw_params, &icl_sa_info);
> +		icl_get_bw_info(display, dram_info, soc_bw_params, &gen11_bw_params);
>  	}
>  }
>  
> 
> -- 
> 2.53.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
