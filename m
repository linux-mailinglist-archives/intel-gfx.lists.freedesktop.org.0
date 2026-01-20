Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULWDMN+jb2n0DgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jan 2026 16:48:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7643546B0C
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jan 2026 16:48:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 185C810E624;
	Tue, 20 Jan 2026 15:48:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iHtNry10";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3180310E623
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jan 2026 15:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768924123; x=1800460123;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=cEuZxjJBXYs75vGWCLxA/zRk63osauqLKQ8/Q74uKJI=;
 b=iHtNry10ktO+U9N5vT/R10eCDJylmpoCm3y4NRApMadySOYMkkjaA/h2
 BAd3ltH4WP9PMyuTQM0bBtc80y3wXJz8YhTCI3wfAGXIbCYVBs+OBRS+W
 shB6+cQnvegRvzhYwUfDNVcZBomK3d6MnTcTjQ3Ni92cnrYryH1QYswj6
 VLwH3E607JDWIl3kgg60PFcanV+UVaL/1NdBckQpK0p11cBmVe4V8eLvb
 geGqxJvoufZbdQUjov07gGLYt8bUxVzJFQ3dVcSzHUvEhDb53IqFpbR2K
 OZXwF3ccgzEKTPDKtIgCSdAZ45z62EwrmeAIxqN1ZwWKgngbBw17rvSEf A==;
X-CSE-ConnectionGUID: ALZtnKvaR1mYWmXiZZpT1A==
X-CSE-MsgGUID: cSI+WtZ1TdSwmskG4Cc88g==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="80856937"
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="80856937"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 07:48:43 -0800
X-CSE-ConnectionGUID: X+3JLkvfSaiWmtl+copmnQ==
X-CSE-MsgGUID: O8Ifyv/nTA+ZPu4zXHw59g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="211164163"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 07:48:43 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 07:48:42 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 20 Jan 2026 07:48:42 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.54) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 07:48:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RzYlMa4D+ClYjE+lrQDhBA0ZhgMg9bs1YoOakebGxLDxRNu1Y6ukttnyG+x/pkiSVAWoXPpJRyEye//uB/MZ3Z3GrFK6JDHFDSn7hAAlzdYyemRDjRIfKU3fvJSjrdc3z6WCXD9b5UWvGu66xdG6hOciSBVQ096AeKDxd76TL46gwvAcWjPp05lVGGOFuPvAlaBxw2z25lxbHZTJExZEC9G0Lp0TIYhhVXg8OuW+/7sXKj3uRgiezzldFjWiNIVZBzSB5IxzWGiwATwtmSwe4mSKAizfOdLCkQnx765KohDqE2+mmK+cJUbzlBVKxKGgeWldD+qs3GMWk8/kK6b9hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t3wsHVGJj/Cq2M48Un8aaJFJ+C/4WkfV14QVTA3EMtw=;
 b=Lzd93Hbjqm++6mOJeBIAJIO7wnL25+07VMdYyZ3TFKtjOgUpfZw6FA58WKwepRklfxixJjvu5tDiKs0NPwLcDK0GG47aWtA5RNonvxfHsXgFo9tCBILgTnXgFqiWjOZOYppwqWSiZQ0w6UU8aLDia3eXzfAmtBLtqDXvV9AFyDimE73POJfzCXyz1wr6kN1CkqOymawYtW/nvjVp0g6wbJ3vDJMkkgQG9Yh42HFJGyuj6/FRO9bome0sRAr4YA/GcuHVEPrDd+U0aabMISY33ofpprMJZ6Pe1UjCmOjIAZvz32qfawuXHKUnhnC33gipQkxPw4Lqw9PMPjmvVovUhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH0PR11MB5205.namprd11.prod.outlook.com (2603:10b6:510:3d::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Tue, 20 Jan
 2026 15:48:39 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9542.008; Tue, 20 Jan 2026
 15:48:39 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v6 2/2] drm: Avoid suspicious operations in
 drm_fb_dma_get_gem_addr()
Date: Tue, 20 Jan 2026 15:48:24 +0000
Message-ID: <20260120154824.1864085-3-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260120154824.1864085-1-krzysztof.karas@intel.com>
References: <20260120154824.1864085-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: WA0P291CA0013.POLP291.PROD.OUTLOOK.COM (2603:10a6:1d0:1::8)
 To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH0PR11MB5205:EE_
X-MS-Office365-Filtering-Correlation-Id: 252b7893-98ec-42dc-8923-08de583b60b3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?WZXEnezpVsUf/bHhRmgywAba7EVtpvnIlGNrddsU4nVswH7mG+3viv4rtZfa?=
 =?us-ascii?Q?11lZmAXxkwDohD8MD7XgVEVPwHIPfL+4K/u7/QLv6XVhRsGuAvbviZa2FL3a?=
 =?us-ascii?Q?25kVkahqezoWE04x3a6vrJzNFRDQiSDMYCTAJ7gcBcDt/23sEp/MqTeEbZu0?=
 =?us-ascii?Q?TxKWU1Ma3Dy1mLAfOGgmkI7ivMmoQpH9gN08ON7AJ8mtfQ1QrImfPQa7TbUd?=
 =?us-ascii?Q?UlJOFx0Ed+ZGnfe0/EIFe2vVx5aIX5aEpNfdda1DuqsWJCrA04GL67FCVHEQ?=
 =?us-ascii?Q?lpECUoyhddNhOCWpqx7BavcXYnM2VSLc2fkePm5Hb/INrv2NfBHfNkl0c2j5?=
 =?us-ascii?Q?F3EfJSs9UIr/eofyH90FcsO5ocCd2bUdJC3W9WMLrXfjYmej885qh+5yyR7e?=
 =?us-ascii?Q?7/sfB4k44qInbE4mGpnaA31Orjf335UUeZSiAGhP83fKesCHj1ytPSGWagir?=
 =?us-ascii?Q?nr0QbmpbMmdqAh+ex9b/yartmL2Oj+N0KOa+zy3hsvXwxUd4ds2A5HgVgLjc?=
 =?us-ascii?Q?yG+TfQeS8OkgYLiCtP9zqiBbwpfGqKHsLx29gfWLRO/g2eq0K8m2HCDZp2AO?=
 =?us-ascii?Q?c0pHV70LHMLMXf+UQwitRe+1XzCQEWud2Fji2H7q/UwcqhYvbZKABDHiDcau?=
 =?us-ascii?Q?zi1VxjAzRh7PciT3z2RePTfZ/IUiGRSFvGo70ahDcVeKmN5dzr3aBJhribAI?=
 =?us-ascii?Q?j39degFBnlsUMJAIeYfwP+tfOD1IT06OqBhS9hmSw9iHRqMUlVrllWk1TphA?=
 =?us-ascii?Q?5W6osenA6CBbCzK+TQzw6yrIRUPeS+EoJFJWURGt2Esn7Cqzdxc+LW6KyJ7m?=
 =?us-ascii?Q?NgnH9z6tjAhTTzPudtp6WKoVcUGIKMkYG2DG7kSJPVSTLlpVQ4LR0CdAt08G?=
 =?us-ascii?Q?loXU73VtEQ/two01P+9QhgwkJPRuQZkE8OhACxjiI6TR8+m4J7MbrXBLPpUJ?=
 =?us-ascii?Q?OlRV2Vh4PA1iyEuIk7Q4VcpF4AUXbp5+ifjyH+rm4zHI2LLsqqR0sJczop3w?=
 =?us-ascii?Q?EGDwO+vznzTGPi2EakJyhcgPp54gAq5HUeFKZPgbaNRkEQaugXFrS2Utfv3p?=
 =?us-ascii?Q?t3AfV00JYsA316me6GGoFy94o8eNhESiOhwewR6XWXLRvopJbq3jiy54FXeQ?=
 =?us-ascii?Q?/yL78MTVa3S05Yp9Glbrh6tsDyJ0E1cmF4tnfhFLrM5y4chB6Wvcid4MvM9z?=
 =?us-ascii?Q?HPaCpSirv/i32hC1tmhwLnsb0/QN8u8QzxR3WuBKbdYnX44+vwgTlMTtH2wS?=
 =?us-ascii?Q?/1ZG1k5aleHqAsQsgNXyfNDxCks0TkYIOOcV5DaqF6GXDe+uamKK/J74JjDw?=
 =?us-ascii?Q?eKOKYsF7QytHhKIixwALNPLTd7e5IZ1t/fKtgjssriOr99fi2w2zgL9PIf9T?=
 =?us-ascii?Q?P3iwteZCC+mWw0XtYFcIwWNrFOs3esXYmigsI6t2/VAy1M9++vDlNrysv57B?=
 =?us-ascii?Q?od0dBGiECzNkEzSFujkkZNEtI8SM1t5Z/gze+N5Rza7/ARVFWe75um//Eeyw?=
 =?us-ascii?Q?3e1S6KxSx9uChCb+X0NREGqGxuV1Qr5jTS8vMXQJ57AuW62TvQl5UlI6DmTK?=
 =?us-ascii?Q?xGPCYs44h0MS4u9VR9w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iCTty+WhfeC3rVunO4VOzBiS0BlsdunFjbZinqCVtI2aeAkmMo+Seo439Xqd?=
 =?us-ascii?Q?82EAzAXkhR5aA2ma+nLLPiQ0arnxirlP/JSwR3ToIvHRjJnsiLfGHhQs1Jtg?=
 =?us-ascii?Q?smH0rtkFUhdjToaJcKgP7zyU5HdSWUb0pC0qWRjE8gmM/dMd5T6QsV+XOhHq?=
 =?us-ascii?Q?iik/9j7jhAp70XSCIGvqFCAeevUhS7Dx+z/inblTvuT2fGcjWmeEBR6iK1LI?=
 =?us-ascii?Q?o8L7j28Ntxj7WIbZ+eqO8AdXYqusoa/lko8YpGujzu+yMqfQF7q0FJw5p9/L?=
 =?us-ascii?Q?JiUPgJSqZqxs511RLW6H4/HuEI6AMiv7WrdqPYm2/TGE1oZh2ysfoNPmSTqM?=
 =?us-ascii?Q?BTYRIgywf08iapmU7CAdfvtgLwcOmcHNbF3y22NSwCC5/d2gRpvd/gV0f7iI?=
 =?us-ascii?Q?zJCT7gAdbouMvswHc8ouY0usnpgPJr6untt7QxZMycUuzXmQ3mFGh5gD3VIW?=
 =?us-ascii?Q?/0DX3BUJSNCejRyIFoux8k67rMZfTADCuan3leFscNAuhRW4LM4HOhZFYjKS?=
 =?us-ascii?Q?xNCU7FtBPTKdrE0awuWRrtCpHdGBPBmu1ARc8WyroXhosW3ZfMjjmos3ID81?=
 =?us-ascii?Q?AMHQp8d6LQzzQ1Npdw8NJuP3RpwUoaQlsx3EEa4qEQHy+RvQSeLIid2WYve6?=
 =?us-ascii?Q?TxNFiKJLuOudlFn1gSFyULrMC7uCwsd9ql7Ymr2hwvTcPKDeNwtcuyu4BCLI?=
 =?us-ascii?Q?UhXF6V5zjSRZJjihiYnLteM+aSS5SxUROtxjn8xELFYzlJgOjMjaVQftsCz/?=
 =?us-ascii?Q?xEOGs55VJrqRq6KnBXZKiZ93fssWn9zuYcaznWPOuh1uOkWjY2F/GhfsIeyS?=
 =?us-ascii?Q?/1m5/WkjLnw6AvaiF1IMsRkoJVAc77+b3iFuVVZqYukX7LdV92gF9SAvfDf3?=
 =?us-ascii?Q?o33wHtIpgmEyrDajAbrmqQb5fvDEnhLKix8/EniIYve1PTMjqRtjie+LF7aG?=
 =?us-ascii?Q?KU+RqkmHLEa13H+IIfv7G3ok5Fs/0bHxpG//VzsMmE3jBny4eFb3vKa37oo8?=
 =?us-ascii?Q?BIRx3n4wfc2/Uifyxh67CkRTrUtyvlnUUgSUNR6utQ2XZHL6l5y1EnxGpMUL?=
 =?us-ascii?Q?v91hyPqJrMVLNq/i5nETbnA1psh5fKFkie35micKwVM7JaVy6a04Jyh4Rqks?=
 =?us-ascii?Q?ZU3rP8aRDYihn896oNWmvDfR0AX9F3UJ3gIwHYGLmIEXERY9+twocoXHKdMi?=
 =?us-ascii?Q?+EHTehHWdRteLhV8NaOMrOpk6c4XqIRM4aJv9m23qr0UOlhNBwCTqs28KRkx?=
 =?us-ascii?Q?FdY9V0L7PDFzvvwvGptFrq5ImI/zTD5aFxwqGCDLpMPqbntHe2tb1L5G4+mr?=
 =?us-ascii?Q?vXKD5yBf5bFH4DFf/9zpQK1Ln1FNLO1uByoCZwoF3ujXfq8tJzOJg9qH75uI?=
 =?us-ascii?Q?NV9GYBX7ZI4oHMyLj3dzqYcLILZNhWZ6Fs+/NvcAhTiY0qX4FVERGMKNMRyV?=
 =?us-ascii?Q?pBGY9laUJJY+Ky2VdpPYkKY4GwfBuFFPSZOnv+HnRRMp207ZUmiAh5iNScpx?=
 =?us-ascii?Q?7rQJL3TYum7eNq2e3oS/1USGr8MBxYL4+MCjFD9hEPgiRSQpiLMB3Db/d39s?=
 =?us-ascii?Q?pyhTqp6oBqmdmqjy+B8rZEzdaCIvHqTFqM1BmPBcKPouAK8vkobqsxpyn07t?=
 =?us-ascii?Q?sRTB+d00UsunPtBUIcodaSPohhZyZgcCeknbjBzoszbtnLWtkqkurK9jzdhb?=
 =?us-ascii?Q?tcD6moDknDrhDKUXgg1dFGqBgdNSTYGV81z3hy0D4juYK8lu4VPaY1txQ2/+?=
 =?us-ascii?Q?HeGMtq8A1z80LkSOXJmSwqsg3NPyO0Y=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 252b7893-98ec-42dc-8923-08de583b60b3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2026 15:48:38.5797 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RllSdBopf2msudEzKdRjLFGTjQ8ZC5n5ykyfAxuLucKr8fnBMcSdiyAqPZV+n/Z8hj/jWJbnVFR5M1MMtTWyY+PM8Ej9Zl3gbwnEyXZzWfs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5205
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7643546B0C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In cases where dma_addr is a 64-bit value its calculation is
still carried out using 32-bit arithmetic, which could
occassionally cause a truncation of values before they are
extended to 64 bits. Cast one of the operands to dma_addr_t,
so 64-bit arithmetic is used.

Cc: Danilo Krummrich <dakr@redhat.com>
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---

v6:
 * clarify commit message (Andi);

v5:
 * take this change into a separate patch (Jani);

 drivers/gpu/drm/drm_fb_dma_helper.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_fb_dma_helper.c b/drivers/gpu/drm/drm_fb_dma_helper.c
index 2b2513188001..c3b9e49bd755 100644
--- a/drivers/gpu/drm/drm_fb_dma_helper.c
+++ b/drivers/gpu/drm/drm_fb_dma_helper.c
@@ -104,8 +104,8 @@ dma_addr_t drm_fb_dma_get_gem_addr(struct drm_framebuffer *fb,
 	block_start_y = (sample_y / block_h) * block_h;
 	num_hblocks = sample_x / block_w;
 
-	dma_addr += fb->pitches[plane] * block_start_y;
-	dma_addr += block_size * num_hblocks;
+	dma_addr += (dma_addr_t)fb->pitches[plane] * block_start_y;
+	dma_addr += (dma_addr_t)block_size * num_hblocks;
 
 	return dma_addr;
 }
-- 
2.34.1

