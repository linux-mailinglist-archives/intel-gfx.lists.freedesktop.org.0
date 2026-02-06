Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDP7HdmjhWmSEQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 09:18:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D69D1FB614
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 09:18:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61DE110E5B3;
	Fri,  6 Feb 2026 08:18:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="drrwWbKG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D53AE10E59C;
 Fri,  6 Feb 2026 08:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770365910; x=1801901910;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Hs2yTreBMVzGd4j75ANOd3O1p8Yr/fAkq1048emuuNQ=;
 b=drrwWbKG7hcU9gvQf6PPtAJjOVpJokI3Gli5L1Gu6CD1drdnc1RPO6OD
 XIIwpcm9wjbqeJoMLgpMetfOOvDuRZDTJxiG20iMujIP9Hc26LjS1hzQo
 QbvRpPwoj4vBAmIHTKZukI4HQHkYCTNRadQuILOUOGhoGrl2chYWf4uth
 BfmgTt9f3HjH3ihlSomZXvYz7r2BzB2VEN1bbbq6vTy8c4X4cGwWLBRH2
 f2J53z4px0mtTQbdltBZ5diCwDZRu18WUFVsrNzM19Tt3NbizAwm23//f
 6/fpjhASUGI5/xv03W5qW6NZ6L7AUbjopyf6kSaGoJpReC2khtNF92zLf Q==;
X-CSE-ConnectionGUID: z7xfo3BlSe+74pY9Rq1Xlg==
X-CSE-MsgGUID: fXWgp7ZVTMSxEQJiKJ8DHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="71671413"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="71671413"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 00:18:29 -0800
X-CSE-ConnectionGUID: GdqK2spPS9aMrzx8OSg4gQ==
X-CSE-MsgGUID: rs8M70haQxm5OWoGeNgecw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="215391388"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 00:18:29 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 00:18:28 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 6 Feb 2026 00:18:28 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.71) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 00:18:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PneMTcuizI401I6CL1N5pnz5oPnVyFXFSfTbqZF74Gsdz/DeChu2gWx9YZ36xQMMUBCNS4a4lkDqIi6gJTWOrGugxhV02bH3w2srihflxMLWtLYFr4KMwSqM0L+j5Py/WCylEdz91s1NZEnJAgLqOLgoC4NnoCMiNGFU0M5AtLpd8Qpvh9+trrOTDjxBXZtFa7aJyjaG2Nz1OXkNAqY1zutA6Ne9BH6rXrbQVcgHXhnXZQZi/ppTtp7QTUq23d8pA4jLWKivYed2QHSEjjoWBdL+i7/2ZSBRFnnfga4hcKCUc6eLG8ZfGl1tOBE6HrHv74bCj6rycs5d5bWU7Z+5FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1vgQ0Yl12YQRZN0LBWXVXi1pApgD+vRzWcSs46W92Bk=;
 b=fbMo/H3Tg14o5m5AqKlMlUAnn13LsBiOyvOYUSslzm9aVpvSuvRTww7gXF+PU5JrG2zuDnGurZxtCHAtEN5x7mrQGSQdZAimYri1iNg/W0lN9bkTK43lFiLFOnSasynhoxgYZ+PB6X0+Pc/pXeyLNPVglnqh4fFfPEanCoOUnVVSfpZBCufi+NZrl1VeKnwhBjYMNxUfWlY0op3bviFGxRGktfxM/C+hwkzwbpOL4xTIvlAgZkEKbNi+TSxO+THhG8u6xl5UJPsrnK+vQL86STd3+EjNuLtd1L7oHa7wNP08fY34IhGE7ONx6U9lJJstejIsS/5Re75hnVzqiHYeBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DM4PR11MB5279.namprd11.prod.outlook.com (2603:10b6:5:38a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.15; Fri, 6 Feb
 2026 08:18:26 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9587.013; Fri, 6 Feb 2026
 08:18:26 +0000
Date: Fri, 6 Feb 2026 08:18:12 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, Kamil Konieczny
 <kamil.konieczny@linux.intel.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t v5 5/6] lib/igt_device_scan: Omit AER statistics
 data from attributes
Message-ID: <z4d6rlh5at3riux3prpfiwfulny3ty74nrct6verwwng6q4x62@trjakucclhcg>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260205145427.1338534-8-janusz.krzysztofik@linux.intel.com>
 <20260205145427.1338534-13-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20260205145427.1338534-13-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: TLZP290CA0015.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::11) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DM4PR11MB5279:EE_
X-MS-Office365-Filtering-Correlation-Id: b28a1d29-3587-44c3-1820-08de65584d20
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|27256017; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NUM3elp4aEc2K0VVQTl5UDZhR2M1Y1ZydzJ2K09WWUxvZ2tiYlExdUMxb0xz?=
 =?utf-8?B?K2kxMHZkTVM0RUNleVVnUmVvOTdCeFdSdXFsMHh6V1lSV1NGN1lxK1dQQWZY?=
 =?utf-8?B?YkI1QkFlVmo5bFhPSjlhZFRzbFlhdEpkcVVKTzRSS3RlQ2NrRWs5TmlMb1pa?=
 =?utf-8?B?QzNqSDdPYXdVY2QzTUlFc21ubnNKbExFU0lHK1YwMkJCSktObDVLTWJ5UWhv?=
 =?utf-8?B?OWFObUcxWmVRTGU0SU8rR2VYa1REdmpKYTJpeVdnNGR3Z20rdWFiVS8zaEJ0?=
 =?utf-8?B?RzNieVpLbXlnbnhweWpJS0xyY3gxL2NKNkJuY0R4TFphLzJ5cVNmekhkMDdW?=
 =?utf-8?B?QTdtdzdRTUY4Qnc3bXpFTmM3NnBSSmxjeEplVFNoZXN0MDR6TnpuQVJZa00x?=
 =?utf-8?B?bGpXWHVZamRUOFBEQXpEcHoyOVFNNUxqZUZTWEkwbE5oZ1FLTzRTdTlsTDU5?=
 =?utf-8?B?N25uUFRmTC94L013ck52RWNOOFBCR2ZFMjdzb0hRSmFLSlZkd2s0cE5GZmE4?=
 =?utf-8?B?QkpsTmFralhybTVHcVNFK1lkckJzUTFMRzBub2licEQ5STBGRjlNNVZCS1Ir?=
 =?utf-8?B?cVc4VjJGbUQ1SWpOM0xJalVKNFJrM21abVpXRWN5MXEzL0MxNkhXNGVzdG1C?=
 =?utf-8?B?bndRaklMbWszUFBZN2tVTXZERE9saVUranlGMmRxd3pBODkwZWVSMFh0d3BW?=
 =?utf-8?B?VitjZVNyYy9JQjBJUkJmekhmb21STUVkaEVzNnQxczcwbVEveDlMa1Vjdis5?=
 =?utf-8?B?OE9zWXRXa08wTEsreUROaFBmL3hSdE9OWUZJdmZPV3pvSXNvRDhRRk1MNHpm?=
 =?utf-8?B?SW9wTEtkK2ZaU0VpWFl6UTg2OWUwNEpmK1RheDlnM0U2aWxDRlZQY0sxYXlL?=
 =?utf-8?B?U1JaUUk4UDN2V1JZbDV3QTdBSFlxWXo5Y0t0MlNDWDBIOSsrUFNYbE96Y1Iz?=
 =?utf-8?B?dllqQU50OUdHNm4vMUJ5UmJFcUtjcXBJSDVVdG8wVkE1ek05Q0JNTGR0Ukcz?=
 =?utf-8?B?SVhFTnVxMVQyMURZYUVxL2ovOXdtcFR3Qit0Q3U4OWtnNlZGbzREQTBZcEF2?=
 =?utf-8?B?SFU1OEtETE00by9mT0NvS1RDU2pLOVZ3SDhiYWJRU0pMaldZeUNnTlZlOE1V?=
 =?utf-8?B?ejdJNEdWUkhYVTRQWjI2QTBzRExrcWVvYVVYcytoR3NLMzA2VDR6MVVmeVlY?=
 =?utf-8?B?bWhpeHJOdFM2U3Y5RjFIOFNNVHU4d3BoZ2k3ZTRaaUg0OVMwU2I0NWpXMnA5?=
 =?utf-8?B?Zm44MklQclFXVEtnNUtVWVhHdnBhSk00THpmWTRaZ1ZGUXRWQUxvN2lXLzI3?=
 =?utf-8?B?a0QwZytTRHR4cGZKdFNDbUE0c1VLZ2UwUnVPLzBQTkFLRmwrMUFObUJCNXZy?=
 =?utf-8?B?U2s2Ym4zazJGOHFTSmEzUnlwaGx5NGY3c2oyVTYzOFBkcUlENmdjOWpSQ3gw?=
 =?utf-8?B?bzZoZUZHMGJMcTFoM2xjVW5hdC8zbkRQQzdNZk0weFdqTytjaTNvdWFmeUlI?=
 =?utf-8?B?RG9ySGVzbU0xVms4TWtCcG84OWtLOGwyem8vQjBzQ3BoZ1RQT3MrK1BBeVZn?=
 =?utf-8?B?QWFYNmJlL2pxVlhxZ1FVZVc5THJ5QnpsbmVsYjZoeUJlTGxHVi9vSlE1b3hL?=
 =?utf-8?B?QkRnZUNVYVFuQW8wZjVsQzIrSzcxRFpKYzFkUTA0SkpqUWo4Y3ozUmhNcjhP?=
 =?utf-8?B?bXBsdUh1WTVMOUViTEJQREg5VGZETndvelNPbGtKNFZPZkpNaVdBTmpZVjd6?=
 =?utf-8?B?VjZZcDFHZjFFWmRqYkRHRGlrU3FZYituTWVIWVBKcVUweHVnSHFxRWpsTkdr?=
 =?utf-8?B?R1ZjeXFpaDdsdVhPWlJ5bkczbDJQc2h2ZkUrTWhTbHpKQmU5bE43MXlJMkxZ?=
 =?utf-8?B?ZG5ZVzBJY3I5WXlWOW1jcGk4ZHhicnQ5UFVJc1o1WlRQV2RhZnI0djl0ckRL?=
 =?utf-8?B?aTNBSVNuOCtYNk9XMHhCaURqZzhxdHpzN1BrcHpOZFBPL1d1a1pPVXkxWXNQ?=
 =?utf-8?B?MDN6ZkNYNGJJUlduYXBNR2lkellWMzlPNkZvQUIvc2RFbURUaUovZmFyQktT?=
 =?utf-8?B?d0VuNEJVdWt0U0JndHh1N0xNLysrczV4SnZmNVZDSWZDZ205bXBZNWdYVXpZ?=
 =?utf-8?B?UytqSkRCWHhGd0FOaUhwTno5dTc3M3lwTlZGSS9XVXZoZzhLNUkwdVpNYTdt?=
 =?utf-8?Q?wTYphfzObtNJA3H4wcRxDJA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(27256017); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RXJQTmxrOVF4cFM3Q1Z4T2pEbzJwSEpZdUlsbzRjME1IS2hGekFsTXUwanBD?=
 =?utf-8?B?dXV2ekx4UDlBTituNkVIOGFrNTk1MlZ4WWdMY0JlK3E3ZVVFclByeFJGL3Bn?=
 =?utf-8?B?Ri9GUUcwOUozaU15WWdNWCtyNEFrM0t4dVRVcGNXTG4yOUE3Y1ZvTWxqSDBM?=
 =?utf-8?B?OUVGMlBSSTdHVEJFS2t4TFRSOC9QTEkxeEFCRXBZZ0N1WS9zekxWMERJekpB?=
 =?utf-8?B?SExuK2tXTU12dTB3UkFkaEhtYU9zazJWY1JIYk9OWExlSzJOUGVxZXRCUjMv?=
 =?utf-8?B?ZUdsYWVMN2pIbEJIcEVuejFjK2xJdFlnNlo0RVRxMEU3aFpvam92SWR0Qk14?=
 =?utf-8?B?d3VqMEF0TXVjdENjdFoySFZIa3pHQUdyQ3N2QnFBeE9xOVpKNkw1VlJSMytz?=
 =?utf-8?B?bWp0S2FJZEczbVN3RHMrcWlQbVlNMFNMMzl0VFA5Q2NPeTZLeDU3YkZ4Tk5v?=
 =?utf-8?B?MW1jUWFKWjBsb1NDd29WZVJJQ3FucjMvekVzT0FOTGhUVTFrOUNwTjdIUGFt?=
 =?utf-8?B?ZlJSd2FaR0tEb05pUXVCSUU3WWVGUXJieWFXRDJ1V2dSZjVmaUEra2VXQ3Bs?=
 =?utf-8?B?ZEdZWXg5V3ZTZERrU1hnbURMZHJ1d3FFL0VVc1JnQlVIRWJuOHBTaTJ2NDdQ?=
 =?utf-8?B?Qm4vbURsWDdmRDJMWVJoM1NNb3EvZEpWS1o3dlpLaHVKQTAzci93MGp1RktC?=
 =?utf-8?B?aEYzZkRSUXM1dTZiSmtTWStNR2NkdCtBNENvdE9CcjZmRCs3YXRXTWNqY3hh?=
 =?utf-8?B?SS9JU1lmRUdka2FMZ2tLcm41NGNvempXeDlWcjJkVGtrM1FuMmRXZm5lakF0?=
 =?utf-8?B?QVZRbzAxeDZ2bjVab0cwZFZpbktrcUY5ZjZ3YUZtTzhzaDU0aWhsQVdjMzNp?=
 =?utf-8?B?aUw2aDJmdzB6UEdmZnJZN0pzTXcweEM4QWtvblVtSmorT01OMkZlb3VXMVAy?=
 =?utf-8?B?MUVqdWZSRXNHc1JjWXhaZFlITFFjdTV6TjdzTmlkMTdJcWxtODZvNTVTb2pO?=
 =?utf-8?B?VHpYMzBkZmV1czJxU0pOeVFaL1BOOWZlT1MvSUxYSUpLeTRhWkNqaTIwM1BG?=
 =?utf-8?B?V3JPVHVDRUF1Z2hRMFFab3BXSjNkU2tmbWtBSjNzeThjd0VrZEVuNnd6OUc0?=
 =?utf-8?B?QjJFOFVHY3BrRDd2dHlmYjY3VUkxWG42K2tOeTJjaTNpdzVienZNUjg4OTcx?=
 =?utf-8?B?U3BoMVp2Ykd5RDdwK3gzb1ZEYWttL3NBQ2V3VEQ3aHdrN3FHSzY5UFNabU9w?=
 =?utf-8?B?LzJmalJseEpBVWtCMm1JSjN2NVhvc2JEckVNazRkaDl3elZ1c1hrRkpkUVJo?=
 =?utf-8?B?cTVQYVFwWWNScEEwZ002UU5GSUlXL2dUR1I1eGZ1YmlraXRPS1FFWklJbzdY?=
 =?utf-8?B?NXB4UkRsbVJRVjF3cEJzVUkvNm10ZE1YNFZhTWlwZ25pVVRXcWpEQW1uMEc5?=
 =?utf-8?B?SWhOOVRCajk1SVpJWXNWM2lvZHB2WUpMZk5RckVidmVnYU1SV3Rja0Y2cWxJ?=
 =?utf-8?B?ZUV3V0lxbHFiZElIZFFPYlFZZXh3VkV2cldDcGNxeTFlVm1QSnR4SHNWQ0Zz?=
 =?utf-8?B?cDRTdkY1KzZsYmNzRXR4MDByYndsWDQ1bmoxUDdVQmVJMUROc0d5Nk5CdWVN?=
 =?utf-8?B?TjNaRG5BMCtQbFBjb0xGNUFSRlQ2RFB5bDdqT0JwbmFwcCtiTk9vc0Z6WUNK?=
 =?utf-8?B?NWVNcEkvbDJkOXhudlRGN0NiQ3hyOFNCMStIRGthNStSN0RWazdaeWxhQS92?=
 =?utf-8?B?b1VKYmhYeEpPVGFUY0pSemdqK0tKbS9oS3c2Y01IM1lGbkx5ZHZaRENScmVR?=
 =?utf-8?B?ck5KYTVMZ2lOK2JYbDhXMmNhRnQ0SkQ0M1FZaVBJRVZRaXFjQ2dXZHYxUkJH?=
 =?utf-8?B?cTZiVDVnM0pGYnl0SHJQVGVKQWFuV0N0OUtYVFRSUFplN1oyajNNVk95Nnlj?=
 =?utf-8?B?V1lnY0pKL0xlN2V0c1BnVjlLM1pLUUNIaTR5ZFJnTkNZUjV3dnJPZjhHbWxB?=
 =?utf-8?B?R1JHMmR6K1dleHhjUi9XZXFrSlhLOVFMR0dnQ2pnZ3pqMVVkMDRWaFR0dUwv?=
 =?utf-8?B?SDcyR0E0TFEvOHNJSnU0ZG1HYi9rYkZuRHRoVWZCMmpBV1c4ckRIWE11VW9B?=
 =?utf-8?B?NHRyam1vTC9XaDB1WXRlSGUxbVNSNWxYN3o1bDB4NlZIRGFieTNlOUtCT0Fj?=
 =?utf-8?B?czU5V3JNUUtLZElzSENzNy9uVktkcjJFL0hrZzlGWjBqRDhYTjJPVzBYRmZI?=
 =?utf-8?B?bzllc1NwNXNzeVRSRHdPSWVJOUovYnZIWWNra0o5UmR5NmxjWk5yQTY5Q2tt?=
 =?utf-8?B?ajJIMHR4TTR3M2o1RVBsNzVRSThtY3FjaUZ3aHZkMDVhNjhWelYxRCtkZVpS?=
 =?utf-8?Q?rcXTFSPoURNmHFZo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b28a1d29-3587-44c3-1820-08de65584d20
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2026 08:18:25.9901 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EAvGSV1Pt5ax53ky8fXi39d/P8pUSW0KXKTiNY4w541xbCka9ufEdAL9T7nVlCeI7zA9SvJHRHsTMbg3xKEaHRC7ECOVXQkOGmXn2lqBbtU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5279
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
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D69D1FB614
X-Rspamd-Action: no action

Hi Janusz,

On 2026-02-05 at 15:51:54 +0100, Janusz Krzysztofik wrote:
> Among attributes of a PCIe bridge upstream port of a discrete graphics
> card, there are three AER statistics attributes: aer_dev_correctable,
> aer_dev_nonfatal and aer_dev_fatal.  Each consists of a number of key-
> value pairs, while the library now expects only single value attributes.
> That affects formatting of lsgpu -p output.  In order to print that data
> correctly in a human readable form, extra formatting effort would be
> needed.  However, users of lsgpu, the only call site of that printing
> function of the igt_device_scan library, are not necessarily interested in
> that data.  Just drop those attributes from the printout.
> 
> v2: Hand over detection of AER attributes to a helper.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

-- 
Best Regards,
Krzysztof
