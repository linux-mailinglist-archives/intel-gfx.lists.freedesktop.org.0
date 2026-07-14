Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MaaBDqpVVmpf3gAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 17:28:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0D7756701
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 17:28:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Oa+OcSYS;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2398F10E6D6;
	Tue, 14 Jul 2026 15:28:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7240710E6D6;
 Tue, 14 Jul 2026 15:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784042919; x=1815578919;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=QoraIUZBgGFyeC8SFrVMkgErJEWsvXvrsjoF0bQk2fA=;
 b=Oa+OcSYSwNk0/ZAw/5YqSNfyhrhLvBCpqTTMVNqTV0bpQsWC3YT/61yb
 iWem4Q9lU6ajd0oJEfzs0BBiwtJooRFxE/ENijG/aYnGkjKmdRFchb2dy
 nYDtJrNTwHPGeBNS0ZygAGQn/iu1NkN+Ljd8vQTpbShttcA+SII8JG3ig
 p6OiC/S+W5MsI7UuNuCtzs679eHwNUq4NH/mJrSXlMdECAMfI5XW3Urno
 Uk/KVE1FydJSEaSzGAvhpjLBwA5THUDn4emNq4SFdEVQ87eP3bLTKErAm
 MwcAuewfPnnU1m0QIXvnZL3wvEt/Op12pzCrcctQdZfg0T5VHhpdWnBEV A==;
X-CSE-ConnectionGUID: sKL8ZT2bSt6UpLoFZKqQ4Q==
X-CSE-MsgGUID: HrHDLd4bQzS3S0Ir4ryJtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="102222489"
X-IronPort-AV: E=Sophos;i="6.25,164,1779174000"; d="scan'208";a="102222489"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 08:28:36 -0700
X-CSE-ConnectionGUID: 7jy8zyDCSWaXbmXFLDAqDQ==
X-CSE-MsgGUID: U9qWhL5MT2ujvwSUefpFUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,164,1779174000"; d="scan'208";a="280310488"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 08:28:32 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 08:28:32 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 14 Jul 2026 08:28:32 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.12) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 08:28:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cYRzRgLFaH34U5CVst2UfZFG9BbVzdN5dxSKHui+FR8eQXnSAowrrVHghtrce6dZhbacRdZ9m70rKyDFQX9YxY1C6KPWRyUwMXD5TxKWdyI+XMqwkd1axRfyx+46lzKkUT60uoOK+aBNbA8deq4BXRHQuZ1T7VpbEmXfDLPXEBhL17TvAGD5yG1IhldW2Dnyh0+teFTefrs6CK2XgWnKS8m3EXf/D1TCAlTYmunojSAyZyuxEk2bxgBmAsnT16yLucCVxeVTLu5z5xPSeovDa2Nbyt10fdFQTDDzVPYL6ERw5RFuScEHAqKBmbC8pGGXcWQJlKWto0HqUOE5sg3Wzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=igattHiCrm7Ur+OMsgKNb4GnPmeJ6czfKzazKFjh+24=;
 b=iimPk5g0skxb4jIQqYG+3pgfHwe4Rgeg5xUZmJnirzEUsl0Ix9mvJCbYFyxFROP4Z3GvaVRZ+7V1E+MI15IC8B4tJkvPcFKUbuVkhC319QaUpCFx3B++yCLj75RIKFAGhnsD7i1jT0R8skgvXUbeDG+k81/uqbN/d2IyTHRnX5Ov9PuQV56s92q27f63UMgtvZWkKimuI5Va0a90CR5WAO8gK9207yh0MSLmK0re+Tzcne4Nx/ctnmIJCifes4WBF9SGDPzY0/6t7CZxJ7WVftSdCDv+rLM7rWEYqm93+HJXTO18VNzbuvC316naz0aG2i9IEc7l0Q3499e8a5eATg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 by BY1PR11MB8080.namprd11.prod.outlook.com (2603:10b6:a03:528::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.223.9; Tue, 14 Jul
 2026 15:28:27 +0000
Received: from CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe]) by CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe%4]) with mapi id 15.21.0223.008; Tue, 14 Jul 2026
 15:28:27 +0000
Date: Tue, 14 Jul 2026 11:28:23 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Markus Elfring <Markus.Elfring@web.de>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, David Airlie <airlied@gmail.com>, "Jani
 Nikula" <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Simona Vetter <simona@ffwll.ch>, "Tvrtko
 Ursulin" <tursulin@ursulin.net>, Ville =?iso-8859-1?Q?Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>, LKML <linux-kernel@vger.kernel.org>,
 <kernel-janitors@vger.kernel.org>
Subject: Re: [PATCH] drm/i915/bios: Move a variable assignment behind a null
 pointer check in intel_bios_encoder_supports_dp_dual_mode()
Message-ID: <alZVl0o7uBoncUos@intel.com>
References: <e81277a0-93f8-45e9-9fa4-7c2c2df9c311@web.de>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e81277a0-93f8-45e9-9fa4-7c2c2df9c311@web.de>
X-ClientProxiedBy: SJ0PR13CA0170.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::25) To CO1PR11MB5073.namprd11.prod.outlook.com
 (2603:10b6:303:92::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:EE_|BY1PR11MB8080:EE_
X-MS-Office365-Filtering-Correlation-Id: 11d6b6f0-6b1e-4b39-ef3a-08dee1bc8d29
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|23010399003|56012099006|11063799006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: ++AC2Xfzb1go/ODbmISB66+4VvuExuvGvyqnPpJ4fLGeSHpVJdwIP4XIbnXhkm4L5W33x6aeU1XnNFsI43g2bMSqd8GYxLQ2YQn9Lyayn+DThVicfw1S+74UfV/yPMiwnugf4qyj2YptsDPJ1s4B2zIn6YZH9SalgeiLtkowHmIJCM2meJ/j+jHKWnRSxRFMhUcFEIHeaQvfM5nkfACGViK1E8+udMPENssf0o2UvJwQiX60lMSftgGrqA+FtEgvRDcPTmcAB/U8rpFdQrcnoSlEB53Fk7OV6Z5xtaSC2YgukRoRK1gOAQQ6KXoTBuLJjn/k0dkXNga2ClbfkMf1uesiGnqC/h41RhOT6+EovDxuSGGhRtO228RD/aQj5yqnqMZz9tCWk/ip5vVTmGfT6LP4/KWiPkPmMNAKaBJkpF756aAJtnEciDAW+jZ73RiL3Vd4R03iZgiVwM+EQlJr5aGshrFvvkgqA4v6mT77k8b/iXrEX0PMOgLhbJ3Q7RgqpND70smfCufwIUcUNiC6h2fUQytauvQeIT5aEbyykP88fRY4xpNzqAOn9pGAyGPcxkIwUQD1uk9aFRXM54Oi4GQQJicWGMqtFHw0MCntfQxz2pGFhnPzYzaqIFucel2/8qFNE/Y+p2gkLLdEnbp/OLXxghBT5FbYG/ZW8dhSmTM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(23010399003)(56012099006)(11063799006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NHAyV2d1OE9MM3lwYnEwZlZoZVM2T1d4ditvUDU3T2FPRk5GMCtEZ01iUzlO?=
 =?utf-8?B?Qk9uV1FhaHBXRlBmRDk2ZDl1ZXdLNGxKbDVkZk9ibTNaNFVNejZ1aXMwQkhX?=
 =?utf-8?B?U2hmYm05aDFQMlF1WnhOdjJXZ3BsMkR3YTBIYkIxSTF0VXJBM1BKVWU4QXBC?=
 =?utf-8?B?TUQ1Y1dER043Mzk4UGd5aTV0eERvMjVQMUxCQVRvQkJ1eWR2bkR6ZHFhMnp0?=
 =?utf-8?B?dStRT0NFeDZVWUNGTkNOQXVVNmxPd1Y2M0pXajZoOUxoaHdaVDM4STNvNkgx?=
 =?utf-8?B?bDQ5UHE2UnNPWHVlbjZjZ0pvV0lVYXpXZDFtT1Q5VjcwdzRPMkxEVnJtNU9L?=
 =?utf-8?B?MDFwb1U3TmlDZHlDUzRoSG9UYnN1eDM0QVgyaXFwa24xK0Z6bVFDenJZQm94?=
 =?utf-8?B?NVdIL1lYQTRRYTErUVhFdlF5NUZ3ekVnTXlNSno5MWJZRDNzWmVyd2xkRTVL?=
 =?utf-8?B?QzZRdS9DaUF4VEgzNXhIS1NmUi9OMWluV3g4Tm9rQXVGNy82bnBvcmVsa3lG?=
 =?utf-8?B?Z0lhMXdqM1ZLSGdxaEJCZW5nU2NsaGxkRy9CTFR1YWJxeUtTRENVN1VjSzBj?=
 =?utf-8?B?R0pxUDV4ZVZwODNyWUljSU1xNWVEbml3WmdEWU9zcnYvQ1ZZKy95QkIrNld4?=
 =?utf-8?B?R1FGUEhaUFdieXJXZlVMR25ud0R6R0xsME5zMFhudFJkNHkvaVFwV01NNFRz?=
 =?utf-8?B?ZEFEVk1TZkRKL3dSRElQcElKS090YTBTeGZUQTducTJ0eVN5UW92T0JLaU5B?=
 =?utf-8?B?RTZJWS94QzBrOVh3TGRVckJhUkFBRHlRRG1qTjNjVDgyaXNJSDBESVQwaDZ5?=
 =?utf-8?B?dEhNTnJvUDB2dmQyN3hIRnFhaG10byttSzZhZHhJZGFRbU5teVN4YVpMSXdO?=
 =?utf-8?B?M0Y2NStBc1ozbTlzS0w3NTRVS256MkVkU0JZbGhRYUU3dGpzSkdMSlI2ZkUr?=
 =?utf-8?B?U3lJVFR4R05kekR0NTFualoyZFBVWmhlNWt6QWpCenF5UHA3dnYxbzMzUFI2?=
 =?utf-8?B?T2pFQUkvUEU4SDl5d0F4ZjRpSmxoYUoyU0ZVeVVYaFE1NGZsN1R2SDM2dG1l?=
 =?utf-8?B?ZytaWm05Y2NaUHlReHVtN0xhZmpwR1l6Tmh5UGJlSmdncjdBUFBOTXZDK1Zw?=
 =?utf-8?B?MHRCS3gxb3pDcWtQSlRGcFVyQi9BcmFKNW1wNWdrelFmdU4zRDdJUVpEUVVF?=
 =?utf-8?B?R3VXcXJabkxHZ3c4QzdtZG9ic0xHREx5SjFJb01EL0tMLzlLRU9MYWFJWTNC?=
 =?utf-8?B?ZjBwbnF4SWkwdE9tTUttZTBwWHhCc2xXejl1NkExMjc5NG5XdTVJSysxUStw?=
 =?utf-8?B?SE52cmhyZ0tMeHdWVDhKdjJOK3d2N2JyNU1iWFVqOE1zaU9DREoxbnE3Ynhp?=
 =?utf-8?B?bXRRTHhDSkpsZDFOOEdBanFwR2RGVHpQeGhjc0plelBLcDRxSkNTeFd0V3Zs?=
 =?utf-8?B?dFYwRkk5dGVvZkhCV2VlRlMzTGdEQUZBaEZmMHJwdWVaNTA2ZE1XWE0va0dQ?=
 =?utf-8?B?Z0hCRklUcHVIenFSR1IxZithL1l6b2o2R2gxYXphdCtPbUtpSVBCajVKK2Vr?=
 =?utf-8?B?a3V5OVZmY2g3OTBqa1Vodk5qSzc4cVJPME9Qc052MG1IUFVOOFEvanNxSkc2?=
 =?utf-8?B?NDNiRnhYUG1NclN5TURNTDNWNndMaUdLTzMyZ3RmUFNRUnF3bWZmMHZrbW5D?=
 =?utf-8?B?Y3IrZE9tem54eVl1dFJ3bmNFc1pYMUt0aVEvdy9xZ1hia05wa2VNN0VzSU02?=
 =?utf-8?B?c2lUbmRIQzlabXora01mRGJhdU5NMjVkUWJvKzRMYkZJeFAvNUFRb0IwVS9Z?=
 =?utf-8?B?WUVTYXNRSVFSSUVwTEhzNEpPeXRlKzkxV0hqd0ZQZlhVMy9OL0lNTFo4Uzdk?=
 =?utf-8?B?OTVSa2NmT3dkT2daRm0rUHkwZ2ZsZ0JVeWUycWxDOGsza1J1aWFlQkMzMTBG?=
 =?utf-8?B?VUhsMUwzRm5oMXRjNDJ5SS9sMVZIQUVPNi9kbmJpOVlhODlKV0pBNUpKVys4?=
 =?utf-8?B?QkZpZlk5TnBVM0Z1NkNLSlNkYTQ1K1k2aDJjRXB4VmwvcjBhZW5qbHpnd1M4?=
 =?utf-8?B?RkhpSUdLZGRPcHJnUnIwdmdjRnFJU0gxeDFDejRwVysvN0NBNnJaQUNOZWMv?=
 =?utf-8?B?MmEyT25teHdSRFl4eGZFUmZZZDltMWJkOElQQ25VWk9YZW9JRXU0dG5QYmo4?=
 =?utf-8?B?eXJJNm1tclh1NE1zOUsxZ2tRT0t6anRsNjdjN3VwTURLdnJRTWo4clF0Tkgy?=
 =?utf-8?B?SVJTSy9rMHJKb1c5c0lYTVFNaldndWc2RUI4Yy94ellzZ1dHSFRDMytVRmYr?=
 =?utf-8?B?U2l5dHo4d3phdXg0dmZxUWx1dWhNc1RneHRNd1N1WmNFaWRKMVkyQT09?=
X-Exchange-RoutingPolicyChecked: d+zMC2193TA2PzBDFPVBuOqPIunYPalt6qkDOPh2bdWxk76oltjY+/kcTx7u8auZPrHZ8IvnhrhhHywN8lQDWWhDYpmtLBgbAN82VB/j3i/snPKzEyTMJqZCaJE/LpWiLXfo5XeMy6/YyhE2QkQCiH1OJGyOiWyPl8/cQQfXRz6ZUkECu1v7zDFip1Hag7ZPqpvEDf9G0bzUu7cT6utSlMpxPR/OxhPSs6Mr3BK6T3JzO4BCD0aVtesobJKTGUyhqnVXWcpE38BG4f7TZ/5qEDFsjnHrBGAWraHOGd0FrMeVSUHlgRAMwtlzOIsKhiIPrKR4DqE0IgU1xMYoOUXpIQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 11d6b6f0-6b1e-4b39-ef3a-08dee1bc8d29
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2026 15:28:27.4785 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5FBwI2G5s72+xS4jtkHQzyVZgOUKFNVsZRodRRejigcCYsrEmrxMHXxFPk1IJIYGy31MPNWvko+Aksyj3+atLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8080
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[web.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,gmail.com,linux.intel.com,ffwll.ch,ursulin.net,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:dkim,intel.com:mid,lists.freedesktop.org:from_smtp];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8E0D7756701

On Mon, Jul 13, 2026 at 04:05:53PM +0200, Markus Elfring wrote:
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Mon, 13 Jul 2026 15:56:46 +0200
> 
> The address of a data structure member was determined before
> a corresponding null pointer check in the implementation of
> the function “intel_bios_encoder_supports_dp_dual_mode”.
> 
> Thus avoid the risk for undefined behaviour by reducing the scope for
> the variable “child” behind condition checks.
> 
> This issue was detected by using the Coccinelle software.
> 
> Fixes: 044cbc7a74c136f12a80c855cadd1b085084aef1 ("drm/i915/bios: Nuke DEVICE_TYPE_DP_DUAL_MODE_BITS")
> Cc: stable@vger.kernel.org
> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 97cbae2e547e..1c4760373514 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -3514,8 +3514,6 @@ bool intel_bios_is_port_present(struct intel_display *display, enum port port)
>  
>  bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios_encoder_data *devdata)
>  {
> -	const struct child_device_config *child = &devdata->child;
> -
>  	if (!devdata)
>  		return false;
>  
> @@ -3523,6 +3521,8 @@ bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios_encoder_da
>  	    !intel_bios_encoder_supports_hdmi(devdata))
>  		return false;
>  
> +	const struct child_device_config *child = &devdata->child;
> +

does it compile?

please keep the variable definition where it is and move only its
assignment after the null check.

Thanks,
Rodrigo.

>  	if (dvo_port_type(child->dvo_port) == DVO_PORT_DPA)
>  		return true;
>  
> -- 
> 2.55.0
> 
