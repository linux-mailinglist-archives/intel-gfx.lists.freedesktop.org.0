Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F3A9A6842
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 14:26:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62A5B10E2E7;
	Mon, 21 Oct 2024 12:26:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P7l81d+e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C7EF10E079;
 Mon, 21 Oct 2024 12:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729513567; x=1761049567;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=cu/xSoyZjB7dUyRd3jiAcenDnsT4qW4ICVp7skPI4CQ=;
 b=P7l81d+eDRgNleHOvvY6Za94+HqVugHrWwXO4VWM28rdeBTOF38qqrZw
 jQJI9cDl1kVH5E20+X6If5HNbiImAkJmmsYgrCiwibk5t2yP5Le+TRQ7k
 Ow185hGfXL2VYccDlqnOpydireigVeCOowbVBaJLPjS+M8jqP/icaGqy9
 rAkcMry2Nxwo1l/KdeGWEOhKAj6qIptztwJRpuyfh8L1KTqkATZRNn5GQ
 2AYqcae80TcN/EgAB2dc6PmnqKFPNsomA2sncvBZ+njbRMGaop7fV8I+M
 ++pYegmlY1H3hpvZiv9bUwSTJudNZK/IV9OvcTw0xfcB823d1qDznDt91 w==;
X-CSE-ConnectionGUID: mbXcIPuVQOCKvoa2p2z7Jg==
X-CSE-MsgGUID: WbcDLvEBQ/uBBWSDWwhkNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40118595"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40118595"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:26:07 -0700
X-CSE-ConnectionGUID: E9O3YiWOQx6Q6DbN0k/65g==
X-CSE-MsgGUID: TxpCVVOwQFq/nnV0GIND0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="79455318"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Oct 2024 05:26:07 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 21 Oct 2024 05:26:06 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 21 Oct 2024 05:26:06 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 21 Oct 2024 05:26:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mtcQCFsGg91zdbmsudJgyM6WFg40w/T9WqcP0KGNaAkmZ1R5KBDK8Ow2soZjq3IiJ/+ea7DdFFi47mpf2aLe/cPjpqgCQNhgGSwf1lmpUpYvsyiv251waKpmfeSXmYIOyaEYEItURixw+X44wqq4a4cCqMGQCsn1QiQ0HEs+Yd3bPdlEqXhIaL5pNoi1IM3vPyX1j1MUqhCHrVa5cXyldX1XFDYQNfPzp2EpTGIF5mqby2BtZoqrFb6GzHDeAtcw6FZYNN5/uNHbLiAtXMYC8y/OX+zv9Wv0qIqSJKqyGB47GUMkyenK4GEhn2f5QZLBaop8iJGkIbnadFHE4Xs9QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6xhqlN8VQ4gDeRmIRw53H243nWJud7fFNsE1u1nXAhM=;
 b=OGv0xpYreBbo/V5zB0AxPnmRQ6vO0Bu/rjOPaVJdreOxCAPDEwm2x84Yztxgq11sRAavsj6NIjX3rrL0tggbaq0sMNL4uRL9u/I/te56eS3lm82rUSmH3xXbhVrK+iHcsKNaT9qihZki3p7wW/8vx6Rx5/SErkJv4q6h24YloaJnYzy9ck8dCpOvajqwZwfArPTmAzIMkjtPryQQVo6255dsB6Z4M/xtzrS6qOLB9LE8kcGQlLVSEiarYqu0CirGyMl+yEpE81g+VKLgOm3bRPD1jSg2tLIAcFLrS4pUt4fx0t8DD8W6uhYO3i2PDXC/l3aVsVfvSHYGcq/VqAfOWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH0PR11MB7448.namprd11.prod.outlook.com (2603:10b6:510:26c::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.23; Mon, 21 Oct
 2024 12:26:04 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8069.027; Mon, 21 Oct 2024
 12:26:03 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241018204941.73473-7-matthew.s.atwood@intel.com>
References: <20241018204941.73473-1-matthew.s.atwood@intel.com>
 <20241018204941.73473-7-matthew.s.atwood@intel.com>
Subject: Re: [PATCH 06/12] drm/i915/display/xe3: disable x-tiled framebuffers
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>,
 <Heikkila@freedesktop.org>, Matt Atwood <matthew.s.atwood@intel.com>, "Matt
 Roper" <matthew.d.roper@intel.com>
Date: Mon, 21 Oct 2024 09:25:58 -0300
Message-ID: <172951355854.2472.15440129377088343121@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4P220CA0005.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::10) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH0PR11MB7448:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d78fd30-01f9-45d8-945d-08dcf1cb87c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QWNHeGg1TEVoSzJ3dmxaN3Z4bDBqbjBUZWtpaUJGeVAyOENhL3lITzRpQWY5?=
 =?utf-8?B?WWtsdkRUU0pUOC9YZVRZZllpbFN1VnhFMlp4T0VybkpkYXJkL0lYODZMeDZX?=
 =?utf-8?B?YVZXMXhjSW1mL2dzejZIWHFBdFBxQmhBbXZZajZQczRNVEE0U0Vra0VVYldQ?=
 =?utf-8?B?aDFSMVlQZHoyUDI5dlVCeUoyT3piM3dXejlDd3Fsc2JjdHEvbk8waTRoVWcz?=
 =?utf-8?B?VVIvblozQ2VDeGorcWtoNzdycU5raWhMMWJUOVY2Y2NPTGVyWHFGdHpoMWNZ?=
 =?utf-8?B?TXdEYXlhQlM0d0o3YW9XaUJaajNLNCtpb2UrY1oyaG90VUo3TWdtZlRWT2pW?=
 =?utf-8?B?ZnY5dUMvSmk4UmVFUmw3OHU0U290dTdRaWV6ZFVTYitmOUp5Nm80ajU5bGY0?=
 =?utf-8?B?N2czVHljVVhoMXpXV0pCdEdXSmhxSktoZW04ZE81c2hzUUxWWUU5aGVBWkta?=
 =?utf-8?B?OUI4WU5uRW5LdHgvWXRscTdZZ2wxZHNWSU1NMzUyTFRhZHliaENUTnVTeTlh?=
 =?utf-8?B?TTZHYzg4bU50VlhYMDBkeFhGcmZxMG5sSm5ielVkZEU1VlFsZ3ROMUVnZmNq?=
 =?utf-8?B?Y1RyRHhWaUlxcXRRVVA1VGtSS2c5RmtHK2VMWVZFd3BDWkFPcDN0N2RLMUYx?=
 =?utf-8?B?a1dWRjY5NW5GYW45ellKQ2NaR1FFczVIdS8vRUowRnMxS21qdTc4Mzl2WUlI?=
 =?utf-8?B?VWNjMnp4dkY3dHRrdDNFbWhja0xJeFpDdDZYcngxclNMam41ODZ4Z0FxWmhn?=
 =?utf-8?B?SkhxWkZDM0R0MW9Pa05yRk1EN1hNY3M0clBSMGMrVTd0Sk5aQmxvVVd5RmpU?=
 =?utf-8?B?L09xd3k3UEIvcDR0WjBoNCtxYUdqVUllUnVyenBIRUk5WkQ1N2drZTJjenUx?=
 =?utf-8?B?R2NIL1NFT0NXWmIvb0o2amVCZzZJMDhKRGRCK0prZVNUbFBFbG8rWnhyZG1Q?=
 =?utf-8?B?YUo1bzdycHFaOXhQSjEwTWRhVTM2WFJuVVVYUGZnWklJM0RMWVNBNU1SMEVX?=
 =?utf-8?B?Q1VSQkxBUVBoS0Q3ajhndC90SElEakIvcFJSUEZjNjcyb2JVSmIwbjA0UEpa?=
 =?utf-8?B?RGcwd2Zrc3NWSWVXTGJZQldjNjdkeTlwbnYvTVdxV20vTExYTGVxUUJTZE16?=
 =?utf-8?B?ckl1NU0xZHhtemFBUk5FaFhiajF5SUVCdVdKcFExYnZ0Z05WUEhVcURQQlJj?=
 =?utf-8?B?ckI5U1RQRURPLzVnZGtlOU5FZEU1MjNjcUJHNEpxQXpKMk84Rk8yb0hsSk9E?=
 =?utf-8?B?dkNSN2s3OGVKK0s0TXFIN3MwYWZCK1RkRG1oVnU3SzVSbk85dkNEbHBHRkhQ?=
 =?utf-8?B?dCtUT2Urbkh6ZEdreUtiS1Z4QjhGdURvMUc2di8zSHl2Z05qcXorWGhIalNI?=
 =?utf-8?B?MmIrR2pGY0Q0RVVhRDVZNms2QUo5S2lLTjlNb01oZmJheVNjaUowOVRVQ3Ry?=
 =?utf-8?B?RUtEY0lTTEhjRlpvaVFieTM4eHhVMDR0OEtCamhEU21QcUhJVFhDUUVQbHpn?=
 =?utf-8?B?dUN3VldzaXkzZTY0SVRMcDhPblNPVzhJSHRjRklCc2FLVWNxVVBTYlBkNU9H?=
 =?utf-8?B?c2pJeEtTZzh3bnVHajlabmt4VkMwdFNWbndRdVNJaVlUNENLUytrb21pRlEx?=
 =?utf-8?B?YVV5N1BNcmFwVTRPZFdZek85QTNUSXpHSE9mTjVKYTVaL3pNUCtOVEg2Y0ZX?=
 =?utf-8?B?aUIzVUhtNFZFNnFSV3l3UEpkZEp0aWQ3VWtvYlllU3d6dFptYk5hWmZmcGxY?=
 =?utf-8?Q?E4RjqU3yIj4nezItviYjBOfgPPGZbH+A4uiJklk?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MktKQmdxVk9wSExxcHdIc1h3VjIzOE1SYU9wS1IrOVlkSWlHbll2cUZDL2x4?=
 =?utf-8?B?a1VKVG1rTGk1VXU4ckZSaVJVRUJ2QXhoSmxlYXA2TW9KWXYzM1lEcXJCdy9x?=
 =?utf-8?B?dkdsQmVHZzVmNnFNUWlkeW1ObE41dUhQcFdrU1d5WDhQaDJOanIwcG00OGZ4?=
 =?utf-8?B?KzRsQnRxRzdkamFCdVczK0lRRzJIMmRGaWNYRHRQaUFZZ01IbjBEcmZDQmh2?=
 =?utf-8?B?U2ZSamdneGtWdjh4Q1dUeHFMOUtOQzlZY0RVRGgyRDVuSExVTjhJYTFCYjlR?=
 =?utf-8?B?dnRrK1dJbEk1c1lJb3ZReGw2NldKYmpSVkRJNTZoMnBzOFpoekRFZlY3WGhD?=
 =?utf-8?B?Vm1MWTNSNXhpdk5FRXY0dUpDMEpXS2NBZTNMZndUZ3pUTzhJZ1o4U05CVFBY?=
 =?utf-8?B?SEdlN3hmdVNoREVLUU5YZC9QTm9mTjkrNkNwckxsZlFCalpOQ1JTVE0rZVpR?=
 =?utf-8?B?bFhJdUdTaXRIM3llNWgxalpibkZMcUVvQnBaN2YzUkRJUkozK0prU21QQVF0?=
 =?utf-8?B?dUtCM0pzN0RIbDh3YWt2QzRWY2U0dUpFaUlJeE1ETGs2TCs1UW1ZOTdLclZu?=
 =?utf-8?B?K1NRQ21sUUhIdWRTTlpKdGoyeGt5UVNPUC90ajRWUVNYb0lSZzNET21TNGZx?=
 =?utf-8?B?YmdXOHdJbHNqU1VnTThRbFJ4b2RPWjUvUXFuMnErQmVCN2l4a0drRXJud3pm?=
 =?utf-8?B?SmZwTU5tR2xTUDlQSnRrenAyRjMrSlVKMDBGWnR0cU01cGNGUUI5aUFEZ1ND?=
 =?utf-8?B?MmRHUXJSY1lGQ1NNWGNrMFFObDVSb1RHYWNsZUI2L1ovU3ZBc2FLNjd0b0h5?=
 =?utf-8?B?Z0J0TEdsYTkyRGxLQUl5elZKVFQ2dVorTm5FN1ZuaEt3Z3plRFdzZk82QmM1?=
 =?utf-8?B?Z1ZDSFdlaE01enJEdi95ZCtqLy9SV3BKR01odlNWdW9wVzRBUXVtL0pEOGNH?=
 =?utf-8?B?UDZvVG13MVFFZzV4dXAxVGh3RWdEcERVL1VGTllZeU1PK3F5UkQzdngrcVlZ?=
 =?utf-8?B?ZGl2UG91MWtQZEVyaDR2c3dzZFE0cDB0a3duSzNoOGRkZSt0RzQrTEFUM3lX?=
 =?utf-8?B?WHMvaUVEV205Ykw3U04zL1hkOGNrVS9ScE0ySGtVcVE5aHZKZ0RIN0x4VE13?=
 =?utf-8?B?Sm9kU2x6YmppajRURVFob1k3YXdEMHZEVDBJbjdsN1N3TUczeld3NnVZWkUz?=
 =?utf-8?B?a3JLOVVrdkhhbFBNREtPRmE4UEtBQm1QSzZyMlB2alZRQ01peDFMc3EzbHky?=
 =?utf-8?B?TlNiNHREeWNNRXZsZ3FNY0RGYTAwOVZ0WW5RRXduaFdzTVNKZFhtamJ6bGlN?=
 =?utf-8?B?ZE1YdW40aDhqZVU5c1VTRm84K0hkY01id3VaakRhNjIwKytJQUR3cGRWaXV2?=
 =?utf-8?B?ZVhOS3p2QURPNE4zeGJjeWZiWHRtNjJSZTcxL3F3REtmYS85Qmh4Y2JEek0r?=
 =?utf-8?B?MWNLUGY3bEtwWlNVTmU5OXk5c1BpUjBmb2JROGNQZGtQekJsVEtvR2NHSVBr?=
 =?utf-8?B?SE5ZSjJUT1VnSzVZNXZYS0xmK2FUaDQ3ZlZUSmhJUTdGNXNISVU2TjRrMlJj?=
 =?utf-8?B?MjJjd2tMN3J2a2N1TkhFd25wRHF1enhOVlVkcGU0aGVjUUMzZnRPMzlJeGln?=
 =?utf-8?B?WWlWamp3Z21KUnJlZFFmTEVza21pUnJ4NnJIeGhxNm1UUHdPdW91NGwwOEk3?=
 =?utf-8?B?SGQyL3FxcmJFKzlsc2RsWkRSZ245c2NGbHJuTGx5NEg3UVNNZFNZWExnTFY1?=
 =?utf-8?B?WmFia1lzcjVaYldLN1JEUlVQeWoyUzdrWFhZYjVNMFd0VGM0aDh1VVZ2Yk03?=
 =?utf-8?B?a09rdVVhRGVRS1hodXlPTXNvSTcrVVVmbWlubE9VOW5MUWlVQStOUUYwS29p?=
 =?utf-8?B?UGJIZFZWYXpXbHViRlR1Q3F2R3luVTZsSWdoMjBrUFc0aUh2WUpyMkwydmpV?=
 =?utf-8?B?Y3hjSXRiVlZLM09mMU5sRXFxUkdpeE5kdjRLd3JiVEx2LzZtS2tFd3U2V2Ux?=
 =?utf-8?B?b1Q1WXhWVzIrcDNjU1lMWVArT1htNVphayszTjVDWXVYOExrbXpKTDhtcmtq?=
 =?utf-8?B?ZXJLQ1J0cUtid1lDZ2hvMS96UjhOOGhSOGZkbHVDR1hDUWhuUzdtam5yUmd6?=
 =?utf-8?B?VjNKM2NzbFFaaExCc1F0VnlvZ1VzQWtjdjdMMUJZTG44MCs2N0I5Z1E1TW10?=
 =?utf-8?B?WGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d78fd30-01f9-45d8-945d-08dcf1cb87c3
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2024 12:26:03.9141 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JdqBvUpYVi0ZPsPuj6Q4fAt0QafHwDUc+OdwTdxHpfUwVi9W+CvBSjUPDcv0Oi8fsVpEwGsBd77BzDdkC5czGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7448
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

Quoting Matt Atwood (2024-10-18 17:49:35-03:00)
>From: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>
>
>Xe3 has no more support for x-tile on display.
>
>Signed-off-by: Heikkila, Juha-pekka <juha-pekka.heikkila@intel.com>
>Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_fb.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i91=
5/display/intel_fb.c
>index a7b4cf8b6d50..2075541bcdf4 100644
>--- a/drivers/gpu/drm/i915/display/intel_fb.c
>+++ b/drivers/gpu/drm/i915/display/intel_fb.c
>@@ -349,7 +349,7 @@ static const struct intel_modifier_desc intel_modifier=
s[] =3D {
>                 .plane_caps =3D INTEL_PLANE_CAP_TILING_Y,
>         }, {
>                 .modifier =3D I915_FORMAT_MOD_X_TILED,
>-                .display_ver =3D DISPLAY_VER_ALL,
>+                .display_ver =3D { 0, 20 },

Hm... I believe this suffers from a similar issue Matt Roper pointed at
on "[PATCH 05/12] drm/i915/xe3: Underrun recovery does not exist post
Xe2". A quickfix for this would be to use { 0, 29 } here, which would
look weird (as there is no display version 29), but it would be more
future-proof.

As a follow-up series, I believe it would be better to make the
display_ver be exclusive at the end, which would make more sense, as {
ver_a, ver_b } would then mean: this feature is available since version
ver_a and was removed in ver_b. In this example, our display_ver would
become { 0, 30 }.


--
Gustavo Sousa

>                 .plane_caps =3D INTEL_PLANE_CAP_TILING_X,
>         }, {
>                 .modifier =3D DRM_FORMAT_MOD_LINEAR,
>--=20
>2.45.0
>
