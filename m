Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD19BDFF53
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 19:55:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E5B210E8AC;
	Wed, 15 Oct 2025 17:55:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z9qFrPD+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F51F10E8AB;
 Wed, 15 Oct 2025 17:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760550950; x=1792086950;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ygJQTbQVk1oxVvPUuEWRYl0dQxnHjkC+cMccSDurDiU=;
 b=Z9qFrPD+g8V4CQw5QB4P8ff1ZrtzqO7xYckC19iuPCRs7GIK6p3tGkpM
 2EZ1pzqwJGJ+9t1wP1MBa/iBmHprjRAaY1YMTNtQ9P0troO9v9cf7to6+
 B7FOfil5zJAYmvg9DKuqCCDz8Y2ztf6nvtRpuqw0nWQCxEvN/lnShyS3h
 VobNV2WDKUtVbTrvKbdj98fOXheB+xgeRifUE7Dap8rxzmtGtKCm6FcmP
 YeMh5/fYTQ9N9j5L2lQD8k/J7Yv3HYLV/7+rutWxpyd90ueAHZReCSi79
 EmnISJlC7/qiRpZgPE4psLjM9tS8K70GvxAmAhCqK4ExRUO/iSbj1RcBR Q==;
X-CSE-ConnectionGUID: 3lZqFDTFR/eNPGmiYWRF7Q==
X-CSE-MsgGUID: XkWtlzYHRcazdHFh6pJFKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="85352530"
X-IronPort-AV: E=Sophos;i="6.19,232,1754982000"; d="scan'208";a="85352530"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 10:55:50 -0700
X-CSE-ConnectionGUID: hKSg+aZFTmSk4ndLFrkQfw==
X-CSE-MsgGUID: WY8qR44LQSe4YIY7x/PCxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="181372246"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 10:55:50 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 10:55:49 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 10:55:49 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.59) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 10:55:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iE/RkSgi2nl7dIqK2ti2oGs2d3Uxo0P3Ghp+vvZzp6ZAkzYAk7HI0pr3+g0OCDe0opE5xzEGJiTfNpxMxnutKQRxvWu6Ch+BImZRnRn3lf5q9Sdqgo9njb+E5l3XEPi7OAE4u073twFQXkGo3TsVCUnmD5ngPnQGr1inEg8plLcmzkVf/V1QEl4g3uKXGgrc57y6R0yp5iN9jL340BUjjI26VTSRZ13AQMV0endvVM3RZYozvUMeWsxdhYZjxbdfb4sQhRnjXRx6ASDZwn1C4mSOOQWCtvNhdT6Cy44rMvl4HAY7i4AAfNdAn07Vxcebw/14UfU8y6gkQFxgE1jF5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YLu+1Q32lxqV0Q7l8FrNcF6Q3v1uAUoBd81eBAeTRhY=;
 b=hkwsHD9BN8TDjh/Tx7QVdMSTaJ1ZYwjTa20aNUYL9m826kAjKhJ8Xi3V2sMXAJmTQIG0fL8cbXYrvBKulnyFfQv3jO90fm10WrZaMaXvUHkC831bwk/cblKD2ZeYWsbORsjmhGytGjexCaNbecn19DiMLWl9JKdISZz2XIY3LhS3+CFKaQ0gYRMV5+lPflV1hg4EeFoRtWNGvcVxdJL2k+X8bdoPrFi4bl2GkgaaYmcH/Lm81GSSqS492ROfPp8trkEFRsnEb59eFi2ORycOdubmrcXxI/YnfF5svyilDlFuYluQsVpNZM+vDZ92aCP9JQrBQuYIfof+Y/o4zPGO+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM4PR11MB7376.namprd11.prod.outlook.com (2603:10b6:8:100::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.10; Wed, 15 Oct
 2025 17:55:47 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%4]) with mapi id 15.20.9228.009; Wed, 15 Oct 2025
 17:55:47 +0000
Date: Wed, 15 Oct 2025 10:55:44 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: Re: [PATCH 07/32] drm/i915/xe3p_lpd: Expand bifield masks dbuf
 blocks fields
Message-ID: <20251015175544.GO1207432@mdroper-desk1.amr.corp.intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-7-d2d1e26520aa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-7-d2d1e26520aa@intel.com>
X-ClientProxiedBy: BY5PR04CA0006.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::16) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM4PR11MB7376:EE_
X-MS-Office365-Filtering-Correlation-Id: 924f1b53-b373-46cb-9f94-08de0c1411d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?fo9qvV4hiCefbZG9mSgby32Sv3jACpIAKGJUE2gOhuajeqnsVr89gU0To7GS?=
 =?us-ascii?Q?6+HjWfN99fep/nFNYVvkQgNJtfNTeOhjLBtk/4K0ukVB1Ulm5tLpE6syVPcm?=
 =?us-ascii?Q?hYBQ9Kfv896A8oobnZQiZvQHIA+9jYqzs7iXPbJ4GoW4aQDYSwLOWEhe0zm9?=
 =?us-ascii?Q?Aa1dbaficIUGiUgyL17rxyub21OszdTtT+6IdCB4npKe03OL1eqQLVpZYRck?=
 =?us-ascii?Q?BEn1YS1jGj1+08V9FQb5j0/sQT+Olzn4xZidUTQEWBqJlfut5GYrDZ0l6Sah?=
 =?us-ascii?Q?ER8EVVuI+wws1Sx1s6ZsFkm7vWIGkKbMuHhaE0KGELryWtsoVhexOQsFyURW?=
 =?us-ascii?Q?pDDg1pJLVYkV9c8RGZkGCYGx2Cw3SHKfpvrLYdd8LSRaYPPCydpkOaS1aB2E?=
 =?us-ascii?Q?95phBkEPlSd8X5BT+gHjqAFBCtWHPNPhtnkf/RHWcZxXnrk5sGBtv3V0TZFa?=
 =?us-ascii?Q?gGW1cTyVarF+aQADjRULWhssB7BYlVMuQ0xyNgln4Jwdxj75vtB40fA0B3il?=
 =?us-ascii?Q?1QRMbDaunqV25EQ7Lk4BPSKVFYyWsLLmYBtc4msRTZpAp9Wf555tPpAXH609?=
 =?us-ascii?Q?86CB3+N9Zt5Uoh64TnOf1nzqC2HTT41lanJt5dL9C8lHwG9Gmgo79tvaRQb6?=
 =?us-ascii?Q?OLfQHQs4fEFGeOzPHXu3JvDI5zzT5BRT0Zglsj1WCOKidIic7eZbO+ToNpG+?=
 =?us-ascii?Q?AYY7J4IPETDbcw8Lf9SwexcfoV+QWp1qfpsyqIT4RCIUnoS7DUKItSvnRQkV?=
 =?us-ascii?Q?7lu6RsxSIElNjOJ/F24ANd1cUhlASxwBcJ11B1bovzRy88ch5G9/WeMR6n1b?=
 =?us-ascii?Q?NpJYMuq9iBw9UfqwJGrebXsKvbMSu663OZbhZnbewZa33OK3J5wWhNV/FtZb?=
 =?us-ascii?Q?IxWyp1yNrgmugYElDQooZBibcODq7AXQjMn/+XfMPnt89Z8bOjzhAvFt9P1b?=
 =?us-ascii?Q?sHEidhpIeUhmUH/Cx8MGJYqkRRgHUW/CE7BXBPwsVNJiLv5C5i3Pr/Ifj4SD?=
 =?us-ascii?Q?EDrC9rF+cEsjV38A++roMHdwTq8rUmCJ5EI2iXfzhSepKv2rxxIlVdL2T/SP?=
 =?us-ascii?Q?iZxdlBYhNecQJoLzmULv7qm7CrUFHycr535XFG8IaNZBLpmkMbEzI4l5V3/c?=
 =?us-ascii?Q?Wk2OOKH/LMMFmF9ImENlBkU3+Q3IbJGCPjm3e+94RTdSYgZ+ohUxQyB4bm/m?=
 =?us-ascii?Q?V2Tex/BFtt+vab4v4Bcd2iexxUeLzjyBdLMa5Uph9PkqMwLDnG8BV7kim13D?=
 =?us-ascii?Q?hPMi4Y2cn4Lc3vh633B9pu+5XGJyF492WDSOOCCtMjs1/vdBTdfG8skldA5A?=
 =?us-ascii?Q?8Sxg03A7wsjZI4qcH39mY/jR6ALWLTieGUfSomARb7mRlgLofhD3D2WbMOoW?=
 =?us-ascii?Q?xZ6jqPEjSu0hrOqfBJ8zXSGD1YecvZlQ3dmIe/t0ZTjQ1Mwgxn2DER0M54cj?=
 =?us-ascii?Q?NYYh9W+5nLjddtN+GfGxaC4ib03QirZ6?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NlrW/WB5CSMxshn7NL4EfzpQQLiSBICHOHo3QLpcBJsAdtHWvqDqwyPe+0ic?=
 =?us-ascii?Q?mNBiej3KsGyJxXdz9/CgRSukA100gmpk8xcSuTcygM09Xajb826tJJHkGGk8?=
 =?us-ascii?Q?PQ51HbeyW6uXDHEF/OnJnOn8PDaFdx4kynKdwgCbWuiz6iwzNPLigEiSj2Vi?=
 =?us-ascii?Q?n9d5noVOn5I8KAyv8pcCqzLmoIoowvM1d9ATHKFFLjRyKGr/Ve7msZvTMdpV?=
 =?us-ascii?Q?zynroE3vOMBBsKkgRLYfiYUVjle6Cc0KeTA3VytOiBTDo55uVHLAKB6K7ZTC?=
 =?us-ascii?Q?+CZoCQ7bd+xP1BugiEPj2XkSbGZdWUwwi04H6YWlw2mp0yyIFMLF8oGa5ZmT?=
 =?us-ascii?Q?GuO6zcsj984CB8bvclA0jpr3TYKLRt0OTMn6cwFLKBE6TUQ7HdzqsqQ+AzQ6?=
 =?us-ascii?Q?jlWT5QlrYJJKveDVVgBtWyfnD+F+T5ukEpRNQwkSBA0bWVfAdaKacV4F7Sqg?=
 =?us-ascii?Q?PABUJM0Zb5LS5N9Mz5ZUSJ8ZsSyQcMkFLAufNV1mMR+tdvcaCQq82y0UVeKw?=
 =?us-ascii?Q?m+hup7YmQXuvBG4tAot2O0eQogmozOCwbWhDm/6O9I93OWR1MBZUsdrDN3rX?=
 =?us-ascii?Q?ENxVo+J7EtjvMdaD2sC+8x9OAcw4JGi+tHZJjXRkPQHrxh/WKN+JxI7itxP9?=
 =?us-ascii?Q?M6/H+XFy53lUb1+vU1ZnZW3Tu0eZOoV2zk+Wfs2i4++EX25RZpqB6woxfgea?=
 =?us-ascii?Q?6pKlrq6l6q0FuTQsQeExO4764shsHVlClkPD5igRKympnApocDpkgs1Bp3px?=
 =?us-ascii?Q?h6FHWKvRMck7dBtAhEMr98DxAMLXXOOo9MPbO/LLU+u7VLVRtBlSmkrGainb?=
 =?us-ascii?Q?ZSKCOkqaGFN2jTSZjVRlXfPbsuWLi0uoYH3YGuf6Ga5fg/eQxCe08ArKLzqJ?=
 =?us-ascii?Q?KPXI3apB5CGPgqNkjhGXoqxogMlichXBaB0bvRQpXFzJ9vTZdfL+Wx68Aw97?=
 =?us-ascii?Q?0JIW7Km5ukQxxdf1NugSwu7s7aG9k7VjXFABarzivxl1AgsnB8tEvGdwGuCi?=
 =?us-ascii?Q?vT/PqBGNHwnlMeupTjvFDdxXGj3ksbiosnRLpx2Nd/XWauDWyHiIV7BM4tgj?=
 =?us-ascii?Q?ZUzuhicZJn3WTURzljl5j2HsRndhpqViLPgKd1EFbFJvPmYT1oMOT2r9kFkq?=
 =?us-ascii?Q?qkoEn/95Xm25i8fD1Ida4HepFKU11YmpdVYiaKrf9nTSbdyXHwx/ib5tTdIK?=
 =?us-ascii?Q?4HkpXrkZzbnFxuJcQPLXNsOt4/KeE1pt/IMls6HYp5Av08c6qjGYztPiDBMh?=
 =?us-ascii?Q?mkguNKfrDr7USphA4STeBxn4wkU5jLWtS2cNj8zTrBgUmFCa1X1HQTw7huXF?=
 =?us-ascii?Q?H7qSKs57QEr7tE8hMfB+Qs8oTrY/xf3MjudEBD+0HBXoukDSa9kCXtCWLFtr?=
 =?us-ascii?Q?lHgAiPosikjFOoXzcDQRyShrfn+seZIkUAdqs2g4i5PG6mkfprELCzLxaAHO?=
 =?us-ascii?Q?cp8IVX087HPzq37l6RQJhwY3sohbUrKQgzEVgLja1gf8MBabUybjVgiKxs7k?=
 =?us-ascii?Q?tzHSZa1SM7D0i6B7aBCHGfXZqeNCQzQC50S7v/9ThinwM/rrww77vRrZdSMg?=
 =?us-ascii?Q?fuHM+EDHRau3jkjnljG3hPc090EjMsIYEzaiZX2Ez1DnBV7XvAjXpGIav7s7?=
 =?us-ascii?Q?VQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 924f1b53-b373-46cb-9f94-08de0c1411d3
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 17:55:47.4901 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1mQW9PDSJKnmV4dvdsdbkAWstQOs61AjHvju28cYOl2UC8bC5Sqn2HYQIUZGzxp/ZLOuCPkH4rt4mXHHK8V7JVIVoSujHSlDDnAV9gcTYy8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7376
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

On Wed, Oct 15, 2025 at 12:15:07AM -0300, Gustavo Sousa wrote:
> From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> 
> On Xe3p_LPD, the dbuf blocks fields of different registers are now
> documented as 13-bit fields. The dbuf isn't really large enough to need
> the 13th bit, but let's go ahead and update the definition now just in
> case some new display IP in future ends up needing the larger size. The
> extra bit is an unused bit in previous display versions, so we can
> safely just extend the existing definition.
> 
> Bspec: 69847, 69880, 72053
> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_universal_plane_regs.h | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> index ca9fdfbbe57c..479bb3f7f92b 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> @@ -324,7 +324,7 @@
>  #define   PLANE_WM_IGNORE_LINES			REG_BIT(30)
>  #define   PLANE_WM_AUTO_MIN_ALLOC_EN		REG_BIT(29)
>  #define   PLANE_WM_LINES_MASK			REG_GENMASK(26, 14)
> -#define   PLANE_WM_BLOCKS_MASK			REG_GENMASK(11, 0)
> +#define   PLANE_WM_BLOCKS_MASK			REG_GENMASK(12, 0)
>  
>  #define _PLANE_WM_SAGV_1_A			0x70258
>  #define _PLANE_WM_SAGV_1_B			0x71258
> @@ -375,10 +375,10 @@
>  							_PLANE_BUF_CFG_1_A, _PLANE_BUF_CFG_1_B, \
>  							_PLANE_BUF_CFG_2_A, _PLANE_BUF_CFG_2_B)
>  
> -/* skl+: 10 bits, icl+ 11 bits, adlp+ 12 bits */
> -#define   PLANE_BUF_END_MASK			REG_GENMASK(27, 16)
> +/* skl+: 10 bits, icl+ 11 bits, adlp+ 12 bits, xe3p_lpd 13 bits */
> +#define   PLANE_BUF_END_MASK			REG_GENMASK(28, 16)
>  #define   PLANE_BUF_END(end)			REG_FIELD_PREP(PLANE_BUF_END_MASK, (end))
> -#define   PLANE_BUF_START_MASK			REG_GENMASK(11, 0)
> +#define   PLANE_BUF_START_MASK			REG_GENMASK(12, 0)
>  #define   PLANE_BUF_START(start)		REG_FIELD_PREP(PLANE_BUF_START_MASK, (start))
>  
>  #define _PLANE_MIN_BUF_CFG_1_A			0x70274
> @@ -389,9 +389,9 @@
>  							_PLANE_MIN_BUF_CFG_1_A, _PLANE_MIN_BUF_CFG_1_B, \
>  							_PLANE_MIN_BUF_CFG_2_A, _PLANE_MIN_BUF_CFG_2_B)
>  #define	  PLANE_AUTO_MIN_DBUF_EN		REG_BIT(31)
> -#define	  PLANE_MIN_DBUF_BLOCKS_MASK		REG_GENMASK(27, 16)
> +#define	  PLANE_MIN_DBUF_BLOCKS_MASK		REG_GENMASK(28, 16)
>  #define	  PLANE_MIN_DBUF_BLOCKS(val)		REG_FIELD_PREP(PLANE_MIN_DBUF_BLOCKS_MASK, (val))
> -#define	  PLANE_INTERIM_DBUF_BLOCKS_MASK	REG_GENMASK(11, 0)
> +#define	  PLANE_INTERIM_DBUF_BLOCKS_MASK	REG_GENMASK(12, 0)
>  #define	  PLANE_INTERIM_DBUF_BLOCKS(val)	REG_FIELD_PREP(PLANE_INTERIM_DBUF_BLOCKS_MASK, (val))
>  
>  /* tgl+ */
> 
> -- 
> 2.51.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
